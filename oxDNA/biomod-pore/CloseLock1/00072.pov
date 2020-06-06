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
	<24.127775, 34.998508, 35.627468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.448078, 35.060898, 35.396137>,  <24.640261, 35.098331, 35.257339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.448078, 35.060898, 35.396137>,  <24.127775, 34.998508, 35.627468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.448078, 35.060898, 35.396137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585740, -0.405832, 0.701576,
		-0.125277, -0.900541, -0.416332,
		0.800759, 0.155971, -0.578324,
		24.688305, 35.107689, 35.222641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.423737, 34.378765, 35.623661>,  <24.127775, 34.998508, 35.627468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.423737, 34.378765, 35.623661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683983, 34.671196, 35.541470>,  <24.840130, 34.846657, 35.492153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683983, 34.671196, 35.541470>,  <24.423737, 34.378765, 35.623661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.683983, 34.671196, 35.541470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692603, -0.460276, 0.555380,
		0.311451, -0.503652, -0.805812,
		0.650614, 0.731081, -0.205478,
		24.879168, 34.890522, 35.479828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049475, 34.027424, 35.359089>,  <24.423737, 34.378765, 35.623661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049475, 34.027424, 35.359089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186853, 34.383030, 35.480209>,  <25.269281, 34.596394, 35.552883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186853, 34.383030, 35.480209>,  <25.049475, 34.027424, 35.359089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186853, 34.383030, 35.480209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780736, -0.449467, 0.434087,
		0.522011, 0.087321, -0.848458,
		0.343449, 0.889019, 0.302801,
		25.289888, 34.649734, 35.571049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736738, 34.191765, 35.106075>,  <25.049475, 34.027424, 35.359089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736738, 34.191765, 35.106075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705942, 34.390118, 35.452065>,  <25.687464, 34.509129, 35.659657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705942, 34.390118, 35.452065>,  <25.736738, 34.191765, 35.106075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705942, 34.390118, 35.452065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872609, -0.386159, 0.299054,
		0.482312, 0.777806, -0.402981,
		-0.076991, 0.495882, 0.864970,
		25.682844, 34.538883, 35.711555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360899, 34.681877, 35.324928>,  <25.736738, 34.191765, 35.106075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360899, 34.681877, 35.324928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157215, 34.541180, 35.639122>,  <26.035004, 34.456760, 35.827637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157215, 34.541180, 35.639122>,  <26.360899, 34.681877, 35.324928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157215, 34.541180, 35.639122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825474, -0.457841, 0.330113,
		0.243512, 0.816492, 0.523491,
		-0.509210, -0.351741, 0.785482,
		26.004452, 34.435658, 35.874767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921843, 35.176109, 34.960346>,  <26.360899, 34.681877, 35.324928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921843, 35.176109, 34.960346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302910, 35.070339, 34.900345>,  <26.531551, 35.006878, 34.864346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302910, 35.070339, 34.900345>,  <25.921843, 35.176109, 34.960346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302910, 35.070339, 34.900345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108588, 0.164895, -0.980315,
		0.283951, 0.950206, 0.128378,
		0.952670, -0.264421, -0.150004,
		26.588711, 34.991013, 34.855343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172068, 35.660770, 34.567394>,  <25.921843, 35.176109, 34.960346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172068, 35.660770, 34.567394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432285, 35.362534, 34.509598>,  <26.588415, 35.183590, 34.474918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432285, 35.362534, 34.509598>,  <26.172068, 35.660770, 34.567394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432285, 35.362534, 34.509598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010138, 0.198767, -0.979994,
		0.759401, 0.636065, 0.136866,
		0.650544, -0.745596, -0.144495,
		26.627449, 35.138855, 34.466248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521271, 35.774441, 34.054226>,  <26.172068, 35.660770, 34.567394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521271, 35.774441, 34.054226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586819, 35.379944, 34.063000>,  <26.626146, 35.143246, 34.068264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586819, 35.379944, 34.063000>,  <26.521271, 35.774441, 34.054226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586819, 35.379944, 34.063000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011553, -0.020318, -0.999727,
		0.986414, 0.164078, 0.008064,
		0.163869, -0.986238, 0.021937,
		26.635979, 35.084072, 34.069580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130602, 35.738125, 33.713367>,  <26.521271, 35.774441, 34.054226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130602, 35.738125, 33.713367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913118, 35.408581, 33.649326>,  <26.782629, 35.210854, 33.610901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913118, 35.408581, 33.649326>,  <27.130602, 35.738125, 33.713367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913118, 35.408581, 33.649326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208925, 0.051895, -0.976554,
		0.812855, -0.564409, 0.143910,
		-0.543707, -0.823862, -0.160102,
		26.750006, 35.161423, 33.601295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529882, 35.354439, 33.137638>,  <27.130602, 35.738125, 33.713367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529882, 35.354439, 33.137638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162235, 35.200859, 33.172977>,  <26.941647, 35.108711, 33.194180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162235, 35.200859, 33.172977>,  <27.529882, 35.354439, 33.137638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162235, 35.200859, 33.172977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113683, 0.043749, -0.992553,
		0.377228, -0.922316, -0.083859,
		-0.919117, -0.383952, 0.088348,
		26.886499, 35.085674, 33.199482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497231, 34.728989, 32.651676>,  <27.529882, 35.354439, 33.137638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497231, 34.728989, 32.651676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129374, 34.860275, 32.737965>,  <26.908659, 34.939049, 32.789738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129374, 34.860275, 32.737965>,  <27.497231, 34.728989, 32.651676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129374, 34.860275, 32.737965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204102, 0.069881, -0.976452,
		-0.335563, -0.942014, 0.002725,
		-0.919641, 0.328218, 0.215717,
		26.853481, 34.958740, 32.802681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035719, 34.243065, 32.292671>,  <27.497231, 34.728989, 32.651676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035719, 34.243065, 32.292671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858618, 34.597931, 32.344681>,  <26.752357, 34.810852, 32.375885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858618, 34.597931, 32.344681>,  <27.035719, 34.243065, 32.292671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858618, 34.597931, 32.344681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112669, 0.088815, -0.989655,
		-0.889537, -0.452821, 0.060633,
		-0.442752, 0.887167, 0.130023,
		26.725792, 34.864082, 32.383686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798002, 34.376766, 31.610020>,  <27.035719, 34.243065, 32.292671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798002, 34.376766, 31.610020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737492, 34.731762, 31.784132>,  <26.701185, 34.944759, 31.888599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737492, 34.731762, 31.784132>,  <26.798002, 34.376766, 31.610020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737492, 34.731762, 31.784132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082679, 0.450166, -0.889109,
		-0.985027, -0.098514, -0.141477,
		-0.151278, 0.887494, 0.435281,
		26.692108, 34.998009, 31.914717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292086, 34.763298, 31.171532>,  <26.798002, 34.376766, 31.610020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292086, 34.763298, 31.171532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470547, 35.063061, 31.367220>,  <26.577623, 35.242916, 31.484632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470547, 35.063061, 31.367220>,  <26.292086, 34.763298, 31.171532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470547, 35.063061, 31.367220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161054, 0.470488, -0.867584,
		-0.880345, 0.465868, 0.089216,
		0.446154, 0.749405, 0.489222,
		26.604393, 35.287884, 31.513987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038265, 35.518951, 30.916395>,  <26.292086, 34.763298, 31.171532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038265, 35.518951, 30.916395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402040, 35.546265, 31.080475>,  <26.620306, 35.562653, 31.178923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402040, 35.546265, 31.080475>,  <26.038265, 35.518951, 30.916395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402040, 35.546265, 31.080475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320112, 0.514680, -0.795382,
		-0.265434, 0.854659, 0.446210,
		0.909436, 0.068284, 0.410200,
		26.674871, 35.566750, 31.203535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213430, 36.018307, 30.518166>,  <26.038265, 35.518951, 30.916395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213430, 36.018307, 30.518166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537788, 35.893791, 30.716377>,  <26.732403, 35.819084, 30.835304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537788, 35.893791, 30.716377>,  <26.213430, 36.018307, 30.518166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537788, 35.893791, 30.716377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584853, 0.402263, -0.704366,
		0.019925, 0.860979, 0.508250,
		0.810895, -0.311286, 0.495531,
		26.781057, 35.800404, 30.865036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635700, 36.571800, 30.535275>,  <26.213430, 36.018307, 30.518166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635700, 36.571800, 30.535275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901638, 36.279217, 30.595879>,  <27.061201, 36.103668, 30.632240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901638, 36.279217, 30.595879>,  <26.635700, 36.571800, 30.535275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901638, 36.279217, 30.595879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584403, 0.383003, -0.715389,
		0.465247, 0.564165, 0.682102,
		0.664845, -0.731455, 0.151508,
		27.101091, 36.059780, 30.641331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347893, 36.923157, 30.604971>,  <26.635700, 36.571800, 30.535275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347893, 36.923157, 30.604971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404007, 36.537895, 30.513189>,  <27.437675, 36.306736, 30.458120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404007, 36.537895, 30.513189>,  <27.347893, 36.923157, 30.604971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404007, 36.537895, 30.513189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625408, 0.265861, -0.733610,
		0.767584, -0.040589, 0.639662,
		0.140284, -0.963157, -0.229456,
		27.446093, 36.248947, 30.444353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044491, 36.856945, 30.643688>,  <27.347893, 36.923157, 30.604971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044491, 36.856945, 30.643688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885490, 36.578850, 30.404144>,  <27.790091, 36.411991, 30.260418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885490, 36.578850, 30.404144>,  <28.044491, 36.856945, 30.643688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885490, 36.578850, 30.404144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653576, 0.243574, -0.716596,
		0.644074, -0.676246, 0.357574,
		-0.397500, -0.695243, -0.598858,
		27.766241, 36.370277, 30.224487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618580, 36.512459, 30.288046>,  <28.044491, 36.856945, 30.643688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618580, 36.512459, 30.288046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301809, 36.403412, 30.069492>,  <28.111748, 36.337986, 29.938360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301809, 36.403412, 30.069492>,  <28.618580, 36.512459, 30.288046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301809, 36.403412, 30.069492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516166, 0.179191, -0.837534,
		0.326233, -0.945289, -0.001190,
		-0.791924, -0.272616, -0.546384,
		28.064232, 36.321629, 29.905577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935600, 36.037392, 29.746941>,  <28.618580, 36.512459, 30.288046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935600, 36.037392, 29.746941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583899, 36.171227, 29.611315>,  <28.372877, 36.251526, 29.529940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583899, 36.171227, 29.611315>,  <28.935600, 36.037392, 29.746941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583899, 36.171227, 29.611315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351107, -0.025840, -0.935979,
		-0.321926, -0.942011, -0.094756,
		-0.879254, 0.334585, -0.339065,
		28.320122, 36.271603, 29.509596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802725, 35.697186, 29.193148>,  <28.935600, 36.037392, 29.746941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802725, 35.697186, 29.193148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563398, 36.009712, 29.122084>,  <28.419802, 36.197227, 29.079445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563398, 36.009712, 29.122084>,  <28.802725, 35.697186, 29.193148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563398, 36.009712, 29.122084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386592, 0.087280, -0.918111,
		-0.701829, -0.618003, -0.354271,
		-0.598317, 0.781316, -0.177660,
		28.383904, 36.244106, 29.068787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658102, 35.666378, 28.433006>,  <28.802725, 35.697186, 29.193148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658102, 35.666378, 28.433006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567347, 36.040974, 28.539974>,  <28.512894, 36.265732, 28.604155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567347, 36.040974, 28.539974>,  <28.658102, 35.666378, 28.433006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567347, 36.040974, 28.539974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458245, 0.344939, -0.819163,
		-0.859380, -0.063314, -0.507403,
		-0.226888, 0.936487, 0.267421,
		28.499281, 36.321918, 28.620201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230919, 36.016640, 27.825008>,  <28.658102, 35.666378, 28.433006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230919, 36.016640, 27.825008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408487, 36.291187, 28.055426>,  <28.515028, 36.455917, 28.193676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408487, 36.291187, 28.055426>,  <28.230919, 36.016640, 27.825008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408487, 36.291187, 28.055426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507126, 0.337554, -0.793020,
		-0.738752, 0.644166, -0.198229,
		0.443923, 0.686372, 0.576043,
		28.541664, 36.497101, 28.228239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851633, 36.610023, 27.412834>,  <28.230919, 36.016640, 27.825008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851633, 36.610023, 27.412834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500355, 36.659615, 27.597616>,  <27.289589, 36.689369, 27.708487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500355, 36.659615, 27.597616>,  <27.851633, 36.610023, 27.412834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500355, 36.659615, 27.597616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143405, -0.853146, 0.501575,
		0.456299, 0.506728, 0.731449,
		-0.878195, 0.123975, 0.461957,
		27.236897, 36.696808, 27.736204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515730, 36.589268, 26.761887>,  <27.851633, 36.610023, 27.412834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515730, 36.589268, 26.761887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731756, 36.538841, 26.429037>,  <27.861372, 36.508583, 26.229326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731756, 36.538841, 26.429037>,  <27.515730, 36.589268, 26.761887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731756, 36.538841, 26.429037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841599, 0.088215, 0.532850,
		0.006230, -0.988092, 0.153741,
		0.540067, -0.126069, -0.832126,
		27.893776, 36.501022, 26.179399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048380, 36.120235, 26.922499>,  <27.515730, 36.589268, 26.761887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048380, 36.120235, 26.922499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179171, 36.332954, 26.610018>,  <28.257645, 36.460587, 26.422529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179171, 36.332954, 26.610018>,  <28.048380, 36.120235, 26.922499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179171, 36.332954, 26.610018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903238, 0.067255, 0.423837,
		0.277935, -0.844197, -0.458349,
		0.326976, 0.531798, -0.781203,
		28.277264, 36.492493, 26.375656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708090, 35.861668, 26.617506>,  <28.048380, 36.120235, 26.922499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708090, 35.861668, 26.617506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713545, 36.249084, 26.518120>,  <28.716818, 36.481537, 26.458488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713545, 36.249084, 26.518120>,  <28.708090, 35.861668, 26.617506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713545, 36.249084, 26.518120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954273, 0.061605, 0.292519,
		0.298624, -0.241095, -0.923416,
		0.013638, 0.968544, -0.248467,
		28.717636, 36.539646, 26.443579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208118, 36.043770, 26.083162>,  <28.708090, 35.861668, 26.617506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208118, 36.043770, 26.083162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155533, 36.339600, 26.347208>,  <29.123981, 36.517097, 26.505636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155533, 36.339600, 26.347208>,  <29.208118, 36.043770, 26.083162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155533, 36.339600, 26.347208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991321, 0.097621, 0.088053,
		0.000681, 0.665962, -0.745985,
		-0.131464, 0.739570, 0.660116,
		29.116095, 36.561470, 26.545242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530136, 36.743832, 25.831524>,  <29.208118, 36.043770, 26.083162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530136, 36.743832, 25.831524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512775, 36.756485, 26.230947>,  <29.502359, 36.764076, 26.470602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512775, 36.756485, 26.230947>,  <29.530136, 36.743832, 25.831524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512775, 36.756485, 26.230947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881273, 0.472030, 0.023347,
		-0.470610, 0.881015, -0.048366,
		-0.043399, 0.031637, 0.998557,
		29.499756, 36.765976, 26.530514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648951, 37.459846, 25.986332>,  <29.530136, 36.743832, 25.831524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648951, 37.459846, 25.986332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717468, 37.248138, 26.318726>,  <29.758579, 37.121113, 26.518162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717468, 37.248138, 26.318726>,  <29.648951, 37.459846, 25.986332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717468, 37.248138, 26.318726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810608, 0.555109, 0.186465,
		-0.559976, 0.641661, 0.524117,
		0.171295, -0.529269, 0.830983,
		29.768856, 37.089359, 26.568020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349070, 37.543304, 25.860094>,  <29.648951, 37.459846, 25.986332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349070, 37.543304, 25.860094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537216, 37.722820, 26.164028>,  <30.650105, 37.830528, 26.346388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537216, 37.722820, 26.164028>,  <30.349070, 37.543304, 25.860094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537216, 37.722820, 26.164028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758640, -0.234206, 0.607958,
		0.450801, -0.862402, 0.230305,
		0.470366, 0.448787, 0.759833,
		30.678326, 37.857456, 26.391977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368231, 36.755234, 25.868656>,  <30.349070, 37.543304, 25.860094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368231, 36.755234, 25.868656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735723, 36.636227, 25.764799>,  <30.956219, 36.564823, 25.702484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735723, 36.636227, 25.764799>,  <30.368231, 36.755234, 25.868656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735723, 36.636227, 25.764799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025761, -0.701277, 0.712424,
		-0.394042, -0.647837, -0.651949,
		0.918732, -0.297520, -0.259643,
		31.011343, 36.546970, 25.686907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346073, 36.071899, 25.711411>,  <30.368231, 36.755234, 25.868656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346073, 36.071899, 25.711411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709915, 36.183563, 25.834499>,  <30.928221, 36.250561, 25.908352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709915, 36.183563, 25.834499>,  <30.346073, 36.071899, 25.711411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709915, 36.183563, 25.834499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056037, -0.651446, 0.756622,
		0.411682, -0.705470, -0.576914,
		0.909603, 0.279159, 0.307722,
		30.982796, 36.267311, 25.926815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922031, 35.522133, 25.721401>,  <30.346073, 36.071899, 25.711411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922031, 35.522133, 25.721401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971085, 35.791439, 26.013065>,  <31.000517, 35.953022, 26.188065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971085, 35.791439, 26.013065>,  <30.922031, 35.522133, 25.721401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971085, 35.791439, 26.013065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183920, -0.706564, 0.683331,
		0.975261, -0.217908, 0.037177,
		0.122635, 0.673264, 0.729162,
		31.007875, 35.993420, 26.231813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151348, 35.092796, 26.330481>,  <30.922031, 35.522133, 25.721401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151348, 35.092796, 26.330481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093655, 35.445175, 26.510757>,  <31.059038, 35.656605, 26.618923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093655, 35.445175, 26.510757>,  <31.151348, 35.092796, 26.330481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093655, 35.445175, 26.510757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145583, -0.469390, 0.870907,
		0.978776, 0.060002, 0.195954,
		-0.144235, 0.880950, 0.450692,
		31.050385, 35.709461, 26.645966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535810, 35.061192, 26.909695>,  <31.151348, 35.092796, 26.330481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535810, 35.061192, 26.909695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246681, 35.331024, 26.969648>,  <31.073204, 35.492924, 27.005621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246681, 35.331024, 26.969648>,  <31.535810, 35.061192, 26.909695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246681, 35.331024, 26.969648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136548, -0.352054, 0.925966,
		0.677409, 0.648842, 0.346586,
		-0.722822, 0.674584, 0.149886,
		31.029835, 35.533398, 27.014614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757156, 35.444820, 27.521063>,  <31.535810, 35.061192, 26.909695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757156, 35.444820, 27.521063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357912, 35.467892, 27.512625>,  <31.118364, 35.481735, 27.507561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357912, 35.467892, 27.512625>,  <31.757156, 35.444820, 27.521063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357912, 35.467892, 27.512625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027649, -0.115276, 0.992949,
		0.054837, 0.991658, 0.116653,
		-0.998112, 0.057676, -0.021097,
		31.058477, 35.485195, 27.506296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600754, 35.703773, 28.137447>,  <31.757156, 35.444820, 27.521063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600754, 35.703773, 28.137447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243959, 35.571495, 28.014158>,  <31.029882, 35.492126, 27.940186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243959, 35.571495, 28.014158>,  <31.600754, 35.703773, 28.137447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243959, 35.571495, 28.014158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239820, -0.231801, 0.942738,
		-0.383205, 0.914827, 0.127456,
		-0.891987, -0.330695, -0.308221,
		30.976364, 35.472286, 27.921692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080034, 35.975044, 28.645683>,  <31.600754, 35.703773, 28.137447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080034, 35.975044, 28.645683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894392, 35.679142, 28.450802>,  <30.783007, 35.501602, 28.333872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894392, 35.679142, 28.450802>,  <31.080034, 35.975044, 28.645683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894392, 35.679142, 28.450802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317227, -0.374736, 0.871171,
		-0.827027, 0.558870, -0.060753,
		-0.464105, -0.739755, -0.487206,
		30.755161, 35.457214, 28.304640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356808, 35.853710, 28.934109>,  <31.080034, 35.975044, 28.645683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356808, 35.853710, 28.934109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425375, 35.507015, 28.746756>,  <30.466516, 35.299000, 28.634344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425375, 35.507015, 28.746756>,  <30.356808, 35.853710, 28.934109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425375, 35.507015, 28.746756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209667, -0.496624, 0.842262,
		-0.962630, -0.046176, -0.266856,
		0.171419, -0.866737, -0.468383,
		30.476801, 35.246994, 28.606241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009518, 35.447266, 29.340658>,  <30.356808, 35.853710, 28.934109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009518, 35.447266, 29.340658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176256, 35.185017, 29.088816>,  <30.276299, 35.027668, 28.937710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176256, 35.185017, 29.088816>,  <30.009518, 35.447266, 29.340658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176256, 35.185017, 29.088816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187286, -0.739738, 0.646305,
		-0.889474, -0.151493, -0.431145,
		0.416846, -0.655619, -0.629605,
		30.301310, 34.988331, 28.899935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490635, 34.984009, 29.254358>,  <30.009518, 35.447266, 29.340658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490635, 34.984009, 29.254358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850779, 34.829044, 29.175091>,  <30.066864, 34.736065, 29.127531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850779, 34.829044, 29.175091>,  <29.490635, 34.984009, 29.254358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850779, 34.829044, 29.175091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108398, -0.640722, 0.760082,
		-0.421434, -0.662864, -0.618873,
		0.900357, -0.387409, -0.198169,
		30.120886, 34.712822, 29.115641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431829, 34.181454, 29.194782>,  <29.490635, 34.984009, 29.254358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431829, 34.181454, 29.194782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796267, 34.309086, 29.299166>,  <30.014929, 34.385666, 29.361795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796267, 34.309086, 29.299166>,  <29.431829, 34.181454, 29.194782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796267, 34.309086, 29.299166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103551, -0.435605, 0.894162,
		0.398984, -0.841686, -0.363835,
		0.911092, 0.319080, 0.260957,
		30.069593, 34.404812, 29.377453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715218, 33.554871, 29.240660>,  <29.431829, 34.181454, 29.194782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715218, 33.554871, 29.240660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927542, 33.833115, 29.434307>,  <30.054935, 34.000061, 29.550495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927542, 33.833115, 29.434307>,  <29.715218, 33.554871, 29.240660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927542, 33.833115, 29.434307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054838, -0.598233, 0.799443,
		0.845715, -0.397804, -0.355694,
		0.530810, 0.695607, 0.484120,
		30.086784, 34.041798, 29.579542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260481, 33.172478, 29.611702>,  <29.715218, 33.554871, 29.240660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260481, 33.172478, 29.611702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255428, 33.522400, 29.805424>,  <30.252396, 33.732353, 29.921658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255428, 33.522400, 29.805424>,  <30.260481, 33.172478, 29.611702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255428, 33.522400, 29.805424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104569, -0.482845, 0.869440,
		0.994437, -0.039659, 0.097577,
		-0.012633, 0.874808, 0.484306,
		30.251638, 33.784843, 29.950716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556717, 33.083702, 30.302145>,  <30.260481, 33.172478, 29.611702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556717, 33.083702, 30.302145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338942, 33.412449, 30.369232>,  <30.208277, 33.609695, 30.409485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338942, 33.412449, 30.369232>,  <30.556717, 33.083702, 30.302145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338942, 33.412449, 30.369232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176889, -0.307946, 0.934815,
		0.819939, 0.479280, 0.313035,
		-0.544436, 0.821864, 0.167717,
		30.175611, 33.659008, 30.419548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686617, 33.197762, 31.050909>,  <30.556717, 33.083702, 30.302145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686617, 33.197762, 31.050909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361708, 33.414169, 30.963724>,  <30.166761, 33.544014, 30.911413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361708, 33.414169, 30.963724>,  <30.686617, 33.197762, 31.050909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361708, 33.414169, 30.963724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395553, -0.236311, 0.887522,
		0.428662, 0.807126, 0.405952,
		-0.812273, 0.541022, -0.217964,
		30.118027, 33.576477, 30.898335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473551, 33.486286, 31.762079>,  <30.686617, 33.197762, 31.050909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473551, 33.486286, 31.762079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155890, 33.492172, 31.519064>,  <29.965292, 33.495705, 31.373255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155890, 33.492172, 31.519064>,  <30.473551, 33.486286, 31.762079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155890, 33.492172, 31.519064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588820, -0.265982, 0.763247,
		-0.150364, 0.963866, 0.219894,
		-0.794155, 0.014713, -0.607537,
		29.917643, 33.496586, 31.336803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999271, 33.811230, 32.166809>,  <30.473551, 33.486286, 31.762079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999271, 33.811230, 32.166809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783676, 33.636765, 31.878572>,  <29.654318, 33.532085, 31.705629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783676, 33.636765, 31.878572>,  <29.999271, 33.811230, 32.166809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783676, 33.636765, 31.878572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663018, -0.307959, 0.682326,
		-0.519516, 0.845533, -0.123194,
		-0.538990, -0.436159, -0.720593,
		29.621979, 33.505917, 31.662394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370504, 33.993458, 32.314373>,  <29.999271, 33.811230, 32.166809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370504, 33.993458, 32.314373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336641, 33.653500, 32.106331>,  <29.316322, 33.449524, 31.981506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336641, 33.653500, 32.106331>,  <29.370504, 33.993458, 32.314373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336641, 33.653500, 32.106331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616817, -0.365239, 0.697235,
		-0.782541, 0.379837, -0.493310,
		-0.084660, -0.849897, -0.520104,
		29.311243, 33.398529, 31.950300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649555, 33.789185, 32.194611>,  <29.370504, 33.993458, 32.314373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649555, 33.789185, 32.194611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837000, 33.441246, 32.132942>,  <28.949467, 33.232483, 32.095940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837000, 33.441246, 32.132942>,  <28.649555, 33.789185, 32.194611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837000, 33.441246, 32.132942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506862, -0.407682, 0.759530,
		-0.723529, -0.277779, -0.631937,
		0.468611, -0.869847, -0.154174,
		28.977583, 33.180290, 32.086689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191061, 33.282219, 32.269642>,  <28.649555, 33.789185, 32.194611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191061, 33.282219, 32.269642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520441, 33.057106, 32.298492>,  <28.718069, 32.922039, 32.315804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520441, 33.057106, 32.298492>,  <28.191061, 33.282219, 32.269642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520441, 33.057106, 32.298492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420169, -0.519417, 0.744086,
		-0.381293, -0.643026, -0.664179,
		0.823453, -0.562782, 0.072129,
		28.767477, 32.888271, 32.320129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950394, 32.637383, 32.261909>,  <28.191061, 33.282219, 32.269642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950394, 32.637383, 32.261909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314123, 32.615204, 32.426861>,  <28.532360, 32.601894, 32.525833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314123, 32.615204, 32.426861>,  <27.950394, 32.637383, 32.261909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314123, 32.615204, 32.426861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353494, -0.625745, 0.695331,
		0.219489, -0.778055, -0.588605,
		0.909322, -0.055450, 0.412382,
		28.586920, 32.598568, 32.550575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898922, 31.997450, 32.579277>,  <27.950394, 32.637383, 32.261909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898922, 31.997450, 32.579277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230700, 32.168163, 32.723434>,  <28.429766, 32.270592, 32.809929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230700, 32.168163, 32.723434>,  <27.898922, 31.997450, 32.579277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230700, 32.168163, 32.723434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040670, -0.597322, 0.800970,
		0.557110, -0.679015, -0.478086,
		0.829442, 0.426785, 0.360390,
		28.479532, 32.296200, 32.831551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281488, 31.431671, 32.885124>,  <27.898922, 31.997450, 32.579277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281488, 31.431671, 32.885124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400007, 31.776463, 33.049664>,  <28.471119, 31.983337, 33.148388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400007, 31.776463, 33.049664>,  <28.281488, 31.431671, 32.885124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400007, 31.776463, 33.049664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107848, -0.458125, 0.882321,
		0.948987, -0.217066, -0.228703,
		0.296296, 0.861977, 0.411345,
		28.488895, 32.035057, 33.173065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857840, 31.258080, 33.246113>,  <28.281488, 31.431671, 32.885124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857840, 31.258080, 33.246113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701735, 31.583611, 33.418339>,  <28.608072, 31.778929, 33.521675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701735, 31.583611, 33.418339>,  <28.857840, 31.258080, 33.246113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701735, 31.583611, 33.418339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195640, -0.383667, 0.902510,
		0.899679, 0.436450, -0.009486,
		-0.390261, 0.813825, 0.430564,
		28.584656, 31.827759, 33.547508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268257, 31.663826, 33.725121>,  <28.857840, 31.258080, 33.246113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268257, 31.663826, 33.725121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886984, 31.720064, 33.832207>,  <28.658220, 31.753807, 33.896458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886984, 31.720064, 33.832207>,  <29.268257, 31.663826, 33.725121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886984, 31.720064, 33.832207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194607, -0.392423, 0.898962,
		0.231451, 0.908976, 0.346690,
		-0.953183, 0.140597, 0.267720,
		28.601028, 31.762243, 33.912521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250887, 31.266043, 34.391953>,  <29.268257, 31.663826, 33.725121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250887, 31.266043, 34.391953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505035, 30.957344, 34.381275>,  <29.657524, 30.772125, 34.374866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505035, 30.957344, 34.381275>,  <29.250887, 31.266043, 34.391953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505035, 30.957344, 34.381275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755233, 0.613827, 0.229867,
		-0.161012, -0.166213, 0.972856,
		0.635372, -0.771745, -0.026696,
		29.695646, 30.725821, 34.373268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611736, 31.002907, 35.078720>,  <29.250887, 31.266043, 34.391953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611736, 31.002907, 35.078720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819525, 30.950632, 34.740944>,  <29.944197, 30.919268, 34.538280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819525, 30.950632, 34.740944>,  <29.611736, 31.002907, 35.078720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819525, 30.950632, 34.740944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764037, 0.513547, 0.390533,
		0.382620, -0.848051, 0.366621,
		0.519469, -0.130687, -0.844436,
		29.975365, 30.911427, 34.487614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148703, 30.510288, 35.040386>,  <29.611736, 31.002907, 35.078720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148703, 30.510288, 35.040386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265112, 30.817144, 34.811722>,  <30.334957, 31.001259, 34.674522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265112, 30.817144, 34.811722>,  <30.148703, 30.510288, 35.040386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265112, 30.817144, 34.811722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457003, 0.413479, 0.787517,
		0.840508, -0.490439, -0.230253,
		0.291025, 0.767141, -0.571664,
		30.352419, 31.047287, 34.640224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901863, 30.532034, 35.212585>,  <30.148703, 30.510288, 35.040386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901863, 30.532034, 35.212585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761118, 30.880362, 35.075260>,  <30.676670, 31.089357, 34.992867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761118, 30.880362, 35.075260>,  <30.901863, 30.532034, 35.212585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761118, 30.880362, 35.075260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343127, 0.461233, 0.818247,
		0.870894, 0.170112, -0.461093,
		-0.351865, 0.870819, -0.343315,
		30.655560, 31.141607, 34.972267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450806, 31.051672, 35.117718>,  <30.901863, 30.532034, 35.212585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450806, 31.051672, 35.117718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079165, 31.158482, 35.220062>,  <30.856180, 31.222569, 35.281467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079165, 31.158482, 35.220062>,  <31.450806, 31.051672, 35.117718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079165, 31.158482, 35.220062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318371, 0.225520, 0.920750,
		0.188163, 0.936930, -0.294545,
		-0.929104, 0.267026, 0.255857,
		30.800434, 31.238590, 35.296818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526484, 31.297432, 35.728912>,  <31.450806, 31.051672, 35.117718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526484, 31.297432, 35.728912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537073, 31.117956, 36.086231>,  <31.543427, 31.010271, 36.300621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537073, 31.117956, 36.086231>,  <31.526484, 31.297432, 35.728912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537073, 31.117956, 36.086231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214002, 0.875436, 0.433376,
		-0.976474, 0.179693, 0.119198,
		0.026475, -0.448689, 0.893296,
		31.545015, 30.983349, 36.354221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070316, 31.576302, 36.317760>,  <31.526484, 31.297432, 35.728912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070316, 31.576302, 36.317760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403156, 31.405127, 36.458889>,  <31.602859, 31.302422, 36.543564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403156, 31.405127, 36.458889>,  <31.070316, 31.576302, 36.317760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403156, 31.405127, 36.458889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358083, 0.900298, 0.247469,
		-0.423544, -0.079579, 0.902373,
		0.832098, -0.427938, 0.352820,
		31.652786, 31.276745, 36.564735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141249, 31.934261, 36.921745>,  <31.070316, 31.576302, 36.317760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141249, 31.934261, 36.921745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493380, 31.807121, 36.780895>,  <31.704659, 31.730837, 36.696384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493380, 31.807121, 36.780895>,  <31.141249, 31.934261, 36.921745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493380, 31.807121, 36.780895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399340, 0.897220, 0.188480,
		0.256025, -0.306542, 0.916779,
		0.880329, -0.317851, -0.352125,
		31.757479, 31.711765, 36.675259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584837, 32.063026, 37.469746>,  <31.141249, 31.934261, 36.921745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584837, 32.063026, 37.469746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771431, 32.065113, 37.115940>,  <31.883389, 32.066364, 36.903656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771431, 32.065113, 37.115940>,  <31.584837, 32.063026, 37.469746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771431, 32.065113, 37.115940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340300, 0.921957, 0.184907,
		0.816447, -0.387257, 0.428307,
		0.466487, 0.005214, -0.884513,
		31.911377, 32.066677, 36.850586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135227, 32.436508, 37.614941>,  <31.584837, 32.063026, 37.469746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135227, 32.436508, 37.614941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114616, 32.458138, 37.216057>,  <32.102249, 32.471115, 36.976727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114616, 32.458138, 37.216057>,  <32.135227, 32.436508, 37.614941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114616, 32.458138, 37.216057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268849, 0.962421, 0.038293,
		0.961803, -0.266125, -0.064126,
		-0.051525, 0.054071, -0.997207,
		32.099159, 32.474358, 36.916893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700260, 32.825027, 37.384266>,  <32.135227, 32.436508, 37.614941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700260, 32.825027, 37.384266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445992, 32.862606, 37.077778>,  <32.293430, 32.885155, 36.893883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445992, 32.862606, 37.077778>,  <32.700260, 32.825027, 37.384266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445992, 32.862606, 37.077778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254754, 0.962491, -0.093336,
		0.728714, -0.254529, -0.635759,
		-0.635669, 0.093947, -0.766223,
		32.255291, 32.890789, 36.847912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024506, 33.275833, 36.964272>,  <32.700260, 32.825027, 37.384266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024506, 33.275833, 36.964272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660145, 33.277409, 36.799229>,  <32.441528, 33.278355, 36.700203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660145, 33.277409, 36.799229>,  <33.024506, 33.275833, 36.964272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660145, 33.277409, 36.799229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069858, 0.986991, -0.144808,
		0.406665, -0.160730, -0.899327,
		-0.910903, 0.003937, -0.412603,
		32.386875, 33.278591, 36.675449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993542, 33.541805, 36.197819>,  <33.024506, 33.275833, 36.964272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993542, 33.541805, 36.197819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639969, 33.623611, 36.366024>,  <32.427826, 33.672695, 36.466949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639969, 33.623611, 36.366024>,  <32.993542, 33.541805, 36.197819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639969, 33.623611, 36.366024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180453, 0.978816, -0.096722,
		-0.431388, -0.009613, -0.902115,
		-0.883935, 0.204515, 0.420515,
		32.374790, 33.684967, 36.492180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653229, 34.097687, 35.806591>,  <32.993542, 33.541805, 36.197819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653229, 34.097687, 35.806591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443035, 34.078754, 36.146385>,  <32.316921, 34.067394, 36.350262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443035, 34.078754, 36.146385>,  <32.653229, 34.097687, 35.806591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443035, 34.078754, 36.146385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043877, 0.998630, 0.028503,
		-0.849673, -0.022295, -0.526839,
		-0.525482, -0.047335, 0.849487,
		32.285389, 34.064552, 36.401230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099449, 34.671295, 35.711323>,  <32.653229, 34.097687, 35.806591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099449, 34.671295, 35.711323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113594, 34.573395, 36.098900>,  <32.122082, 34.514656, 36.331444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113594, 34.573395, 36.098900>,  <32.099449, 34.671295, 35.711323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113594, 34.573395, 36.098900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106050, 0.963154, 0.247160,
		-0.993732, -0.111496, 0.008100,
		0.035359, -0.244752, 0.968941,
		32.124203, 34.499969, 36.389584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586901, 35.058659, 36.093903>,  <32.099449, 34.671295, 35.711323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586901, 35.058659, 36.093903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820820, 34.950111, 36.399677>,  <31.961172, 34.884983, 36.583141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820820, 34.950111, 36.399677>,  <31.586901, 35.058659, 36.093903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820820, 34.950111, 36.399677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050067, 0.928512, 0.367911,
		-0.809632, -0.253427, 0.529407,
		0.584799, -0.271366, 0.764441,
		31.996260, 34.868702, 36.629009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291548, 35.247154, 36.691479>,  <31.586901, 35.058659, 36.093903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291548, 35.247154, 36.691479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670586, 35.178318, 36.799141>,  <31.898008, 35.137016, 36.863739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670586, 35.178318, 36.799141>,  <31.291548, 35.247154, 36.691479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670586, 35.178318, 36.799141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014645, 0.865031, 0.501504,
		-0.319134, -0.471282, 0.822221,
		0.947596, -0.172089, 0.269159,
		31.954865, 35.126690, 36.879890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265907, 35.565296, 37.278950>,  <31.291548, 35.247154, 36.691479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265907, 35.565296, 37.278950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653872, 35.529133, 37.188526>,  <31.886650, 35.507435, 37.134270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653872, 35.529133, 37.188526>,  <31.265907, 35.565296, 37.278950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653872, 35.529133, 37.188526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178452, 0.895626, 0.407443,
		0.165628, -0.435523, 0.884809,
		0.969908, -0.090412, -0.226061,
		31.944843, 35.502010, 37.120708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622776, 35.645309, 37.904377>,  <31.265907, 35.565296, 37.278950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622776, 35.645309, 37.904377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883646, 35.745083, 37.618034>,  <32.040169, 35.804947, 37.446228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883646, 35.745083, 37.618034>,  <31.622776, 35.645309, 37.904377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883646, 35.745083, 37.618034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270159, 0.805839, 0.526913,
		0.708294, -0.537035, 0.458162,
		0.652176, 0.249433, -0.715856,
		32.079300, 35.819912, 37.403278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263618, 35.689919, 38.253864>,  <31.622776, 35.645309, 37.904377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263618, 35.689919, 38.253864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240875, 35.890942, 37.908794>,  <32.227230, 36.011555, 37.701752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240875, 35.890942, 37.908794>,  <32.263618, 35.689919, 38.253864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240875, 35.890942, 37.908794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160671, 0.857415, 0.488900,
		0.985369, -0.110809, -0.129496,
		-0.056857, 0.502554, -0.862674,
		32.223820, 36.041706, 37.649994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801128, 36.213028, 38.207790>,  <32.263618, 35.689919, 38.253864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801128, 36.213028, 38.207790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527912, 36.348316, 37.948849>,  <32.363983, 36.429489, 37.793484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527912, 36.348316, 37.948849>,  <32.801128, 36.213028, 38.207790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527912, 36.348316, 37.948849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067013, 0.911605, 0.405568,
		0.727302, 0.233637, -0.645326,
		-0.683038, 0.338216, -0.647355,
		32.323002, 36.449780, 37.754642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028374, 36.893501, 38.060383>,  <32.801128, 36.213028, 38.207790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028374, 36.893501, 38.060383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645760, 36.880947, 37.944408>,  <32.416191, 36.873413, 37.874825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645760, 36.880947, 37.944408>,  <33.028374, 36.893501, 38.060383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645760, 36.880947, 37.944408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178430, 0.849375, 0.496715,
		0.230670, 0.526856, -0.818055,
		-0.956532, -0.031389, -0.289932,
		32.358799, 36.871532, 37.857430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894001, 37.585251, 37.950901>,  <33.028374, 36.893501, 38.060383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894001, 37.585251, 37.950901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539898, 37.402542, 37.985958>,  <32.327438, 37.292915, 38.006992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539898, 37.402542, 37.985958>,  <32.894001, 37.585251, 37.950901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539898, 37.402542, 37.985958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417889, 0.863866, 0.281255,
		-0.204184, 0.212356, -0.955622,
		-0.885256, -0.456772, 0.087646,
		32.274323, 37.265511, 38.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351372, 38.022438, 37.678886>,  <32.894001, 37.585251, 37.950901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351372, 38.022438, 37.678886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152363, 37.783066, 37.930077>,  <32.032959, 37.639442, 38.080791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152363, 37.783066, 37.930077>,  <32.351372, 38.022438, 37.678886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152363, 37.783066, 37.930077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569011, 0.771562, 0.284463,
		-0.654754, -0.215799, -0.724381,
		-0.497518, -0.598434, 0.627975,
		32.003109, 37.603535, 38.118469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677425, 38.151024, 37.526672>,  <32.351372, 38.022438, 37.678886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677425, 38.151024, 37.526672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662378, 37.955139, 37.875099>,  <31.653351, 37.837608, 38.084156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662378, 37.955139, 37.875099>,  <31.677425, 38.151024, 37.526672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662378, 37.955139, 37.875099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770419, 0.569371, 0.286829,
		-0.636427, -0.660300, -0.398703,
		-0.037617, -0.489714, 0.871072,
		31.651093, 37.808224, 38.136421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963709, 38.050072, 37.657116>,  <31.677425, 38.151024, 37.526672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963709, 38.050072, 37.657116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163019, 38.003860, 38.000832>,  <31.282604, 37.976131, 38.207062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163019, 38.003860, 38.000832>,  <30.963709, 38.050072, 37.657116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163019, 38.003860, 38.000832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724056, 0.489732, 0.485701,
		-0.476935, -0.864184, 0.160369,
		0.498274, -0.115532, 0.859288,
		31.312502, 37.969200, 38.258617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478441, 37.803745, 38.060669>,  <30.963709, 38.050072, 37.657116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478441, 37.803745, 38.060669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752754, 37.972839, 38.297649>,  <30.917341, 38.074295, 38.439838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752754, 37.972839, 38.297649>,  <30.478441, 37.803745, 38.060669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752754, 37.972839, 38.297649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724801, 0.470588, 0.503201,
		-0.066078, -0.774494, 0.629121,
		0.685783, 0.422737, 0.592449,
		30.958488, 38.099659, 38.475384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166649, 37.950439, 38.615608>,  <30.478441, 37.803745, 38.060669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166649, 37.950439, 38.615608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485386, 38.170475, 38.715561>,  <30.676628, 38.302498, 38.775532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485386, 38.170475, 38.715561>,  <30.166649, 37.950439, 38.615608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485386, 38.170475, 38.715561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593613, 0.635774, 0.493371,
		0.112528, -0.541474, 0.833152,
		0.796844, 0.550088, 0.249884,
		30.724440, 38.335503, 38.790527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065262, 38.099617, 39.241310>,  <30.166649, 37.950439, 38.615608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065262, 38.099617, 39.241310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318451, 38.379120, 39.107990>,  <30.470364, 38.546822, 39.027996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318451, 38.379120, 39.107990>,  <30.065262, 38.099617, 39.241310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318451, 38.379120, 39.107990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663010, 0.711552, 0.232619,
		0.399706, 0.073742, 0.913672,
		0.632972, 0.698753, -0.333303,
		30.508343, 38.588745, 39.007999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023912, 38.645733, 39.738190>,  <30.065262, 38.099617, 39.241310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023912, 38.645733, 39.738190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186405, 38.820713, 39.417286>,  <30.283901, 38.925701, 39.224743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186405, 38.820713, 39.417286>,  <30.023912, 38.645733, 39.738190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186405, 38.820713, 39.417286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666080, 0.742797, 0.067748,
		0.625549, 0.506844, 0.593125,
		0.406234, 0.437448, -0.802255,
		30.308275, 38.951946, 39.176609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003983, 39.238747, 39.964741>,  <30.023912, 38.645733, 39.738190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003983, 39.238747, 39.964741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058758, 39.272655, 39.569962>,  <30.091623, 39.293003, 39.333096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058758, 39.272655, 39.569962>,  <30.003983, 39.238747, 39.964741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058758, 39.272655, 39.569962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634783, 0.772385, -0.021729,
		0.760460, 0.629471, 0.159582,
		0.136937, 0.084776, -0.986946,
		30.099838, 39.298088, 39.273876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145235, 39.869366, 39.907822>,  <30.003983, 39.238747, 39.964741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145235, 39.869366, 39.907822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029400, 39.783100, 39.534805>,  <29.959898, 39.731342, 39.310997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029400, 39.783100, 39.534805>,  <30.145235, 39.869366, 39.907822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029400, 39.783100, 39.534805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666412, 0.744776, 0.034706,
		0.687048, 0.631505, -0.359397,
		-0.289587, -0.215662, -0.932539,
		29.942524, 39.718403, 39.255043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199171, 40.479080, 39.573242>,  <30.145235, 39.869366, 39.907822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199171, 40.479080, 39.573242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953749, 40.275589, 39.331665>,  <29.806496, 40.153496, 39.186718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953749, 40.275589, 39.331665>,  <30.199171, 40.479080, 39.573242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953749, 40.275589, 39.331665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682732, 0.726051, 0.082017,
		0.396772, 0.462656, -0.792793,
		-0.613554, -0.508724, -0.603947,
		29.769682, 40.122971, 39.150482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988918, 40.868225, 39.012577>,  <30.199171, 40.479080, 39.573242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988918, 40.868225, 39.012577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690496, 40.603733, 39.044025>,  <29.511444, 40.445038, 39.062893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690496, 40.603733, 39.044025>,  <29.988918, 40.868225, 39.012577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690496, 40.603733, 39.044025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659145, 0.750094, 0.053721,
		-0.094492, -0.011741, -0.995456,
		-0.746055, -0.661227, 0.078616,
		29.466681, 40.405365, 39.067612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369623, 41.136246, 38.654060>,  <29.988918, 40.868225, 39.012577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369623, 41.136246, 38.654060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215845, 40.849056, 38.886166>,  <29.123577, 40.676743, 39.025429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215845, 40.849056, 38.886166>,  <29.369623, 41.136246, 38.654060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215845, 40.849056, 38.886166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808425, 0.565325, 0.163880,
		-0.445701, -0.406098, -0.797768,
		-0.384447, -0.717978, 0.580266,
		29.100512, 40.633663, 39.060246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581163, 41.041874, 38.467960>,  <29.369623, 41.136246, 38.654060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581163, 41.041874, 38.467960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640785, 40.885799, 38.831398>,  <28.676558, 40.792156, 39.049461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640785, 40.885799, 38.831398>,  <28.581163, 41.041874, 38.467960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640785, 40.885799, 38.831398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828260, 0.452669, 0.330267,
		-0.540156, -0.801778, -0.255701,
		0.149053, -0.390182, 0.908593,
		28.685501, 40.768745, 39.103977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925730, 40.827187, 38.671680>,  <28.581163, 41.041874, 38.467960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925730, 40.827187, 38.671680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146128, 40.853779, 39.004425>,  <28.278366, 40.869736, 39.204071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146128, 40.853779, 39.004425>,  <27.925730, 40.827187, 38.671680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146128, 40.853779, 39.004425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658672, 0.646713, 0.384595,
		-0.512403, -0.759830, 0.400126,
		0.550994, 0.066484, 0.831857,
		28.311426, 40.873722, 39.253983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411425, 40.823479, 39.180817>,  <27.925730, 40.827187, 38.671680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411425, 40.823479, 39.180817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737843, 41.005337, 39.323570>,  <27.933693, 41.114452, 39.409222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737843, 41.005337, 39.323570>,  <27.411425, 40.823479, 39.180817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737843, 41.005337, 39.323570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577931, 0.633039, 0.515032,
		0.008238, -0.626543, 0.779343,
		0.816044, 0.454649, 0.356884,
		27.982656, 41.141731, 39.430634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228237, 40.939442, 39.790554>,  <27.411425, 40.823479, 39.180817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228237, 40.939442, 39.790554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543739, 41.184177, 39.766838>,  <27.733040, 41.331020, 39.752609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543739, 41.184177, 39.766838>,  <27.228237, 40.939442, 39.790554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543739, 41.184177, 39.766838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437690, 0.626722, 0.644707,
		0.431616, -0.482565, 0.762127,
		0.788755, 0.611841, -0.059289,
		27.780365, 41.367729, 39.749050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398233, 41.208630, 40.477543>,  <27.228237, 40.939442, 39.790554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398233, 41.208630, 40.477543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589014, 41.474369, 40.247356>,  <27.703482, 41.633812, 40.109245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589014, 41.474369, 40.247356>,  <27.398233, 41.208630, 40.477543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589014, 41.474369, 40.247356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208113, 0.721480, 0.660421,
		0.853936, -0.195226, 0.482369,
		0.476950, 0.664345, -0.575469,
		27.732100, 41.673672, 40.074715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971418, 41.613583, 40.837547>,  <27.398233, 41.208630, 40.477543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971418, 41.613583, 40.837547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872816, 41.859581, 40.537945>,  <27.813656, 42.007179, 40.358181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872816, 41.859581, 40.537945>,  <27.971418, 41.613583, 40.837547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872816, 41.859581, 40.537945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068070, 0.781936, 0.619631,
		0.966748, 0.101756, -0.234613,
		-0.246504, 0.614997, -0.749009,
		27.798864, 42.044079, 40.313244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296854, 42.228268, 41.107422>,  <27.971418, 41.613583, 40.837547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296854, 42.228268, 41.107422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049616, 42.346588, 40.816093>,  <27.901274, 42.417580, 40.641296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049616, 42.346588, 40.816093>,  <28.296854, 42.228268, 41.107422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049616, 42.346588, 40.816093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082628, 0.896921, 0.434402,
		0.781749, 0.328682, -0.529941,
		-0.618095, 0.295805, -0.728325,
		27.864187, 42.435329, 40.597595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442730, 42.881275, 40.923199>,  <28.296854, 42.228268, 41.107422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442730, 42.881275, 40.923199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058479, 42.825714, 40.826950>,  <27.827929, 42.792377, 40.769199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058479, 42.825714, 40.826950>,  <28.442730, 42.881275, 40.923199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058479, 42.825714, 40.826950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245275, 0.830809, 0.499597,
		0.130517, 0.538946, -0.832168,
		-0.960628, -0.138904, -0.240624,
		27.770290, 42.784042, 40.754765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216419, 43.579700, 40.938622>,  <28.442730, 42.881275, 40.923199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216419, 43.579700, 40.938622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896692, 43.339539, 40.928795>,  <27.704855, 43.195442, 40.922901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896692, 43.339539, 40.928795>,  <28.216419, 43.579700, 40.938622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896692, 43.339539, 40.928795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477662, 0.610046, 0.632204,
		-0.364592, 0.517067, -0.774412,
		-0.799319, -0.600404, -0.024565,
		27.656897, 43.159416, 40.921425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670475, 44.015934, 40.783539>,  <28.216419, 43.579700, 40.938622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670475, 44.015934, 40.783539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485523, 43.705883, 40.955765>,  <27.374552, 43.519852, 41.059101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485523, 43.705883, 40.955765>,  <27.670475, 44.015934, 40.783539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485523, 43.705883, 40.955765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400484, 0.615802, 0.678528,
		-0.791087, 0.141303, -0.595159,
		-0.462378, -0.775127, 0.430564,
		27.346809, 43.473347, 41.084934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092299, 44.190769, 41.021999>,  <27.670475, 44.015934, 40.783539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092299, 44.190769, 41.021999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128805, 43.856243, 41.238239>,  <27.150709, 43.655529, 41.367985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128805, 43.856243, 41.238239>,  <27.092299, 44.190769, 41.021999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128805, 43.856243, 41.238239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580388, 0.396462, 0.711314,
		-0.809210, -0.378676, -0.449204,
		0.091266, -0.836315, 0.540600,
		27.156185, 43.605350, 41.400421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451923, 43.736454, 41.082123>,  <27.092299, 44.190769, 41.021999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451923, 43.736454, 41.082123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674328, 43.714054, 41.413837>,  <26.807772, 43.700615, 41.612865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674328, 43.714054, 41.413837>,  <26.451923, 43.736454, 41.082123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674328, 43.714054, 41.413837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723292, 0.458973, 0.515938,
		-0.409511, -0.886683, 0.214693,
		0.556012, -0.055997, 0.829286,
		26.841131, 43.697254, 41.662624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115088, 43.366528, 41.540012>,  <26.451923, 43.736454, 41.082123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115088, 43.366528, 41.540012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335310, 43.652519, 41.712376>,  <26.467443, 43.824116, 41.815796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335310, 43.652519, 41.712376>,  <26.115088, 43.366528, 41.540012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335310, 43.652519, 41.712376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804501, 0.316624, 0.502521,
		0.222857, -0.623336, 0.749525,
		0.550557, 0.714984, 0.430912,
		26.500477, 43.867016, 41.841648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944044, 43.359653, 42.223995>,  <26.115088, 43.366528, 41.540012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944044, 43.359653, 42.223995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084644, 43.732227, 42.186321>,  <26.169004, 43.955772, 42.163715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084644, 43.732227, 42.186321>,  <25.944044, 43.359653, 42.223995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084644, 43.732227, 42.186321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772677, 0.345442, 0.532579,
		0.528600, -0.114428, 0.841123,
		0.351501, 0.931438, -0.094185,
		26.190094, 44.011658, 42.158066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134342, 43.716633, 42.860565>,  <25.944044, 43.359653, 42.223995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134342, 43.716633, 42.860565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996223, 43.937607, 42.557095>,  <25.913351, 44.070190, 42.375011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996223, 43.937607, 42.557095>,  <26.134342, 43.716633, 42.860565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996223, 43.937607, 42.557095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736865, 0.341048, 0.583709,
		0.581205, 0.760594, 0.289306,
		-0.345298, 0.552434, -0.758674,
		25.892633, 44.103336, 42.329491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059465, 43.610756, 43.558701>,  <26.134342, 43.716633, 42.860565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059465, 43.610756, 43.558701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135284, 43.681477, 43.945030>,  <26.180777, 43.723907, 44.176826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135284, 43.681477, 43.945030>,  <26.059465, 43.610756, 43.558701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.135284, 43.681477, 43.945030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946804, 0.227624, -0.227484,
		-0.260064, 0.957564, -0.124249,
		0.189549, 0.176799, 0.965823,
		26.192148, 43.734516, 44.234776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500513, 44.206940, 43.550293>,  <26.059465, 43.610756, 43.558701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500513, 44.206940, 43.550293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565424, 43.980286, 43.873425>,  <26.604370, 43.844292, 44.067303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565424, 43.980286, 43.873425>,  <26.500513, 44.206940, 43.550293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565424, 43.980286, 43.873425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974121, 0.222534, -0.039588,
		-0.157338, 0.793350, 0.588082,
		0.162275, -0.566634, 0.807832,
		26.614107, 43.810295, 44.115772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002661, 44.504471, 43.897549>,  <26.500513, 44.206940, 43.550293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002661, 44.504471, 43.897549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038059, 44.128418, 44.029194>,  <27.059299, 43.902786, 44.108181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038059, 44.128418, 44.029194>,  <27.002661, 44.504471, 43.897549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038059, 44.128418, 44.029194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995200, 0.069598, -0.068796,
		0.041772, 0.333622, 0.941781,
		0.088498, -0.940134, 0.329113,
		27.064608, 43.846378, 44.127926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529301, 44.683167, 44.491848>,  <27.002661, 44.504471, 43.897549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529301, 44.683167, 44.491848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884274, 44.834724, 44.596848>,  <28.097258, 44.925659, 44.659847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884274, 44.834724, 44.596848>,  <27.529301, 44.683167, 44.491848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884274, 44.834724, 44.596848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457994, -0.789086, -0.409371,
		0.052031, 0.483513, -0.873789,
		0.887432, 0.378890, 0.262503,
		28.150503, 44.948391, 44.675598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012341, 44.749214, 43.919231>,  <27.529301, 44.683167, 44.491848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012341, 44.749214, 43.919231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190508, 44.681664, 44.270931>,  <28.297407, 44.641132, 44.481953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190508, 44.681664, 44.270931>,  <28.012341, 44.749214, 43.919231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190508, 44.681664, 44.270931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433750, -0.818406, -0.376925,
		0.783240, 0.549264, -0.291280,
		0.445417, -0.168880, 0.879252,
		28.324133, 44.631001, 44.534706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792931, 44.602745, 43.802975>,  <28.012341, 44.749214, 43.919231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792931, 44.602745, 43.802975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603132, 44.412552, 44.099293>,  <28.489254, 44.298435, 44.277084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603132, 44.412552, 44.099293>,  <28.792931, 44.602745, 43.802975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603132, 44.412552, 44.099293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329878, -0.876283, -0.351154,
		0.816110, 0.077750, 0.572642,
		-0.474494, -0.475482, 0.740791,
		28.460783, 44.269909, 44.321529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104614, 44.137466, 44.251881>,  <28.792931, 44.602745, 43.802975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104614, 44.137466, 44.251881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722481, 44.020153, 44.237305>,  <28.493200, 43.949764, 44.228558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722481, 44.020153, 44.237305>,  <29.104614, 44.137466, 44.251881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722481, 44.020153, 44.237305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283752, -0.875762, -0.390547,
		0.082625, -0.383442, 0.919862,
		-0.955332, -0.293281, -0.036442,
		28.435881, 43.932167, 44.226372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907028, 43.610405, 44.772785>,  <29.104614, 44.137466, 44.251881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907028, 43.610405, 44.772785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706127, 43.562798, 44.430187>,  <28.585587, 43.534233, 44.224628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706127, 43.562798, 44.430187>,  <28.907028, 43.610405, 44.772785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706127, 43.562798, 44.430187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516818, -0.835427, -0.186977,
		-0.693282, -0.536560, 0.481107,
		-0.502254, -0.119017, -0.856490,
		28.555450, 43.527092, 44.173241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535231, 42.979572, 44.755959>,  <28.907028, 43.610405, 44.772785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535231, 42.979572, 44.755959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575235, 43.084843, 44.372139>,  <28.599239, 43.148006, 44.141846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575235, 43.084843, 44.372139>,  <28.535231, 42.979572, 44.755959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575235, 43.084843, 44.372139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379879, -0.901430, -0.207644,
		-0.919613, -0.343746, -0.190131,
		0.100013, 0.263179, -0.959549,
		28.605240, 43.163795, 44.084274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299618, 42.413055, 44.417870>,  <28.535231, 42.979572, 44.755959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299618, 42.413055, 44.417870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537449, 42.617119, 44.169285>,  <28.680147, 42.739559, 44.020134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537449, 42.617119, 44.169285>,  <28.299618, 42.413055, 44.417870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537449, 42.617119, 44.169285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405343, -0.857706, -0.316287,
		-0.694387, -0.063847, -0.716764,
		0.594579, 0.510161, -0.621459,
		28.715822, 42.770168, 43.982845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302855, 42.099796, 43.738358>,  <28.299618, 42.413055, 44.417870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302855, 42.099796, 43.738358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635824, 42.321342, 43.731438>,  <28.835606, 42.454269, 43.727287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635824, 42.321342, 43.731438>,  <28.302855, 42.099796, 43.738358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635824, 42.321342, 43.731438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498773, -0.762495, -0.412102,
		-0.241438, 0.334417, -0.910974,
		0.832426, 0.553866, -0.017297,
		28.885551, 42.487503, 43.726250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659166, 41.822105, 43.104805>,  <28.302855, 42.099796, 43.738358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659166, 41.822105, 43.104805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935230, 42.021595, 43.314548>,  <29.100868, 42.141289, 43.440395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935230, 42.021595, 43.314548>,  <28.659166, 41.822105, 43.104805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935230, 42.021595, 43.314548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689949, -0.672060, -0.268896,
		0.218295, 0.547362, -0.807925,
		0.690158, 0.498728, 0.524359,
		29.142277, 42.171215, 43.471855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273962, 41.893620, 42.716148>,  <28.659166, 41.822105, 43.104805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273962, 41.893620, 42.716148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448839, 41.974155, 43.066765>,  <29.553766, 42.022476, 43.277134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448839, 41.974155, 43.066765>,  <29.273962, 41.893620, 42.716148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448839, 41.974155, 43.066765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745348, -0.626533, -0.227843,
		0.503307, 0.752939, -0.423987,
		0.437194, 0.201342, 0.876540,
		29.579998, 42.034557, 43.329727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932970, 42.122993, 42.622543>,  <29.273962, 41.893620, 42.716148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932970, 42.122993, 42.622543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906559, 41.935238, 42.974751>,  <29.890713, 41.822586, 43.186077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906559, 41.935238, 42.974751>,  <29.932970, 42.122993, 42.622543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906559, 41.935238, 42.974751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777342, -0.577466, -0.249544,
		0.625603, 0.667989, 0.403003,
		-0.066028, -0.469386, 0.880521,
		29.886751, 41.794422, 43.238907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614576, 41.866524, 42.718548>,  <29.932970, 42.122993, 42.622543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614576, 41.866524, 42.718548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409391, 41.643040, 42.979229>,  <30.286280, 41.508949, 43.135635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409391, 41.643040, 42.979229>,  <30.614576, 41.866524, 42.718548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409391, 41.643040, 42.979229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696690, -0.714496, -0.064169,
		0.501488, 0.421115, 0.755759,
		-0.512964, -0.558710, 0.651698,
		30.255503, 41.475426, 43.174740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146761, 41.532932, 43.185474>,  <30.614576, 41.866524, 42.718548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146761, 41.532932, 43.185474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809217, 41.320412, 43.215454>,  <30.606691, 41.192898, 43.233440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809217, 41.320412, 43.215454>,  <31.146761, 41.532932, 43.185474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809217, 41.320412, 43.215454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526330, -0.846800, -0.076859,
		0.104299, -0.025413, 0.994221,
		-0.843860, -0.531304, 0.074945,
		30.556059, 41.161022, 43.237938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260328, 41.093864, 43.648979>,  <31.146761, 41.532932, 43.185474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260328, 41.093864, 43.648979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960531, 40.905704, 43.462650>,  <30.780653, 40.792809, 43.350853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960531, 40.905704, 43.462650>,  <31.260328, 41.093864, 43.648979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960531, 40.905704, 43.462650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520848, -0.853321, 0.023674,
		-0.408630, -0.224878, 0.884563,
		-0.749493, -0.470396, -0.465820,
		30.735683, 40.764587, 43.322903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189005, 40.448666, 44.028519>,  <31.260328, 41.093864, 43.648979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189005, 40.448666, 44.028519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008812, 40.377090, 43.678650>,  <30.900696, 40.334145, 43.468731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008812, 40.377090, 43.678650>,  <31.189005, 40.448666, 44.028519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008812, 40.377090, 43.678650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374533, -0.927208, -0.003206,
		-0.810427, -0.329037, 0.484709,
		-0.450481, -0.178942, -0.874670,
		30.873669, 40.323406, 43.416248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906076, 39.717693, 44.013885>,  <31.189005, 40.448666, 44.028519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906076, 39.717693, 44.013885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902878, 39.825527, 43.628708>,  <30.900959, 39.890228, 43.397602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902878, 39.825527, 43.628708>,  <30.906076, 39.717693, 44.013885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902878, 39.825527, 43.628708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241713, -0.933898, -0.263457,
		-0.970315, -0.234862, -0.057696,
		-0.007994, 0.269582, -0.962944,
		30.900480, 39.906403, 43.339825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682819, 39.161594, 43.782360>,  <30.906076, 39.717693, 44.013885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682819, 39.161594, 43.782360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873331, 39.351196, 43.486122>,  <30.987638, 39.464958, 43.308380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873331, 39.351196, 43.486122>,  <30.682819, 39.161594, 43.782360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873331, 39.351196, 43.486122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209762, -0.879192, -0.427810,
		-0.853906, 0.048410, -0.518171,
		0.476281, 0.474003, -0.740593,
		31.016216, 39.493397, 43.263943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554621, 38.709061, 43.257755>,  <30.682819, 39.161594, 43.782360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554621, 38.709061, 43.257755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864613, 38.921658, 43.120979>,  <31.050608, 39.049213, 43.038914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864613, 38.921658, 43.120979>,  <30.554621, 38.709061, 43.257755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864613, 38.921658, 43.120979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309594, -0.790966, -0.527754,
		-0.550960, 0.303136, -0.777529,
		0.774980, 0.531490, -0.341942,
		31.097107, 39.081104, 43.018398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636112, 38.555130, 42.615917>,  <30.554621, 38.709061, 43.257755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636112, 38.555130, 42.615917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002892, 38.690838, 42.699924>,  <31.222960, 38.772263, 42.750328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002892, 38.690838, 42.699924>,  <30.636112, 38.555130, 42.615917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002892, 38.690838, 42.699924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398832, -0.795050, -0.456977,
		0.011941, 0.502786, -0.864328,
		0.916946, 0.339265, 0.210021,
		31.277975, 38.792618, 42.762932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988173, 38.364765, 42.013466>,  <30.636112, 38.555130, 42.615917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988173, 38.364765, 42.013466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273018, 38.433323, 42.285797>,  <31.443924, 38.474457, 42.449196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273018, 38.433323, 42.285797>,  <30.988173, 38.364765, 42.013466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273018, 38.433323, 42.285797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485850, -0.820335, -0.301664,
		0.506800, 0.545597, -0.667442,
		0.712112, 0.171393, 0.680823,
		31.486652, 38.484741, 42.490044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578125, 38.283970, 41.680729>,  <30.988173, 38.364765, 42.013466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578125, 38.283970, 41.680729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663849, 38.208988, 42.064175>,  <31.715282, 38.163998, 42.294243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663849, 38.208988, 42.064175>,  <31.578125, 38.283970, 41.680729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663849, 38.208988, 42.064175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436801, -0.859420, -0.265709,
		0.873657, 0.475666, -0.102302,
		0.214309, -0.187453, 0.958610,
		31.728142, 38.152752, 42.351757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163349, 37.816730, 41.687286>,  <31.578125, 38.283970, 41.680729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163349, 37.816730, 41.687286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996483, 37.772064, 42.048065>,  <31.896364, 37.745266, 42.264530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996483, 37.772064, 42.048065>,  <32.163349, 37.816730, 41.687286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996483, 37.772064, 42.048065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315361, -0.948546, 0.028424,
		0.852362, 0.296296, 0.430915,
		-0.417164, -0.111666, 0.901945,
		31.871334, 37.738564, 42.318649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702663, 37.493046, 42.130878>,  <32.163349, 37.816730, 41.687286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702663, 37.493046, 42.130878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341877, 37.408787, 42.281658>,  <32.125404, 37.358231, 42.372128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341877, 37.408787, 42.281658>,  <32.702663, 37.493046, 42.130878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341877, 37.408787, 42.281658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173155, -0.976123, -0.131151,
		0.395576, -0.053023, 0.916902,
		-0.901963, -0.210646, 0.376949,
		32.071289, 37.345592, 42.394741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855049, 37.010178, 42.602547>,  <32.702663, 37.493046, 42.130878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855049, 37.010178, 42.602547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464622, 36.970100, 42.525349>,  <32.230366, 36.946053, 42.479031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464622, 36.970100, 42.525349>,  <32.855049, 37.010178, 42.602547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464622, 36.970100, 42.525349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094663, -0.994795, 0.037703,
		-0.195766, 0.018532, 0.980476,
		-0.976071, -0.100196, -0.192992,
		32.171803, 36.940041, 42.467449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527363, 36.589905, 43.101494>,  <32.855049, 37.010178, 42.602547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527363, 36.589905, 43.101494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294464, 36.545815, 42.779293>,  <32.154724, 36.519360, 42.585972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294464, 36.545815, 42.779293>,  <32.527363, 36.589905, 43.101494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294464, 36.545815, 42.779293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033606, -0.993183, 0.111618,
		-0.812315, 0.037920, 0.581984,
		-0.582250, -0.110227, -0.805503,
		32.119789, 36.512745, 42.537643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182751, 35.923450, 43.172558>,  <32.527363, 36.589905, 43.101494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182751, 35.923450, 43.172558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116066, 36.013912, 42.788670>,  <32.076057, 36.068188, 42.558338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116066, 36.013912, 42.788670>,  <32.182751, 35.923450, 43.172558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116066, 36.013912, 42.788670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159591, -0.954319, -0.252599,
		-0.973005, -0.195273, 0.123003,
		-0.166710, 0.226150, -0.959721,
		32.066051, 36.081757, 42.500751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718855, 35.363140, 42.895618>,  <32.182751, 35.923450, 43.172558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718855, 35.363140, 42.895618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918657, 35.510826, 42.582142>,  <32.038540, 35.599438, 42.394054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918657, 35.510826, 42.582142>,  <31.718855, 35.363140, 42.895618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918657, 35.510826, 42.582142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060564, -0.917303, -0.393556,
		-0.864190, 0.149121, -0.480561,
		0.499507, 0.369212, -0.783693,
		32.068508, 35.621590, 42.347034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471445, 34.967659, 42.381424>,  <31.718855, 35.363140, 42.895618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471445, 34.967659, 42.381424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771029, 35.161388, 42.200542>,  <31.950779, 35.277626, 42.092014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771029, 35.161388, 42.200542>,  <31.471445, 34.967659, 42.381424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771029, 35.161388, 42.200542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134676, -0.779474, -0.611787,
		-0.648786, 0.397302, -0.649021,
		0.748959, 0.484326, -0.452205,
		31.995716, 35.306686, 42.064880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400129, 34.789692, 41.657280>,  <31.471445, 34.967659, 42.381424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400129, 34.789692, 41.657280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786324, 34.887794, 41.692356>,  <32.018040, 34.946655, 41.713402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786324, 34.887794, 41.692356>,  <31.400129, 34.789692, 41.657280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786324, 34.887794, 41.692356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250270, -0.780314, -0.573128,
		-0.072140, 0.575291, -0.814761,
		0.965485, 0.245255, 0.087686,
		32.075970, 34.961372, 41.718662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687069, 34.747231, 41.001911>,  <31.400129, 34.789692, 41.657280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687069, 34.747231, 41.001911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986061, 34.711155, 41.265163>,  <32.165455, 34.689510, 41.423115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986061, 34.711155, 41.265163>,  <31.687069, 34.747231, 41.001911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986061, 34.711155, 41.265163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333525, -0.805857, -0.489241,
		0.574486, 0.585201, -0.572281,
		0.747481, -0.090192, 0.658132,
		32.210304, 34.684097, 41.462605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234798, 34.593132, 40.570568>,  <31.687069, 34.747231, 41.001911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234798, 34.593132, 40.570568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374043, 34.492912, 40.931908>,  <32.457588, 34.432781, 41.148712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374043, 34.492912, 40.931908>,  <32.234798, 34.593132, 40.570568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374043, 34.492912, 40.931908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470800, -0.786564, -0.399581,
		0.810660, 0.564395, -0.155849,
		0.348106, -0.250551, 0.903353,
		32.478474, 34.417747, 41.202915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015209, 34.475597, 40.471100>,  <32.234798, 34.593132, 40.570568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015209, 34.475597, 40.471100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853355, 34.275906, 40.777576>,  <32.756245, 34.156090, 40.961460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853355, 34.275906, 40.777576>,  <33.015209, 34.475597, 40.471100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853355, 34.275906, 40.777576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447401, -0.838792, -0.310258,
		0.797562, 0.217253, 0.562758,
		-0.404632, -0.499228, 0.766188,
		32.731964, 34.126137, 41.007431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501060, 34.001080, 40.645164>,  <33.015209, 34.475597, 40.471100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501060, 34.001080, 40.645164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179874, 33.856304, 40.834579>,  <32.987164, 33.769440, 40.948231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179874, 33.856304, 40.834579>,  <33.501060, 34.001080, 40.645164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179874, 33.856304, 40.834579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283628, -0.930819, -0.230500,
		0.524209, -0.050775, 0.850075,
		-0.802970, -0.361936, 0.473542,
		32.938984, 33.747723, 40.976643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824875, 33.393200, 40.941311>,  <33.501060, 34.001080, 40.645164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824875, 33.393200, 40.941311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431755, 33.320175, 40.952461>,  <33.195885, 33.276360, 40.959152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431755, 33.320175, 40.952461>,  <33.824875, 33.393200, 40.941311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431755, 33.320175, 40.952461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177960, -0.976538, -0.121259,
		0.049360, -0.114212, 0.992229,
		-0.982799, -0.182563, 0.027877,
		33.136917, 33.265408, 40.960823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695797, 32.794250, 41.448914>,  <33.824875, 33.393200, 40.941311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695797, 32.794250, 41.448914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406105, 32.851429, 41.179081>,  <33.232292, 32.885735, 41.017181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406105, 32.851429, 41.179081>,  <33.695797, 32.794250, 41.448914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406105, 32.851429, 41.179081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134573, -0.930169, -0.341579,
		-0.676304, -0.338161, 0.654416,
		-0.724226, 0.142944, -0.674584,
		33.188839, 32.894314, 40.976707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233624, 32.132454, 41.426441>,  <33.695797, 32.794250, 41.448914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233624, 32.132454, 41.426441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189625, 32.324329, 41.078236>,  <33.163227, 32.439457, 40.869312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189625, 32.324329, 41.078236>,  <33.233624, 32.132454, 41.426441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189625, 32.324329, 41.078236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074343, -0.869405, -0.488475,
		-0.991148, -0.118448, 0.059971,
		-0.109998, 0.479693, -0.870514,
		33.156624, 32.468239, 40.817081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859989, 31.642944, 41.001015>,  <33.233624, 32.132454, 41.426441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859989, 31.642944, 41.001015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985954, 31.922640, 40.744297>,  <33.061531, 32.090458, 40.590267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985954, 31.922640, 40.744297>,  <32.859989, 31.642944, 41.001015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985954, 31.922640, 40.744297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100049, -0.696883, -0.710172,
		-0.943833, 0.159430, -0.289414,
		0.314911, 0.699240, -0.641791,
		33.080429, 32.132412, 40.551762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585979, 31.410385, 40.349995>,  <32.859989, 31.642944, 41.001015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585979, 31.410385, 40.349995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851578, 31.688669, 40.240372>,  <33.010937, 31.855639, 40.174599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851578, 31.688669, 40.240372>,  <32.585979, 31.410385, 40.349995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851578, 31.688669, 40.240372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151456, -0.484046, -0.861835,
		-0.732240, 0.530745, -0.426772,
		0.663992, 0.695708, -0.274053,
		33.050774, 31.897381, 40.158157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517845, 31.417034, 39.688736>,  <32.585979, 31.410385, 40.349995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517845, 31.417034, 39.688736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872696, 31.593342, 39.743477>,  <33.085606, 31.699127, 39.776321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872696, 31.593342, 39.743477>,  <32.517845, 31.417034, 39.688736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872696, 31.593342, 39.743477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344364, -0.434738, -0.832116,
		-0.307279, 0.785318, -0.537453,
		0.887126, 0.440771, 0.136850,
		33.138832, 31.725573, 39.784531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657944, 31.800005, 39.121708>,  <32.517845, 31.417034, 39.688736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657944, 31.800005, 39.121708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985680, 31.672319, 39.312195>,  <33.182323, 31.595709, 39.426487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985680, 31.672319, 39.312195>,  <32.657944, 31.800005, 39.121708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985680, 31.672319, 39.312195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287480, -0.489905, -0.823011,
		0.496016, 0.811231, -0.309633,
		0.819343, -0.319214, 0.476214,
		33.231483, 31.576555, 39.455059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056423, 31.881554, 38.570602>,  <32.657944, 31.800005, 39.121708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056423, 31.881554, 38.570602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267345, 31.662170, 38.830185>,  <33.393898, 31.530540, 38.985935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267345, 31.662170, 38.830185>,  <33.056423, 31.881554, 38.570602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267345, 31.662170, 38.830185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498254, -0.419076, -0.759025,
		0.688255, 0.723582, 0.052291,
		0.527302, -0.548457, 0.648959,
		33.425537, 31.497633, 39.024872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672710, 31.761158, 38.175571>,  <33.056423, 31.881554, 38.570602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672710, 31.761158, 38.175571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718655, 31.490913, 38.466873>,  <33.746223, 31.328766, 38.641655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718655, 31.490913, 38.466873>,  <33.672710, 31.761158, 38.175571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718655, 31.490913, 38.466873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471564, -0.608154, -0.638573,
		0.874319, 0.416767, 0.248740,
		0.114864, -0.675613, 0.728253,
		33.753113, 31.288229, 38.685349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363743, 31.527523, 38.166584>,  <33.672710, 31.761158, 38.175571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363743, 31.527523, 38.166584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186863, 31.233538, 38.372219>,  <34.080734, 31.057146, 38.495602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186863, 31.233538, 38.372219>,  <34.363743, 31.527523, 38.166584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186863, 31.233538, 38.372219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446335, -0.677481, -0.584640,
		0.777977, -0.029069, 0.627620,
		-0.442196, -0.734965, 0.514090,
		34.054203, 31.013048, 38.526447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864346, 31.047144, 38.416431>,  <34.363743, 31.527523, 38.166584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864346, 31.047144, 38.416431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515465, 30.856684, 38.371632>,  <34.306137, 30.742407, 38.344753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515465, 30.856684, 38.371632>,  <34.864346, 31.047144, 38.416431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515465, 30.856684, 38.371632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422720, -0.618526, -0.662370,
		0.246114, -0.625064, 0.740758,
		-0.872202, -0.476152, -0.111999,
		34.253803, 30.713839, 38.338032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431965, 31.356752, 37.877216>,  <34.864346, 31.047144, 38.416431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431965, 31.356752, 37.877216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742561, 31.588007, 37.776962>,  <35.928921, 31.726761, 37.716808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742561, 31.588007, 37.776962>,  <35.431965, 31.356752, 37.877216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742561, 31.588007, 37.776962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122338, 0.528501, 0.840071,
		0.618140, -0.621644, 0.481104,
		0.776489, 0.578139, -0.250636,
		35.975510, 31.761448, 37.701771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683243, 31.466663, 38.416866>,  <35.431965, 31.356752, 37.877216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683243, 31.466663, 38.416866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869488, 31.760668, 38.219700>,  <35.981236, 31.937071, 38.101398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869488, 31.760668, 38.219700>,  <35.683243, 31.466663, 38.416866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869488, 31.760668, 38.219700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010783, 0.561647, 0.827306,
		0.884925, -0.379886, 0.269434,
		0.465609, 0.735009, -0.492920,
		36.009171, 31.981171, 38.071823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159992, 31.633783, 38.950653>,  <35.683243, 31.466663, 38.416866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159992, 31.633783, 38.950653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120842, 31.937950, 38.693844>,  <36.097351, 32.120449, 38.539761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120842, 31.937950, 38.693844>,  <36.159992, 31.633783, 38.950653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120842, 31.937950, 38.693844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133723, 0.629218, 0.765639,
		0.986174, 0.160791, 0.040099,
		-0.097877, 0.760415, -0.642019,
		36.091480, 32.166073, 38.501240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503139, 32.231705, 39.230610>,  <36.159992, 31.633783, 38.950653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503139, 32.231705, 39.230610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243717, 32.394249, 38.973160>,  <36.088066, 32.491776, 38.818691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243717, 32.394249, 38.973160>,  <36.503139, 32.231705, 39.230610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243717, 32.394249, 38.973160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166689, 0.749226, 0.640996,
		0.742694, 0.523005, -0.418177,
		-0.648553, 0.406359, -0.643624,
		36.049152, 32.516155, 38.780071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775970, 32.878998, 38.968040>,  <36.503139, 32.231705, 39.230610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775970, 32.878998, 38.968040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380112, 32.906334, 38.917561>,  <36.142597, 32.922733, 38.887272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380112, 32.906334, 38.917561>,  <36.775970, 32.878998, 38.968040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380112, 32.906334, 38.917561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002609, 0.870650, 0.491897,
		0.143492, 0.487134, -0.861459,
		-0.989648, 0.068336, -0.126202,
		36.083218, 32.926834, 38.879700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706547, 33.587696, 38.783867>,  <36.775970, 32.878998, 38.968040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706547, 33.587696, 38.783867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346691, 33.467819, 38.910881>,  <36.130779, 33.395893, 38.987091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346691, 33.467819, 38.910881>,  <36.706547, 33.587696, 38.783867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346691, 33.467819, 38.910881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129792, 0.877927, 0.460867,
		-0.416896, 0.373400, -0.828716,
		-0.899640, -0.299694, 0.317540,
		36.076797, 33.377911, 39.006142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197296, 34.107323, 38.632473>,  <36.706547, 33.587696, 38.783867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197296, 34.107323, 38.632473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064075, 33.899265, 38.947060>,  <35.984142, 33.774433, 39.135811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064075, 33.899265, 38.947060>,  <36.197296, 34.107323, 38.632473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064075, 33.899265, 38.947060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002506, 0.834571, 0.550895,
		-0.942905, 0.181507, -0.279260,
		-0.333053, -0.520141, 0.786466,
		35.964161, 33.743221, 39.182999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691612, 34.558243, 38.973118>,  <36.197296, 34.107323, 38.632473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691612, 34.558243, 38.973118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760868, 34.295277, 39.266468>,  <35.802422, 34.137497, 39.442478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760868, 34.295277, 39.266468>,  <35.691612, 34.558243, 38.973118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760868, 34.295277, 39.266468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213761, 0.701785, 0.679562,
		-0.961420, -0.274425, -0.019023,
		0.173138, -0.657411, 0.733372,
		35.812809, 34.098053, 39.486481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220474, 34.788143, 39.404343>,  <35.691612, 34.558243, 38.973118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220474, 34.788143, 39.404343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454399, 34.564331, 39.639263>,  <35.594753, 34.430042, 39.780216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454399, 34.564331, 39.639263>,  <35.220474, 34.788143, 39.404343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454399, 34.564331, 39.639263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105186, 0.665595, 0.738864,
		-0.804323, -0.493870, 0.330390,
		0.584809, -0.559532, 0.587301,
		35.629841, 34.396473, 39.815453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808418, 34.705067, 39.998901>,  <35.220474, 34.788143, 39.404343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808418, 34.705067, 39.998901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194859, 34.654686, 40.089046>,  <35.426723, 34.624458, 40.143135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194859, 34.654686, 40.089046>,  <34.808418, 34.705067, 39.998901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194859, 34.654686, 40.089046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112569, 0.580077, 0.806746,
		-0.232338, -0.804765, 0.546234,
		0.966099, -0.125948, 0.225366,
		35.484688, 34.616901, 40.156654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730953, 34.591755, 40.687672>,  <34.808418, 34.705067, 39.998901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730953, 34.591755, 40.687672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120430, 34.674786, 40.650066>,  <35.354115, 34.724606, 40.627502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120430, 34.674786, 40.650066>,  <34.730953, 34.591755, 40.687672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120430, 34.674786, 40.650066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041559, 0.567410, 0.822386,
		0.224053, -0.796842, 0.561108,
		0.973690, 0.207577, -0.094014,
		35.412537, 34.737061, 40.621861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948605, 34.663635, 41.486809>,  <34.730953, 34.591755, 40.687672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948605, 34.663635, 41.486809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237720, 34.856617, 41.288898>,  <35.411190, 34.972408, 41.170151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237720, 34.856617, 41.288898>,  <34.948605, 34.663635, 41.486809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237720, 34.856617, 41.288898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064698, 0.665580, 0.743517,
		0.688028, -0.569421, 0.449864,
		0.722795, 0.482455, -0.494778,
		35.454559, 35.001354, 41.140465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474377, 34.718697, 41.982632>,  <34.948605, 34.663635, 41.486809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474377, 34.718697, 41.982632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542240, 35.001045, 41.707542>,  <35.582958, 35.170456, 41.542488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542240, 35.001045, 41.707542>,  <35.474377, 34.718697, 41.982632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542240, 35.001045, 41.707542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011329, 0.699186, 0.714850,
		0.985438, -0.113487, 0.126618,
		0.169656, 0.705875, -0.687719,
		35.593136, 35.212807, 41.501228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964100, 35.158466, 42.377155>,  <35.474377, 34.718697, 41.982632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964100, 35.158466, 42.377155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803555, 35.359970, 42.071178>,  <35.707230, 35.480873, 41.887592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803555, 35.359970, 42.071178>,  <35.964100, 35.158466, 42.377155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803555, 35.359970, 42.071178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132524, 0.794433, 0.592717,
		0.906282, 0.339266, -0.252093,
		-0.401360, 0.503760, -0.764942,
		35.683147, 35.511097, 41.841698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318092, 35.804268, 42.361065>,  <35.964100, 35.158466, 42.377155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318092, 35.804268, 42.361065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991978, 35.862625, 42.136917>,  <35.796307, 35.897640, 42.002426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991978, 35.862625, 42.136917>,  <36.318092, 35.804268, 42.361065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991978, 35.862625, 42.136917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181648, 0.854454, 0.486736,
		0.549823, 0.498622, -0.670128,
		-0.815291, 0.145892, -0.560372,
		35.747391, 35.906391, 41.968807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299332, 36.531826, 42.313023>,  <36.318092, 35.804268, 42.361065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299332, 36.531826, 42.313023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935284, 36.402687, 42.209141>,  <35.716854, 36.325203, 42.146812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935284, 36.402687, 42.209141>,  <36.299332, 36.531826, 42.313023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935284, 36.402687, 42.209141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394991, 0.865334, 0.308512,
		0.125130, 0.383365, -0.915082,
		-0.910123, -0.322845, -0.259705,
		35.662247, 36.305832, 42.131229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098850, 37.079922, 41.830719>,  <36.299332, 36.531826, 42.313023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098850, 37.079922, 41.830719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797279, 36.885235, 42.007221>,  <35.616337, 36.768421, 42.113121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797279, 36.885235, 42.007221>,  <36.098850, 37.079922, 41.830719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797279, 36.885235, 42.007221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348367, 0.865634, 0.359609,
		-0.556991, 0.117400, -0.822179,
		-0.753924, -0.486719, 0.441252,
		35.571102, 36.739220, 42.139595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480896, 37.324272, 41.553013>,  <36.098850, 37.079922, 41.830719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480896, 37.324272, 41.553013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374805, 37.156609, 41.900337>,  <35.311153, 37.056011, 42.108730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374805, 37.156609, 41.900337>,  <35.480896, 37.324272, 41.553013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374805, 37.156609, 41.900337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528685, 0.816332, 0.232584,
		-0.806318, -0.397375, -0.438115,
		-0.265224, -0.419161, 0.868309,
		35.295238, 37.030861, 42.160831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807568, 37.372433, 41.541847>,  <35.480896, 37.324272, 41.553013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807568, 37.372433, 41.541847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875645, 37.315086, 41.931816>,  <34.916492, 37.280678, 42.165798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875645, 37.315086, 41.931816>,  <34.807568, 37.372433, 41.541847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875645, 37.315086, 41.931816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527426, 0.822462, 0.213024,
		-0.832380, -0.550456, 0.064361,
		0.170195, -0.143371, 0.974925,
		34.926704, 37.272076, 42.224293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144543, 37.394176, 41.879581>,  <34.807568, 37.372433, 41.541847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144543, 37.394176, 41.879581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428165, 37.492691, 42.143879>,  <34.598339, 37.551800, 42.302456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428165, 37.492691, 42.143879>,  <34.144543, 37.394176, 41.879581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428165, 37.492691, 42.143879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483167, 0.852179, 0.200851,
		-0.513603, -0.461664, 0.723241,
		0.709057, 0.246288, 0.660742,
		34.640881, 37.566578, 42.342102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708515, 37.658726, 42.521252>,  <34.144543, 37.394176, 41.879581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708515, 37.658726, 42.521252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080795, 37.804070, 42.538105>,  <34.304161, 37.891277, 42.548218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080795, 37.804070, 42.538105>,  <33.708515, 37.658726, 42.521252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080795, 37.804070, 42.538105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356569, 0.875481, 0.326177,
		0.081628, -0.318597, 0.944369,
		0.930696, 0.363358, 0.042138,
		34.360004, 37.913078, 42.550747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755505, 38.091599, 43.099724>,  <33.708515, 37.658726, 42.521252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755505, 38.091599, 43.099724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062523, 38.213734, 42.874287>,  <34.246735, 38.287014, 42.739025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062523, 38.213734, 42.874287>,  <33.755505, 38.091599, 43.099724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062523, 38.213734, 42.874287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107846, 0.928238, 0.356011,
		0.631855, -0.212473, 0.745395,
		0.767547, 0.305335, -0.563597,
		34.292786, 38.305336, 42.705208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093891, 38.526081, 43.555901>,  <33.755505, 38.091599, 43.099724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093891, 38.526081, 43.555901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219330, 38.610016, 43.185467>,  <34.294594, 38.660378, 42.963207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219330, 38.610016, 43.185467>,  <34.093891, 38.526081, 43.555901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219330, 38.610016, 43.185467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096156, 0.977283, 0.188873,
		0.944675, 0.029818, 0.326651,
		0.313598, 0.209833, -0.926081,
		34.313408, 38.672966, 42.907642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304771, 39.231125, 43.584007>,  <34.093891, 38.526081, 43.555901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304771, 39.231125, 43.584007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307835, 39.219254, 43.184196>,  <34.309673, 39.212132, 42.944309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307835, 39.219254, 43.184196>,  <34.304771, 39.231125, 43.584007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307835, 39.219254, 43.184196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249689, 0.967841, -0.030652,
		0.968296, 0.249806, 0.000004,
		0.007661, -0.029679, -0.999530,
		34.310131, 39.210350, 42.884338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661961, 39.852798, 43.366707>,  <34.304771, 39.231125, 43.584007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661961, 39.852798, 43.366707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403622, 39.737152, 43.084061>,  <34.248619, 39.667767, 42.914474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403622, 39.737152, 43.084061>,  <34.661961, 39.852798, 43.366707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403622, 39.737152, 43.084061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298022, 0.947569, -0.115308,
		0.702901, 0.136115, -0.698142,
		-0.645843, -0.289112, -0.706612,
		34.209869, 39.650417, 42.872078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814514, 40.214420, 42.787491>,  <34.661961, 39.852798, 43.366707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814514, 40.214420, 42.787491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430630, 40.108227, 42.750652>,  <34.200298, 40.044510, 42.728550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430630, 40.108227, 42.750652>,  <34.814514, 40.214420, 42.787491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430630, 40.108227, 42.750652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238852, 0.943344, -0.230330,
		0.148029, -0.199052, -0.968745,
		-0.959707, -0.265482, -0.092098,
		34.142719, 40.028584, 42.723022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610008, 40.688709, 42.310417>,  <34.814514, 40.214420, 42.787491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610008, 40.688709, 42.310417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278458, 40.515804, 42.452465>,  <34.079529, 40.412060, 42.537693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278458, 40.515804, 42.452465>,  <34.610008, 40.688709, 42.310417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278458, 40.515804, 42.452465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526083, 0.818173, -0.232014,
		-0.190262, -0.379135, -0.905570,
		-0.828877, -0.432262, 0.355123,
		34.029793, 40.386127, 42.559002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024078, 40.846687, 41.968781>,  <34.610008, 40.688709, 42.310417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024078, 40.846687, 41.968781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868633, 40.825928, 42.336754>,  <33.775364, 40.813473, 42.557537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868633, 40.825928, 42.336754>,  <34.024078, 40.846687, 41.968781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868633, 40.825928, 42.336754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560144, 0.806039, -0.191154,
		-0.731585, -0.589582, -0.342310,
		-0.388616, -0.051897, 0.919937,
		33.752048, 40.810360, 42.612736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371181, 41.103626, 41.795513>,  <34.024078, 40.846687, 41.968781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371181, 41.103626, 41.795513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361958, 41.099236, 42.195381>,  <33.356422, 41.096603, 42.435303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361958, 41.099236, 42.195381>,  <33.371181, 41.103626, 41.795513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361958, 41.099236, 42.195381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615436, 0.788167, -0.005541,
		-0.787849, -0.615364, -0.024925,
		-0.023055, -0.010974, 0.999674,
		33.355042, 41.095943, 42.495285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697861, 41.275043, 41.970272>,  <33.371181, 41.103626, 41.795513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697861, 41.275043, 41.970272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884155, 41.356525, 42.314735>,  <32.995934, 41.405415, 42.521412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884155, 41.356525, 42.314735>,  <32.697861, 41.275043, 41.970272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884155, 41.356525, 42.314735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431193, 0.902042, 0.019827,
		-0.772761, -0.380559, 0.507953,
		0.465740, 0.203704, 0.861157,
		33.023876, 41.417637, 42.573082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244499, 41.397556, 42.534729>,  <32.697861, 41.275043, 41.970272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244499, 41.397556, 42.534729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565346, 41.594013, 42.670605>,  <32.757854, 41.711887, 42.752132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565346, 41.594013, 42.670605>,  <32.244499, 41.397556, 42.534729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565346, 41.594013, 42.670605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503573, 0.862051, -0.057295,
		-0.320974, -0.125103, 0.938789,
		0.802116, 0.491139, 0.339694,
		32.805981, 41.741356, 42.772514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944670, 41.791645, 43.104660>,  <32.244499, 41.397556, 42.534729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944670, 41.791645, 43.104660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302292, 41.970600, 43.113708>,  <32.516865, 42.077972, 43.119137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302292, 41.970600, 43.113708>,  <31.944670, 41.791645, 43.104660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302292, 41.970600, 43.113708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434420, 0.853607, 0.287461,
		0.109296, -0.266833, 0.957525,
		0.894055, 0.447386, 0.022622,
		32.570507, 42.104816, 43.120495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018826, 42.251999, 43.765316>,  <31.944670, 41.791645, 43.104660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018826, 42.251999, 43.765316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268566, 42.396389, 43.488220>,  <32.418411, 42.483021, 43.321964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268566, 42.396389, 43.488220>,  <32.018826, 42.251999, 43.765316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268566, 42.396389, 43.488220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452782, 0.889885, 0.055620,
		0.636534, 0.278933, 0.719042,
		0.624350, 0.360974, -0.692737,
		32.455872, 42.504681, 43.280399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425278, 42.843399, 43.998474>,  <32.018826, 42.251999, 43.765316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425278, 42.843399, 43.998474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430264, 42.893341, 43.601635>,  <32.433254, 42.923306, 43.363533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430264, 42.893341, 43.601635>,  <32.425278, 42.843399, 43.998474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430264, 42.893341, 43.601635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374687, 0.920467, 0.111128,
		0.927068, 0.370340, 0.058256,
		0.012468, 0.124851, -0.992097,
		32.434002, 42.930798, 43.304005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554375, 43.523647, 43.812618>,  <32.425278, 42.843399, 43.998474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554375, 43.523647, 43.812618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375633, 43.416142, 43.471306>,  <32.268387, 43.351639, 43.266518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375633, 43.416142, 43.471306>,  <32.554375, 43.523647, 43.812618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375633, 43.416142, 43.471306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526796, 0.849952, 0.008166,
		0.723052, 0.453153, -0.521390,
		-0.446858, -0.268762, -0.853279,
		32.241577, 43.335514, 43.215321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523342, 44.083073, 43.493187>,  <32.554375, 43.523647, 43.812618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523342, 44.083073, 43.493187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242146, 43.893230, 43.281315>,  <32.073429, 43.779327, 43.154194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242146, 43.893230, 43.281315>,  <32.523342, 44.083073, 43.493187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242146, 43.893230, 43.281315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463547, 0.870601, -0.164856,
		0.539379, 0.129638, -0.832024,
		-0.702990, -0.474603, -0.529678,
		32.031250, 43.750851, 43.122410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300694, 44.569767, 42.917084>,  <32.523342, 44.083073, 43.493187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300694, 44.569767, 42.917084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991724, 44.315819, 42.923920>,  <31.806341, 44.163448, 42.928020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991724, 44.315819, 42.923920>,  <32.300694, 44.569767, 42.917084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991724, 44.315819, 42.923920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634743, 0.770800, -0.054485,
		0.021419, -0.052932, -0.998368,
		-0.772426, -0.634875, 0.017088,
		31.759996, 44.125355, 42.929047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748894, 44.916561, 42.552322>,  <32.300694, 44.569767, 42.917084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748894, 44.916561, 42.552322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558056, 44.623699, 42.746777>,  <31.443554, 44.447983, 42.863449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558056, 44.623699, 42.746777>,  <31.748894, 44.916561, 42.552322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558056, 44.623699, 42.746777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819639, 0.570283, 0.054499,
		-0.317136, -0.372453, -0.872183,
		-0.477093, -0.732158, 0.486134,
		31.414928, 44.404053, 42.892616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456881, 45.264370, 41.861111>,  <31.748894, 44.916561, 42.552322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456881, 45.264370, 41.861111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562990, 45.355042, 41.486252>,  <31.626656, 45.409447, 41.261337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562990, 45.355042, 41.486252>,  <31.456881, 45.264370, 41.861111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562990, 45.355042, 41.486252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123056, -0.971981, -0.200274,
		-0.956288, -0.062194, -0.285736,
		0.265274, 0.226681, -0.937147,
		31.642572, 45.423046, 41.205109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936193, 44.874699, 41.488354>,  <31.456881, 45.264370, 41.861111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936193, 44.874699, 41.488354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247402, 44.948441, 41.248119>,  <31.434128, 44.992687, 41.103981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247402, 44.948441, 41.248119>,  <30.936193, 44.874699, 41.488354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247402, 44.948441, 41.248119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097070, -0.909218, -0.404845,
		-0.620695, 0.373276, -0.689495,
		0.778020, 0.184356, -0.600581,
		31.480808, 45.003746, 41.067944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670019, 44.750229, 40.928741>,  <30.936193, 44.874699, 41.488354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670019, 44.750229, 40.928741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066008, 44.725941, 40.877720>,  <31.303600, 44.711369, 40.847107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066008, 44.725941, 40.877720>,  <30.670019, 44.750229, 40.928741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066008, 44.725941, 40.877720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091013, -0.964702, -0.247117,
		-0.108047, 0.256248, -0.960553,
		0.989971, -0.060723, -0.127555,
		31.362999, 44.707726, 40.839455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840353, 44.309822, 40.354595>,  <30.670019, 44.750229, 40.928741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840353, 44.309822, 40.354595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196985, 44.275124, 40.532387>,  <31.410965, 44.254307, 40.639061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196985, 44.275124, 40.532387>,  <30.840353, 44.309822, 40.354595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196985, 44.275124, 40.532387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079939, -0.935927, -0.343003,
		0.445754, 0.341346, -0.827518,
		0.891579, -0.086744, 0.444480,
		31.464458, 44.249100, 40.665730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278727, 43.913399, 39.801910>,  <30.840353, 44.309822, 40.354595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278727, 43.913399, 39.801910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490179, 43.899368, 40.141159>,  <31.617050, 43.890949, 40.344707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490179, 43.899368, 40.141159>,  <31.278727, 43.913399, 39.801910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490179, 43.899368, 40.141159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264180, -0.942726, -0.203655,
		0.806695, 0.331717, -0.489089,
		0.528633, -0.035080, 0.848125,
		31.648769, 43.888844, 40.395596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882978, 43.621460, 39.566936>,  <31.278727, 43.913399, 39.801910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882978, 43.621460, 39.566936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864088, 43.583118, 39.964645>,  <31.852755, 43.560112, 40.203270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864088, 43.583118, 39.964645>,  <31.882978, 43.621460, 39.566936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864088, 43.583118, 39.964645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464074, -0.883544, -0.063138,
		0.884537, 0.458435, 0.086209,
		-0.047225, -0.095855, 0.994274,
		31.849920, 43.554363, 40.262928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527451, 43.468262, 39.776005>,  <31.882978, 43.621460, 39.566936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527451, 43.468262, 39.776005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265556, 43.333710, 40.046757>,  <32.108421, 43.252979, 40.209209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265556, 43.333710, 40.046757>,  <32.527451, 43.468262, 39.776005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265556, 43.333710, 40.046757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485925, -0.873257, 0.036059,
		0.578964, 0.352524, 0.735206,
		-0.654735, -0.336378, 0.676884,
		32.069138, 43.232796, 40.249821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946041, 43.122555, 40.287567>,  <32.527451, 43.468262, 39.776005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946041, 43.122555, 40.287567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574894, 42.975670, 40.313568>,  <32.352207, 42.887539, 40.329166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574894, 42.975670, 40.313568>,  <32.946041, 43.122555, 40.287567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574894, 42.975670, 40.313568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369378, -0.928948, 0.024804,
		0.051274, 0.047024, 0.997577,
		-0.927864, -0.367211, 0.065000,
		32.296535, 42.865505, 40.333069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134235, 42.656815, 40.725552>,  <32.946041, 43.122555, 40.287567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134235, 42.656815, 40.725552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786190, 42.539673, 40.566982>,  <32.577362, 42.469387, 40.471840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786190, 42.539673, 40.566982>,  <33.134235, 42.656815, 40.725552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786190, 42.539673, 40.566982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288145, -0.954808, 0.072897,
		-0.399852, -0.050798, 0.915171,
		-0.870110, -0.292850, -0.396419,
		32.525158, 42.451817, 40.448055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862736, 42.054977, 41.142147>,  <33.134235, 42.656815, 40.725552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862736, 42.054977, 41.142147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675415, 42.038910, 40.789085>,  <32.563023, 42.029270, 40.577248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675415, 42.038910, 40.789085>,  <32.862736, 42.054977, 41.142147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675415, 42.038910, 40.789085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173352, -0.983728, -0.047203,
		-0.866398, -0.175115, 0.467641,
		-0.468298, -0.040170, -0.882657,
		32.534927, 42.026859, 40.524288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564831, 41.475750, 41.274059>,  <32.862736, 42.054977, 41.142147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564831, 41.475750, 41.274059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553238, 41.520813, 40.876774>,  <32.546280, 41.547852, 40.638405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553238, 41.520813, 40.876774>,  <32.564831, 41.475750, 41.274059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553238, 41.520813, 40.876774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228197, -0.966644, -0.116301,
		-0.973184, -0.230019, 0.002310,
		-0.028985, 0.112655, -0.993211,
		32.544544, 41.554611, 40.578812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173317, 40.920815, 40.978848>,  <32.564831, 41.475750, 41.274059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173317, 40.920815, 40.978848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375275, 41.035824, 40.653294>,  <32.496449, 41.104828, 40.457962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375275, 41.035824, 40.653294>,  <32.173317, 40.920815, 40.978848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375275, 41.035824, 40.653294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290309, -0.944529, -0.153578,
		-0.812895, -0.158737, -0.560361,
		0.504899, 0.287520, -0.813885,
		32.526745, 41.122078, 40.409126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108757, 40.437489, 40.451866>,  <32.173317, 40.920815, 40.978848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108757, 40.437489, 40.451866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440182, 40.622932, 40.326290>,  <32.639034, 40.734200, 40.250946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440182, 40.622932, 40.326290>,  <32.108757, 40.437489, 40.451866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440182, 40.622932, 40.326290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415125, -0.884915, -0.211181,
		-0.375713, 0.044653, -0.925660,
		0.828560, 0.463608, -0.313937,
		32.688751, 40.762016, 40.232109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320290, 40.168869, 39.816517>,  <32.108757, 40.437489, 40.451866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320290, 40.168869, 39.816517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667904, 40.314404, 39.950619>,  <32.876472, 40.401726, 40.031082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667904, 40.314404, 39.950619>,  <32.320290, 40.168869, 39.816517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667904, 40.314404, 39.950619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418708, -0.901838, -0.106641,
		0.263547, 0.233050, -0.936072,
		0.869038, 0.363836, 0.335256,
		32.928616, 40.423553, 40.051197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817547, 39.965870, 39.242485>,  <32.320290, 40.168869, 39.816517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817547, 39.965870, 39.242485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050613, 40.033310, 39.560497>,  <33.190453, 40.073772, 39.751305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050613, 40.033310, 39.560497>,  <32.817547, 39.965870, 39.242485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050613, 40.033310, 39.560497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568546, -0.783583, -0.250505,
		0.580738, 0.597972, -0.552424,
		0.582665, 0.168601, 0.795031,
		33.225414, 40.083889, 39.799007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593990, 39.952812, 38.927834>,  <32.817547, 39.965870, 39.242485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593990, 39.952812, 38.927834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607578, 39.886700, 39.322098>,  <33.615730, 39.847034, 39.558655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607578, 39.886700, 39.322098>,  <33.593990, 39.952812, 38.927834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607578, 39.886700, 39.322098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700143, -0.699844, -0.141484,
		0.713194, 0.694911, 0.091944,
		0.033972, -0.165279, 0.985662,
		33.617771, 39.837116, 39.617798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324455, 39.868912, 39.108135>,  <33.593990, 39.952812, 38.927834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324455, 39.868912, 39.108135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124405, 39.711994, 39.416935>,  <34.004375, 39.617844, 39.602215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124405, 39.711994, 39.416935>,  <34.324455, 39.868912, 39.108135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124405, 39.711994, 39.416935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638742, -0.769077, 0.022990,
		0.584706, 0.504605, 0.635210,
		-0.500127, -0.392293, 0.771997,
		33.974365, 39.594307, 39.648533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933285, 39.629719, 39.662060>,  <34.324455, 39.868912, 39.108135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933285, 39.629719, 39.662060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595783, 39.430824, 39.742889>,  <34.393280, 39.311489, 39.791386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595783, 39.430824, 39.742889>,  <34.933285, 39.629719, 39.662060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595783, 39.430824, 39.742889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527432, -0.837894, 0.140528,
		0.099441, 0.225152, 0.969236,
		-0.843758, -0.497232, 0.202073,
		34.342655, 39.281654, 39.803513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121067, 39.229176, 40.307156>,  <34.933285, 39.629719, 39.662060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121067, 39.229176, 40.307156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804878, 39.058960, 40.130939>,  <34.615166, 38.956833, 40.025211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804878, 39.058960, 40.130939>,  <35.121067, 39.229176, 40.307156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804878, 39.058960, 40.130939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422000, -0.899672, 0.111829,
		-0.443928, -0.097510, 0.890741,
		-0.790471, -0.425537, -0.440539,
		34.567738, 38.931297, 39.998779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163116, 38.606003, 40.582386>,  <35.121067, 39.229176, 40.307156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163116, 38.606003, 40.582386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903526, 38.549683, 40.283321>,  <34.747772, 38.515888, 40.103882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903526, 38.549683, 40.283321>,  <35.163116, 38.606003, 40.582386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903526, 38.549683, 40.283321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462133, -0.853611, -0.240379,
		-0.604366, -0.501520, 0.619047,
		-0.648980, -0.140805, -0.747662,
		34.708832, 38.507442, 40.059021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957874, 37.940189, 40.668659>,  <35.163116, 38.606003, 40.582386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957874, 37.940189, 40.668659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848835, 38.038631, 40.296612>,  <34.783413, 38.097698, 40.073383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848835, 38.038631, 40.296612>,  <34.957874, 37.940189, 40.668659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848835, 38.038631, 40.296612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476556, -0.805277, -0.352738,
		-0.835815, -0.539409, 0.102231,
		-0.272594, 0.246105, -0.930121,
		34.767056, 38.112461, 40.017574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638954, 37.260136, 40.329128>,  <34.957874, 37.940189, 40.668659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638954, 37.260136, 40.329128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774887, 37.515919, 40.053272>,  <34.856445, 37.669388, 39.887756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774887, 37.515919, 40.053272>,  <34.638954, 37.260136, 40.329128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774887, 37.515919, 40.053272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676996, -0.675329, -0.292587,
		-0.652833, -0.367456, -0.662409,
		0.339831, 0.639459, -0.689643,
		34.876835, 37.707756, 39.846378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586132, 36.927814, 39.725246>,  <34.638954, 37.260136, 40.329128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586132, 36.927814, 39.725246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832825, 37.229298, 39.634415>,  <34.980843, 37.410187, 39.579918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832825, 37.229298, 39.634415>,  <34.586132, 36.927814, 39.725246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832825, 37.229298, 39.634415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707044, -0.657211, -0.261080,
		-0.346015, 0.000463, -0.938229,
		0.616736, 0.753706, -0.227078,
		35.017845, 37.455410, 39.566292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900509, 36.742874, 39.083115>,  <34.586132, 36.927814, 39.725246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900509, 36.742874, 39.083115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152031, 37.006657, 39.247906>,  <35.302944, 37.164925, 39.346779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152031, 37.006657, 39.247906>,  <34.900509, 36.742874, 39.083115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152031, 37.006657, 39.247906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774974, -0.488317, -0.401200,
		-0.063397, 0.571548, -0.818116,
		0.628805, 0.659454, 0.411977,
		35.340672, 37.204494, 39.371498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290646, 36.946354, 38.543510>,  <34.900509, 36.742874, 39.083115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290646, 36.946354, 38.543510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497997, 37.018547, 38.877865>,  <35.622410, 37.061863, 39.078480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497997, 37.018547, 38.877865>,  <35.290646, 36.946354, 38.543510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497997, 37.018547, 38.877865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779136, -0.502561, -0.374673,
		0.352464, 0.845494, -0.401135,
		0.518378, 0.180480, 0.835889,
		35.653511, 37.072693, 39.128632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873032, 37.053524, 38.336391>,  <35.290646, 36.946354, 38.543510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873032, 37.053524, 38.336391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966457, 36.968079, 38.715828>,  <36.022511, 36.916809, 38.943489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966457, 36.968079, 38.715828>,  <35.873032, 37.053524, 38.336391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966457, 36.968079, 38.715828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858509, -0.412732, -0.304327,
		0.456521, 0.885449, 0.086993,
		0.233562, -0.213616, 0.948587,
		36.036526, 36.903996, 39.000404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468887, 37.422947, 38.636528>,  <35.873032, 37.053524, 38.336391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468887, 37.422947, 38.636528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435032, 37.078793, 38.837555>,  <36.414719, 36.872299, 38.958172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435032, 37.078793, 38.837555>,  <36.468887, 37.422947, 38.636528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435032, 37.078793, 38.837555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897448, -0.284965, -0.336723,
		0.432925, 0.422529, 0.796270,
		-0.084634, -0.860386, 0.502566,
		36.409641, 36.820675, 38.988323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119579, 37.293823, 38.861835>,  <36.468887, 37.422947, 38.636528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119579, 37.293823, 38.861835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944939, 36.936226, 38.902157>,  <36.840157, 36.721668, 38.926350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944939, 36.936226, 38.902157>,  <37.119579, 37.293823, 38.861835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944939, 36.936226, 38.902157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856540, -0.447329, -0.257363,
		0.275174, -0.026020, 0.961042,
		-0.436599, -0.893991, 0.100806,
		36.813957, 36.668030, 38.932400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570190, 36.893024, 39.276627>,  <37.119579, 37.293823, 38.861835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570190, 36.893024, 39.276627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361847, 36.639404, 39.048000>,  <37.236839, 36.487232, 38.910824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361847, 36.639404, 39.048000>,  <37.570190, 36.893024, 39.276627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361847, 36.639404, 39.048000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851619, -0.432026, -0.296814,
		-0.058736, -0.641353, 0.764994,
		-0.520860, -0.634050, -0.571564,
		37.205589, 36.449188, 38.876530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817196, 36.291660, 39.439529>,  <37.570190, 36.893024, 39.276627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817196, 36.291660, 39.439529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635098, 36.249092, 39.085938>,  <37.525837, 36.223553, 38.873783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635098, 36.249092, 39.085938>,  <37.817196, 36.291660, 39.439529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635098, 36.249092, 39.085938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864658, -0.289686, -0.410425,
		-0.212401, -0.951187, 0.223895,
		-0.455250, -0.106418, -0.883981,
		37.498524, 36.217167, 38.820744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865902, 35.568691, 39.344849>,  <37.817196, 36.291660, 39.439529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865902, 35.568691, 39.344849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819302, 35.770130, 39.002430>,  <37.791340, 35.890995, 38.796978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819302, 35.770130, 39.002430>,  <37.865902, 35.568691, 39.344849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819302, 35.770130, 39.002430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840078, -0.409813, -0.355420,
		-0.529808, -0.760552, -0.375319,
		-0.116504, 0.503601, -0.856045,
		37.784351, 35.921211, 38.745617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221645, 35.191948, 38.850807>,  <37.865902, 35.568691, 39.344849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221645, 35.191948, 38.850807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191856, 35.558174, 38.692719>,  <38.173985, 35.777908, 38.597866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191856, 35.558174, 38.692719>,  <38.221645, 35.191948, 38.850807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191856, 35.558174, 38.692719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849336, -0.149451, -0.506253,
		-0.522573, -0.373376, -0.766491,
		-0.074470, 0.915562, -0.395221,
		38.169514, 35.832844, 38.574154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276581, 34.879265, 38.149303>,  <38.221645, 35.191948, 38.850807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276581, 34.879265, 38.149303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337914, 35.272831, 38.112644>,  <38.374714, 35.508972, 38.090649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337914, 35.272831, 38.112644>,  <38.276581, 34.879265, 38.149303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337914, 35.272831, 38.112644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708911, -0.174137, -0.683463,
		-0.688430, 0.039823, -0.724209,
		0.153329, 0.983916, -0.091650,
		38.383911, 35.568005, 38.085148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367374, 34.986576, 37.478004>,  <38.276581, 34.879265, 38.149303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367374, 34.986576, 37.478004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535206, 35.291004, 37.675884>,  <38.635902, 35.473660, 37.794613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535206, 35.291004, 37.675884>,  <38.367374, 34.986576, 37.478004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535206, 35.291004, 37.675884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815242, -0.076288, -0.574073,
		-0.399170, 0.644168, -0.652465,
		0.419575, 0.761070, 0.494701,
		38.661079, 35.519325, 37.824295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659706, 35.446621, 36.885834>,  <38.367374, 34.986576, 37.478004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659706, 35.446621, 36.885834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844257, 35.542370, 37.227554>,  <38.954987, 35.599819, 37.432587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844257, 35.542370, 37.227554>,  <38.659706, 35.446621, 36.885834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844257, 35.542370, 37.227554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868219, 0.076323, -0.490276,
		-0.182561, 0.967923, -0.172615,
		0.461375, 0.239373, 0.854303,
		38.982670, 35.614182, 37.483845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121773, 35.892899, 36.694580>,  <38.659706, 35.446621, 36.885834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121773, 35.892899, 36.694580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260166, 35.813931, 37.061474>,  <39.343201, 35.766548, 37.281609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260166, 35.813931, 37.061474>,  <39.121773, 35.892899, 36.694580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260166, 35.813931, 37.061474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937291, 0.028735, -0.347362,
		0.042220, 0.979897, 0.194985,
		0.345982, -0.197423, 0.917235,
		39.363960, 35.754704, 37.336643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615585, 36.355015, 36.848175>,  <39.121773, 35.892899, 36.694580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615585, 36.355015, 36.848175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705215, 36.033260, 37.068268>,  <39.758995, 35.840206, 37.200321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705215, 36.033260, 37.068268>,  <39.615585, 36.355015, 36.848175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705215, 36.033260, 37.068268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952702, 0.061864, -0.297543,
		0.205301, 0.590875, 0.780204,
		0.224078, -0.804387, 0.550227,
		39.772438, 35.791943, 37.233337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358433, 36.468128, 37.048878>,  <39.615585, 36.355015, 36.848175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358433, 36.468128, 37.048878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261051, 36.085079, 37.110432>,  <40.202621, 35.855247, 37.147366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261051, 36.085079, 37.110432>,  <40.358433, 36.468128, 37.048878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261051, 36.085079, 37.110432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905330, -0.281296, -0.318199,
		0.348003, 0.061851, 0.935451,
		-0.243458, -0.957626, 0.153887,
		40.188015, 35.797791, 37.156597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767925, 36.254257, 37.589725>,  <40.358433, 36.468128, 37.048878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767925, 36.254257, 37.589725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674881, 35.946152, 37.352211>,  <40.619057, 35.761288, 37.209702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674881, 35.946152, 37.352211>,  <40.767925, 36.254257, 37.589725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674881, 35.946152, 37.352211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971351, -0.153415, -0.181498,
		0.048705, -0.618994, 0.783884,
		-0.232606, -0.770266, -0.593788,
		40.605099, 35.715073, 37.174076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215130, 35.649475, 37.747292>,  <40.767925, 36.254257, 37.589725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215130, 35.649475, 37.747292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066795, 35.589149, 37.380745>,  <40.977795, 35.552952, 37.160816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066795, 35.589149, 37.380745>,  <41.215130, 35.649475, 37.747292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066795, 35.589149, 37.380745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898433, -0.308111, -0.312866,
		-0.235159, -0.939320, 0.249757,
		-0.370834, -0.150816, -0.916371,
		40.955544, 35.543903, 37.105835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233681, 34.872517, 37.521969>,  <41.215130, 35.649475, 37.747292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233681, 34.872517, 37.521969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284245, 35.164185, 37.252945>,  <41.314583, 35.339184, 37.091530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284245, 35.164185, 37.252945>,  <41.233681, 34.872517, 37.521969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284245, 35.164185, 37.252945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932308, -0.318929, -0.170544,
		-0.338853, -0.605471, -0.720128,
		0.126410, 0.729171, -0.672555,
		41.322166, 35.382935, 37.051178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285294, 34.522072, 36.795040>,  <41.233681, 34.872517, 37.521969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285294, 34.522072, 36.795040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511917, 34.830410, 36.911530>,  <41.647892, 35.015411, 36.981422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511917, 34.830410, 36.911530>,  <41.285294, 34.522072, 36.795040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511917, 34.830410, 36.911530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801215, -0.597900, 0.023856,
		0.192512, 0.219817, -0.956357,
		0.566563, 0.770841, 0.291223,
		41.681885, 35.061661, 36.998898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906288, 34.466625, 36.441063>,  <41.285294, 34.522072, 36.795040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906288, 34.466625, 36.441063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982288, 34.651112, 36.787746>,  <42.027889, 34.761803, 36.995754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982288, 34.651112, 36.787746>,  <41.906288, 34.466625, 36.441063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982288, 34.651112, 36.787746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804234, -0.579457, 0.132052,
		0.563123, 0.671944, -0.481023,
		0.190000, 0.461217, 0.866706,
		42.039288, 34.789478, 37.047760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557491, 34.455681, 36.453316>,  <41.906288, 34.466625, 36.441063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557491, 34.455681, 36.453316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456757, 34.495029, 36.838417>,  <42.396317, 34.518639, 37.069477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456757, 34.495029, 36.838417>,  <42.557491, 34.455681, 36.453316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456757, 34.495029, 36.838417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771570, -0.580092, 0.261099,
		0.584173, 0.808589, 0.070186,
		-0.251836, 0.098374, 0.962757,
		42.381207, 34.524540, 37.127243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151600, 34.370277, 36.575844>,  <42.557491, 34.455681, 36.453316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151600, 34.370277, 36.575844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954418, 34.331299, 36.921677>,  <42.836109, 34.307911, 37.129177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954418, 34.331299, 36.921677>,  <43.151600, 34.370277, 36.575844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954418, 34.331299, 36.921677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768605, -0.514450, 0.380247,
		0.407730, 0.851966, 0.328498,
		-0.492953, -0.097447, 0.864581,
		42.806534, 34.302063, 37.181049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793011, 34.469265, 37.101665>,  <43.151600, 34.370277, 36.575844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793011, 34.469265, 37.101665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482807, 34.281021, 37.270000>,  <43.296684, 34.168076, 37.371002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482807, 34.281021, 37.270000>,  <43.793011, 34.469265, 37.101665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482807, 34.281021, 37.270000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626676, -0.654623, 0.422783,
		0.076527, 0.591605, 0.802588,
		-0.775513, -0.470608, 0.420841,
		43.250153, 34.139839, 37.396252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230118, 33.868977, 36.869995>,  <43.793011, 34.469265, 37.101665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230118, 33.868977, 36.869995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567966, 33.817459, 37.077850>,  <44.770676, 33.786549, 37.202564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567966, 33.817459, 37.077850>,  <44.230118, 33.868977, 36.869995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567966, 33.817459, 37.077850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374875, -0.835237, 0.402302,
		0.382206, -0.534593, -0.753743,
		0.844622, -0.128797, 0.519639,
		44.821354, 33.778820, 37.233742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464382, 33.196781, 36.900707>,  <44.230118, 33.868977, 36.869995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464382, 33.196781, 36.900707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617378, 33.360340, 37.232128>,  <44.709175, 33.458473, 37.430981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617378, 33.360340, 37.232128>,  <44.464382, 33.196781, 36.900707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617378, 33.360340, 37.232128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473501, -0.683293, 0.555794,
		0.793407, -0.604910, -0.067743,
		0.382494, 0.408895, 0.828555,
		44.732128, 33.483009, 37.480694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822327, 32.631798, 37.279533>,  <44.464382, 33.196781, 36.900707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822327, 32.631798, 37.279533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.765423, 32.923405, 37.547352>,  <44.731281, 33.098370, 37.708042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.765423, 32.923405, 37.547352>,  <44.822327, 32.631798, 37.279533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.765423, 32.923405, 37.547352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333211, -0.672223, 0.661126,
		0.932058, -0.129048, 0.338548,
		-0.142263, 0.729015, 0.669551,
		44.722744, 33.142109, 37.748219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031796, 32.402832, 37.924328>,  <44.822327, 32.631798, 37.279533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031796, 32.402832, 37.924328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838383, 32.727501, 38.055401>,  <44.722336, 32.922302, 38.134045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838383, 32.727501, 38.055401>,  <45.031796, 32.402832, 37.924328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838383, 32.727501, 38.055401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236806, -0.481696, 0.843737,
		0.842684, 0.330379, 0.425126,
		-0.483535, 0.811676, 0.327682,
		44.693321, 32.971004, 38.153706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257954, 32.601944, 38.711281>,  <45.031796, 32.402832, 37.924328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257954, 32.601944, 38.711281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892311, 32.717522, 38.597488>,  <44.672928, 32.786869, 38.529213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892311, 32.717522, 38.597488>,  <45.257954, 32.601944, 38.711281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892311, 32.717522, 38.597488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371581, -0.316086, 0.872936,
		0.162306, 0.903661, 0.396300,
		-0.914103, 0.288940, -0.284481,
		44.618080, 32.804203, 38.512146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042351, 32.730564, 39.255211>,  <45.257954, 32.601944, 38.711281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042351, 32.730564, 39.255211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718224, 32.697002, 39.023228>,  <44.523746, 32.676865, 38.884037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718224, 32.697002, 39.023228>,  <45.042351, 32.730564, 39.255211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718224, 32.697002, 39.023228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477523, -0.479090, 0.736508,
		-0.339643, 0.873747, 0.348151,
		-0.810318, -0.083900, -0.579954,
		44.475128, 32.671833, 38.849243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477028, 32.921337, 39.718163>,  <45.042351, 32.730564, 39.255211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477028, 32.921337, 39.718163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315361, 32.685570, 39.438381>,  <44.218361, 32.544109, 39.270512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315361, 32.685570, 39.438381>,  <44.477028, 32.921337, 39.718163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315361, 32.685570, 39.438381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500948, -0.497176, 0.708426,
		-0.765312, 0.636710, -0.094328,
		-0.404164, -0.589420, -0.699453,
		44.194111, 32.508743, 39.228546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833698, 32.931335, 39.939655>,  <44.477028, 32.921337, 39.718163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833698, 32.931335, 39.939655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844425, 32.617023, 39.692486>,  <43.850861, 32.428436, 39.544186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844425, 32.617023, 39.692486>,  <43.833698, 32.931335, 39.939655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844425, 32.617023, 39.692486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615446, -0.500078, 0.609219,
		-0.787722, 0.363959, -0.497019,
		0.026818, -0.785783, -0.617920,
		43.852470, 32.381287, 39.507111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091022, 32.824116, 39.802597>,  <43.833698, 32.931335, 39.939655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091022, 32.824116, 39.802597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319744, 32.504410, 39.728603>,  <43.456978, 32.312588, 39.684208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319744, 32.504410, 39.728603>,  <43.091022, 32.824116, 39.802597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319744, 32.504410, 39.728603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625493, -0.570638, 0.532101,
		-0.530848, -0.188551, -0.826226,
		0.571804, -0.799263, -0.184984,
		43.491283, 32.264629, 39.673107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633514, 32.310143, 39.510708>,  <43.091022, 32.824116, 39.802597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633514, 32.310143, 39.510708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951847, 32.140167, 39.683254>,  <43.142845, 32.038181, 39.786781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951847, 32.140167, 39.683254>,  <42.633514, 32.310143, 39.510708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951847, 32.140167, 39.683254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571255, -0.763135, 0.302146,
		0.200797, -0.486878, -0.850077,
		0.795832, -0.424940, 0.431367,
		43.190598, 32.012684, 39.812664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375515, 31.642885, 39.572651>,  <42.633514, 32.310143, 39.510708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375515, 31.642885, 39.572651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722324, 31.626287, 39.771263>,  <42.930412, 31.616329, 39.890430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722324, 31.626287, 39.771263>,  <42.375515, 31.642885, 39.572651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722324, 31.626287, 39.771263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230515, -0.916874, 0.325892,
		0.441734, -0.397015, -0.804519,
		0.867026, -0.041496, 0.496532,
		42.982433, 31.613838, 39.920223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504383, 30.954657, 39.521019>,  <42.375515, 31.642885, 39.572651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504383, 30.954657, 39.521019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728268, 31.082588, 39.826813>,  <42.862598, 31.159348, 40.010288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728268, 31.082588, 39.826813>,  <42.504383, 30.954657, 39.521019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728268, 31.082588, 39.826813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095937, -0.891311, 0.443126,
		0.823117, -0.321364, -0.468192,
		0.559710, 0.319827, 0.764484,
		42.896179, 31.178535, 40.056156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013947, 30.497982, 39.579689>,  <42.504383, 30.954657, 39.521019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013947, 30.497982, 39.579689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977257, 30.660519, 39.943333>,  <42.955242, 30.758041, 40.161518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977257, 30.660519, 39.943333>,  <43.013947, 30.497982, 39.579689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977257, 30.660519, 39.943333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016122, -0.912228, 0.409366,
		0.995654, 0.052203, 0.077119,
		-0.091720, 0.406344, 0.909105,
		42.949741, 30.782421, 40.216064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375294, 30.016542, 40.004883>,  <43.013947, 30.497982, 39.579689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375294, 30.016542, 40.004883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172180, 30.251108, 40.257320>,  <43.050312, 30.391848, 40.408783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172180, 30.251108, 40.257320>,  <43.375294, 30.016542, 40.004883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172180, 30.251108, 40.257320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169835, -0.786328, 0.594007,
		0.844577, 0.194447, 0.498878,
		-0.507785, 0.586412, 0.631091,
		43.019844, 30.427032, 40.446648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672829, 29.962576, 40.668526>,  <43.375294, 30.016542, 40.004883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672829, 29.962576, 40.668526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293354, 30.074078, 40.728256>,  <43.065670, 30.140980, 40.764095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293354, 30.074078, 40.728256>,  <43.672829, 29.962576, 40.668526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293354, 30.074078, 40.728256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183074, -0.869149, 0.459417,
		0.257849, 0.408503, 0.875580,
		-0.948682, 0.278756, 0.149323,
		43.008751, 30.157703, 40.773052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483994, 29.793539, 41.403172>,  <43.672829, 29.962576, 40.668526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483994, 29.793539, 41.403172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137917, 29.833384, 41.206596>,  <42.930271, 29.857290, 41.088650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137917, 29.833384, 41.206596>,  <43.483994, 29.793539, 41.403172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137917, 29.833384, 41.206596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270827, -0.917655, 0.290796,
		-0.422006, 0.384691, 0.820929,
		-0.865196, 0.099612, -0.491440,
		42.878357, 29.863268, 41.059166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944427, 29.598129, 41.900810>,  <43.483994, 29.793539, 41.403172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944427, 29.598129, 41.900810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799713, 29.556421, 41.530247>,  <42.712883, 29.531397, 41.307907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799713, 29.556421, 41.530247>,  <42.944427, 29.598129, 41.900810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799713, 29.556421, 41.530247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407192, -0.876250, 0.257643,
		-0.838631, 0.470439, 0.274562,
		-0.361791, -0.104268, -0.926410,
		42.691177, 29.525141, 41.252323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226406, 29.394480, 41.975685>,  <42.944427, 29.598129, 41.900810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226406, 29.394480, 41.975685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320095, 29.289516, 41.601246>,  <42.376308, 29.226540, 41.376583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320095, 29.289516, 41.601246>,  <42.226406, 29.394480, 41.975685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320095, 29.289516, 41.601246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449132, -0.883178, 0.135195,
		-0.862219, 0.388768, -0.324711,
		0.234218, -0.262406, -0.936101,
		42.390362, 29.210794, 41.320415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626125, 29.170790, 41.646702>,  <42.226406, 29.394480, 41.975685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626125, 29.170790, 41.646702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931622, 29.018860, 41.437923>,  <42.114918, 28.927702, 41.312656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931622, 29.018860, 41.437923>,  <41.626125, 29.170790, 41.646702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931622, 29.018860, 41.437923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359260, -0.921878, 0.145168,
		-0.536312, 0.076645, -0.840533,
		0.763742, -0.379825, -0.521949,
		42.160744, 28.904913, 41.281338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247765, 28.591658, 41.354538>,  <41.626125, 29.170790, 41.646702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247765, 28.591658, 41.354538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637550, 28.518377, 41.302593>,  <41.871422, 28.474409, 41.271427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637550, 28.518377, 41.302593>,  <41.247765, 28.591658, 41.354538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637550, 28.518377, 41.302593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160946, -0.973067, 0.165033,
		-0.156601, -0.139917, -0.977701,
		0.974460, -0.183202, -0.129864,
		41.929890, 28.463417, 41.263634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358841, 27.988340, 40.915359>,  <41.247765, 28.591658, 41.354538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358841, 27.988340, 40.915359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702229, 28.014214, 41.118866>,  <41.908260, 28.029737, 41.240971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702229, 28.014214, 41.118866>,  <41.358841, 27.988340, 40.915359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702229, 28.014214, 41.118866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073552, -0.997288, 0.002682,
		0.507564, 0.035118, -0.860898,
		0.858469, 0.064683, 0.508771,
		41.959770, 28.033619, 41.271496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766983, 27.459332, 40.566792>,  <41.358841, 27.988340, 40.915359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766983, 27.459332, 40.566792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954460, 27.527393, 40.913521>,  <42.066944, 27.568230, 41.121559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954460, 27.527393, 40.913521>,  <41.766983, 27.459332, 40.566792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954460, 27.527393, 40.913521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179928, -0.979091, 0.094903,
		0.864845, 0.111485, -0.489504,
		0.468688, 0.170152, 0.866821,
		42.095066, 27.578440, 41.173569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365219, 27.045694, 40.609127>,  <41.766983, 27.459332, 40.566792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365219, 27.045694, 40.609127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272671, 27.120855, 40.990944>,  <42.217140, 27.165953, 41.220036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272671, 27.120855, 40.990944>,  <42.365219, 27.045694, 40.609127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272671, 27.120855, 40.990944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116218, -0.968806, 0.218881,
		0.965899, 0.161578, 0.202316,
		-0.231371, 0.187904, 0.954547,
		42.203259, 27.177227, 41.277309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832371, 26.720110, 40.124298>,  <42.365219, 27.045694, 40.609127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832371, 26.720110, 40.124298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638138, 26.486622, 39.863998>,  <42.521599, 26.346529, 39.707817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638138, 26.486622, 39.863998>,  <42.832371, 26.720110, 40.124298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638138, 26.486622, 39.863998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539452, 0.385686, -0.748490,
		0.687895, -0.714504, 0.127607,
		-0.485583, -0.583721, -0.650752,
		42.492462, 26.311506, 39.668774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290733, 26.385183, 39.745426>,  <42.832371, 26.720110, 40.124298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290733, 26.385183, 39.745426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954178, 26.421307, 39.532295>,  <42.752243, 26.442980, 39.404415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954178, 26.421307, 39.532295>,  <43.290733, 26.385183, 39.745426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954178, 26.421307, 39.532295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506420, 0.475981, -0.719014,
		0.188685, -0.874806, -0.446219,
		-0.841390, 0.090307, -0.532830,
		42.701759, 26.448399, 39.372448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510574, 26.064335, 39.100788>,  <43.290733, 26.385183, 39.745426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510574, 26.064335, 39.100788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207867, 26.322046, 39.056583>,  <43.026241, 26.476673, 39.030060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207867, 26.322046, 39.056583>,  <43.510574, 26.064335, 39.100788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207867, 26.322046, 39.056583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412161, 0.339066, -0.845670,
		-0.507376, -0.685522, -0.522140,
		-0.756765, 0.644278, -0.110512,
		42.980839, 26.515329, 39.023430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045723, 25.363510, 39.103828>,  <43.510574, 26.064335, 39.100788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045723, 25.363510, 39.103828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031200, 25.141350, 38.771511>,  <44.022488, 25.008053, 38.572121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031200, 25.141350, 38.771511>,  <44.045723, 25.363510, 39.103828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031200, 25.141350, 38.771511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653211, 0.615970, -0.440336,
		0.756305, -0.558667, 0.340432,
		-0.036306, -0.555403, -0.830789,
		44.020309, 24.974730, 38.522274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671291, 25.470442, 38.854431>,  <44.045723, 25.363510, 39.103828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671291, 25.470442, 38.854431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482983, 25.300396, 38.545200>,  <44.369995, 25.198368, 38.359661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482983, 25.300396, 38.545200>,  <44.671291, 25.470442, 38.854431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482983, 25.300396, 38.545200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417023, 0.664962, -0.619611,
		0.777473, -0.614088, -0.135764,
		-0.470773, -0.425114, -0.773079,
		44.341751, 25.172861, 38.313278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228157, 25.600855, 38.460533>,  <44.671291, 25.470442, 38.854431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228157, 25.600855, 38.460533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893433, 25.528414, 38.253860>,  <44.692600, 25.484949, 38.129856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893433, 25.528414, 38.253860>,  <45.228157, 25.600855, 38.460533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893433, 25.528414, 38.253860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277764, 0.672811, -0.685691,
		0.471805, -0.717306, -0.512710,
		-0.836807, -0.181100, -0.516678,
		44.642391, 25.474083, 38.098858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408371, 25.432135, 37.764706>,  <45.228157, 25.600855, 38.460533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408371, 25.432135, 37.764706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035374, 25.570154, 37.807404>,  <44.811577, 25.652966, 37.833023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035374, 25.570154, 37.807404>,  <45.408371, 25.432135, 37.764706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035374, 25.570154, 37.807404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167958, 0.675906, -0.717594,
		-0.319757, -0.651223, -0.688233,
		-0.932494, 0.345050, 0.106748,
		44.755627, 25.673670, 37.839428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.174232, 25.420490, 37.152096>,  <45.408371, 25.432135, 37.764706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.174232, 25.420490, 37.152096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987373, 25.710888, 37.353970>,  <44.875259, 25.885126, 37.475094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987373, 25.710888, 37.353970>,  <45.174232, 25.420490, 37.152096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987373, 25.710888, 37.353970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215242, 0.646997, -0.731482,
		-0.857580, -0.233083, -0.458508,
		-0.467149, 0.725994, 0.504682,
		44.847229, 25.928686, 37.505375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769363, 25.871384, 36.642830>,  <45.174232, 25.420490, 37.152096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769363, 25.871384, 36.642830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842926, 26.112278, 36.953568>,  <44.887062, 26.256815, 37.140011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842926, 26.112278, 36.953568>,  <44.769363, 25.871384, 36.642830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842926, 26.112278, 36.953568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377066, 0.686641, -0.621567,
		-0.907744, 0.407233, -0.100805,
		0.183906, 0.602234, 0.776848,
		44.898098, 26.292948, 37.186623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481998, 26.499769, 36.499382>,  <44.769363, 25.871384, 36.642830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481998, 26.499769, 36.499382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796082, 26.551014, 36.741718>,  <44.984531, 26.581760, 36.887119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796082, 26.551014, 36.741718>,  <44.481998, 26.499769, 36.499382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796082, 26.551014, 36.741718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351806, 0.712841, -0.606704,
		-0.509591, 0.689525, 0.514657,
		0.785207, 0.128112, 0.605836,
		45.031643, 26.589447, 36.923470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509876, 27.193005, 36.590591>,  <44.481998, 26.499769, 36.499382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509876, 27.193005, 36.590591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870327, 27.071356, 36.714188>,  <45.086597, 26.998367, 36.788345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870327, 27.071356, 36.714188>,  <44.509876, 27.193005, 36.590591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870327, 27.071356, 36.714188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404404, 0.846518, -0.346215,
		-0.156274, 0.436941, 0.885811,
		0.901130, -0.304121, 0.308989,
		45.140667, 26.980120, 36.806885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808418, 27.734426, 37.007671>,  <44.509876, 27.193005, 36.590591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808418, 27.734426, 37.007671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127583, 27.513983, 36.910007>,  <45.319080, 27.381718, 36.851410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127583, 27.513983, 36.910007>,  <44.808418, 27.734426, 37.007671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127583, 27.513983, 36.910007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453515, 0.815707, -0.359092,
		0.397062, 0.175794, 0.900799,
		0.797913, -0.551107, -0.244161,
		45.366955, 27.348650, 36.836758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320553, 28.154102, 37.199089>,  <44.808418, 27.734426, 37.007671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320553, 28.154102, 37.199089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461948, 27.909081, 36.916298>,  <45.546787, 27.762068, 36.746624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461948, 27.909081, 36.916298>,  <45.320553, 28.154102, 37.199089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461948, 27.909081, 36.916298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419265, 0.779361, -0.465632,
		0.836217, -0.131814, 0.532322,
		0.353494, -0.612553, -0.706980,
		45.567997, 27.725315, 36.704205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043610, 28.325075, 37.119305>,  <45.320553, 28.154102, 37.199089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043610, 28.325075, 37.119305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939457, 28.122356, 36.790585>,  <45.876965, 28.000725, 36.593353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939457, 28.122356, 36.790585>,  <46.043610, 28.325075, 37.119305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.939457, 28.122356, 36.790585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551471, 0.620593, -0.557445,
		0.792515, -0.598348, 0.117892,
		-0.260383, -0.506798, -0.821801,
		45.861343, 27.970318, 36.544044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699638, 28.111282, 36.846058>,  <46.043610, 28.325075, 37.119305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.699638, 28.111282, 36.846058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.428841, 28.105881, 36.551712>,  <46.266361, 28.102640, 36.375103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.428841, 28.105881, 36.551712>,  <46.699638, 28.111282, 36.846058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.428841, 28.105881, 36.551712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522025, 0.695993, -0.493035,
		0.518814, -0.717921, -0.464135,
		-0.676995, -0.013503, -0.735864,
		46.225742, 28.101830, 36.330952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.121223, 28.102076, 36.268970>,  <46.699638, 28.111282, 36.846058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.121223, 28.102076, 36.268970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.761433, 28.249990, 36.175850>,  <46.545559, 28.338739, 36.119976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.761433, 28.249990, 36.175850>,  <47.121223, 28.102076, 36.268970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.761433, 28.249990, 36.175850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436110, 0.793077, -0.425250,
		0.027379, -0.484030, -0.874623,
		-0.899477, 0.369789, -0.232804,
		46.491589, 28.360928, 36.106010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.312084, 28.496260, 35.734993>,  <47.121223, 28.102076, 36.268970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.312084, 28.496260, 35.734993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.945763, 28.634201, 35.817341>,  <46.725971, 28.716967, 35.866749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.945763, 28.634201, 35.817341>,  <47.312084, 28.496260, 35.734993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.945763, 28.634201, 35.817341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269904, 0.908025, -0.320380,
		-0.297416, -0.237840, -0.924649,
		-0.915803, 0.344853, 0.205867,
		46.671021, 28.737658, 35.879101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.082333, 29.060532, 35.271221>,  <47.312084, 28.496260, 35.734993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.082333, 29.060532, 35.271221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.814190, 29.124741, 35.561008>,  <46.653305, 29.163267, 35.734882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.814190, 29.124741, 35.561008>,  <47.082333, 29.060532, 35.271221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.814190, 29.124741, 35.561008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122230, 0.986871, -0.105566,
		-0.731902, 0.017785, -0.681177,
		-0.670357, 0.160525, 0.724467,
		46.613083, 29.172897, 35.778347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701294, 29.743830, 35.172024>,  <47.082333, 29.060532, 35.271221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701294, 29.743830, 35.172024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628216, 29.692841, 35.561974>,  <46.584370, 29.662247, 35.795944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628216, 29.692841, 35.561974>,  <46.701294, 29.743830, 35.172024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.628216, 29.692841, 35.561974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132889, 0.979258, 0.152953,
		-0.974147, 0.157494, -0.161967,
		-0.182697, -0.127475, 0.974870,
		46.573406, 29.654598, 35.854435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097828, 30.257816, 35.415024>,  <46.701294, 29.743830, 35.172024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097828, 30.257816, 35.415024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306412, 30.168243, 35.744370>,  <46.431564, 30.114500, 35.941978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306412, 30.168243, 35.744370>,  <46.097828, 30.257816, 35.415024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306412, 30.168243, 35.744370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071788, 0.973041, 0.219176,
		-0.850249, -0.055184, 0.523480,
		0.521462, -0.223934, 0.823365,
		46.462849, 30.101063, 35.991379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749943, 30.761202, 35.889488>,  <46.097828, 30.257816, 35.415024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749943, 30.761202, 35.889488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065800, 30.615641, 36.087093>,  <46.255314, 30.528303, 36.205654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065800, 30.615641, 36.087093>,  <45.749943, 30.761202, 35.889488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065800, 30.615641, 36.087093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252200, 0.926477, 0.279350,
		-0.559345, -0.095996, 0.823358,
		0.789638, -0.363904, 0.494010,
		46.302692, 30.506470, 36.235298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696854, 31.008341, 36.535446>,  <45.749943, 30.761202, 35.889488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696854, 31.008341, 36.535446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082855, 30.914839, 36.487907>,  <46.314457, 30.858738, 36.459385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082855, 30.914839, 36.487907>,  <45.696854, 31.008341, 36.535446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082855, 30.914839, 36.487907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255455, 0.940349, 0.224689,
		0.059237, -0.247187, 0.967155,
		0.965004, -0.233755, -0.118848,
		46.372356, 30.844713, 36.452251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983521, 31.144205, 37.198685>,  <45.696854, 31.008341, 36.535446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983521, 31.144205, 37.198685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.274761, 31.157166, 36.924801>,  <46.449505, 31.164942, 36.760471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.274761, 31.157166, 36.924801>,  <45.983521, 31.144205, 37.198685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.274761, 31.157166, 36.924801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225976, 0.931697, 0.284386,
		0.647152, -0.361788, 0.671047,
		0.728100, 0.032401, -0.684705,
		46.493191, 31.166885, 36.719391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565556, 31.370071, 37.511185>,  <45.983521, 31.144205, 37.198685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565556, 31.370071, 37.511185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.582214, 31.452686, 37.120163>,  <46.592209, 31.502254, 36.885551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.582214, 31.452686, 37.120163>,  <46.565556, 31.370071, 37.511185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.582214, 31.452686, 37.120163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108287, 0.971705, 0.209913,
		0.993247, -0.114599, 0.018106,
		0.041650, 0.206535, -0.977552,
		46.594707, 31.514647, 36.826897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.092075, 31.832569, 37.466450>,  <46.565556, 31.370071, 37.511185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.092075, 31.832569, 37.466450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920147, 31.892090, 37.110222>,  <46.816990, 31.927803, 36.896484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920147, 31.892090, 37.110222>,  <47.092075, 31.832569, 37.466450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920147, 31.892090, 37.110222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272627, 0.961680, 0.029105,
		0.860773, -0.230283, -0.453917,
		-0.429820, 0.148803, -0.890569,
		46.791203, 31.936731, 36.843052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.471436, 32.373802, 37.153996>,  <47.092075, 31.832569, 37.466450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.471436, 32.373802, 37.153996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127975, 32.371510, 36.948982>,  <46.921902, 32.370136, 36.825974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127975, 32.371510, 36.948982>,  <47.471436, 32.373802, 37.153996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127975, 32.371510, 36.948982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000807, 0.999952, -0.009823,
		0.512567, -0.008021, -0.858610,
		-0.858647, -0.005728, -0.512536,
		46.870380, 32.369793, 36.795223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.514744, 32.872612, 36.648350>,  <47.471436, 32.373802, 37.153996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.514744, 32.872612, 36.648350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120785, 32.816048, 36.688313>,  <46.884411, 32.782108, 36.712292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120785, 32.816048, 36.688313>,  <47.514744, 32.872612, 36.648350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120785, 32.816048, 36.688313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130097, 0.985168, 0.111891,
		-0.114252, 0.097203, -0.988685,
		-0.984896, -0.141409, 0.099912,
		46.825317, 32.773624, 36.718285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.270424, 33.221104, 36.069141>,  <47.514744, 32.872612, 36.648350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.270424, 33.221104, 36.069141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.957890, 33.215397, 36.318722>,  <46.770370, 33.211971, 36.468468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.957890, 33.215397, 36.318722>,  <47.270424, 33.221104, 36.069141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.957890, 33.215397, 36.318722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100462, 0.983826, 0.148304,
		-0.615973, 0.178558, -0.767264,
		-0.781335, -0.014270, 0.623949,
		46.723488, 33.211117, 36.505905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.816261, 33.825417, 35.912674>,  <47.270424, 33.221104, 36.069141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.816261, 33.825417, 35.912674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764721, 33.712067, 36.292797>,  <46.733795, 33.644058, 36.520874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764721, 33.712067, 36.292797>,  <46.816261, 33.825417, 35.912674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764721, 33.712067, 36.292797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109200, 0.956528, 0.270423,
		-0.985633, -0.068928, -0.154199,
		-0.128856, -0.283376, 0.950313,
		46.726063, 33.627052, 36.577892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.137924, 34.116409, 36.266769>,  <46.816261, 33.825417, 35.912674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.137924, 34.116409, 36.266769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459076, 34.062469, 36.499046>,  <46.651768, 34.030106, 36.638412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459076, 34.062469, 36.499046>,  <46.137924, 34.116409, 36.266769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459076, 34.062469, 36.499046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042162, 0.958797, 0.280945,
		-0.594652, -0.250048, 0.764111,
		0.802877, -0.134848, 0.580693,
		46.699940, 34.022015, 36.673256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.714199, 34.633442, 35.949661>,  <46.137924, 34.116409, 36.266769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.714199, 34.633442, 35.949661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.606964, 34.833313, 35.620190>,  <46.542622, 34.953236, 35.422504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.606964, 34.833313, 35.620190>,  <46.714199, 34.633442, 35.949661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.606964, 34.833313, 35.620190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960791, 0.075868, -0.266694,
		-0.070769, -0.862884, -0.500422,
		-0.268092, 0.499675, -0.823682,
		46.526535, 34.983215, 35.373085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.102325, 34.294994, 35.361813>,  <46.714199, 34.633442, 35.949661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.102325, 34.294994, 35.361813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009747, 34.682285, 35.323948>,  <46.954201, 34.914661, 35.301228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009747, 34.682285, 35.323948>,  <47.102325, 34.294994, 35.361813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.009747, 34.682285, 35.323948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950716, 0.204468, -0.233090,
		-0.206330, -0.143943, -0.967837,
		-0.231444, 0.968232, -0.094661,
		46.940315, 34.972755, 35.295551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.420120, 34.440746, 34.711655>,  <47.102325, 34.294994, 35.361813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.420120, 34.440746, 34.711655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404015, 34.767643, 34.941608>,  <47.394352, 34.963779, 35.079582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404015, 34.767643, 34.941608>,  <47.420120, 34.440746, 34.711655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404015, 34.767643, 34.941608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956006, 0.198827, -0.215685,
		-0.290570, 0.540911, -0.789294,
		-0.040267, 0.817241, 0.574887,
		47.391933, 35.012814, 35.114075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.656010, 35.109329, 34.358864>,  <47.420120, 34.440746, 34.711655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.656010, 35.109329, 34.358864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712536, 35.123890, 34.754581>,  <47.746452, 35.132626, 34.992012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712536, 35.123890, 34.754581>,  <47.656010, 35.109329, 34.358864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.712536, 35.123890, 34.754581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985061, 0.094170, -0.144175,
		-0.098411, 0.994890, -0.022553,
		0.141314, 0.036405, 0.989295,
		47.754929, 35.134811, 35.051369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.102989, 40.295601, 35.489784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.874044, 40.031044, 35.683674>,  <30.736677, 39.872311, 35.800007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.874044, 40.031044, 35.683674>,  <31.102989, 40.295601, 35.489784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874044, 40.031044, 35.683674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736927, -0.674144, -0.049686,
		0.359637, 0.328770, 0.873253,
		-0.572364, -0.661392, 0.484727,
		30.702335, 39.832626, 35.829090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438452, 40.134029, 36.018860>,  <31.102989, 40.295601, 35.489784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438452, 40.134029, 36.018860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.194262, 39.821609, 35.966282>,  <31.047747, 39.634155, 35.934734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.194262, 39.821609, 35.966282>,  <31.438452, 40.134029, 36.018860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194262, 39.821609, 35.966282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791965, -0.604171, -0.088142,
		-0.010571, -0.157907, 0.987397,
		-0.610475, -0.781052, -0.131443,
		31.011120, 39.587296, 35.926849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754227, 39.635208, 36.320580>,  <31.438452, 40.134029, 36.018860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754227, 39.635208, 36.320580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.488392, 39.446815, 36.088543>,  <31.328892, 39.333782, 35.949322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.488392, 39.446815, 36.088543>,  <31.754227, 39.635208, 36.320580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488392, 39.446815, 36.088543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592281, -0.805354, -0.024678,
		-0.455555, -0.359976, 0.814178,
		-0.664585, -0.470980, -0.580090,
		31.289017, 39.305523, 35.914516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819101, 38.971516, 36.670540>,  <31.754227, 39.635208, 36.320580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819101, 38.971516, 36.670540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.648542, 38.966419, 36.308762>,  <31.546207, 38.963364, 36.091694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.648542, 38.966419, 36.308762>,  <31.819101, 38.971516, 36.670540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648542, 38.966419, 36.308762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543275, -0.803069, -0.244813,
		-0.723214, -0.595750, 0.349345,
		-0.426396, -0.012738, -0.904447,
		31.520624, 38.962597, 36.037426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514349, 38.283363, 36.433933>,  <31.819101, 38.971516, 36.670540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514349, 38.283363, 36.433933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.585470, 38.465923, 36.085201>,  <31.628143, 38.575459, 35.875961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.585470, 38.465923, 36.085201>,  <31.514349, 38.283363, 36.433933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585470, 38.465923, 36.085201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416460, -0.837596, -0.353546,
		-0.891598, -0.300221, -0.338998,
		0.177801, 0.456400, -0.871829,
		31.638811, 38.602844, 35.823654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268547, 37.809479, 36.039211>,  <31.514349, 38.283363, 36.433933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268547, 37.809479, 36.039211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.491226, 38.044987, 35.804798>,  <31.624834, 38.186291, 35.664150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.491226, 38.044987, 35.804798>,  <31.268547, 37.809479, 36.039211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491226, 38.044987, 35.804798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487694, -0.802725, -0.343200,
		-0.672489, -0.094745, -0.734017,
		0.556698, 0.588774, -0.586031,
		31.658236, 38.221619, 35.628990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456390, 37.500755, 35.330566>,  <31.268547, 37.809479, 36.039211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456390, 37.500755, 35.330566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.753550, 37.760990, 35.393616>,  <31.931845, 37.917130, 35.431446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.753550, 37.760990, 35.393616>,  <31.456390, 37.500755, 35.330566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753550, 37.760990, 35.393616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646434, -0.636076, -0.421342,
		-0.173857, 0.414908, -0.893099,
		0.742897, 0.650583, 0.157624,
		31.976419, 37.956165, 35.440903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890850, 37.383064, 34.741875>,  <31.456390, 37.500755, 35.330566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890850, 37.383064, 34.741875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.114319, 37.587078, 35.003483>,  <32.248402, 37.709488, 35.160450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.114319, 37.587078, 35.003483>,  <31.890850, 37.383064, 34.741875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114319, 37.587078, 35.003483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808857, -0.509425, -0.293661,
		0.183397, 0.693072, -0.697149,
		0.558674, 0.510037, 0.654023,
		32.281921, 37.740089, 35.199688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554314, 37.625061, 34.365597>,  <31.890850, 37.383064, 34.741875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554314, 37.625061, 34.365597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.622738, 37.611931, 34.759483>,  <32.663792, 37.604053, 34.995815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.622738, 37.611931, 34.759483>,  <32.554314, 37.625061, 34.365597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622738, 37.611931, 34.759483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807922, -0.567360, -0.159262,
		0.563914, 0.822816, -0.070535,
		0.171062, -0.032823, 0.984713,
		32.674057, 37.602085, 35.054897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207882, 37.549892, 34.415100>,  <32.554314, 37.625061, 34.365597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207882, 37.549892, 34.415100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.100914, 37.427727, 34.780659>,  <33.036732, 37.354427, 34.999996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.100914, 37.427727, 34.780659>,  <33.207882, 37.549892, 34.415100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100914, 37.427727, 34.780659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697966, -0.715285, -0.034804,
		0.664327, 0.628563, 0.404448,
		-0.267419, -0.305413, 0.913898,
		33.020687, 37.336102, 35.054829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852436, 37.453346, 34.823727>,  <33.207882, 37.549892, 34.415100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852436, 37.453346, 34.823727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.573254, 37.247311, 35.022739>,  <33.405743, 37.123692, 35.142147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.573254, 37.247311, 35.022739>,  <33.852436, 37.453346, 34.823727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573254, 37.247311, 35.022739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568184, -0.821187, -0.053089,
		0.435914, 0.245637, 0.865818,
		-0.697958, -0.515086, 0.497535,
		33.363865, 37.092785, 35.172001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233215, 37.165741, 35.406971>,  <33.852436, 37.453346, 34.823727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233215, 37.165741, 35.406971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.898769, 36.952221, 35.356430>,  <33.698101, 36.824108, 35.326107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.898769, 36.952221, 35.356430>,  <34.233215, 37.165741, 35.406971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898769, 36.952221, 35.356430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508051, -0.840423, 0.188608,
		-0.206868, 0.093506, 0.973890,
		-0.836116, -0.533803, -0.126351,
		33.647934, 36.792080, 35.318523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169842, 36.834007, 36.088062>,  <34.233215, 37.165741, 35.406971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169842, 36.834007, 36.088062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.943386, 36.621220, 35.836189>,  <33.807514, 36.493546, 35.685066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.943386, 36.621220, 35.836189>,  <34.169842, 36.834007, 36.088062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943386, 36.621220, 35.836189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496172, -0.829921, 0.255037,
		-0.658256, -0.168043, 0.733799,
		-0.566138, -0.531971, -0.629679,
		33.773544, 36.461628, 35.647285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914295, 36.157040, 36.356659>,  <34.169842, 36.834007, 36.088062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914295, 36.157040, 36.356659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.923401, 36.096527, 35.961369>,  <33.928864, 36.060219, 35.724194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.923401, 36.096527, 35.961369>,  <33.914295, 36.157040, 36.356659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923401, 36.096527, 35.961369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515029, -0.845449, 0.141286,
		-0.856870, -0.512184, 0.058663,
		0.022768, -0.151277, -0.988229,
		33.930233, 36.051144, 35.664898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117451, 35.349380, 36.278461>,  <33.914295, 36.157040, 36.356659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117451, 35.349380, 36.278461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110359, 35.470230, 35.897221>,  <34.106106, 35.542740, 35.668476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110359, 35.470230, 35.897221>,  <34.117451, 35.349380, 36.278461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110359, 35.470230, 35.897221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476671, -0.835396, -0.273674,
		-0.878903, -0.459169, -0.129205,
		-0.017725, 0.302121, -0.953105,
		34.105042, 35.560867, 35.611290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734222, 34.830093, 35.792431>,  <34.117451, 35.349380, 36.278461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734222, 34.830093, 35.792431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.022106, 35.044739, 35.616222>,  <34.194836, 35.173527, 35.510498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.022106, 35.044739, 35.616222>,  <33.734222, 34.830093, 35.792431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022106, 35.044739, 35.616222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474036, -0.843401, -0.252911,
		-0.507250, -0.026798, -0.861383,
		0.719714, 0.536615, -0.440518,
		34.238022, 35.205723, 35.484066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972603, 34.344952, 35.305508>,  <33.734222, 34.830093, 35.792431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972603, 34.344952, 35.305508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.241966, 34.640041, 35.286388>,  <34.403584, 34.817097, 35.274918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.241966, 34.640041, 35.286388>,  <33.972603, 34.344952, 35.305508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241966, 34.640041, 35.286388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715134, -0.666438, -0.210816,
		-0.187377, 0.107785, -0.976357,
		0.673404, 0.737728, -0.047794,
		34.443989, 34.861359, 35.272049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286869, 34.161121, 34.664478>,  <33.972603, 34.344952, 35.305508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286869, 34.161121, 34.664478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.540760, 34.399891, 34.860764>,  <34.693096, 34.543152, 34.978535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.540760, 34.399891, 34.860764>,  <34.286869, 34.161121, 34.664478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540760, 34.399891, 34.860764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769113, -0.549439, -0.326468,
		0.074738, 0.584631, -0.807849,
		0.634727, 0.596928, 0.490712,
		34.731178, 34.578968, 35.007977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766056, 34.284424, 34.192875>,  <34.286869, 34.161121, 34.664478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766056, 34.284424, 34.192875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.941353, 34.369492, 34.542210>,  <35.046532, 34.420532, 34.751812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.941353, 34.369492, 34.542210>,  <34.766056, 34.284424, 34.192875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941353, 34.369492, 34.542210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840034, -0.442608, -0.313752,
		0.319820, 0.871132, -0.372617,
		0.438243, 0.212667, 0.873336,
		35.072826, 34.433292, 34.804211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452831, 34.646523, 34.025364>,  <34.766056, 34.284424, 34.192875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452831, 34.646523, 34.025364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.483379, 34.517872, 34.402878>,  <35.501709, 34.440681, 34.629387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.483379, 34.517872, 34.402878>,  <35.452831, 34.646523, 34.025364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483379, 34.517872, 34.402878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936183, -0.302598, -0.178876,
		0.343117, 0.897214, 0.277987,
		0.076372, -0.321622, 0.943783,
		35.506290, 34.421387, 34.686012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053040, 34.987545, 34.409756>,  <35.452831, 34.646523, 34.025364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053040, 34.987545, 34.409756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.973373, 34.641209, 34.593342>,  <35.925575, 34.433407, 34.703495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.973373, 34.641209, 34.593342>,  <36.053040, 34.987545, 34.409756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973373, 34.641209, 34.593342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974536, -0.224232, -0.000129,
		0.103027, 0.447256, 0.888453,
		-0.199162, -0.865842, 0.458969,
		35.913624, 34.381454, 34.731033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479465, 34.958988, 34.930603>,  <36.053040, 34.987545, 34.409756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479465, 34.958988, 34.930603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394238, 34.579334, 34.837875>,  <36.343102, 34.351543, 34.782238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394238, 34.579334, 34.837875>,  <36.479465, 34.958988, 34.930603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394238, 34.579334, 34.837875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969922, -0.234063, 0.066830,
		-0.117692, -0.210610, 0.970460,
		-0.213074, -0.949135, -0.231822,
		36.330315, 34.294594, 34.768330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948807, 34.670864, 35.236095>,  <36.479465, 34.958988, 34.930603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948807, 34.670864, 35.236095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827309, 34.378105, 34.992107>,  <36.754410, 34.202450, 34.845715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827309, 34.378105, 34.992107>,  <36.948807, 34.670864, 35.236095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827309, 34.378105, 34.992107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951897, -0.260251, -0.161746,
		-0.040362, -0.629756, 0.775744,
		-0.303749, -0.731900, -0.609967,
		36.736183, 34.158535, 34.809116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335567, 35.011143, 35.820686>,  <36.948807, 34.670864, 35.236095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335567, 35.011143, 35.820686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630146, 35.212418, 35.639824>,  <37.806892, 35.333183, 35.531307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630146, 35.212418, 35.639824>,  <37.335567, 35.011143, 35.820686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630146, 35.212418, 35.639824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583946, 0.810291, -0.049352,
		0.341548, 0.300382, 0.890570,
		0.736446, 0.503189, -0.452160,
		37.851078, 35.363373, 35.504177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454269, 35.604141, 36.230537>,  <37.335567, 35.011143, 35.820686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454269, 35.604141, 36.230537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621052, 35.684361, 35.875927>,  <37.721123, 35.732491, 35.663162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621052, 35.684361, 35.875927>,  <37.454269, 35.604141, 36.230537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621052, 35.684361, 35.875927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362040, 0.931287, 0.040394,
		0.833712, 0.304116, 0.460909,
		0.416955, 0.200544, -0.886528,
		37.746140, 35.744522, 35.609970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830170, 36.299160, 36.277771>,  <37.454269, 35.604141, 36.230537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830170, 36.299160, 36.277771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753826, 36.249023, 35.888336>,  <37.708019, 36.218941, 35.654675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753826, 36.249023, 35.888336>,  <37.830170, 36.299160, 36.277771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753826, 36.249023, 35.888336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201858, 0.975629, -0.086031,
		0.960638, 0.180106, -0.211510,
		-0.190860, -0.125339, -0.973582,
		37.696568, 36.211422, 35.596260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008484, 36.936504, 36.082382>,  <37.830170, 36.299160, 36.277771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008484, 36.936504, 36.082382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779415, 36.781448, 35.793446>,  <37.641972, 36.688416, 35.620083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779415, 36.781448, 35.793446>,  <38.008484, 36.936504, 36.082382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779415, 36.781448, 35.793446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449092, 0.885505, -0.119155,
		0.685828, 0.256162, -0.681190,
		-0.572674, -0.387637, -0.722345,
		37.607613, 36.665157, 35.576740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111393, 37.360336, 35.489273>,  <38.008484, 36.936504, 36.082382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111393, 37.360336, 35.489273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762783, 37.189522, 35.392876>,  <37.553616, 37.087032, 35.335037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762783, 37.189522, 35.392876>,  <38.111393, 37.360336, 35.489273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762783, 37.189522, 35.392876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406154, 0.904050, -0.133165,
		0.274736, -0.018177, -0.961348,
		-0.871527, -0.427041, -0.240993,
		37.501324, 37.061409, 35.320580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938122, 37.810650, 34.890583>,  <38.111393, 37.360336, 35.489273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938122, 37.810650, 34.890583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621155, 37.602531, 35.017937>,  <37.430973, 37.477661, 35.094349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621155, 37.602531, 35.017937>,  <37.938122, 37.810650, 34.890583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621155, 37.602531, 35.017937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596907, 0.768901, -0.229113,
		-0.125601, -0.371600, -0.919857,
		-0.792418, -0.520293, 0.318386,
		37.383430, 37.446445, 35.113453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397617, 38.052635, 34.461864>,  <37.938122, 37.810650, 34.890583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397617, 38.052635, 34.461864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200443, 37.880867, 34.764549>,  <37.082138, 37.777805, 34.946159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200443, 37.880867, 34.764549>,  <37.397617, 38.052635, 34.461864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200443, 37.880867, 34.764549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648715, 0.760975, 0.009253,
		-0.579815, -0.486331, -0.653679,
		-0.492933, -0.429417, 0.756715,
		37.052563, 37.752041, 34.991562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662373, 38.011436, 34.330276>,  <37.397617, 38.052635, 34.461864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662373, 38.011436, 34.330276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.704311, 37.991997, 34.727596>,  <36.729473, 37.980331, 34.965988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.704311, 37.991997, 34.727596>,  <36.662373, 38.011436, 34.330276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704311, 37.991997, 34.727596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655634, 0.747632, 0.105782,
		-0.747765, -0.662332, 0.046519,
		0.104842, -0.048600, 0.993301,
		36.735764, 37.977417, 35.025585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924316, 38.184864, 34.524342>,  <36.662373, 38.011436, 34.330276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924316, 38.184864, 34.524342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147503, 38.221596, 34.854248>,  <36.281414, 38.243633, 35.052193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147503, 38.221596, 34.854248>,  <35.924316, 38.184864, 34.524342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147503, 38.221596, 34.854248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662900, 0.647217, 0.376396,
		-0.499242, -0.756755, 0.421994,
		0.557961, 0.091828, 0.824770,
		36.314892, 38.249146, 35.101681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507771, 37.990196, 35.152416>,  <35.924316, 38.184864, 34.524342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507771, 37.990196, 35.152416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777611, 38.261002, 35.270100>,  <35.939514, 38.423485, 35.340710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777611, 38.261002, 35.270100>,  <35.507771, 37.990196, 35.152416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777611, 38.261002, 35.270100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730811, 0.556365, 0.395440,
		0.104035, -0.481774, 0.870098,
		0.674605, 0.677017, 0.294205,
		35.979992, 38.464108, 35.358360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119503, 38.331005, 35.573811>,  <35.507771, 37.990196, 35.152416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119503, 38.331005, 35.573811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432991, 38.579285, 35.564701>,  <35.621082, 38.728252, 35.559235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432991, 38.579285, 35.564701>,  <35.119503, 38.331005, 35.573811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432991, 38.579285, 35.564701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586034, 0.751097, 0.304001,
		0.205799, -0.224905, 0.952400,
		0.783716, 0.620702, -0.022773,
		35.668106, 38.765495, 35.557869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165218, 38.685059, 36.310673>,  <35.119503, 38.331005, 35.573811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165218, 38.685059, 36.310673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.317219, 38.905285, 36.013355>,  <35.408421, 39.037418, 35.834965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.317219, 38.905285, 36.013355>,  <35.165218, 38.685059, 36.310673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317219, 38.905285, 36.013355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587678, 0.764245, 0.265638,
		0.714305, 0.335872, 0.613969,
		0.380003, 0.550563, -0.743289,
		35.431221, 39.070454, 35.790367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524231, 39.355335, 36.521431>,  <35.165218, 38.685059, 36.310673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524231, 39.355335, 36.521431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388924, 39.399200, 36.147575>,  <35.307739, 39.425518, 35.923264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388924, 39.399200, 36.147575>,  <35.524231, 39.355335, 36.521431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388924, 39.399200, 36.147575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713768, 0.617357, 0.330767,
		0.613277, 0.779003, -0.130561,
		-0.338271, 0.109661, -0.934637,
		35.287441, 39.432098, 35.867184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395164, 40.078003, 36.389294>,  <35.524231, 39.355335, 36.521431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395164, 40.078003, 36.389294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.186649, 39.909637, 36.092350>,  <35.061539, 39.808617, 35.914185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.186649, 39.909637, 36.092350>,  <35.395164, 40.078003, 36.389294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186649, 39.909637, 36.092350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682957, 0.727364, 0.067164,
		0.511691, 0.542008, -0.666633,
		-0.521288, -0.420914, -0.742354,
		35.030262, 39.783363, 35.869644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976055, 40.634396, 36.144642>,  <35.395164, 40.078003, 36.389294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976055, 40.634396, 36.144642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799225, 40.328773, 35.956696>,  <34.693127, 40.145401, 35.843925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799225, 40.328773, 35.956696>,  <34.976055, 40.634396, 36.144642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799225, 40.328773, 35.956696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868494, 0.495572, 0.011274,
		0.224241, 0.413063, -0.882664,
		-0.442080, -0.764059, -0.469870,
		34.666599, 40.099556, 35.815735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708977, 40.817757, 35.391415>,  <34.976055, 40.634396, 36.144642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708977, 40.817757, 35.391415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490490, 40.508896, 35.521290>,  <34.359398, 40.323578, 35.599216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490490, 40.508896, 35.521290>,  <34.708977, 40.817757, 35.391415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490490, 40.508896, 35.521290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815949, 0.578120, 0.002204,
		-0.189413, -0.263728, -0.945817,
		-0.546215, -0.772156, 0.324692,
		34.326626, 40.277248, 35.618698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017540, 40.947712, 35.128021>,  <34.708977, 40.817757, 35.391415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017540, 40.947712, 35.128021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.976421, 40.721043, 35.455025>,  <33.951748, 40.585041, 35.651226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.976421, 40.721043, 35.455025>,  <34.017540, 40.947712, 35.128021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976421, 40.721043, 35.455025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805299, 0.529842, 0.266009,
		-0.583888, -0.630990, -0.510810,
		-0.102800, -0.566674, 0.817504,
		33.945580, 40.551041, 35.700275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.179344, 40.747726, 35.137917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373936, 40.712578, 35.485622>,  <33.490692, 40.691486, 35.694244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373936, 40.712578, 35.485622>,  <33.179344, 40.747726, 35.137917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373936, 40.712578, 35.485622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798740, 0.358446, 0.483251,
		-0.354049, -0.929406, 0.104186,
		0.486481, -0.087877, 0.869261,
		33.519878, 40.686214, 35.746399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702045, 40.431828, 35.579247>,  <33.179344, 40.747726, 35.137917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702045, 40.431828, 35.579247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957146, 40.583656, 35.847336>,  <33.110207, 40.674755, 36.008190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957146, 40.583656, 35.847336>,  <32.702045, 40.431828, 35.579247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957146, 40.583656, 35.847336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731979, 0.569510, 0.373986,
		-0.239741, -0.729097, 0.641047,
		0.637755, 0.379573, 0.670219,
		33.148472, 40.697529, 36.048401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293930, 40.490566, 36.121635>,  <32.702045, 40.431828, 35.579247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293930, 40.490566, 36.121635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611336, 40.696175, 36.251934>,  <32.801781, 40.819542, 36.330112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611336, 40.696175, 36.251934>,  <32.293930, 40.490566, 36.121635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611336, 40.696175, 36.251934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593413, 0.772234, 0.226969,
		-0.134887, -0.373407, 0.917809,
		0.793515, 0.514025, 0.325749,
		32.849392, 40.850384, 36.349659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210835, 40.547356, 36.874702>,  <32.293930, 40.490566, 36.121635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210835, 40.547356, 36.874702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.427475, 40.844116, 36.716583>,  <32.557461, 41.022171, 36.621712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.427475, 40.844116, 36.716583>,  <32.210835, 40.547356, 36.874702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427475, 40.844116, 36.716583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656305, 0.667012, 0.352645,
		0.525292, 0.068439, 0.848165,
		0.541602, 0.741897, -0.395293,
		32.589954, 41.066685, 36.597996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072361, 41.064980, 37.266590>,  <32.210835, 40.547356, 36.874702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072361, 41.064980, 37.266590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.188911, 41.283794, 36.952682>,  <32.258842, 41.415081, 36.764339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.188911, 41.283794, 36.952682>,  <32.072361, 41.064980, 37.266590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188911, 41.283794, 36.952682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707962, 0.675024, 0.207681,
		0.643344, 0.495071, 0.583963,
		0.291373, 0.547034, -0.784765,
		32.276321, 41.447906, 36.717255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093246, 41.751667, 37.573189>,  <32.072361, 41.064980, 37.266590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093246, 41.751667, 37.573189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.101017, 41.806534, 37.177048>,  <32.105679, 41.839455, 36.939362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.101017, 41.806534, 37.177048>,  <32.093246, 41.751667, 37.573189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101017, 41.806534, 37.177048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465645, 0.877798, 0.112449,
		0.884758, 0.458971, 0.080922,
		0.019422, 0.137171, -0.990357,
		32.106842, 41.847687, 36.879940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304741, 42.420498, 37.435436>,  <32.093246, 41.751667, 37.573189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304741, 42.420498, 37.435436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.123821, 42.332344, 37.089752>,  <32.015270, 42.279449, 36.882343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.123821, 42.332344, 37.089752>,  <32.304741, 42.420498, 37.435436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123821, 42.332344, 37.089752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520413, 0.852138, 0.055056,
		0.724292, 0.474648, -0.500111,
		-0.452296, -0.220388, -0.864210,
		31.988132, 42.266228, 36.830490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506008, 42.945442, 36.948444>,  <32.304741, 42.420498, 37.435436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506008, 42.945442, 36.948444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158245, 42.795715, 36.819443>,  <31.949587, 42.705879, 36.742043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158245, 42.795715, 36.819443>,  <32.506008, 42.945442, 36.948444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158245, 42.795715, 36.819443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440399, 0.882997, 0.162371,
		0.223990, 0.283197, -0.932538,
		-0.869412, -0.374320, -0.322503,
		31.897421, 42.683418, 36.722691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181995, 43.445847, 36.551582>,  <32.506008, 42.945442, 36.948444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181995, 43.445847, 36.551582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.855045, 43.233749, 36.641689>,  <31.658875, 43.106491, 36.695755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.855045, 43.233749, 36.641689>,  <32.181995, 43.445847, 36.551582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855045, 43.233749, 36.641689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485084, 0.844380, 0.227410,
		-0.310792, 0.076606, -0.947386,
		-0.817375, -0.530239, 0.225266,
		31.609833, 43.074677, 36.709270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639338, 43.904522, 36.417160>,  <32.181995, 43.445847, 36.551582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639338, 43.904522, 36.417160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439068, 43.625435, 36.622105>,  <31.318907, 43.457981, 36.745071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439068, 43.625435, 36.622105>,  <31.639338, 43.904522, 36.417160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439068, 43.625435, 36.622105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753248, 0.642815, 0.139305,
		-0.426548, -0.316187, -0.847398,
		-0.500673, -0.697721, 0.512358,
		31.288866, 43.416119, 36.775814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874664, 43.966908, 36.202785>,  <31.639338, 43.904522, 36.417160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874664, 43.966908, 36.202785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.878668, 43.759571, 36.544834>,  <30.881071, 43.635170, 36.750061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.878668, 43.759571, 36.544834>,  <30.874664, 43.966908, 36.202785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878668, 43.759571, 36.544834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658654, 0.640019, 0.395664,
		-0.752379, -0.567188, -0.334997,
		0.010011, -0.518337, 0.855118,
		30.881672, 43.604069, 36.801369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230078, 43.832001, 36.351418>,  <30.874664, 43.966908, 36.202785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230078, 43.832001, 36.351418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.448875, 43.824512, 36.686188>,  <30.580154, 43.820019, 36.887051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.448875, 43.824512, 36.686188>,  <30.230078, 43.832001, 36.351418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448875, 43.824512, 36.686188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629193, 0.650260, 0.425767,
		-0.552189, -0.759481, 0.343913,
		0.546995, -0.018716, 0.836927,
		30.612974, 43.818897, 36.937267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786926, 43.816509, 36.916950>,  <30.230078, 43.832001, 36.351418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786926, 43.816509, 36.916950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.135231, 43.966160, 37.044579>,  <30.344213, 44.055950, 37.121155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.135231, 43.966160, 37.044579>,  <29.786926, 43.816509, 36.916950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135231, 43.966160, 37.044579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485286, 0.758402, 0.435114,
		-0.079200, -0.533722, 0.841943,
		0.870761, 0.374122, 0.319073,
		30.396460, 44.078396, 37.140301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597092, 43.992245, 37.709801>,  <29.786926, 43.816509, 36.916950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597092, 43.992245, 37.709801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957157, 44.157871, 37.655766>,  <30.173197, 44.257248, 37.623344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957157, 44.157871, 37.655766>,  <29.597092, 43.992245, 37.709801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957157, 44.157871, 37.655766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259847, 0.759472, 0.596391,
		0.349544, -0.501748, 0.791245,
		0.900166, 0.414067, -0.135091,
		30.227207, 44.282093, 37.615238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903482, 44.084641, 38.343117>,  <29.597092, 43.992245, 37.709801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903482, 44.084641, 38.343117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.105307, 44.351757, 38.124218>,  <30.226400, 44.512024, 37.992878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.105307, 44.351757, 38.124218>,  <29.903482, 44.084641, 38.343117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105307, 44.351757, 38.124218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063421, 0.603467, 0.794862,
		0.861045, -0.435761, 0.262133,
		0.504559, 0.667787, -0.547249,
		30.256674, 44.552094, 37.960045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346516, 44.318310, 38.790363>,  <29.903482, 44.084641, 38.343117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346516, 44.318310, 38.790363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.357597, 44.588783, 38.495880>,  <30.364246, 44.751068, 38.319191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.357597, 44.588783, 38.495880>,  <30.346516, 44.318310, 38.790363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357597, 44.588783, 38.495880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039081, 0.736662, 0.675131,
		0.998852, 0.010067, 0.046836,
		0.027706, 0.676187, -0.736210,
		30.365910, 44.791637, 38.275017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887997, 44.757168, 38.965492>,  <30.346516, 44.318310, 38.790363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887997, 44.757168, 38.965492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.663952, 44.964920, 38.707340>,  <30.529524, 45.089573, 38.552448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.663952, 44.964920, 38.707340>,  <30.887997, 44.757168, 38.965492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663952, 44.964920, 38.707340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134509, 0.711694, 0.689491,
		0.817423, 0.473002, -0.328768,
		-0.560113, 0.519384, -0.645378,
		30.495918, 45.120735, 38.513725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121925, 45.381718, 39.063919>,  <30.887997, 44.757168, 38.965492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121925, 45.381718, 39.063919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.752281, 45.409668, 38.913643>,  <30.530495, 45.426437, 38.823479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.752281, 45.409668, 38.913643>,  <31.121925, 45.381718, 39.063919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752281, 45.409668, 38.913643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232239, 0.678048, 0.697364,
		0.303462, 0.731689, -0.610362,
		-0.924108, 0.069873, -0.375689,
		30.475048, 45.430630, 38.800938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947721, 46.060947, 39.096283>,  <31.121925, 45.381718, 39.063919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947721, 46.060947, 39.096283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.585796, 45.893009, 39.067879>,  <30.368641, 45.792248, 39.050838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.585796, 45.893009, 39.067879>,  <30.947721, 46.060947, 39.096283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585796, 45.893009, 39.067879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340163, 0.612398, 0.713623,
		-0.256126, 0.669850, -0.696922,
		-0.904814, -0.419844, -0.071007,
		30.314352, 45.767056, 39.046577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516459, 46.611443, 38.932037>,  <30.947721, 46.060947, 39.096283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516459, 46.611443, 38.932037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276878, 46.319729, 39.064339>,  <30.133129, 46.144699, 39.143719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276878, 46.319729, 39.064339>,  <30.516459, 46.611443, 38.932037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276878, 46.319729, 39.064339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372866, 0.619517, 0.690774,
		-0.708681, 0.290413, -0.642987,
		-0.598952, -0.729286, 0.330755,
		30.097193, 46.100945, 39.163567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948694, 46.959274, 38.983627>,  <30.516459, 46.611443, 38.932037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948694, 46.959274, 38.983627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899675, 46.640289, 39.219944>,  <29.870264, 46.448898, 39.361736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899675, 46.640289, 39.219944>,  <29.948694, 46.959274, 38.983627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899675, 46.640289, 39.219944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543913, 0.551888, 0.632122,
		-0.830145, -0.243875, -0.501382,
		-0.122548, -0.797461, 0.590793,
		29.862911, 46.401051, 39.397182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337866, 47.138775, 39.378044>,  <29.948694, 46.959274, 38.983627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337866, 47.138775, 39.378044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.475643, 46.814274, 39.567032>,  <29.558310, 46.619572, 39.680424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.475643, 46.814274, 39.567032>,  <29.337866, 47.138775, 39.378044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475643, 46.814274, 39.567032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505031, 0.264125, 0.821694,
		-0.791393, -0.521638, -0.318732,
		0.344442, -0.811253, 0.472471,
		29.578976, 46.570896, 39.708775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766333, 46.673599, 39.680183>,  <29.337866, 47.138775, 39.378044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766333, 46.673599, 39.680183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.101480, 46.642372, 39.896286>,  <29.302568, 46.623634, 40.025948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.101480, 46.642372, 39.896286>,  <28.766333, 46.673599, 39.680183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101480, 46.642372, 39.896286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520680, 0.182891, 0.833932,
		-0.163912, -0.980029, 0.112590,
		0.837869, -0.078068, 0.540260,
		29.352840, 46.618954, 40.058365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101336, 46.387901, 39.589287>,  <28.766333, 46.673599, 39.680183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101336, 46.387901, 39.589287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.831894, 46.555134, 39.345493>,  <27.670229, 46.655472, 39.199219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.831894, 46.555134, 39.345493>,  <28.101336, 46.387901, 39.589287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831894, 46.555134, 39.345493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653526, 0.722070, -0.226976,
		0.345196, -0.551204, -0.759614,
		-0.673605, 0.418077, -0.609482,
		27.629812, 46.680557, 39.162647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772963, 46.047127, 38.923859>,  <28.101336, 46.387901, 39.589287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772963, 46.047127, 38.923859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.621943, 45.932213, 39.275978>,  <27.531330, 45.863266, 39.487251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.621943, 45.932213, 39.275978>,  <27.772963, 46.047127, 38.923859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621943, 45.932213, 39.275978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064866, -0.956526, -0.284341,
		0.923714, -0.050252, 0.379772,
		-0.377551, -0.287285, 0.880297,
		27.508677, 45.846027, 39.540066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232794, 45.679817, 39.366833>,  <27.772963, 46.047127, 38.923859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232794, 45.679817, 39.366833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.851114, 45.563534, 39.395092>,  <27.622107, 45.493763, 39.412048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.851114, 45.563534, 39.395092>,  <28.232794, 45.679817, 39.366833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851114, 45.563534, 39.395092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230202, -0.864277, -0.447251,
		0.191082, -0.410502, 0.891614,
		-0.954199, -0.290712, 0.070649,
		27.564856, 45.476318, 39.416286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227552, 44.976799, 39.602692>,  <28.232794, 45.679817, 39.366833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227552, 44.976799, 39.602692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.874521, 45.022392, 39.420235>,  <27.662703, 45.049747, 39.310760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.874521, 45.022392, 39.420235>,  <28.227552, 44.976799, 39.602692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874521, 45.022392, 39.420235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156327, -0.843831, -0.513334,
		-0.443416, -0.524364, 0.726928,
		-0.882578, 0.113982, -0.456141,
		27.609749, 45.056587, 39.283394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914595, 44.370255, 39.678082>,  <28.227552, 44.976799, 39.602692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914595, 44.370255, 39.678082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.742903, 44.526974, 39.352566>,  <27.639889, 44.621006, 39.157257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.742903, 44.526974, 39.352566>,  <27.914595, 44.370255, 39.678082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742903, 44.526974, 39.352566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164026, -0.852216, -0.496813,
		-0.888178, -0.346729, 0.301529,
		-0.429227, 0.391800, -0.813792,
		27.614134, 44.644512, 39.108429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451340, 43.831112, 39.387791>,  <27.914595, 44.370255, 39.678082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451340, 43.831112, 39.387791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.508524, 44.072014, 39.073631>,  <27.542835, 44.216557, 38.885136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.508524, 44.072014, 39.073631>,  <27.451340, 43.831112, 39.387791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508524, 44.072014, 39.073631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403667, -0.760025, -0.509328,
		-0.903667, -0.244223, -0.351767,
		0.142962, 0.602260, -0.785395,
		27.551413, 44.252693, 38.838013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996223, 43.524151, 38.781082>,  <27.451340, 43.831112, 39.387791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996223, 43.524151, 38.781082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.264524, 43.784561, 38.638954>,  <27.425505, 43.940807, 38.553677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.264524, 43.784561, 38.638954>,  <26.996223, 43.524151, 38.781082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264524, 43.784561, 38.638954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325786, -0.689000, -0.647412,
		-0.666300, 0.318495, -0.674244,
		0.670752, 0.651030, -0.355320,
		27.465750, 43.979870, 38.532360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817305, 43.762444, 38.101303>,  <26.996223, 43.524151, 38.781082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817305, 43.762444, 38.101303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.208347, 43.836399, 38.141506>,  <27.442972, 43.880772, 38.165627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.208347, 43.836399, 38.141506>,  <26.817305, 43.762444, 38.101303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208347, 43.836399, 38.141506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193148, -0.598698, -0.777338,
		-0.083550, 0.779343, -0.621002,
		0.977606, 0.184892, 0.100507,
		27.501629, 43.891865, 38.171658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164747, 43.887001, 37.436588>,  <26.817305, 43.762444, 38.101303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164747, 43.887001, 37.436588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.443438, 43.749950, 37.688675>,  <27.610651, 43.667721, 37.839928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.443438, 43.749950, 37.688675>,  <27.164747, 43.887001, 37.436588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443438, 43.749950, 37.688675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399936, -0.543802, -0.737788,
		0.595504, 0.766083, -0.241850,
		0.696726, -0.342631, 0.630220,
		27.652454, 43.647160, 37.877743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740156, 43.622536, 36.966930>,  <27.164747, 43.887001, 37.436588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740156, 43.622536, 36.966930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.860634, 43.485191, 37.322769>,  <27.932920, 43.402786, 37.536274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.860634, 43.485191, 37.322769>,  <27.740156, 43.622536, 36.966930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860634, 43.485191, 37.322769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538536, -0.708647, -0.455849,
		0.786932, 0.616380, -0.028529,
		0.301193, -0.343358, 0.889600,
		27.950993, 43.382183, 37.589649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504997, 43.437397, 36.949970>,  <27.740156, 43.622536, 36.966930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504997, 43.437397, 36.949970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.391558, 43.220875, 37.266590>,  <28.323494, 43.090961, 37.456562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.391558, 43.220875, 37.266590>,  <28.504997, 43.437397, 36.949970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391558, 43.220875, 37.266590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720039, -0.665372, -0.197040,
		0.633337, 0.514068, 0.578462,
		-0.283600, -0.541308, 0.791553,
		28.306479, 43.058483, 37.504055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163115, 43.210999, 37.148392>,  <28.504997, 43.437397, 36.949970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163115, 43.210999, 37.148392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.892397, 42.982452, 37.334076>,  <28.729967, 42.845325, 37.445488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.892397, 42.982452, 37.334076>,  <29.163115, 43.210999, 37.148392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892397, 42.982452, 37.334076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532790, -0.815307, -0.226734,
		0.508022, 0.093874, 0.856213,
		-0.676793, -0.571368, 0.464210,
		28.689360, 42.811043, 37.473339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521627, 42.807434, 37.613461>,  <29.163115, 43.210999, 37.148392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521627, 42.807434, 37.613461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177565, 42.610519, 37.560120>,  <28.971127, 42.492371, 37.528114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177565, 42.610519, 37.560120>,  <29.521627, 42.807434, 37.613461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177565, 42.610519, 37.560120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506098, -0.791436, -0.342773,
		0.063201, -0.362329, 0.929905,
		-0.860158, -0.492286, -0.133354,
		28.919518, 42.462833, 37.520115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605204, 42.060429, 37.954536>,  <29.521627, 42.807434, 37.613461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605204, 42.060429, 37.954536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.299540, 42.053268, 37.696625>,  <29.116142, 42.048973, 37.541878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.299540, 42.053268, 37.696625>,  <29.605204, 42.060429, 37.954536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299540, 42.053268, 37.696625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333865, -0.866274, -0.371624,
		-0.551903, -0.499249, 0.667947,
		-0.764158, -0.017904, -0.644780,
		29.070292, 42.047897, 37.503189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349854, 41.351845, 37.944813>,  <29.605204, 42.060429, 37.954536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349854, 41.351845, 37.944813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228081, 41.498890, 37.593319>,  <29.155016, 41.587116, 37.382423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228081, 41.498890, 37.593319>,  <29.349854, 41.351845, 37.944813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228081, 41.498890, 37.593319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414246, -0.779626, -0.469663,
		-0.857741, -0.506995, 0.085062,
		-0.304433, 0.367612, -0.878739,
		29.136751, 41.609173, 37.329697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070763, 40.802292, 37.570671>,  <29.349854, 41.351845, 37.944813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070763, 40.802292, 37.570671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.154270, 41.058014, 37.274643>,  <29.204374, 41.211449, 37.097027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.154270, 41.058014, 37.274643>,  <29.070763, 40.802292, 37.570671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154270, 41.058014, 37.274643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429485, -0.739800, -0.517918,
		-0.878611, -0.209723, -0.429021,
		0.208770, 0.639306, -0.740069,
		29.216902, 41.249805, 37.052624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764933, 40.511524, 37.013062>,  <29.070763, 40.802292, 37.570671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764933, 40.511524, 37.013062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.060400, 40.751888, 36.890896>,  <29.237680, 40.896107, 36.817596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.060400, 40.751888, 36.890896>,  <28.764933, 40.511524, 37.013062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060400, 40.751888, 36.890896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423479, -0.766210, -0.483309,
		-0.524435, 0.227669, -0.820448,
		0.738670, 0.600907, -0.305414,
		29.282001, 40.932159, 36.799271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839777, 40.430580, 36.269924>,  <28.764933, 40.511524, 37.013062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839777, 40.430580, 36.269924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.187178, 40.608578, 36.357269>,  <29.395618, 40.715378, 36.409676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.187178, 40.608578, 36.357269>,  <28.839777, 40.430580, 36.269924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187178, 40.608578, 36.357269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471181, -0.604362, -0.642445,
		-0.153918, 0.660852, -0.734564,
		0.868503, 0.444997, 0.218359,
		29.447729, 40.742077, 36.422775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220989, 40.618637, 35.622871>,  <28.839777, 40.430580, 36.269924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220989, 40.618637, 35.622871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.494761, 40.623711, 35.914459>,  <29.659023, 40.626755, 36.089413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.494761, 40.623711, 35.914459>,  <29.220989, 40.618637, 35.622871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494761, 40.623711, 35.914459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600839, -0.576164, -0.554101,
		0.412977, 0.817235, -0.401965,
		0.684429, 0.012685, 0.728969,
		29.700089, 40.627518, 36.133148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881943, 40.636074, 35.288795>,  <29.220989, 40.618637, 35.622871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881943, 40.636074, 35.288795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914129, 40.487171, 35.658649>,  <29.933441, 40.397827, 35.880562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914129, 40.487171, 35.658649>,  <29.881943, 40.636074, 35.288795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914129, 40.487171, 35.658649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555061, -0.753767, -0.351772,
		0.827909, 0.541534, 0.145975,
		0.080466, -0.372259, 0.924634,
		29.938269, 40.375492, 35.936039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421303, 40.339478, 35.178387>,  <29.881943, 40.636074, 35.288795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421303, 40.339478, 35.178387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337185, 40.198292, 35.543064>,  <30.286715, 40.113579, 35.761871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337185, 40.198292, 35.543064>,  <30.421303, 40.339478, 35.178387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337185, 40.198292, 35.543064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645167, -0.750760, -0.141845,
		0.734532, 0.558368, 0.385602,
		-0.210293, -0.352967, 0.911697,
		30.274097, 40.092403, 35.816574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.653152, 27.801355, 42.282272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.519241, 27.720451, 41.914139>,  <42.438896, 27.671909, 41.693260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.519241, 27.720451, 41.914139>,  <42.653152, 27.801355, 42.282272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519241, 27.720451, 41.914139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042471, 0.972460, -0.229167,
		0.941340, -0.115808, -0.316967,
		-0.334777, -0.202262, -0.920334,
		42.418808, 27.659773, 41.638039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099117, 28.080294, 41.790112>,  <42.653152, 27.801355, 42.282272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099117, 28.080294, 41.790112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.747005, 28.071865, 41.600517>,  <42.535736, 28.066809, 41.486763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.747005, 28.071865, 41.600517>,  <43.099117, 28.080294, 41.790112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747005, 28.071865, 41.600517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171842, 0.917025, -0.359910,
		0.442235, -0.398273, -0.803621,
		-0.880283, -0.021069, -0.473981,
		42.482922, 28.065544, 41.458324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217327, 28.134089, 41.130280>,  <43.099117, 28.080294, 41.790112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217327, 28.134089, 41.130280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838364, 28.253662, 41.175968>,  <42.610985, 28.325405, 41.203381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838364, 28.253662, 41.175968>,  <43.217327, 28.134089, 41.130280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838364, 28.253662, 41.175968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234504, 0.891407, -0.387817,
		-0.217753, -0.340636, -0.914631,
		-0.947413, 0.298933, 0.114226,
		42.554138, 28.343342, 41.210236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050762, 28.448511, 40.447464>,  <43.217327, 28.134089, 41.130280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050762, 28.448511, 40.447464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.786186, 28.584280, 40.714981>,  <42.627441, 28.665741, 40.875492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.786186, 28.584280, 40.714981>,  <43.050762, 28.448511, 40.447464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786186, 28.584280, 40.714981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126464, 0.929438, -0.346631,
		-0.739259, -0.144697, -0.657692,
		-0.661440, 0.339424, 0.668796,
		42.587753, 28.686108, 40.915619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689281, 29.018137, 40.075802>,  <43.050762, 28.448511, 40.447464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689281, 29.018137, 40.075802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.586311, 29.077108, 40.457798>,  <42.524529, 29.112492, 40.686996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.586311, 29.077108, 40.457798>,  <42.689281, 29.018137, 40.075802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586311, 29.077108, 40.457798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022596, 0.987104, -0.158479,
		-0.966035, -0.062374, -0.250770,
		-0.257421, 0.147430, 0.954986,
		42.509087, 29.121338, 40.744293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040112, 29.473406, 40.109825>,  <42.689281, 29.018137, 40.075802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040112, 29.473406, 40.109825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244728, 29.492758, 40.452984>,  <42.367496, 29.504370, 40.658878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244728, 29.492758, 40.452984>,  <42.040112, 29.473406, 40.109825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244728, 29.492758, 40.452984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030197, 0.998809, -0.038322,
		-0.858729, -0.006303, 0.512391,
		0.511539, 0.048381, 0.857897,
		42.398190, 29.507273, 40.710354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689243, 30.102438, 40.564747>,  <42.040112, 29.473406, 40.109825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689243, 30.102438, 40.564747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065117, 30.026798, 40.678753>,  <42.290642, 29.981415, 40.747154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065117, 30.026798, 40.678753>,  <41.689243, 30.102438, 40.564747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065117, 30.026798, 40.678753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177568, 0.981892, 0.066016,
		-0.292336, -0.011424, 0.956248,
		0.939686, -0.189098, 0.285013,
		42.347023, 29.970068, 40.764256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825634, 30.637651, 40.997978>,  <41.689243, 30.102438, 40.564747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825634, 30.637651, 40.997978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196747, 30.499996, 40.940308>,  <42.419415, 30.417402, 40.905704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196747, 30.499996, 40.940308>,  <41.825634, 30.637651, 40.997978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196747, 30.499996, 40.940308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332109, 0.937786, -0.101294,
		0.170062, 0.046098, 0.984355,
		0.927784, -0.344139, -0.144173,
		42.475082, 30.396755, 40.897057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290039, 31.156687, 41.299023>,  <41.825634, 30.637651, 40.997978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290039, 31.156687, 41.299023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517616, 30.943560, 41.048450>,  <42.654163, 30.815683, 40.898109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517616, 30.943560, 41.048450>,  <42.290039, 31.156687, 41.299023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517616, 30.943560, 41.048450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343050, 0.846054, -0.408055,
		0.747410, 0.017264, 0.664139,
		0.568942, -0.532817, -0.626427,
		42.688297, 30.783714, 40.860523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804977, 31.439625, 41.321999>,  <42.290039, 31.156687, 41.299023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804977, 31.439625, 41.321999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854046, 31.227692, 40.986324>,  <42.883488, 31.100533, 40.784920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854046, 31.227692, 40.986324>,  <42.804977, 31.439625, 41.321999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854046, 31.227692, 40.986324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495981, 0.765134, -0.410575,
		0.859624, -0.365854, 0.356647,
		0.122673, -0.529831, -0.839185,
		42.890846, 31.068743, 40.734570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428379, 31.551872, 41.182117>,  <42.804977, 31.439625, 41.321999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428379, 31.551872, 41.182117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.273617, 31.431429, 40.833488>,  <43.180759, 31.359163, 40.624310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.273617, 31.431429, 40.833488>,  <43.428379, 31.551872, 41.182117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273617, 31.431429, 40.833488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491387, 0.732478, -0.471184,
		0.780286, -0.610582, -0.135436,
		-0.386900, -0.301107, -0.871574,
		43.157547, 31.341097, 40.572018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032188, 31.530027, 40.743774>,  <43.428379, 31.551872, 41.182117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032188, 31.530027, 40.743774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711342, 31.554680, 40.506180>,  <43.518833, 31.569471, 40.363625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711342, 31.554680, 40.506180>,  <44.032188, 31.530027, 40.743774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711342, 31.554680, 40.506180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494437, 0.626323, -0.602704,
		0.334879, -0.777124, -0.532855,
		-0.802114, 0.061630, -0.593981,
		43.470707, 31.573168, 40.327984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271698, 31.300236, 40.085499>,  <44.032188, 31.530027, 40.743774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271698, 31.300236, 40.085499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.940796, 31.504330, 39.991421>,  <43.742256, 31.626785, 39.934975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.940796, 31.504330, 39.991421>,  <44.271698, 31.300236, 40.085499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940796, 31.504330, 39.991421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519849, 0.536354, -0.664892,
		-0.213102, -0.672299, -0.708944,
		-0.827251, 0.510234, -0.235195,
		43.692619, 31.657400, 39.920860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206070, 31.192066, 39.328327>,  <44.271698, 31.300236, 40.085499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206070, 31.192066, 39.328327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998959, 31.517107, 39.435345>,  <43.874691, 31.712132, 39.499554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998959, 31.517107, 39.435345>,  <44.206070, 31.192066, 39.328327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998959, 31.517107, 39.435345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350804, 0.486894, -0.799919,
		-0.780282, -0.320327, -0.537168,
		-0.517780, 0.812604, 0.267543,
		43.843624, 31.760887, 39.515606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919048, 31.303709, 38.708839>,  <44.206070, 31.192066, 39.328327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919048, 31.303709, 38.708839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888611, 31.631569, 38.935955>,  <43.870350, 31.828285, 39.072224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888611, 31.631569, 38.935955>,  <43.919048, 31.303709, 38.708839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888611, 31.631569, 38.935955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373703, 0.551376, -0.745876,
		-0.924422, 0.155427, -0.348262,
		-0.076094, 0.819650, 0.567788,
		43.865784, 31.877464, 39.106293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613346, 31.863813, 38.252716>,  <43.919048, 31.303709, 38.708839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613346, 31.863813, 38.252716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.783684, 32.064247, 38.554066>,  <43.885887, 32.184505, 38.734875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.783684, 32.064247, 38.554066>,  <43.613346, 31.863813, 38.252716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783684, 32.064247, 38.554066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352364, 0.675066, -0.648171,
		-0.833365, 0.541482, 0.110909,
		0.425844, 0.501083, 0.753374,
		43.911438, 32.214573, 38.780079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357273, 32.598091, 38.212109>,  <43.613346, 31.863813, 38.252716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357273, 32.598091, 38.212109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709351, 32.608295, 38.401676>,  <43.920597, 32.614418, 38.515419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709351, 32.608295, 38.401676>,  <43.357273, 32.598091, 38.212109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709351, 32.608295, 38.401676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358228, 0.619316, -0.698657,
		-0.311331, 0.784728, 0.535981,
		0.880196, 0.025511, 0.473924,
		43.973408, 32.615948, 38.543854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473583, 33.381104, 38.237041>,  <43.357273, 32.598091, 38.212109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473583, 33.381104, 38.237041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.814388, 33.186085, 38.313328>,  <44.018871, 33.069073, 38.359100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.814388, 33.186085, 38.313328>,  <43.473583, 33.381104, 38.237041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814388, 33.186085, 38.313328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511232, 0.696392, -0.503666,
		0.112749, 0.526629, 0.842585,
		0.852015, -0.487545, 0.190712,
		44.069992, 33.039822, 38.370541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868614, 33.873737, 38.585953>,  <43.473583, 33.381104, 38.237041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868614, 33.873737, 38.585953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.106136, 33.599205, 38.417980>,  <44.248650, 33.434486, 38.317196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.106136, 33.599205, 38.417980>,  <43.868614, 33.873737, 38.585953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106136, 33.599205, 38.417980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450282, 0.715990, -0.533484,
		0.666811, 0.127701, 0.734204,
		0.593809, -0.686332, -0.419928,
		44.284279, 33.393307, 38.292000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566643, 34.120235, 38.667313>,  <43.868614, 33.873737, 38.585953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566643, 34.120235, 38.667313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.585442, 33.845406, 38.377285>,  <44.596722, 33.680508, 38.203270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.585442, 33.845406, 38.377285>,  <44.566643, 34.120235, 38.667313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585442, 33.845406, 38.377285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617740, 0.590411, -0.519433,
		0.784977, -0.423495, 0.452177,
		0.046993, -0.687071, -0.725069,
		44.599541, 33.639286, 38.159763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187824, 34.136066, 38.465485>,  <44.566643, 34.120235, 38.667313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187824, 34.136066, 38.465485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043648, 33.937904, 38.149342>,  <44.957142, 33.819008, 37.959656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043648, 33.937904, 38.149342>,  <45.187824, 34.136066, 38.465485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043648, 33.937904, 38.149342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479910, 0.628073, -0.612544,
		0.799857, -0.600083, 0.011368,
		-0.360438, -0.495403, -0.790354,
		44.935516, 33.789284, 37.912235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.734444, 33.825016, 37.961010>,  <45.187824, 34.136066, 38.465485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.734444, 33.825016, 37.961010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.395744, 33.904102, 37.763451>,  <45.192524, 33.951553, 37.644917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.395744, 33.904102, 37.763451>,  <45.734444, 33.825016, 37.961010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395744, 33.904102, 37.763451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527964, 0.426432, -0.734446,
		0.065400, -0.882646, -0.465466,
		-0.846745, 0.197716, -0.493894,
		45.141720, 33.963417, 37.615284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207420, 33.461285, 37.733250>,  <45.734444, 33.825016, 37.961010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207420, 33.461285, 37.733250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.399940, 33.510117, 37.386047>,  <46.515453, 33.539417, 37.177727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.399940, 33.510117, 37.386047>,  <46.207420, 33.461285, 37.733250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.399940, 33.510117, 37.386047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194014, -0.950855, -0.241315,
		-0.854812, 0.284552, -0.433965,
		0.481305, 0.122084, -0.868010,
		46.544331, 33.546741, 37.125645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788536, 33.093399, 37.380436>,  <46.207420, 33.461285, 37.733250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788536, 33.093399, 37.380436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083557, 33.130074, 37.112820>,  <46.260571, 33.152077, 36.952251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083557, 33.130074, 37.112820>,  <45.788536, 33.093399, 37.380436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083557, 33.130074, 37.112820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057062, -0.978736, -0.197028,
		-0.672877, 0.183495, -0.716635,
		0.737551, 0.091683, -0.669039,
		46.304821, 33.157578, 36.912109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573490, 32.662907, 36.841557>,  <45.788536, 33.093399, 37.380436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573490, 32.662907, 36.841557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.965324, 32.705044, 36.773060>,  <46.200424, 32.730328, 36.731964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.965324, 32.705044, 36.773060>,  <45.573490, 32.662907, 36.841557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965324, 32.705044, 36.773060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048118, -0.949824, -0.309062,
		-0.195204, 0.294511, -0.935499,
		0.979582, 0.105344, -0.171238,
		46.259197, 32.736649, 36.721687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763367, 32.356728, 36.123455>,  <45.573490, 32.662907, 36.841557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763367, 32.356728, 36.123455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.100079, 32.355518, 36.339382>,  <46.302105, 32.354794, 36.468937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.100079, 32.355518, 36.339382>,  <45.763367, 32.356728, 36.123455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100079, 32.355518, 36.339382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165522, -0.950372, -0.263429,
		0.513825, 0.311100, -0.799500,
		0.841776, -0.003022, 0.539819,
		46.352612, 32.354610, 36.501328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324657, 32.132008, 35.634071>,  <45.763367, 32.356728, 36.123455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.324657, 32.132008, 35.634071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.438435, 32.070892, 36.012650>,  <46.506699, 32.034225, 36.239796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.438435, 32.070892, 36.012650>,  <46.324657, 32.132008, 35.634071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438435, 32.070892, 36.012650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151743, -0.967600, -0.201804,
		0.946609, 0.201017, -0.252041,
		0.284441, -0.152784, 0.946441,
		46.523766, 32.025059, 36.296581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.961155, 31.697067, 35.571987>,  <46.324657, 32.132008, 35.634071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.961155, 31.697067, 35.571987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.845932, 31.645947, 35.951607>,  <46.776798, 31.615274, 36.179379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.845932, 31.645947, 35.951607>,  <46.961155, 31.697067, 35.571987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.845932, 31.645947, 35.951607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181092, -0.980442, -0.077066,
		0.940334, 0.149665, 0.305568,
		-0.288057, -0.127804, 0.949046,
		46.759514, 31.607605, 36.236320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470718, 31.333542, 35.882526>,  <46.961155, 31.697067, 35.571987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470718, 31.333542, 35.882526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.148972, 31.271902, 36.112045>,  <46.955921, 31.234919, 36.249756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.148972, 31.271902, 36.112045>,  <47.470718, 31.333542, 35.882526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.148972, 31.271902, 36.112045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072537, -0.984025, -0.162582,
		0.589685, -0.089155, 0.802697,
		-0.804369, -0.154098, 0.573798,
		46.907661, 31.225674, 36.284184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.613274, 30.803263, 36.443836>,  <47.470718, 31.333542, 35.882526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.613274, 30.803263, 36.443836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.216351, 30.807877, 36.394543>,  <46.978195, 30.810644, 36.364967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.216351, 30.807877, 36.394543>,  <47.613274, 30.803263, 36.443836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.216351, 30.807877, 36.394543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014231, -0.999678, 0.021035,
		-0.122953, 0.022627, 0.992155,
		-0.992311, 0.011533, -0.123236,
		46.918659, 30.811337, 36.357571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.471497, 30.241774, 36.784302>,  <47.613274, 30.803263, 36.443836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.471497, 30.241774, 36.784302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.125648, 30.319159, 36.598827>,  <46.918140, 30.365589, 36.487545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.125648, 30.319159, 36.598827>,  <47.471497, 30.241774, 36.784302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.125648, 30.319159, 36.598827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211401, -0.977305, -0.013564,
		-0.455785, 0.086295, 0.885897,
		-0.864621, 0.193462, -0.463683,
		46.866261, 30.377197, 36.459721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.159142, 29.745070, 37.065235>,  <47.471497, 30.241774, 36.784302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.159142, 29.745070, 37.065235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.953045, 29.859406, 36.742043>,  <46.829388, 29.928007, 36.548126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.953045, 29.859406, 36.742043>,  <47.159142, 29.745070, 37.065235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.953045, 29.859406, 36.742043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336331, -0.934555, -0.116144,
		-0.788297, 0.211905, 0.577654,
		-0.515238, 0.285839, -0.807977,
		46.798473, 29.945158, 36.499649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.573353, 29.415504, 37.151375>,  <47.159142, 29.745070, 37.065235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.573353, 29.415504, 37.151375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.571693, 29.496294, 36.759621>,  <46.570698, 29.544767, 36.524570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.571693, 29.496294, 36.759621>,  <46.573353, 29.415504, 37.151375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.571693, 29.496294, 36.759621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326653, -0.925938, -0.189570,
		-0.945135, 0.319133, 0.069812,
		-0.004144, 0.201973, -0.979382,
		46.570450, 29.556887, 36.465805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913643, 29.334324, 36.855434>,  <46.573353, 29.415504, 37.151375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913643, 29.334324, 36.855434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106438, 29.295967, 36.507069>,  <46.222115, 29.272953, 36.298050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106438, 29.295967, 36.507069>,  <45.913643, 29.334324, 36.855434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106438, 29.295967, 36.507069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399756, -0.908574, -0.121198,
		-0.779670, 0.406570, -0.476252,
		0.481986, -0.095890, -0.870916,
		46.251034, 29.267200, 36.245792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460777, 29.241175, 36.192833>,  <45.913643, 29.334324, 36.855434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460777, 29.241175, 36.192833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.812244, 29.073219, 36.101940>,  <46.023125, 28.972446, 36.047405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.812244, 29.073219, 36.101940>,  <45.460777, 29.241175, 36.192833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812244, 29.073219, 36.101940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459301, -0.873338, -0.162247,
		-0.130320, 0.246927, -0.960231,
		0.878669, -0.419891, -0.227228,
		46.075844, 28.947252, 36.033772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340488, 28.770971, 35.644047>,  <45.460777, 29.241175, 36.192833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340488, 28.770971, 35.644047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.686096, 28.641607, 35.798386>,  <45.893459, 28.563990, 35.890991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.686096, 28.641607, 35.798386>,  <45.340488, 28.770971, 35.644047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686096, 28.641607, 35.798386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366559, -0.929456, 0.041778,
		0.345121, -0.177535, -0.921614,
		0.864017, -0.323408, 0.385852,
		45.945301, 28.544584, 35.914143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386345, 28.065252, 35.361874>,  <45.340488, 28.770971, 35.644047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386345, 28.065252, 35.361874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653557, 28.089527, 35.658535>,  <45.813885, 28.104092, 35.836533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653557, 28.089527, 35.658535>,  <45.386345, 28.065252, 35.361874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653557, 28.089527, 35.658535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259919, -0.914863, 0.308979,
		0.697260, -0.399178, -0.595386,
		0.668034, 0.060687, 0.741652,
		45.853966, 28.107733, 35.881031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744019, 27.412144, 35.410442>,  <45.386345, 28.065252, 35.361874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744019, 27.412144, 35.410442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.779747, 27.577568, 35.772877>,  <45.801182, 27.676823, 35.990337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.779747, 27.577568, 35.772877>,  <45.744019, 27.412144, 35.410442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779747, 27.577568, 35.772877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261065, -0.868194, 0.422000,
		0.961180, -0.274239, 0.030422,
		0.089316, 0.413561, 0.906085,
		45.806541, 27.701635, 36.044701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976032, 26.872030, 35.804890>,  <45.744019, 27.412144, 35.410442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976032, 26.872030, 35.804890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890259, 27.133167, 36.095493>,  <45.838795, 27.289850, 36.269855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890259, 27.133167, 36.095493>,  <45.976032, 26.872030, 35.804890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890259, 27.133167, 36.095493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146458, -0.756893, 0.636917,
		0.965695, 0.030176, 0.257920,
		-0.214438, 0.652842, 0.726508,
		45.825928, 27.329020, 36.313446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432465, 26.659348, 36.447083>,  <45.976032, 26.872030, 35.804890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432465, 26.659348, 36.447083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115829, 26.878622, 36.555069>,  <45.925850, 27.010187, 36.619862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115829, 26.878622, 36.555069>,  <46.432465, 26.659348, 36.447083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115829, 26.878622, 36.555069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332289, -0.756938, 0.562698,
		0.512810, 0.355718, 0.781339,
		-0.791587, 0.548187, 0.269964,
		45.878353, 27.043077, 36.636059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325569, 26.528858, 37.127056>,  <46.432465, 26.659348, 36.447083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325569, 26.528858, 37.127056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.967575, 26.675829, 37.025860>,  <45.752781, 26.764011, 36.965141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.967575, 26.675829, 37.025860>,  <46.325569, 26.528858, 37.127056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967575, 26.675829, 37.025860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429162, -0.554349, 0.713104,
		0.121768, 0.746790, 0.653818,
		-0.894982, 0.367427, -0.252992,
		45.699081, 26.786057, 36.949963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950680, 26.689108, 37.816216>,  <46.325569, 26.528858, 37.127056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950680, 26.689108, 37.816216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696140, 26.649910, 37.510155>,  <45.543415, 26.626390, 37.326519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696140, 26.649910, 37.510155>,  <45.950680, 26.689108, 37.816216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696140, 26.649910, 37.510155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429438, -0.778982, 0.456914,
		-0.640815, 0.619342, 0.453621,
		-0.636348, -0.097995, -0.765152,
		45.505238, 26.620512, 37.280609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.555756, 39.693657, 35.448799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303951, 39.387562, 35.502659>,  <36.152870, 39.203903, 35.534973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303951, 39.387562, 35.502659>,  <36.555756, 39.693657, 35.448799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303951, 39.387562, 35.502659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642821, -0.610270, -0.462982,
		0.436464, -0.204896, 0.876081,
		-0.629508, -0.765238, 0.134650,
		36.115097, 39.157990, 35.543053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909000, 39.199043, 35.869335>,  <36.555756, 39.693657, 35.448799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909000, 39.199043, 35.869335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616524, 38.999352, 35.683376>,  <36.441036, 38.879536, 35.571800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616524, 38.999352, 35.683376>,  <36.909000, 39.199043, 35.869335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616524, 38.999352, 35.683376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654363, -0.705879, -0.271191,
		-0.192774, -0.502503, 0.842810,
		-0.731196, -0.499225, -0.464894,
		36.397163, 38.849583, 35.543907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194794, 38.531853, 36.009907>,  <36.909000, 39.199043, 35.869335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194794, 38.531853, 36.009907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923443, 38.444332, 35.729359>,  <36.760632, 38.391819, 35.561028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923443, 38.444332, 35.729359>,  <37.194794, 38.531853, 36.009907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923443, 38.444332, 35.729359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399477, -0.911032, -0.102169,
		-0.616619, -0.349492, 0.705433,
		-0.678379, -0.218805, -0.701374,
		36.719929, 38.378689, 35.518948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769688, 37.907177, 36.324726>,  <37.194794, 38.531853, 36.009907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769688, 37.907177, 36.324726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791904, 37.940235, 35.926716>,  <36.805233, 37.960072, 35.687908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791904, 37.940235, 35.926716>,  <36.769688, 37.907177, 36.324726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791904, 37.940235, 35.926716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318193, -0.946073, -0.060820,
		-0.946398, -0.313233, -0.078843,
		0.055540, 0.082647, -0.995030,
		36.808567, 37.965031, 35.628208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476498, 37.351627, 36.106724>,  <36.769688, 37.907177, 36.324726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476498, 37.351627, 36.106724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652699, 37.468441, 35.767151>,  <36.758419, 37.538528, 35.563408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652699, 37.468441, 35.767151>,  <36.476498, 37.351627, 36.106724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652699, 37.468441, 35.767151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084024, -0.954874, -0.284879,
		-0.893812, 0.054158, -0.445158,
		0.440499, 0.292032, -0.848928,
		36.784847, 37.556049, 35.512474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145561, 36.925217, 35.519718>,  <36.476498, 37.351627, 36.106724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145561, 36.925217, 35.519718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515984, 37.049629, 35.434231>,  <36.738239, 37.124275, 35.382938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515984, 37.049629, 35.434231>,  <36.145561, 36.925217, 35.519718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515984, 37.049629, 35.434231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280973, -0.946327, -0.159750,
		-0.251934, 0.087889, -0.963745,
		0.926058, 0.311032, -0.213718,
		36.793800, 37.142941, 35.370117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364735, 36.500053, 35.077438>,  <36.145561, 36.925217, 35.519718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364735, 36.500053, 35.077438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719215, 36.671169, 35.148590>,  <36.931904, 36.773838, 35.191280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719215, 36.671169, 35.148590>,  <36.364735, 36.500053, 35.077438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719215, 36.671169, 35.148590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449191, -0.887390, -0.103757,
		0.113460, 0.171850, -0.978567,
		0.886202, 0.427792, 0.177877,
		36.985077, 36.799507, 35.201954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876789, 36.263119, 34.565342>,  <36.364735, 36.500053, 35.077438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876789, 36.263119, 34.565342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111317, 36.387733, 34.864452>,  <37.252033, 36.462502, 35.043919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111317, 36.387733, 34.864452>,  <36.876789, 36.263119, 34.565342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111317, 36.387733, 34.864452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640610, -0.743316, -0.192612,
		0.495831, 0.591968, -0.635394,
		0.586319, 0.311537, 0.747780,
		37.287212, 36.481194, 35.088787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516785, 36.239296, 34.322227>,  <36.876789, 36.263119, 34.565342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516785, 36.239296, 34.322227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568295, 36.224098, 34.718605>,  <37.599201, 36.214977, 34.956432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568295, 36.224098, 34.718605>,  <37.516785, 36.239296, 34.322227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568295, 36.224098, 34.718605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502118, -0.859206, -0.098197,
		0.855158, 0.510217, -0.091566,
		0.128776, -0.037997, 0.990946,
		37.606926, 36.212700, 35.015888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195820, 36.114159, 34.415325>,  <37.516785, 36.239296, 34.322227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195820, 36.114159, 34.415325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060951, 35.984444, 34.768856>,  <37.980030, 35.906616, 34.980976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060951, 35.984444, 34.768856>,  <38.195820, 36.114159, 34.415325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060951, 35.984444, 34.768856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694845, -0.719159, 0.001212,
		0.635220, 0.614533, 0.467809,
		-0.337174, -0.324285, 0.883829,
		37.959801, 35.887157, 35.034004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696304, 36.123684, 34.794029>,  <38.195820, 36.114159, 34.415325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696304, 36.123684, 34.794029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454693, 35.877262, 34.996269>,  <38.309727, 35.729408, 35.117611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454693, 35.877262, 34.996269>,  <38.696304, 36.123684, 34.794029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454693, 35.877262, 34.996269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772947, -0.607407, 0.183330,
		0.194163, 0.501537, 0.843067,
		-0.604031, -0.616050, 0.505597,
		38.273483, 35.692448, 35.147949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935760, 35.927208, 35.475658>,  <38.696304, 36.123684, 34.794029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935760, 35.927208, 35.475658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730202, 35.623837, 35.315311>,  <38.606869, 35.441814, 35.219101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730202, 35.623837, 35.315311>,  <38.935760, 35.927208, 35.475658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730202, 35.623837, 35.315311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768672, -0.614568, 0.177338,
		-0.380860, -0.217004, 0.898808,
		-0.513895, -0.758430, -0.400869,
		38.576035, 35.396309, 35.195049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610260, 36.179840, 35.798786>,  <38.935760, 35.927208, 35.475658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610260, 36.179840, 35.798786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917812, 35.925343, 35.773434>,  <40.102345, 35.772644, 35.758221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917812, 35.925343, 35.773434>,  <39.610260, 36.179840, 35.798786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917812, 35.925343, 35.773434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524570, 0.684372, -0.506420,
		0.365583, 0.356128, 0.859955,
		0.768879, -0.636245, -0.063380,
		40.148476, 35.734470, 35.754421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846523, 35.618832, 36.237167>,  <39.610260, 36.179840, 35.798786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846523, 35.618832, 36.237167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461235, 35.518963, 36.197422>,  <39.230061, 35.459042, 36.173576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461235, 35.518963, 36.197422>,  <39.846523, 35.618832, 36.237167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461235, 35.518963, 36.197422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186911, 0.888168, -0.419788,
		0.193059, -0.385776, -0.902167,
		-0.963220, -0.249669, -0.099363,
		39.172268, 35.444061, 36.167614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492264, 35.241035, 36.040459>,  <39.846523, 35.618832, 36.237167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492264, 35.241035, 36.040459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666481, 35.286465, 36.397648>,  <40.771011, 35.313721, 36.611961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666481, 35.286465, 36.397648>,  <40.492264, 35.241035, 36.040459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666481, 35.286465, 36.397648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880257, -0.153767, 0.448891,
		0.188292, -0.981559, 0.033001,
		0.435539, 0.113572, 0.892977,
		40.797142, 35.320538, 36.665543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207729, 34.640335, 36.551662>,  <40.492264, 35.241035, 36.040459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207729, 34.640335, 36.551662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335327, 34.967159, 36.743767>,  <40.411888, 35.163254, 36.859028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335327, 34.967159, 36.743767>,  <40.207729, 34.640335, 36.551662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335327, 34.967159, 36.743767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808055, -0.030328, 0.588326,
		0.495265, -0.575749, 0.650558,
		0.318998, 0.817064, 0.480257,
		40.431026, 35.212276, 36.887844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994339, 34.507175, 37.214111>,  <40.207729, 34.640335, 36.551662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994339, 34.507175, 37.214111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055996, 34.902306, 37.222515>,  <40.092991, 35.139385, 37.227558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055996, 34.902306, 37.222515>,  <39.994339, 34.507175, 37.214111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055996, 34.902306, 37.222515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698761, 0.093954, 0.709158,
		0.698551, -0.123990, 0.704736,
		0.154141, 0.987825, 0.021008,
		40.102238, 35.198654, 37.228817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989277, 34.810516, 38.019192>,  <39.994339, 34.507175, 37.214111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989277, 34.810516, 38.019192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940704, 35.137272, 37.793644>,  <39.911560, 35.333324, 37.658318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940704, 35.137272, 37.793644>,  <39.989277, 34.810516, 38.019192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940704, 35.137272, 37.793644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755848, 0.292116, 0.585971,
		0.643388, 0.497352, 0.581973,
		-0.121430, 0.816890, -0.563866,
		39.904274, 35.382339, 37.624485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838928, 35.339603, 38.486095>,  <39.989277, 34.810516, 38.019192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838928, 35.339603, 38.486095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698040, 35.470478, 38.135349>,  <39.613506, 35.549004, 37.924904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698040, 35.470478, 38.135349>,  <39.838928, 35.339603, 38.486095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698040, 35.470478, 38.135349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859422, 0.257904, 0.441452,
		0.370584, 0.909084, 0.190353,
		-0.352224, 0.327189, -0.876861,
		39.592373, 35.568634, 37.872292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625904, 35.916771, 38.549126>,  <39.838928, 35.339603, 38.486095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625904, 35.916771, 38.549126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410591, 35.812119, 38.228676>,  <39.281403, 35.749329, 38.036407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410591, 35.812119, 38.228676>,  <39.625904, 35.916771, 38.549126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410591, 35.812119, 38.228676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809106, 0.426387, 0.404402,
		0.235786, 0.865878, -0.441204,
		-0.538286, -0.261628, -0.801123,
		39.249104, 35.733631, 37.988338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182743, 36.467297, 38.426720>,  <39.625904, 35.916771, 38.549126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182743, 36.467297, 38.426720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007973, 36.197487, 38.188690>,  <38.903111, 36.035599, 38.045872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007973, 36.197487, 38.188690>,  <39.182743, 36.467297, 38.426720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007973, 36.197487, 38.188690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899206, 0.344429, 0.269808,
		0.022967, 0.652978, -0.757028,
		-0.436921, -0.674528, -0.595073,
		38.876896, 35.995129, 38.010170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612453, 36.846714, 38.031631>,  <39.182743, 36.467297, 38.426720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612453, 36.846714, 38.031631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536465, 36.454685, 38.054852>,  <38.490871, 36.219467, 38.068783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536465, 36.454685, 38.054852>,  <38.612453, 36.846714, 38.031631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536465, 36.454685, 38.054852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962704, 0.197550, 0.184864,
		-0.192647, -0.020763, -0.981049,
		-0.189967, -0.980073, 0.058046,
		38.479473, 36.160664, 38.072266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013733, 36.860352, 37.622135>,  <38.612453, 36.846714, 38.031631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013733, 36.860352, 37.622135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030258, 36.523235, 37.836800>,  <38.040173, 36.320965, 37.965599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030258, 36.523235, 37.836800>,  <38.013733, 36.860352, 37.622135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030258, 36.523235, 37.836800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994681, 0.016033, 0.101750,
		-0.094358, -0.538007, -0.837642,
		0.041312, -0.842787, 0.536658,
		38.042652, 36.270397, 37.997799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374161, 36.509964, 37.584656>,  <38.013733, 36.860352, 37.622135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374161, 36.509964, 37.584656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528992, 36.322971, 37.902557>,  <37.621891, 36.210777, 38.093296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528992, 36.322971, 37.902557>,  <37.374161, 36.509964, 37.584656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528992, 36.322971, 37.902557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897950, 0.004640, 0.440073,
		-0.209415, -0.883990, -0.417980,
		0.387080, -0.467483, 0.794751,
		37.645115, 36.182728, 38.140984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888988, 35.976639, 37.737270>,  <37.374161, 36.509964, 37.584656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888988, 35.976639, 37.737270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090733, 36.065338, 38.071083>,  <37.211781, 36.118557, 38.271370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090733, 36.065338, 38.071083>,  <36.888988, 35.976639, 37.737270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090733, 36.065338, 38.071083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863233, 0.153267, 0.480977,
		-0.021251, -0.962983, 0.268724,
		0.504359, 0.221750, 0.834535,
		37.242039, 36.131863, 38.321442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580578, 35.568878, 38.225266>,  <36.888988, 35.976639, 37.737270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580578, 35.568878, 38.225266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771893, 35.850311, 38.435490>,  <36.886681, 36.019169, 38.561626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771893, 35.850311, 38.435490>,  <36.580578, 35.568878, 38.225266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771893, 35.850311, 38.435490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816131, 0.135101, 0.561853,
		0.324305, -0.697654, 0.638831,
		0.478286, 0.703581, 0.525563,
		36.915379, 36.061386, 38.593159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345177, 35.462742, 38.942894>,  <36.580578, 35.568878, 38.225266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345177, 35.462742, 38.942894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493423, 35.834255, 38.942200>,  <36.582371, 36.057163, 38.941784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493423, 35.834255, 38.942200>,  <36.345177, 35.462742, 38.942894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493423, 35.834255, 38.942200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775619, 0.310524, 0.549536,
		0.510940, -0.202320, 0.835468,
		0.370615, 0.928785, -0.001736,
		36.604607, 36.112892, 38.941677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247913, 35.713726, 39.657730>,  <36.345177, 35.462742, 38.942894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247913, 35.713726, 39.657730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281998, 36.035793, 39.422977>,  <36.302448, 36.229034, 39.282124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281998, 36.035793, 39.422977>,  <36.247913, 35.713726, 39.657730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281998, 36.035793, 39.422977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776784, 0.422568, 0.466951,
		0.623976, 0.416093, 0.661454,
		0.085215, 0.805173, -0.586887,
		36.307564, 36.277344, 39.246910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438232, 35.607151, 40.478180>,  <36.247913, 35.713726, 39.657730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438232, 35.607151, 40.478180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135891, 35.424648, 40.666019>,  <35.954487, 35.315147, 40.778721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135891, 35.424648, 40.666019>,  <36.438232, 35.607151, 40.478180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135891, 35.424648, 40.666019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266717, -0.869573, -0.415578,
		0.597958, -0.188866, 0.778958,
		-0.755850, -0.456260, 0.469594,
		35.909138, 35.287769, 40.806896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725815, 35.022041, 40.637691>,  <36.438232, 35.607151, 40.478180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725815, 35.022041, 40.637691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331501, 34.955395, 40.646355>,  <36.094913, 34.915405, 40.651554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331501, 34.955395, 40.646355>,  <36.725815, 35.022041, 40.637691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331501, 34.955395, 40.646355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147471, -0.919779, -0.363675,
		0.080519, -0.355310, 0.931274,
		-0.985783, -0.166619, 0.021662,
		36.035767, 34.905411, 40.652855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704670, 34.340343, 40.638187>,  <36.725815, 35.022041, 40.637691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704670, 34.340343, 40.638187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335899, 34.421669, 40.506302>,  <36.114635, 34.470463, 40.427170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335899, 34.421669, 40.506302>,  <36.704670, 34.340343, 40.638187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335899, 34.421669, 40.506302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019094, -0.826294, -0.562915,
		-0.386886, -0.525264, 0.757903,
		-0.921930, 0.203313, -0.329711,
		36.059319, 34.482662, 40.407387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513611, 33.703262, 40.478443>,  <36.704670, 34.340343, 40.638187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513611, 33.703262, 40.478443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227924, 33.914028, 40.294159>,  <36.056511, 34.040489, 40.183590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227924, 33.914028, 40.294159>,  <36.513611, 33.703262, 40.478443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227924, 33.914028, 40.294159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142347, -0.753819, -0.641478,
		-0.685293, -0.392577, 0.613398,
		-0.714220, 0.526916, -0.460705,
		36.013660, 34.072102, 40.155949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900188, 33.327694, 40.474155>,  <36.513611, 33.703262, 40.478443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900188, 33.327694, 40.474155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883713, 33.560238, 40.149113>,  <35.873825, 33.699764, 39.954086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883713, 33.560238, 40.149113>,  <35.900188, 33.327694, 40.474155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883713, 33.560238, 40.149113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308612, -0.780930, -0.543054,
		-0.950296, 0.228408, 0.211584,
		-0.041194, 0.581360, -0.812603,
		35.871353, 33.734646, 39.905331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234543, 33.103680, 40.092209>,  <35.900188, 33.327694, 40.474155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234543, 33.103680, 40.092209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484035, 33.293652, 39.843887>,  <35.633732, 33.407635, 39.694893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484035, 33.293652, 39.843887>,  <35.234543, 33.103680, 40.092209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484035, 33.293652, 39.843887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105601, -0.735752, -0.668968,
		-0.774474, 0.482813, -0.408757,
		0.623730, 0.474933, -0.620806,
		35.671154, 33.436131, 39.657646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959087, 32.927761, 39.476803>,  <35.234543, 33.103680, 40.092209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959087, 32.927761, 39.476803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295082, 33.075325, 39.317638>,  <35.496677, 33.163864, 39.222141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295082, 33.075325, 39.317638>,  <34.959087, 32.927761, 39.476803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295082, 33.075325, 39.317638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083529, -0.636672, -0.766597,
		-0.536139, 0.677168, -0.503982,
		0.839987, 0.368906, -0.397908,
		35.547077, 33.185997, 39.198265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801270, 32.931416, 38.796917>,  <34.959087, 32.927761, 39.476803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801270, 32.931416, 38.796917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200394, 32.937542, 38.822655>,  <35.439869, 32.941219, 38.838097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200394, 32.937542, 38.822655>,  <34.801270, 32.931416, 38.796917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200394, 32.937542, 38.822655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059207, -0.640595, -0.765593,
		0.029492, 0.767726, -0.640099,
		0.997810, 0.015319, 0.064347,
		35.499737, 32.942139, 38.841957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111431, 33.027195, 38.074829>,  <34.801270, 32.931416, 38.796917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111431, 33.027195, 38.074829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428970, 32.885254, 38.272369>,  <35.619495, 32.800087, 38.390892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428970, 32.885254, 38.272369>,  <35.111431, 33.027195, 38.074829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428970, 32.885254, 38.272369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197475, -0.617652, -0.761255,
		0.575161, 0.701843, -0.420246,
		0.793847, -0.354856, 0.493846,
		35.667126, 32.778797, 38.420525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827156, 33.165977, 37.627102>,  <35.111431, 33.027195, 38.074829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827156, 33.165977, 37.627102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884972, 32.851986, 37.868069>,  <35.919662, 32.663589, 38.012650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884972, 32.851986, 37.868069>,  <35.827156, 33.165977, 37.627102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884972, 32.851986, 37.868069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430451, -0.498307, -0.752597,
		0.890966, 0.368093, 0.265872,
		0.144539, -0.784983, 0.602421,
		35.928333, 32.616489, 38.048794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508434, 33.039356, 37.439713>,  <35.827156, 33.165977, 37.627102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508434, 33.039356, 37.439713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325485, 32.737099, 37.627251>,  <36.215717, 32.555744, 37.739773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325485, 32.737099, 37.627251>,  <36.508434, 33.039356, 37.439713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325485, 32.737099, 37.627251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340705, -0.635893, -0.692503,
		0.821420, -0.156993, 0.548290,
		-0.457372, -0.755641, 0.468847,
		36.188274, 32.510406, 37.767906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041683, 32.512749, 37.599072>,  <36.508434, 33.039356, 37.439713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041683, 32.512749, 37.599072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685722, 32.331692, 37.576492>,  <36.472145, 32.223057, 37.562946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685722, 32.331692, 37.576492>,  <37.041683, 32.512749, 37.599072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685722, 32.331692, 37.576492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369645, -0.643098, -0.670662,
		0.267269, -0.617690, 0.739612,
		-0.889904, -0.452642, -0.056446,
		36.418751, 32.195900, 37.559559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.587669, 38.273258, 42.590649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.201748, 38.169701, 42.572235>,  <34.970196, 38.107567, 42.561188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.201748, 38.169701, 42.572235>,  <35.587669, 38.273258, 42.590649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201748, 38.169701, 42.572235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251944, -0.960259, 0.120113,
		-0.075303, 0.104288, 0.991692,
		-0.964808, -0.258895, -0.046035,
		34.912304, 38.092033, 42.558426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475563, 37.792904, 43.308422>,  <35.587669, 38.273258, 42.590649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475563, 37.792904, 43.308422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.217049, 37.715763, 43.013092>,  <35.061939, 37.669479, 42.835892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.217049, 37.715763, 43.013092>,  <35.475563, 37.792904, 43.308422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217049, 37.715763, 43.013092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073616, -0.978783, 0.191220,
		-0.759540, 0.069230, 0.646766,
		-0.646281, -0.192852, -0.738328,
		35.023163, 37.657909, 42.791595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200275, 37.116013, 43.462730>,  <35.475563, 37.792904, 43.308422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200275, 37.116013, 43.462730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.139942, 37.186550, 43.073650>,  <35.103741, 37.228874, 42.840202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.139942, 37.186550, 43.073650>,  <35.200275, 37.116013, 43.462730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139942, 37.186550, 43.073650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229299, -0.950884, -0.207947,
		-0.961599, -0.254405, 0.102986,
		-0.150831, 0.176347, -0.972703,
		35.094692, 37.239452, 42.781837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991127, 36.367702, 43.203590>,  <35.200275, 37.116013, 43.462730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991127, 36.367702, 43.203590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.060333, 36.590027, 42.878349>,  <35.101856, 36.723419, 42.683205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.060333, 36.590027, 42.878349>,  <34.991127, 36.367702, 43.203590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060333, 36.590027, 42.878349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304253, -0.815341, -0.492595,
		-0.936747, -0.162162, -0.310176,
		0.173019, 0.555809, -0.813106,
		35.112240, 36.756771, 42.634418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690113, 36.008144, 42.678646>,  <34.991127, 36.367702, 43.203590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690113, 36.008144, 42.678646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949844, 36.252438, 42.497372>,  <35.105682, 36.399014, 42.388607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949844, 36.252438, 42.497372>,  <34.690113, 36.008144, 42.678646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949844, 36.252438, 42.497372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242923, -0.731247, -0.637390,
		-0.720664, 0.303788, -0.623182,
		0.649331, 0.610730, -0.453186,
		35.144642, 36.435658, 42.361416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440807, 35.990997, 41.976772>,  <34.690113, 36.008144, 42.678646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440807, 35.990997, 41.976772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.829876, 36.067818, 42.028969>,  <35.063316, 36.113911, 42.060287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.829876, 36.067818, 42.028969>,  <34.440807, 35.990997, 41.976772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829876, 36.067818, 42.028969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230445, -0.729687, -0.643779,
		-0.028424, 0.656256, -0.754003,
		0.972670, 0.192055, 0.130490,
		35.121677, 36.125435, 42.068115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680569, 36.150009, 41.361809>,  <34.440807, 35.990997, 41.976772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680569, 36.150009, 41.361809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.016068, 36.064781, 41.562252>,  <35.217365, 36.013645, 41.682518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.016068, 36.064781, 41.562252>,  <34.680569, 36.150009, 41.361809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016068, 36.064781, 41.562252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295180, -0.595409, -0.747233,
		0.457580, 0.774653, -0.436501,
		0.838743, -0.213072, 0.501109,
		35.267689, 36.000858, 41.712585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210133, 36.298969, 40.857460>,  <34.680569, 36.150009, 41.361809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210133, 36.298969, 40.857460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.370876, 36.069752, 41.143154>,  <35.467323, 35.932220, 41.314571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.370876, 36.069752, 41.143154>,  <35.210133, 36.298969, 40.857460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370876, 36.069752, 41.143154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220896, -0.696287, -0.682928,
		0.888660, 0.432211, -0.153225,
		0.401857, -0.573044, 0.714235,
		35.491432, 35.897839, 41.357426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874485, 36.091183, 40.574726>,  <35.210133, 36.298969, 40.857460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874485, 36.091183, 40.574726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.784237, 35.818295, 40.852913>,  <35.730087, 35.654564, 41.019825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.784237, 35.818295, 40.852913>,  <35.874485, 36.091183, 40.574726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784237, 35.818295, 40.852913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366538, -0.720864, -0.588222,
		0.902633, 0.122203, 0.412698,
		-0.225617, -0.682218, 0.695468,
		35.716553, 35.613628, 41.061554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339775, 36.657528, 40.206314>,  <35.874485, 36.091183, 40.574726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339775, 36.657528, 40.206314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.230152, 36.725044, 39.827599>,  <36.164379, 36.765553, 39.600368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.230152, 36.725044, 39.827599>,  <36.339775, 36.657528, 40.206314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230152, 36.725044, 39.827599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646537, 0.696473, 0.311311,
		0.711958, 0.697448, -0.081743,
		-0.274056, 0.168791, -0.946786,
		36.147934, 36.775681, 39.543564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293911, 37.346901, 40.197975>,  <36.339775, 36.657528, 40.206314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293911, 37.346901, 40.197975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.108776, 37.254761, 39.855579>,  <35.997696, 37.199478, 39.650143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.108776, 37.254761, 39.855579>,  <36.293911, 37.346901, 40.197975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108776, 37.254761, 39.855579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635818, 0.759127, 0.139506,
		0.617672, 0.608824, -0.497811,
		-0.462836, -0.230348, -0.855992,
		35.969925, 37.185658, 39.598782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151546, 37.996986, 39.978062>,  <36.293911, 37.346901, 40.197975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151546, 37.996986, 39.978062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901489, 37.756809, 39.778599>,  <35.751453, 37.612701, 39.658920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901489, 37.756809, 39.778599>,  <36.151546, 37.996986, 39.978062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901489, 37.756809, 39.778599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715457, 0.696191, 0.058644,
		0.311948, 0.393429, -0.864813,
		-0.625148, -0.600443, -0.498657,
		35.713943, 37.576675, 39.629002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865295, 38.475037, 39.373016>,  <36.151546, 37.996986, 39.978062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865295, 38.475037, 39.373016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.632572, 38.161972, 39.461506>,  <35.492939, 37.974133, 39.514599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.632572, 38.161972, 39.461506>,  <35.865295, 38.475037, 39.373016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632572, 38.161972, 39.461506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786449, 0.610720, 0.092302,
		-0.207347, -0.120278, -0.970845,
		-0.581813, -0.782659, 0.221223,
		35.458027, 37.927174, 39.527874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266064, 38.493847, 38.931721>,  <35.865295, 38.475037, 39.373016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266064, 38.493847, 38.931721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140507, 38.295696, 39.255714>,  <35.065174, 38.176807, 39.450111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140507, 38.295696, 39.255714>,  <35.266064, 38.493847, 38.931721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140507, 38.295696, 39.255714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839178, 0.543806, 0.007384,
		-0.444132, -0.677404, -0.586405,
		-0.313889, -0.495378, 0.809984,
		35.046341, 38.147083, 39.498711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690807, 38.438900, 38.812675>,  <35.266064, 38.493847, 38.931721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690807, 38.438900, 38.812675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.691402, 38.356422, 39.204079>,  <34.691761, 38.306938, 39.438923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.691402, 38.356422, 39.204079>,  <34.690807, 38.438900, 38.812675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691402, 38.356422, 39.204079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839930, 0.530773, 0.113123,
		-0.542692, -0.822049, -0.172395,
		0.001490, -0.206191, 0.978511,
		34.691849, 38.294567, 39.497631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962406, 38.194439, 39.043320>,  <34.690807, 38.438900, 38.812675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962406, 38.194439, 39.043320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.187016, 38.321602, 39.348900>,  <34.321781, 38.397900, 39.532249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.187016, 38.321602, 39.348900>,  <33.962406, 38.194439, 39.043320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187016, 38.321602, 39.348900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716897, 0.647962, 0.257303,
		-0.413215, -0.692158, 0.591752,
		0.561527, 0.317904, 0.763953,
		34.355473, 38.416973, 39.578087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487602, 38.394733, 39.532360>,  <33.962406, 38.194439, 39.043320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487602, 38.394733, 39.532360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.823334, 38.559196, 39.674610>,  <34.024773, 38.657875, 39.759960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.823334, 38.559196, 39.674610>,  <33.487602, 38.394733, 39.532360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823334, 38.559196, 39.674610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509616, 0.822844, 0.251435,
		-0.189246, -0.392271, 0.900172,
		0.839332, 0.411159, 0.355628,
		34.075134, 38.682545, 39.781300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207420, 38.709381, 40.086872>,  <33.487602, 38.394733, 39.532360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207420, 38.709381, 40.086872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.560738, 38.877129, 40.003029>,  <33.772728, 38.977776, 39.952724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.560738, 38.877129, 40.003029>,  <33.207420, 38.709381, 40.086872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560738, 38.877129, 40.003029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338245, 0.879610, 0.334480,
		0.324640, -0.224545, 0.918797,
		0.883289, 0.419365, -0.209606,
		33.825726, 39.002937, 39.940147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442558, 39.051109, 40.715599>,  <33.207420, 38.709381, 40.086872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442558, 39.051109, 40.715599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.590233, 39.216511, 40.382679>,  <33.678837, 39.315750, 40.182926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.590233, 39.216511, 40.382679>,  <33.442558, 39.051109, 40.715599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590233, 39.216511, 40.382679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363002, 0.888582, 0.280449,
		0.855530, 0.198587, 0.478155,
		0.369186, 0.413503, -0.832296,
		33.700989, 39.340561, 40.132992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718925, 39.634140, 40.909946>,  <33.442558, 39.051109, 40.715599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718925, 39.634140, 40.909946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.660587, 39.678848, 40.516758>,  <33.625584, 39.705673, 40.280846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.660587, 39.678848, 40.516758>,  <33.718925, 39.634140, 40.909946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660587, 39.678848, 40.516758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344446, 0.925693, 0.156361,
		0.927409, 0.361385, -0.096508,
		-0.145844, 0.111769, -0.982974,
		33.616833, 39.712379, 40.221867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032333, 40.271893, 40.778610>,  <33.718925, 39.634140, 40.909946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032333, 40.271893, 40.778610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.784195, 40.220020, 40.469196>,  <33.635311, 40.188896, 40.283546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.784195, 40.220020, 40.469196>,  <34.032333, 40.271893, 40.778610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784195, 40.220020, 40.469196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342853, 0.931855, 0.118732,
		0.705426, 0.338864, -0.622531,
		-0.620343, -0.129680, -0.773536,
		33.598091, 40.181118, 40.237137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108871, 40.849533, 40.402409>,  <34.032333, 40.271893, 40.778610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108871, 40.849533, 40.402409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.747528, 40.720184, 40.289715>,  <33.530724, 40.642574, 40.222099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.747528, 40.720184, 40.289715>,  <34.108871, 40.849533, 40.402409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747528, 40.720184, 40.289715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371347, 0.918395, 0.136573,
		0.214577, 0.227995, -0.949723,
		-0.903359, -0.323371, -0.281732,
		33.476521, 40.623173, 40.205196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817356, 41.440304, 40.103752>,  <34.108871, 40.849533, 40.402409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817356, 41.440304, 40.103752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468372, 41.246117, 40.126125>,  <33.258980, 41.129604, 40.139549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468372, 41.246117, 40.126125>,  <33.817356, 41.440304, 40.103752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468372, 41.246117, 40.126125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487684, 0.857660, -0.163047,
		0.031180, -0.169532, -0.985031,
		-0.872463, -0.485468, 0.055936,
		33.206635, 41.100475, 40.142906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.009890, 39.359238, 38.388512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.240894, 39.573315, 38.635105>,  <29.379498, 39.701763, 38.783062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.240894, 39.573315, 38.635105>,  <29.009890, 39.359238, 38.388512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240894, 39.573315, 38.635105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800918, -0.517715, -0.300836,
		0.158155, 0.667486, -0.727633,
		0.577509, 0.535195, 0.616481,
		29.414146, 39.733871, 38.820049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572811, 39.328472, 38.039959>,  <29.009890, 39.359238, 38.388512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572811, 39.328472, 38.039959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.696274, 39.465679, 38.394825>,  <29.770351, 39.548004, 38.607746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.696274, 39.465679, 38.394825>,  <29.572811, 39.328472, 38.039959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696274, 39.465679, 38.394825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781939, -0.622567, -0.031332,
		0.541575, 0.703383, -0.460380,
		0.308656, 0.343020, 0.887169,
		29.788870, 39.568584, 38.660976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269451, 39.342983, 37.980164>,  <29.572811, 39.328472, 38.039959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269451, 39.342983, 37.980164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.214184, 39.357868, 38.376049>,  <30.181023, 39.366798, 38.613579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.214184, 39.357868, 38.376049>,  <30.269451, 39.342983, 37.980164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214184, 39.357868, 38.376049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897763, -0.417294, 0.141022,
		0.418247, 0.908009, 0.024253,
		-0.138169, 0.037209, 0.989709,
		30.172733, 39.369030, 38.672962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857349, 39.552090, 38.176304>,  <30.269451, 39.342983, 37.980164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857349, 39.552090, 38.176304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.694977, 39.376308, 38.496830>,  <30.597553, 39.270840, 38.689144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.694977, 39.376308, 38.496830>,  <30.857349, 39.552090, 38.176304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694977, 39.376308, 38.496830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855962, -0.490049, 0.164865,
		0.320231, 0.752816, 0.575083,
		-0.405932, -0.439455, 0.801311,
		30.573196, 39.244473, 38.737225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264040, 39.642567, 38.835381>,  <30.857349, 39.552090, 38.176304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264040, 39.642567, 38.835381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051252, 39.306091, 38.874191>,  <30.923580, 39.104206, 38.897476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051252, 39.306091, 38.874191>,  <31.264040, 39.642567, 38.835381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051252, 39.306091, 38.874191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842603, -0.537214, -0.037700,
		0.083835, 0.061696, 0.994568,
		-0.531969, -0.841187, 0.097023,
		30.891661, 39.053734, 38.903297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763542, 39.147587, 38.853970>,  <31.264040, 39.642567, 38.835381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763542, 39.147587, 38.853970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.444498, 38.906773, 38.868782>,  <31.253071, 38.762283, 38.877670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.444498, 38.906773, 38.868782>,  <31.763542, 39.147587, 38.853970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444498, 38.906773, 38.868782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578834, -0.781244, -0.233688,
		0.169617, -0.164959, 0.971606,
		-0.797610, -0.602036, 0.037028,
		31.205215, 38.726162, 38.879890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966244, 38.579620, 39.180477>,  <31.763542, 39.147587, 38.853970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966244, 38.579620, 39.180477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.649357, 38.437855, 38.981770>,  <31.459225, 38.352795, 38.862545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.649357, 38.437855, 38.981770>,  <31.966244, 38.579620, 39.180477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649357, 38.437855, 38.981770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531461, -0.800775, -0.276239,
		-0.299900, -0.482857, 0.822745,
		-0.792218, -0.354413, -0.496772,
		31.411692, 38.331532, 38.832737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947893, 37.871395, 39.392033>,  <31.966244, 38.579620, 39.180477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947893, 37.871395, 39.392033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729231, 37.887970, 39.057499>,  <31.598034, 37.897915, 38.856781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729231, 37.887970, 39.057499>,  <31.947893, 37.871395, 39.392033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729231, 37.887970, 39.057499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405745, -0.860581, -0.307851,
		-0.732489, -0.507625, 0.453626,
		-0.546654, 0.041441, -0.836333,
		31.565235, 37.900402, 38.806599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622013, 37.219711, 39.292488>,  <31.947893, 37.871395, 39.392033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622013, 37.219711, 39.292488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618612, 37.402328, 38.936623>,  <31.616571, 37.511898, 38.723103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618612, 37.402328, 38.936623>,  <31.622013, 37.219711, 39.292488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618612, 37.402328, 38.936623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300674, -0.847353, -0.437707,
		-0.953689, -0.271220, -0.130066,
		-0.008503, 0.456544, -0.889660,
		31.616062, 37.539291, 38.669724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376013, 36.700825, 38.885593>,  <31.622013, 37.219711, 39.292488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376013, 36.700825, 38.885593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.555470, 36.981777, 38.664547>,  <31.663143, 37.150349, 38.531918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.555470, 36.981777, 38.664547>,  <31.376013, 36.700825, 38.885593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555470, 36.981777, 38.664547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339063, -0.705881, -0.621907,
		-0.826896, 0.091640, -0.554837,
		0.448641, 0.702378, -0.552619,
		31.690062, 37.192490, 38.498760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135366, 36.640659, 38.234303>,  <31.376013, 36.700825, 38.885593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135366, 36.640659, 38.234303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.484501, 36.822235, 38.162640>,  <31.693981, 36.931183, 38.119640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.484501, 36.822235, 38.162640>,  <31.135366, 36.640659, 38.234303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484501, 36.822235, 38.162640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205236, -0.674511, -0.709164,
		-0.442761, 0.582214, -0.681901,
		0.872835, 0.453941, -0.179156,
		31.746351, 36.958416, 38.108894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139870, 36.804497, 37.500027>,  <31.135366, 36.640659, 38.234303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139870, 36.804497, 37.500027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.512667, 36.797428, 37.644844>,  <31.736345, 36.793186, 37.731735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.512667, 36.797428, 37.644844>,  <31.139870, 36.804497, 37.500027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512667, 36.797428, 37.644844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297270, -0.534258, -0.791327,
		0.207408, 0.845137, -0.492672,
		0.931994, -0.017671, 0.362044,
		31.792265, 36.792126, 37.753456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451374, 36.946613, 36.870182>,  <31.139870, 36.804497, 37.500027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451374, 36.946613, 36.870182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.708553, 36.794724, 37.136242>,  <31.862862, 36.703590, 37.295879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.708553, 36.794724, 37.136242>,  <31.451374, 36.946613, 36.870182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708553, 36.794724, 37.136242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177471, -0.770947, -0.611674,
		0.745066, 0.511319, -0.428288,
		0.642947, -0.379728, 0.665150,
		31.901438, 36.680805, 37.335789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969080, 36.580917, 36.499447>,  <31.451374, 36.946613, 36.870182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969080, 36.580917, 36.499447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061485, 36.427258, 36.857006>,  <32.116928, 36.335060, 37.071541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061485, 36.427258, 36.857006>,  <31.969080, 36.580917, 36.499447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061485, 36.427258, 36.857006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287563, -0.850749, -0.439925,
		0.929484, 0.358681, -0.086065,
		0.231013, -0.384154, 0.893901,
		32.130791, 36.312012, 37.125175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577747, 36.886108, 36.188145>,  <31.969080, 36.580917, 36.499447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577747, 36.886108, 36.188145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724434, 37.040997, 35.849777>,  <32.812447, 37.133930, 35.646755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724434, 37.040997, 35.849777>,  <32.577747, 36.886108, 36.188145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724434, 37.040997, 35.849777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517502, 0.840513, 0.160405,
		0.773117, 0.378941, 0.508619,
		0.366717, 0.387223, -0.845918,
		32.834450, 37.157162, 35.596001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934689, 37.508675, 36.328644>,  <32.577747, 36.886108, 36.188145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934689, 37.508675, 36.328644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.839340, 37.551956, 35.942593>,  <32.782131, 37.577923, 35.710960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.839340, 37.551956, 35.942593>,  <32.934689, 37.508675, 36.328644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839340, 37.551956, 35.942593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451647, 0.867420, 0.208799,
		0.859763, 0.485669, -0.157902,
		-0.238374, 0.108202, -0.965127,
		32.767826, 37.584415, 35.653053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947491, 38.247768, 36.209648>,  <32.934689, 37.508675, 36.328644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947491, 38.247768, 36.209648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759567, 38.098381, 35.889698>,  <32.646812, 38.008751, 35.697727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759567, 38.098381, 35.889698>,  <32.947491, 38.247768, 36.209648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759567, 38.098381, 35.889698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626433, 0.779465, 0.004000,
		0.621983, 0.502950, -0.600149,
		-0.469807, -0.373465, -0.799878,
		32.618626, 37.986340, 35.649734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907295, 38.789505, 35.621925>,  <32.947491, 38.247768, 36.209648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907295, 38.789505, 35.621925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610916, 38.522774, 35.590073>,  <32.433090, 38.362736, 35.570961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610916, 38.522774, 35.590073>,  <32.907295, 38.789505, 35.621925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610916, 38.522774, 35.590073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662310, 0.745197, -0.077633,
		0.111111, -0.004779, -0.993796,
		-0.740945, -0.666828, -0.079634,
		32.388634, 38.322727, 35.566181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518784, 39.105061, 35.167610>,  <32.907295, 38.789505, 35.621925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518784, 39.105061, 35.167610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.270084, 38.820469, 35.298588>,  <32.120865, 38.649712, 35.377174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.270084, 38.820469, 35.298588>,  <32.518784, 39.105061, 35.167610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270084, 38.820469, 35.298588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735519, 0.674077, 0.068062,
		-0.269149, -0.198525, -0.942415,
		-0.621748, -0.711483, 0.327446,
		32.083561, 38.607025, 35.396820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920937, 39.198605, 34.722134>,  <32.518784, 39.105061, 35.167610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920937, 39.198605, 34.722134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.816978, 38.995975, 35.050972>,  <31.754604, 38.874397, 35.248276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.816978, 38.995975, 35.050972>,  <31.920937, 39.198605, 34.722134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816978, 38.995975, 35.050972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817310, 0.568790, 0.092103,
		-0.514256, -0.647969, -0.561852,
		-0.259896, -0.506571, 0.822095,
		31.739010, 38.844006, 35.297600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205873, 38.894398, 34.752087>,  <31.920937, 39.198605, 34.722134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205873, 38.894398, 34.752087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.286558, 38.922939, 35.142822>,  <31.334969, 38.940063, 35.377266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.286558, 38.922939, 35.142822>,  <31.205873, 38.894398, 34.752087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286558, 38.922939, 35.142822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855475, 0.498494, 0.140238,
		-0.476943, -0.863951, 0.161598,
		0.201714, 0.071357, 0.976842,
		31.347073, 38.944347, 35.435875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575874, 38.705467, 35.062611>,  <31.205873, 38.894398, 34.752087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575874, 38.705467, 35.062611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.795309, 38.881302, 35.347092>,  <30.926970, 38.986801, 35.517780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.795309, 38.881302, 35.347092>,  <30.575874, 38.705467, 35.062611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795309, 38.881302, 35.347092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817218, 0.461638, 0.345029,
		-0.176650, -0.770490, 0.612487,
		0.548588, 0.439587, 0.711207,
		30.959885, 39.013180, 35.560455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170166, 38.655987, 35.711315>,  <30.575874, 38.705467, 35.062611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170166, 38.655987, 35.711315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.439274, 38.937698, 35.801983>,  <30.600739, 39.106724, 35.856384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.439274, 38.937698, 35.801983>,  <30.170166, 38.655987, 35.711315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439274, 38.937698, 35.801983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706738, 0.521125, 0.478487,
		0.218865, -0.482106, 0.848335,
		0.672770, 0.704274, 0.226667,
		30.641106, 39.148979, 35.869984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007345, 38.909863, 36.379612>,  <30.170166, 38.655987, 35.711315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007345, 38.909863, 36.379612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.211500, 39.211514, 36.214298>,  <30.333994, 39.392502, 36.115112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.211500, 39.211514, 36.214298>,  <30.007345, 38.909863, 36.379612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211500, 39.211514, 36.214298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639812, 0.654120, 0.403444,
		0.574582, 0.058509, 0.816353,
		0.510388, 0.754124, -0.413280,
		30.364616, 39.437752, 36.090313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185287, 39.468731, 36.921703>,  <30.007345, 38.909863, 36.379612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185287, 39.468731, 36.921703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.228065, 39.690826, 36.591789>,  <30.253733, 39.824085, 36.393841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.228065, 39.690826, 36.591789>,  <30.185287, 39.468731, 36.921703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228065, 39.690826, 36.591789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455885, 0.764587, 0.455605,
		0.883590, 0.327284, 0.334893,
		0.106943, 0.555240, -0.824786,
		30.260149, 39.857399, 36.344353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430973, 40.038876, 37.126682>,  <30.185287, 39.468731, 36.921703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430973, 40.038876, 37.126682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.310194, 40.149956, 36.761890>,  <30.237726, 40.216606, 36.543015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.310194, 40.149956, 36.761890>,  <30.430973, 40.038876, 37.126682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310194, 40.149956, 36.761890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247260, 0.901082, 0.356249,
		0.920700, 0.333066, -0.203416,
		-0.301949, 0.277702, -0.911981,
		30.219610, 40.233265, 36.488297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589705, 40.710258, 37.068874>,  <30.430973, 40.038876, 37.126682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589705, 40.710258, 37.068874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.339148, 40.678913, 36.758652>,  <30.188814, 40.660107, 36.572517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.339148, 40.678913, 36.758652>,  <30.589705, 40.710258, 37.068874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339148, 40.678913, 36.758652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521985, 0.781098, 0.342663,
		0.578935, 0.619472, -0.530179,
		-0.626391, -0.078366, -0.775560,
		30.151230, 40.655403, 36.525986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569784, 41.385948, 36.684406>,  <30.589705, 40.710258, 37.068874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569784, 41.385948, 36.684406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.228128, 41.186878, 36.624058>,  <30.023134, 41.067436, 36.587849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.228128, 41.186878, 36.624058>,  <30.569784, 41.385948, 36.684406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228128, 41.186878, 36.624058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518002, 0.788524, 0.331517,
		-0.046023, 0.361314, -0.931308,
		-0.854140, -0.497677, -0.150872,
		29.971886, 41.037575, 36.578796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944286, 41.944794, 36.309059>,  <30.569784, 41.385948, 36.684406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944286, 41.944794, 36.309059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225563, 42.203625, 36.426910>,  <31.394329, 42.358925, 36.497620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225563, 42.203625, 36.426910>,  <30.944286, 41.944794, 36.309059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225563, 42.203625, 36.426910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708573, -0.603602, -0.365497,
		-0.058671, 0.465778, -0.882954,
		0.703194, 0.647082, 0.294624,
		31.436522, 42.397751, 36.515297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411400, 41.913185, 35.748638>,  <30.944286, 41.944794, 36.309059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411400, 41.913185, 35.748638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577509, 42.017998, 36.097095>,  <31.677174, 42.080887, 36.306171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577509, 42.017998, 36.097095>,  <31.411400, 41.913185, 35.748638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577509, 42.017998, 36.097095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824398, -0.513260, -0.238604,
		0.384601, 0.817254, -0.429159,
		0.415271, 0.262031, 0.871143,
		31.702089, 42.096607, 36.358437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033173, 42.026066, 35.526531>,  <31.411400, 41.913185, 35.748638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033173, 42.026066, 35.526531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047398, 41.958885, 35.920593>,  <32.055931, 41.918575, 36.157032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047398, 41.958885, 35.920593>,  <32.033173, 42.026066, 35.526531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047398, 41.958885, 35.920593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864560, -0.489283, -0.114620,
		0.501270, 0.855800, 0.127806,
		0.035558, -0.167952, 0.985154,
		32.058064, 41.908501, 36.216141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662727, 42.188583, 35.763073>,  <32.033173, 42.026066, 35.526531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662727, 42.188583, 35.763073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.532623, 41.934036, 36.042854>,  <32.454559, 41.781307, 36.210724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.532623, 41.934036, 36.042854>,  <32.662727, 42.188583, 35.763073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532623, 41.934036, 36.042854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764243, -0.612515, -0.201884,
		0.556901, 0.468891, 0.685568,
		-0.325259, -0.636370, 0.699457,
		32.435047, 41.743126, 36.252693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230503, 42.086235, 36.186714>,  <32.662727, 42.188583, 35.763073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230503, 42.086235, 36.186714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018234, 41.768215, 36.304214>,  <32.890873, 41.577404, 36.374714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018234, 41.768215, 36.304214>,  <33.230503, 42.086235, 36.186714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018234, 41.768215, 36.304214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818160, -0.571021, -0.067451,
		0.221364, 0.204540, 0.953500,
		-0.530672, -0.795047, 0.293749,
		32.859032, 41.529701, 36.392338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723667, 41.838787, 36.666920>,  <33.230503, 42.086235, 36.186714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723667, 41.838787, 36.666920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478657, 41.545048, 36.549927>,  <33.331650, 41.368805, 36.479729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478657, 41.545048, 36.549927>,  <33.723667, 41.838787, 36.666920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478657, 41.545048, 36.549927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788438, -0.593987, -0.159828,
		-0.056364, -0.328506, 0.942818,
		-0.612527, -0.734345, -0.292486,
		33.294899, 41.324745, 36.462181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079872, 41.224442, 36.819145>,  <33.723667, 41.838787, 36.666920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079872, 41.224442, 36.819145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.790466, 41.063053, 36.595097>,  <33.616821, 40.966221, 36.460667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.790466, 41.063053, 36.595097>,  <34.079872, 41.224442, 36.819145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790466, 41.063053, 36.595097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604124, -0.762686, -0.230965,
		-0.334009, -0.505489, 0.795562,
		-0.723514, -0.403474, -0.560122,
		33.573414, 40.942013, 36.427059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069748, 40.422848, 36.951988>,  <34.079872, 41.224442, 36.819145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069748, 40.422848, 36.951988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.890343, 40.485493, 36.600010>,  <33.782700, 40.523079, 36.388824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.890343, 40.485493, 36.600010>,  <34.069748, 40.422848, 36.951988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890343, 40.485493, 36.600010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513185, -0.760938, -0.397006,
		-0.731761, -0.629639, 0.260922,
		-0.448516, 0.156612, -0.879946,
		33.755787, 40.532475, 36.336025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835846, 39.747902, 36.683060>,  <34.069748, 40.422848, 36.951988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835846, 39.747902, 36.683060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.841385, 39.968666, 36.349545>,  <33.844707, 40.101124, 36.149437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.841385, 39.968666, 36.349545>,  <33.835846, 39.747902, 36.683060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841385, 39.968666, 36.349545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527610, -0.712367, -0.462774,
		-0.849374, -0.433506, -0.301060,
		0.013850, 0.551910, -0.833788,
		33.845539, 40.134239, 36.099407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644520, 39.274109, 36.134476>,  <33.835846, 39.747902, 36.683060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644520, 39.274109, 36.134476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.844025, 39.587418, 35.986031>,  <33.963730, 39.775402, 35.896965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.844025, 39.587418, 35.986031>,  <33.644520, 39.274109, 36.134476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844025, 39.587418, 35.986031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709278, -0.614939, -0.344638,
		-0.498155, -0.091328, -0.862265,
		0.498765, 0.783269, -0.371112,
		33.993652, 39.822399, 35.874699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979004, 39.048649, 35.525555>,  <33.644520, 39.274109, 36.134476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979004, 39.048649, 35.525555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.195049, 39.373665, 35.613235>,  <34.324677, 39.568676, 35.665844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.195049, 39.373665, 35.613235>,  <33.979004, 39.048649, 35.525555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195049, 39.373665, 35.613235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835110, -0.485201, -0.259175,
		-0.104235, 0.323041, -0.940627,
		0.540117, 0.812542, 0.219200,
		34.357086, 39.617428, 35.678997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311489, 39.236347, 34.953316>,  <33.979004, 39.048649, 35.525555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311489, 39.236347, 34.953316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.538139, 39.429714, 35.220222>,  <34.674129, 39.545734, 35.380367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.538139, 39.429714, 35.220222>,  <34.311489, 39.236347, 34.953316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538139, 39.429714, 35.220222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812070, -0.464800, -0.352849,
		0.139569, 0.741798, -0.655940,
		0.566623, 0.483422, 0.667264,
		34.708126, 39.574741, 35.420403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896008, 39.506161, 34.637337>,  <34.311489, 39.236347, 34.953316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896008, 39.506161, 34.637337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031921, 39.494705, 35.013363>,  <35.113468, 39.487831, 35.238979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031921, 39.494705, 35.013363>,  <34.896008, 39.506161, 34.637337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031921, 39.494705, 35.013363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764680, -0.573507, -0.293862,
		0.547552, 0.818700, -0.172964,
		0.339781, -0.028643, 0.940068,
		35.133858, 39.486111, 35.295383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634003, 39.556248, 34.574795>,  <34.896008, 39.506161, 34.637337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634003, 39.556248, 34.574795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557289, 39.408772, 34.938618>,  <35.511261, 39.320286, 35.156910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557289, 39.408772, 34.938618>,  <35.634003, 39.556248, 34.574795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557289, 39.408772, 34.938618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845025, -0.533374, -0.038022,
		0.499150, 0.761303, 0.413844,
		-0.191788, -0.368687, 0.909553,
		35.499752, 39.298164, 35.211483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.551886, 37.024696, 28.766024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.264866, 37.012730, 28.487677>,  <29.092653, 37.005550, 28.320669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.264866, 37.012730, 28.487677>,  <29.551886, 37.024696, 28.766024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264866, 37.012730, 28.487677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641595, -0.360436, 0.677084,
		-0.271072, 0.932304, 0.239435,
		-0.717549, -0.029918, -0.695865,
		29.049601, 37.003754, 28.278917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989927, 37.400005, 29.053204>,  <29.551886, 37.024696, 28.766024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989927, 37.400005, 29.053204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.864691, 37.131554, 28.784410>,  <28.789549, 36.970482, 28.623135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.864691, 37.131554, 28.784410>,  <28.989927, 37.400005, 29.053204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864691, 37.131554, 28.784410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715214, -0.298910, 0.631762,
		-0.624855, 0.678410, -0.386414,
		-0.313090, -0.671128, -0.671984,
		28.770763, 36.930214, 28.582815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293854, 37.515369, 29.005333>,  <28.989927, 37.400005, 29.053204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293854, 37.515369, 29.005333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337503, 37.137009, 28.883112>,  <28.363693, 36.909992, 28.809780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337503, 37.137009, 28.883112>,  <28.293854, 37.515369, 29.005333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337503, 37.137009, 28.883112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685789, -0.294155, 0.665707,
		-0.719573, 0.136900, -0.680788,
		0.109122, -0.945902, -0.305551,
		28.370239, 36.853237, 28.791447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653196, 37.277439, 28.872480>,  <28.293854, 37.515369, 29.005333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653196, 37.277439, 28.872480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880341, 36.954906, 28.938656>,  <28.016626, 36.761387, 28.978361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880341, 36.954906, 28.938656>,  <27.653196, 37.277439, 28.872480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880341, 36.954906, 28.938656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735168, -0.406432, 0.542532,
		-0.370219, -0.429708, -0.823583,
		0.567861, -0.806328, 0.165439,
		28.050699, 36.713009, 28.988287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121162, 36.784878, 29.077826>,  <27.653196, 37.277439, 28.872480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121162, 36.784878, 29.077826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.469891, 36.615376, 29.176098>,  <27.679127, 36.513672, 29.235062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.469891, 36.615376, 29.176098>,  <27.121162, 36.784878, 29.077826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469891, 36.615376, 29.176098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437559, -0.448310, 0.779461,
		-0.220162, -0.787050, -0.576265,
		0.871820, -0.423758, 0.245680,
		27.731436, 36.488247, 29.249802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042217, 36.079231, 29.134121>,  <27.121162, 36.784878, 29.077826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042217, 36.079231, 29.134121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.364021, 36.153992, 29.359629>,  <27.557104, 36.198849, 29.494934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.364021, 36.153992, 29.359629>,  <27.042217, 36.079231, 29.134121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364021, 36.153992, 29.359629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477152, -0.361855, 0.800866,
		0.353685, -0.913307, -0.201935,
		0.804508, 0.186901, 0.563769,
		27.605373, 36.210060, 29.528759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244919, 35.407036, 29.532488>,  <27.042217, 36.079231, 29.134121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244919, 35.407036, 29.532488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398571, 35.713100, 29.739162>,  <27.490763, 35.896740, 29.863167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398571, 35.713100, 29.739162>,  <27.244919, 35.407036, 29.532488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398571, 35.713100, 29.739162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352412, -0.395742, 0.848054,
		0.853376, -0.507849, 0.117637,
		0.384130, 0.765165, 0.516688,
		27.513809, 35.942650, 29.894169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680647, 35.052998, 30.079473>,  <27.244919, 35.407036, 29.532488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680647, 35.052998, 30.079473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.591921, 35.428673, 30.184334>,  <27.538685, 35.654079, 30.247250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.591921, 35.428673, 30.184334>,  <27.680647, 35.052998, 30.079473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591921, 35.428673, 30.184334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429968, -0.335508, 0.838190,
		0.875172, 0.073208, 0.478242,
		-0.221816, 0.939189, 0.262150,
		27.525375, 35.710430, 30.262980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864559, 35.022038, 30.690380>,  <27.680647, 35.052998, 30.079473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864559, 35.022038, 30.690380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.628136, 35.344627, 30.684052>,  <27.486282, 35.538181, 30.680254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.628136, 35.344627, 30.684052>,  <27.864559, 35.022038, 30.690380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628136, 35.344627, 30.684052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316273, -0.213662, 0.924294,
		0.742038, 0.551316, 0.381352,
		-0.591059, 0.806473, -0.015821,
		27.450817, 35.586571, 30.679306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888628, 35.335506, 31.416893>,  <27.864559, 35.022038, 30.690380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888628, 35.335506, 31.416893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.562126, 35.503170, 31.257881>,  <27.366224, 35.603767, 31.162474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.562126, 35.503170, 31.257881>,  <27.888628, 35.335506, 31.416893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562126, 35.503170, 31.257881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513658, -0.211719, 0.831463,
		0.264350, 0.882882, 0.388121,
		-0.816257, 0.419158, -0.397531,
		27.317249, 35.628918, 31.138622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695868, 35.909557, 31.894552>,  <27.888628, 35.335506, 31.416893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695868, 35.909557, 31.894552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.378820, 35.789753, 31.682119>,  <27.188591, 35.717869, 31.554661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.378820, 35.789753, 31.682119>,  <27.695868, 35.909557, 31.894552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378820, 35.789753, 31.682119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520497, -0.121260, 0.845209,
		-0.317548, 0.946356, -0.059781,
		-0.792620, -0.299510, -0.531081,
		27.141035, 35.699902, 31.522795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103477, 36.247513, 32.197430>,  <27.695868, 35.909557, 31.894552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103477, 36.247513, 32.197430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.964054, 35.935177, 31.990047>,  <26.880400, 35.747776, 31.865618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.964054, 35.935177, 31.990047>,  <27.103477, 36.247513, 32.197430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964054, 35.935177, 31.990047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524073, -0.296239, 0.798492,
		-0.777081, 0.550031, -0.305960,
		-0.348558, -0.780838, -0.518458,
		26.859488, 35.700924, 31.834511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476650, 36.176308, 32.527237>,  <27.103477, 36.247513, 32.197430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476650, 36.176308, 32.527237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.540876, 35.823418, 32.350197>,  <26.579412, 35.611683, 32.243973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.540876, 35.823418, 32.350197>,  <26.476650, 36.176308, 32.527237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540876, 35.823418, 32.350197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449277, -0.464596, 0.763086,
		-0.878845, 0.076326, -0.470962,
		0.160563, -0.882227, -0.442600,
		26.589045, 35.558750, 32.217419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829283, 35.755566, 32.552406>,  <26.476650, 36.176308, 32.527237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.829283, 35.755566, 32.552406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.115257, 35.480858, 32.499924>,  <26.286842, 35.316032, 32.468433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.115257, 35.480858, 32.499924>,  <25.829283, 35.755566, 32.552406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115257, 35.480858, 32.499924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241963, -0.419080, 0.875115,
		-0.655988, -0.593903, -0.465788,
		0.714936, -0.686769, -0.131209,
		26.329739, 35.274826, 32.460560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603834, 35.180878, 32.919964>,  <25.829283, 35.755566, 32.552406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603834, 35.180878, 32.919964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.999577, 35.124481, 32.905544>,  <26.237022, 35.090645, 32.896893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.999577, 35.124481, 32.905544>,  <25.603834, 35.180878, 32.919964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999577, 35.124481, 32.905544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035322, -0.472935, 0.880389,
		-0.141174, -0.869744, -0.472880,
		0.989355, -0.140991, -0.036045,
		26.296383, 35.082184, 32.894730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674667, 34.581913, 33.221748>,  <25.603834, 35.180878, 32.919964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674667, 34.581913, 33.221748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.043919, 34.735603, 33.227551>,  <26.265469, 34.827816, 33.231033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.043919, 34.735603, 33.227551>,  <25.674667, 34.581913, 33.221748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043919, 34.735603, 33.227551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228177, -0.577799, 0.783635,
		0.309471, -0.720085, -0.621052,
		0.923127, 0.384222, 0.014505,
		26.320856, 34.850868, 33.231903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188486, 34.030983, 33.356525>,  <25.674667, 34.581913, 33.221748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188486, 34.030983, 33.356525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.342022, 34.386951, 33.455078>,  <26.434143, 34.600533, 33.514210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.342022, 34.386951, 33.455078>,  <26.188486, 34.030983, 33.356525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342022, 34.386951, 33.455078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247133, -0.356090, 0.901180,
		0.889715, -0.285020, -0.356611,
		0.383840, 0.889923, 0.246381,
		26.457174, 34.653927, 33.528992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679028, 33.846226, 33.911968>,  <26.188486, 34.030983, 33.356525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679028, 33.846226, 33.911968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.670195, 34.243900, 33.954121>,  <26.664896, 34.482506, 33.979412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.670195, 34.243900, 33.954121>,  <26.679028, 33.846226, 33.911968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670195, 34.243900, 33.954121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245163, -0.096801, 0.964637,
		0.969231, 0.047135, -0.241600,
		-0.022081, 0.994187, 0.105378,
		26.663570, 34.542156, 33.985733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271269, 34.007694, 34.204643>,  <26.679028, 33.846226, 33.911968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271269, 34.007694, 34.204643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.005896, 34.295784, 34.285770>,  <26.846672, 34.468639, 34.334446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.005896, 34.295784, 34.285770>,  <27.271269, 34.007694, 34.204643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005896, 34.295784, 34.285770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160851, -0.127446, 0.978716,
		0.730743, 0.681935, -0.031297,
		-0.663432, 0.720224, 0.202820,
		26.806866, 34.511852, 34.346615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457352, 33.206577, 34.170891>,  <27.271269, 34.007694, 34.204643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457352, 33.206577, 34.170891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186930, 32.961422, 34.334507>,  <27.024675, 32.814327, 34.432674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186930, 32.961422, 34.334507>,  <27.457352, 33.206577, 34.170891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186930, 32.961422, 34.334507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555372, -0.788657, -0.263784,
		0.484262, 0.048835, 0.873559,
		-0.676056, -0.612891, 0.409038,
		26.984114, 32.777554, 34.457218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266670, 32.977974, 34.127583>,  <27.457352, 33.206577, 34.170891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266670, 32.977974, 34.127583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369539, 32.637577, 33.944420>,  <28.431261, 32.433338, 33.834522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369539, 32.637577, 33.944420>,  <28.266670, 32.977974, 34.127583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369539, 32.637577, 33.944420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457004, 0.524607, -0.718286,
		0.851475, -0.024542, 0.523820,
		0.257172, -0.850991, -0.457906,
		28.446692, 32.382278, 33.807049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927280, 33.083294, 33.872730>,  <28.266670, 32.977974, 34.127583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927280, 33.083294, 33.872730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787821, 32.787056, 33.642960>,  <28.704145, 32.609314, 33.505096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787821, 32.787056, 33.642960>,  <28.927280, 33.083294, 33.872730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787821, 32.787056, 33.642960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360919, 0.459532, -0.811522,
		0.864974, -0.490259, 0.107078,
		-0.348650, -0.740592, -0.574427,
		28.683226, 32.564880, 33.470631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456724, 32.741550, 33.586082>,  <28.927280, 33.083294, 33.872730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456724, 32.741550, 33.586082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162226, 32.635502, 33.337036>,  <28.985527, 32.571873, 33.187607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162226, 32.635502, 33.337036>,  <29.456724, 32.741550, 33.586082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162226, 32.635502, 33.337036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508707, 0.389918, -0.767581,
		0.446274, -0.881858, -0.152206,
		-0.736245, -0.265123, -0.622617,
		28.941353, 32.555965, 33.150249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831589, 32.543427, 33.008221>,  <29.456724, 32.741550, 33.586082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831589, 32.543427, 33.008221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.456654, 32.558701, 32.869694>,  <29.231691, 32.567863, 32.786575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.456654, 32.558701, 32.869694>,  <29.831589, 32.543427, 33.008221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456654, 32.558701, 32.869694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348055, 0.148007, -0.925717,
		0.015910, -0.988249, -0.152024,
		-0.937339, 0.038185, -0.346320,
		29.175451, 32.570156, 32.765797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761049, 32.086689, 32.439728>,  <29.831589, 32.543427, 33.008221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761049, 32.086689, 32.439728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.457403, 32.340923, 32.383476>,  <29.275215, 32.493462, 32.349728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.457403, 32.340923, 32.383476>,  <29.761049, 32.086689, 32.439728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457403, 32.340923, 32.383476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307105, 0.159202, -0.938265,
		-0.573958, -0.755439, -0.316044,
		-0.759117, 0.635584, -0.140624,
		29.229668, 32.531597, 32.341290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491835, 32.001476, 31.794832>,  <29.761049, 32.086689, 32.439728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491835, 32.001476, 31.794832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356352, 32.370872, 31.866884>,  <29.275063, 32.592510, 31.910114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356352, 32.370872, 31.866884>,  <29.491835, 32.001476, 31.794832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356352, 32.370872, 31.866884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350879, 0.301609, -0.886519,
		-0.873019, -0.237065, -0.426190,
		-0.338705, 0.923489, 0.180129,
		29.254740, 32.647919, 31.920923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259457, 32.362988, 31.110172>,  <29.491835, 32.001476, 31.794832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259457, 32.362988, 31.110172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265158, 32.672001, 31.364100>,  <29.268579, 32.857407, 31.516457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265158, 32.672001, 31.364100>,  <29.259457, 32.362988, 31.110172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265158, 32.672001, 31.364100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333255, 0.594912, -0.731451,
		-0.942729, 0.221982, -0.248970,
		0.014254, 0.772530, 0.634818,
		29.269434, 32.903759, 31.554544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979351, 32.818642, 30.752039>,  <29.259457, 32.362988, 31.110172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979351, 32.818642, 30.752039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162405, 33.027084, 31.040211>,  <29.272238, 33.152149, 31.213114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162405, 33.027084, 31.040211>,  <28.979351, 32.818642, 30.752039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162405, 33.027084, 31.040211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381115, 0.617082, -0.688448,
		-0.803319, 0.589625, 0.083796,
		0.457635, 0.521107, 0.720429,
		29.299696, 33.183418, 31.256340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937380, 33.564930, 30.521109>,  <28.979351, 32.818642, 30.752039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937380, 33.564930, 30.521109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240545, 33.544735, 30.781267>,  <29.422445, 33.532619, 30.937363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240545, 33.544735, 30.781267>,  <28.937380, 33.564930, 30.521109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240545, 33.544735, 30.781267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564354, 0.550829, -0.614892,
		-0.327215, 0.833090, 0.445973,
		0.757915, -0.050484, 0.650397,
		29.467920, 33.529591, 30.976387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061878, 34.222733, 30.663078>,  <28.937380, 33.564930, 30.521109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061878, 34.222733, 30.663078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.401300, 34.020309, 30.724871>,  <29.604954, 33.898857, 30.761946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.401300, 34.020309, 30.724871>,  <29.061878, 34.222733, 30.663078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401300, 34.020309, 30.724871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430601, 0.490819, -0.757416,
		0.307474, 0.709227, 0.634395,
		0.848553, -0.506057, 0.154479,
		29.655867, 33.868492, 30.771214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477570, 34.701355, 30.675346>,  <29.061878, 34.222733, 30.663078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477570, 34.701355, 30.675346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.715750, 34.391788, 30.589104>,  <29.858658, 34.206047, 30.537357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.715750, 34.391788, 30.589104>,  <29.477570, 34.701355, 30.675346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715750, 34.391788, 30.589104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381976, 0.508821, -0.771489,
		0.706776, 0.377027, 0.598597,
		0.595451, -0.773919, -0.215607,
		29.894384, 34.159615, 30.524422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123114, 34.997753, 30.386932>,  <29.477570, 34.701355, 30.675346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123114, 34.997753, 30.386932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190649, 34.617016, 30.284565>,  <30.231171, 34.388573, 30.223145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190649, 34.617016, 30.284565>,  <30.123114, 34.997753, 30.386932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190649, 34.617016, 30.284565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375469, 0.302181, -0.876191,
		0.911327, 0.051846, 0.408406,
		0.168840, -0.951840, -0.255919,
		30.241301, 34.331463, 30.207788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903662, 34.936234, 30.236696>,  <30.123114, 34.997753, 30.386932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903662, 34.936234, 30.236696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662790, 34.669590, 30.060963>,  <30.518267, 34.509605, 29.955523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662790, 34.669590, 30.060963>,  <30.903662, 34.936234, 30.236696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662790, 34.669590, 30.060963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293382, 0.327022, -0.898323,
		0.742502, -0.669843, -0.001354,
		-0.602178, -0.666609, -0.439334,
		30.482138, 34.469608, 29.929163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289148, 34.583851, 29.683470>,  <30.903662, 34.936234, 30.236696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289148, 34.583851, 29.683470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910492, 34.502686, 29.583309>,  <30.683298, 34.453987, 29.523212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910492, 34.502686, 29.583309>,  <31.289148, 34.583851, 29.683470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910492, 34.502686, 29.583309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195473, 0.256249, -0.946640,
		0.256249, -0.945073, -0.202912,
		0.946640, 0.202912, 0.250399,
		30.626499, 34.441811, 29.508190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241962, 34.200180, 28.951174>,  <31.289148, 34.583851, 29.683470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241962, 34.200180, 28.951174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.887514, 34.372635, 29.019182>,  <30.674845, 34.476109, 29.059988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.887514, 34.372635, 29.019182>,  <31.241962, 34.200180, 28.951174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887514, 34.372635, 29.019182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126454, 0.128020, -0.983677,
		-0.445866, -0.893158, -0.058922,
		-0.886123, 0.431138, 0.170023,
		30.621677, 34.501976, 29.070189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885077, 33.957935, 28.346502>,  <31.241962, 34.200180, 28.951174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885077, 33.957935, 28.346502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.710979, 34.285065, 28.497087>,  <30.606522, 34.481342, 28.587439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.710979, 34.285065, 28.497087>,  <30.885077, 33.957935, 28.346502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710979, 34.285065, 28.497087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161479, 0.340456, -0.926291,
		-0.885713, -0.463953, -0.016120,
		-0.435244, 0.817824, 0.376465,
		30.580406, 34.530411, 28.610027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745682, 34.240620, 27.813185>,  <30.885077, 33.957935, 28.346502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745682, 34.240620, 27.813185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649944, 34.524029, 28.078728>,  <30.592503, 34.694073, 28.238054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649944, 34.524029, 28.078728>,  <30.745682, 34.240620, 27.813185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649944, 34.524029, 28.078728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128547, 0.654589, -0.744976,
		-0.962388, -0.263641, -0.065592,
		-0.239342, 0.708524, 0.663859,
		30.578142, 34.736588, 28.277885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048933, 34.555855, 27.673986>,  <30.745682, 34.240620, 27.813185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048933, 34.555855, 27.673986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.270493, 34.827259, 27.866993>,  <30.403429, 34.990101, 27.982796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.270493, 34.827259, 27.866993>,  <30.048933, 34.555855, 27.673986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270493, 34.827259, 27.866993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025163, 0.592918, -0.804870,
		-0.832203, 0.433676, 0.345491,
		0.553900, 0.678509, 0.482515,
		30.436663, 35.030811, 28.011747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752970, 35.206676, 27.493227>,  <30.048933, 34.555855, 27.673986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752970, 35.206676, 27.493227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124899, 35.281723, 27.619864>,  <30.348057, 35.326752, 27.695845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124899, 35.281723, 27.619864>,  <29.752970, 35.206676, 27.493227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124899, 35.281723, 27.619864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098646, 0.701733, -0.705577,
		-0.354541, 0.687292, 0.633980,
		0.929822, 0.187616, 0.316592,
		30.403845, 35.338009, 27.714842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801992, 35.902607, 27.346924>,  <29.752970, 35.206676, 27.493227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801992, 35.902607, 27.346924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.177401, 35.773224, 27.395176>,  <30.402645, 35.695595, 27.424128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.177401, 35.773224, 27.395176>,  <29.801992, 35.902607, 27.346924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177401, 35.773224, 27.395176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273484, 0.483378, -0.831596,
		0.210678, 0.813461, 0.542122,
		0.938521, -0.323460, 0.120631,
		30.458958, 35.676186, 27.431366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219624, 36.509991, 27.255966>,  <29.801992, 35.902607, 27.346924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219624, 36.509991, 27.255966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.466688, 36.202614, 27.189045>,  <30.614927, 36.018188, 27.148891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.466688, 36.202614, 27.189045>,  <30.219624, 36.509991, 27.255966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466688, 36.202614, 27.189045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352942, 0.460959, -0.814217,
		0.702798, 0.443863, 0.555932,
		0.617663, -0.768441, -0.167303,
		30.651987, 35.972080, 27.138855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795765, 36.878117, 27.252426>,  <30.219624, 36.509991, 27.255966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795765, 36.878117, 27.252426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.844503, 36.524654, 27.071623>,  <30.873747, 36.312576, 26.963140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.844503, 36.524654, 27.071623>,  <30.795765, 36.878117, 27.252426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844503, 36.524654, 27.071623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261020, 0.467901, -0.844356,
		0.957613, -0.015104, 0.287662,
		0.121845, -0.883652, -0.452010,
		30.881056, 36.259560, 26.936020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.261005, 41.590298, 39.471855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008202, 41.424801, 39.733963>,  <32.856518, 41.325500, 39.891228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008202, 41.424801, 39.733963>,  <33.261005, 41.590298, 39.471855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008202, 41.424801, 39.733963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450606, 0.884121, 0.123632,
		-0.630489, -0.217131, -0.745210,
		-0.632011, -0.413744, 0.655269,
		32.818600, 41.300678, 39.930542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619148, 41.830524, 39.253258>,  <33.261005, 41.590298, 39.471855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619148, 41.830524, 39.253258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.579536, 41.726715, 39.637516>,  <32.555767, 41.664429, 39.868073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.579536, 41.726715, 39.637516>,  <32.619148, 41.830524, 39.253258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579536, 41.726715, 39.637516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524547, 0.833985, 0.171230,
		-0.845602, -0.486946, -0.218725,
		-0.099034, -0.259524, 0.960645,
		32.549828, 41.648857, 39.925709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834934, 41.978619, 39.439316>,  <32.619148, 41.830524, 39.253258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834934, 41.978619, 39.439316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072590, 41.993023, 39.760738>,  <32.215183, 42.001663, 39.953590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072590, 41.993023, 39.760738>,  <31.834934, 41.978619, 39.439316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072590, 41.993023, 39.760738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414557, 0.869806, 0.267544,
		-0.689304, -0.492078, 0.531713,
		0.594140, 0.036006, 0.803555,
		32.250832, 42.003826, 40.001804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409000, 42.056732, 39.994263>,  <31.834934, 41.978619, 39.439316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409000, 42.056732, 39.994263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759424, 42.195599, 40.128128>,  <31.969679, 42.278919, 40.208447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759424, 42.195599, 40.128128>,  <31.409000, 42.056732, 39.994263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759424, 42.195599, 40.128128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460394, 0.808552, 0.366443,
		-0.143374, -0.475101, 0.868172,
		0.876060, 0.347163, 0.334659,
		32.022243, 42.299747, 40.228527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159794, 42.326206, 40.735695>,  <31.409000, 42.056732, 39.994263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159794, 42.326206, 40.735695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.507881, 42.495186, 40.634300>,  <31.716734, 42.596573, 40.573463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.507881, 42.495186, 40.634300>,  <31.159794, 42.326206, 40.735695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507881, 42.495186, 40.634300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368341, 0.899577, 0.234702,
		0.327177, -0.110874, 0.938436,
		0.870218, 0.422454, -0.253482,
		31.768946, 42.621922, 40.558254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232742, 42.892666, 41.160847>,  <31.159794, 42.326206, 40.735695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232742, 42.892666, 41.160847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500933, 42.990635, 40.880711>,  <31.661846, 43.049416, 40.712627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500933, 42.990635, 40.880711>,  <31.232742, 42.892666, 41.160847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500933, 42.990635, 40.880711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161810, 0.969489, 0.184142,
		0.724072, -0.010141, 0.689649,
		0.670475, 0.244925, -0.700339,
		31.702076, 43.064114, 40.670609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705797, 43.360668, 41.516171>,  <31.232742, 42.892666, 41.160847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705797, 43.360668, 41.516171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.747374, 43.414268, 41.121964>,  <31.772320, 43.446430, 40.885441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.747374, 43.414268, 41.121964>,  <31.705797, 43.360668, 41.516171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747374, 43.414268, 41.121964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018999, 0.990434, 0.136675,
		0.994402, -0.032930, 0.100402,
		0.103942, 0.134002, -0.985515,
		31.778557, 43.454468, 40.826309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298065, 43.732826, 41.493164>,  <31.705797, 43.360668, 41.516171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298065, 43.732826, 41.493164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097626, 43.784168, 41.150837>,  <31.977364, 43.814972, 40.945438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097626, 43.784168, 41.150837>,  <32.298065, 43.732826, 41.493164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097626, 43.784168, 41.150837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183245, 0.982252, 0.040026,
		0.845769, -0.136768, -0.515723,
		-0.501096, 0.128356, -0.855820,
		31.947296, 43.822674, 40.894093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715233, 44.198181, 41.063042>,  <32.298065, 43.732826, 41.493164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715233, 44.198181, 41.063042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.337311, 44.198112, 40.931992>,  <32.110558, 44.198071, 40.853363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.337311, 44.198112, 40.931992>,  <32.715233, 44.198181, 41.063042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337311, 44.198112, 40.931992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009223, 0.999617, 0.026081,
		0.327496, 0.027663, -0.944447,
		-0.944807, -0.000169, -0.327626,
		32.053867, 44.198063, 40.833702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687805, 44.757965, 40.646545>,  <32.715233, 44.198181, 41.063042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687805, 44.757965, 40.646545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.295876, 44.711365, 40.711502>,  <32.060719, 44.683407, 40.750477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.295876, 44.711365, 40.711502>,  <32.687805, 44.757965, 40.646545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295876, 44.711365, 40.711502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134972, 0.984971, -0.107776,
		-0.147392, -0.127519, -0.980823,
		-0.979826, -0.116498, 0.162388,
		32.001926, 44.676414, 40.760220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503151, 45.323105, 40.274693>,  <32.687805, 44.757965, 40.646545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503151, 45.323105, 40.274693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.162727, 45.239635, 40.467419>,  <31.958471, 45.189552, 40.583054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.162727, 45.239635, 40.467419>,  <32.503151, 45.323105, 40.274693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162727, 45.239635, 40.467419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251418, 0.967554, -0.025045,
		-0.460955, -0.142451, -0.875915,
		-0.851063, -0.208676, 0.481814,
		31.907408, 45.177032, 40.611961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920242, 45.637600, 39.911999>,  <32.503151, 45.323105, 40.274693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920242, 45.637600, 39.911999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.835375, 45.577057, 40.298176>,  <31.784454, 45.540730, 40.529881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.835375, 45.577057, 40.298176>,  <31.920242, 45.637600, 39.911999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835375, 45.577057, 40.298176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159085, 0.980104, 0.118694,
		-0.964197, -0.128404, -0.232026,
		-0.212169, -0.151357, 0.965440,
		31.771725, 45.531651, 40.587807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170795, 45.839504, 40.023907>,  <31.920242, 45.637600, 39.911999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170795, 45.839504, 40.023907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383347, 45.890701, 40.358871>,  <31.510878, 45.921421, 40.559849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383347, 45.890701, 40.358871>,  <31.170795, 45.839504, 40.023907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383347, 45.890701, 40.358871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214438, 0.976649, -0.013205,
		-0.819546, -0.172556, 0.546414,
		0.531376, 0.127994, 0.837411,
		31.542759, 45.929100, 40.610096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870150, 45.957214, 40.606358>,  <31.170795, 45.839504, 40.023907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870150, 45.957214, 40.606358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.204975, 46.175434, 40.589836>,  <31.405870, 46.306366, 40.579926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.204975, 46.175434, 40.589836>,  <30.870150, 45.957214, 40.606358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204975, 46.175434, 40.589836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539888, 0.811438, -0.223807,
		-0.088584, 0.209638, 0.973758,
		0.837063, 0.545546, -0.041301,
		31.456095, 46.339096, 40.577446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229731, 45.660851, 40.323948>,  <30.870150, 45.957214, 40.606358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229731, 45.660851, 40.323948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.978167, 45.917805, 40.148762>,  <29.827229, 46.071980, 40.043652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.978167, 45.917805, 40.148762>,  <30.229731, 45.660851, 40.323948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978167, 45.917805, 40.148762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140145, -0.460419, -0.876570,
		-0.764745, -0.612660, 0.199534,
		-0.628908, 0.642389, -0.437964,
		29.789494, 46.110519, 40.017372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735050, 45.312798, 40.102699>,  <30.229731, 45.660851, 40.323948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735050, 45.312798, 40.102699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.759329, 45.637962, 39.871014>,  <29.773895, 45.833061, 39.732002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.759329, 45.637962, 39.871014>,  <29.735050, 45.312798, 40.102699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759329, 45.637962, 39.871014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085016, -0.582388, -0.808453,
		-0.994529, -0.000172, -0.104460,
		0.060697, 0.812911, -0.579217,
		29.777538, 45.881836, 39.697250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203810, 45.296780, 39.621052>,  <29.735050, 45.312798, 40.102699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203810, 45.296780, 39.621052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.494001, 45.524193, 39.465904>,  <29.668118, 45.660641, 39.372814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.494001, 45.524193, 39.465904>,  <29.203810, 45.296780, 39.621052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494001, 45.524193, 39.465904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157096, -0.685486, -0.710936,
		-0.670074, 0.454837, -0.586621,
		0.725481, 0.568535, -0.387873,
		29.711645, 45.694752, 39.349541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107370, 45.357635, 38.970478>,  <29.203810, 45.296780, 39.621052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107370, 45.357635, 38.970478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.491062, 45.470234, 38.980595>,  <29.721277, 45.537792, 38.986664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.491062, 45.470234, 38.980595>,  <29.107370, 45.357635, 38.970478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491062, 45.470234, 38.980595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165795, -0.487953, -0.856979,
		-0.228898, 0.826232, -0.514729,
		0.959228, 0.281500, 0.025294,
		29.778831, 45.554684, 38.988182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255924, 45.706829, 38.346714>,  <29.107370, 45.357635, 38.970478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255924, 45.706829, 38.346714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.608707, 45.576870, 38.483292>,  <29.820377, 45.498894, 38.565239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.608707, 45.576870, 38.483292>,  <29.255924, 45.706829, 38.346714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608707, 45.576870, 38.483292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254840, -0.280699, -0.925346,
		0.396490, 0.903132, -0.164768,
		0.881960, -0.324901, 0.341448,
		29.873295, 45.479401, 38.585728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718561, 45.810158, 37.737381>,  <29.255924, 45.706829, 38.346714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718561, 45.810158, 37.737381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.958334, 45.592480, 37.972168>,  <30.102198, 45.461872, 38.113041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.958334, 45.592480, 37.972168>,  <29.718561, 45.810158, 37.737381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958334, 45.592480, 37.972168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401467, -0.430001, -0.808655,
		0.692462, 0.720384, -0.039282,
		0.599434, -0.544192, 0.586970,
		30.138165, 45.429222, 38.148258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434599, 45.865944, 37.443752>,  <29.718561, 45.810158, 37.737381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434599, 45.865944, 37.443752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.409779, 45.526703, 37.654228>,  <30.394886, 45.323158, 37.780514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.409779, 45.526703, 37.654228>,  <30.434599, 45.865944, 37.443752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409779, 45.526703, 37.654228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375806, -0.508261, -0.774881,
		0.924619, 0.149666, 0.350257,
		-0.062049, -0.848098, 0.526193,
		30.391163, 45.272274, 37.812088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897715, 45.407539, 37.219639>,  <30.434599, 45.865944, 37.443752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897715, 45.407539, 37.219639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.722504, 45.132896, 37.451744>,  <30.617378, 44.968109, 37.591007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.722504, 45.132896, 37.451744>,  <30.897715, 45.407539, 37.219639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722504, 45.132896, 37.451744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381449, -0.726446, -0.571640,
		0.814021, -0.029054, 0.580108,
		-0.438026, -0.686609, 0.580260,
		30.591097, 44.926914, 37.625824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444174, 44.940094, 37.465923>,  <30.897715, 45.407539, 37.219639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444174, 44.940094, 37.465923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093201, 44.751423, 37.500866>,  <30.882616, 44.638222, 37.521832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093201, 44.751423, 37.500866>,  <31.444174, 44.940094, 37.465923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093201, 44.751423, 37.500866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422764, -0.846417, -0.323802,
		0.226667, -0.247185, 0.942084,
		-0.877435, -0.471675, 0.087354,
		30.829969, 44.609921, 37.527073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516359, 44.301586, 37.758801>,  <31.444174, 44.940094, 37.465923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516359, 44.301586, 37.758801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.162405, 44.237560, 37.583824>,  <30.950033, 44.199146, 37.478840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.162405, 44.237560, 37.583824>,  <31.516359, 44.301586, 37.758801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162405, 44.237560, 37.583824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228705, -0.967413, -0.108650,
		-0.405796, -0.196188, 0.892659,
		-0.884886, -0.160066, -0.437442,
		30.896938, 44.189541, 37.452591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217651, 43.672024, 38.128845>,  <31.516359, 44.301586, 37.758801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217651, 43.672024, 38.128845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.039873, 43.722389, 37.774078>,  <30.933207, 43.752609, 37.561218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.039873, 43.722389, 37.774078>,  <31.217651, 43.672024, 38.128845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039873, 43.722389, 37.774078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282229, -0.919969, -0.272037,
		-0.850187, -0.371217, 0.373337,
		-0.444443, 0.125915, -0.886914,
		30.906540, 43.760162, 37.508003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900133, 42.992989, 37.968884>,  <31.217651, 43.672024, 38.128845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900133, 42.992989, 37.968884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901798, 43.175041, 37.612717>,  <30.902798, 43.284271, 37.399017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901798, 43.175041, 37.612717>,  <30.900133, 42.992989, 37.968884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901798, 43.175041, 37.612717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378259, -0.824979, -0.419915,
		-0.925690, -0.335059, -0.175594,
		0.004165, 0.455131, -0.890415,
		30.903048, 43.311581, 37.345592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903727, 42.473827, 37.546543>,  <30.900133, 42.992989, 37.968884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903727, 42.473827, 37.546543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986633, 42.758305, 37.277847>,  <31.036377, 42.928993, 37.116631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986633, 42.758305, 37.277847>,  <30.903727, 42.473827, 37.546543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986633, 42.758305, 37.277847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555503, -0.650777, -0.517596,
		-0.805268, -0.265874, -0.529957,
		0.207269, 0.711196, -0.671744,
		31.048815, 42.971664, 37.076324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625574, 42.262764, 36.860172>,  <30.903727, 42.473827, 37.546543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625574, 42.262764, 36.860172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.940758, 42.507442, 36.832020>,  <31.129868, 42.654247, 36.815128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.940758, 42.507442, 36.832020>,  <30.625574, 42.262764, 36.860172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940758, 42.507442, 36.832020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448182, -0.648164, -0.615643,
		-0.422200, 0.453560, -0.784876,
		0.787959, 0.611692, -0.070377,
		31.177145, 42.690948, 36.810905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088179, 41.946228, 36.290180>,  <30.625574, 42.262764, 36.860172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088179, 41.946228, 36.290180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.873722, 41.640148, 36.432739>,  <29.745049, 41.456501, 36.518272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.873722, 41.640148, 36.432739>,  <30.088179, 41.946228, 36.290180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873722, 41.640148, 36.432739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601311, 0.642523, 0.474962,
		-0.592435, 0.040342, -0.804608,
		-0.536140, -0.765204, 0.356395,
		29.712879, 41.410587, 36.539658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392328, 42.022076, 35.980255>,  <30.088179, 41.946228, 36.290180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392328, 42.022076, 35.980255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.365681, 41.813267, 36.320385>,  <29.349693, 41.687981, 36.524464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.365681, 41.813267, 36.320385>,  <29.392328, 42.022076, 35.980255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365681, 41.813267, 36.320385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574641, 0.716768, 0.395009,
		-0.815690, -0.462319, -0.347723,
		-0.066617, -0.522021, 0.850327,
		29.345695, 41.656662, 36.575481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796524, 42.174286, 36.189442>,  <29.392328, 42.022076, 35.980255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796524, 42.174286, 36.189442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.897594, 41.985306, 36.527187>,  <28.958237, 41.871918, 36.729836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.897594, 41.985306, 36.527187>,  <28.796524, 42.174286, 36.189442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897594, 41.985306, 36.527187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587436, 0.618520, 0.521874,
		-0.768813, -0.627874, -0.121247,
		0.252677, -0.472448, 0.844362,
		28.973398, 41.843571, 36.780495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212385, 42.021702, 36.544437>,  <28.796524, 42.174286, 36.189442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212385, 42.021702, 36.544437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.465240, 42.018806, 36.854366>,  <28.616953, 42.017067, 37.040325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.465240, 42.018806, 36.854366>,  <28.212385, 42.021702, 36.544437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465240, 42.018806, 36.854366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655460, 0.528302, 0.539692,
		-0.413249, -0.849025, 0.329213,
		0.632137, -0.007241, 0.774823,
		28.654882, 42.016636, 37.086815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846725, 41.832817, 37.192680>,  <28.212385, 42.021702, 36.544437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846725, 41.832817, 37.192680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.177721, 42.027481, 37.304699>,  <28.376318, 42.144279, 37.371910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.177721, 42.027481, 37.304699>,  <27.846725, 41.832817, 37.192680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177721, 42.027481, 37.304699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558884, 0.665977, 0.494089,
		0.053948, -0.565367, 0.823074,
		0.827489, 0.486658, 0.280046,
		28.425968, 42.173477, 37.388714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787867, 41.964100, 37.883289>,  <27.846725, 41.832817, 37.192680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787867, 41.964100, 37.883289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.070429, 42.224876, 37.773041>,  <28.239965, 42.381340, 37.706890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.070429, 42.224876, 37.773041>,  <27.787867, 41.964100, 37.883289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070429, 42.224876, 37.773041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481777, 0.728146, 0.487540,
		0.518538, -0.211613, 0.828455,
		0.706406, 0.651939, -0.275621,
		28.282351, 42.420460, 37.690353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953293, 42.331051, 38.499710>,  <27.787867, 41.964100, 37.883289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953293, 42.331051, 38.499710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.065542, 42.563915, 38.194466>,  <28.132893, 42.703632, 38.011318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.065542, 42.563915, 38.194466>,  <27.953293, 42.331051, 38.499710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065542, 42.563915, 38.194466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379445, 0.797582, 0.468918,
		0.881631, 0.157970, 0.444717,
		0.280623, 0.582158, -0.763114,
		28.149729, 42.738564, 37.965530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301466, 42.415398, 39.127895>,  <27.953293, 42.331051, 38.499710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301466, 42.415398, 39.127895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.145674, 42.199890, 39.426704>,  <28.052198, 42.070587, 39.605988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.145674, 42.199890, 39.426704>,  <28.301466, 42.415398, 39.127895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145674, 42.199890, 39.426704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366928, -0.834687, -0.410686,
		0.844790, 0.114149, 0.522780,
		-0.389478, -0.538766, 0.747020,
		28.028830, 42.038261, 39.650810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860214, 42.021214, 39.499271>,  <28.301466, 42.415398, 39.127895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860214, 42.021214, 39.499271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.506924, 41.846157, 39.566654>,  <28.294949, 41.741123, 39.607086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.506924, 41.846157, 39.566654>,  <28.860214, 42.021214, 39.499271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506924, 41.846157, 39.566654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363151, -0.865600, -0.344757,
		0.296699, -0.243323, 0.923452,
		-0.883227, -0.437642, 0.168460,
		28.241955, 41.714863, 39.617191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084618, 41.525734, 39.941460>,  <28.860214, 42.021214, 39.499271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084618, 41.525734, 39.941460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.721817, 41.423836, 39.807323>,  <28.504137, 41.362698, 39.726841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.721817, 41.423836, 39.807323>,  <29.084618, 41.525734, 39.941460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721817, 41.423836, 39.807323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309482, -0.943235, -0.120533,
		-0.285602, -0.213106, 0.934354,
		-0.907002, -0.254742, -0.335342,
		28.449717, 41.347412, 39.706722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865938, 41.002499, 40.423035>,  <29.084618, 41.525734, 39.941460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865938, 41.002499, 40.423035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.703569, 40.957916, 40.060200>,  <28.606148, 40.931168, 39.842499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.703569, 40.957916, 40.060200>,  <28.865938, 41.002499, 40.423035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703569, 40.957916, 40.060200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349435, -0.936047, -0.041359,
		-0.844467, -0.333756, 0.418908,
		-0.405921, -0.111455, -0.907086,
		28.581793, 40.924480, 39.788074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817762, 40.252987, 40.295525>,  <28.865938, 41.002499, 40.423035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817762, 40.252987, 40.295525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.772615, 40.416065, 39.933079>,  <28.745527, 40.513912, 39.715611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.772615, 40.416065, 39.933079>,  <28.817762, 40.252987, 40.295525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772615, 40.416065, 39.933079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469026, -0.782087, -0.410309,
		-0.875943, -0.471303, -0.102948,
		-0.112866, 0.407693, -0.906117,
		28.738756, 40.538372, 39.661243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596691, 39.693577, 39.886505>,  <28.817762, 40.252987, 40.295525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596691, 39.693577, 39.886505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.758698, 39.979454, 39.658405>,  <28.855902, 40.150978, 39.521545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.758698, 39.979454, 39.658405>,  <28.596691, 39.693577, 39.886505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758698, 39.979454, 39.658405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464071, -0.698069, -0.545287,
		-0.787782, -0.043784, -0.614397,
		0.405016, 0.714691, -0.570245,
		28.880203, 40.193863, 39.487331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621624, 39.423569, 39.182980>,  <28.596691, 39.693577, 39.886505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621624, 39.423569, 39.182980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.887081, 39.720989, 39.150208>,  <29.046356, 39.899441, 39.130543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.887081, 39.720989, 39.150208>,  <28.621624, 39.423569, 39.182980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887081, 39.720989, 39.150208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611813, -0.602537, -0.512479,
		-0.430418, 0.289978, -0.854782,
		0.663645, 0.743547, -0.081931,
		29.086174, 39.944054, 39.125629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.747282, 43.591339, 43.584667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.936693, 43.846008, 43.341221>,  <31.050341, 43.998810, 43.195152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.936693, 43.846008, 43.341221>,  <30.747282, 43.591339, 43.584667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936693, 43.846008, 43.341221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553875, -0.752523, -0.356275,
		-0.684831, -0.168394, -0.708978,
		0.473528, 0.636673, -0.608620,
		31.078751, 44.037010, 43.158634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778191, 43.327202, 42.988106>,  <30.747282, 43.591339, 43.584667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778191, 43.327202, 42.988106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.087671, 43.577038, 42.945625>,  <31.273359, 43.726940, 42.920135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.087671, 43.577038, 42.945625>,  <30.778191, 43.327202, 42.988106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087671, 43.577038, 42.945625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633228, -0.767706, 0.098228,
		-0.020179, -0.143248, -0.989481,
		0.773702, 0.624585, -0.106200,
		31.319782, 43.764412, 42.913765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134140, 43.116631, 42.436741>,  <30.778191, 43.327202, 42.988106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134140, 43.116631, 42.436741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.401932, 43.312012, 42.660603>,  <31.562607, 43.429241, 42.794918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.401932, 43.312012, 42.660603>,  <31.134140, 43.116631, 42.436741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401932, 43.312012, 42.660603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673051, -0.717667, -0.178763,
		0.314328, 0.496354, -0.809216,
		0.669477, 0.488454, 0.559654,
		31.602776, 43.458549, 42.828499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713814, 42.786915, 42.166260>,  <31.134140, 43.116631, 42.436741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713814, 42.786915, 42.166260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.876167, 42.975674, 42.479328>,  <31.973579, 43.088928, 42.667168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.876167, 42.975674, 42.479328>,  <31.713814, 42.786915, 42.166260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876167, 42.975674, 42.479328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677652, -0.730010, 0.088727,
		0.613225, 0.494363, -0.616085,
		0.405885, 0.471901, 0.782667,
		31.997932, 43.117245, 42.714127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426796, 42.953758, 41.959015>,  <31.713814, 42.786915, 42.166260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426796, 42.953758, 41.959015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.425163, 42.905182, 42.356052>,  <32.424183, 42.876034, 42.594273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.425163, 42.905182, 42.356052>,  <32.426796, 42.953758, 41.959015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425163, 42.905182, 42.356052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779703, -0.621894, -0.072880,
		0.626137, 0.773627, 0.097231,
		-0.004085, -0.121444, 0.992590,
		32.423939, 42.868748, 42.653828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138508, 42.793125, 42.207211>,  <32.426796, 42.953758, 41.959015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138508, 42.793125, 42.207211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.914742, 42.719231, 42.530426>,  <32.780479, 42.674896, 42.724354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.914742, 42.719231, 42.530426>,  <33.138508, 42.793125, 42.207211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914742, 42.719231, 42.530426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549272, -0.812700, 0.194470,
		0.620767, 0.552623, 0.556108,
		-0.559418, -0.184734, 0.808038,
		32.746918, 42.663811, 42.772839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613384, 42.868454, 42.823582>,  <33.138508, 42.793125, 42.207211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613384, 42.868454, 42.823582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.309490, 42.611462, 42.863625>,  <33.127155, 42.457264, 42.887650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.309490, 42.611462, 42.863625>,  <33.613384, 42.868454, 42.823582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309490, 42.611462, 42.863625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646329, -0.729316, 0.224404,
		-0.071167, 0.235189, 0.969341,
		-0.759733, -0.642484, 0.100106,
		33.081570, 42.418716, 42.893658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887604, 42.246025, 43.166008>,  <33.613384, 42.868454, 42.823582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887604, 42.246025, 43.166008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.534077, 42.091915, 43.059860>,  <33.321960, 41.999451, 42.996170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.534077, 42.091915, 43.059860>,  <33.887604, 42.246025, 43.166008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534077, 42.091915, 43.059860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360918, -0.922451, 0.137193,
		-0.297651, 0.025476, 0.954335,
		-0.883823, -0.385272, -0.265374,
		33.268929, 41.976334, 42.980247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703365, 41.812668, 43.627655>,  <33.887604, 42.246025, 43.166008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703365, 41.812668, 43.627655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.486961, 41.659061, 43.328365>,  <33.357121, 41.566898, 43.148792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.486961, 41.659061, 43.328365>,  <33.703365, 41.812668, 43.627655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486961, 41.659061, 43.328365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432732, -0.889969, 0.143868,
		-0.721145, -0.245948, 0.647657,
		-0.541011, -0.384011, -0.748226,
		33.324657, 41.543858, 43.103897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350018, 41.184036, 43.853271>,  <33.703365, 41.812668, 43.627655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350018, 41.184036, 43.853271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.392178, 41.168995, 43.455784>,  <33.417473, 41.159969, 43.217293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.392178, 41.168995, 43.455784>,  <33.350018, 41.184036, 43.853271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392178, 41.168995, 43.455784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101012, -0.993711, 0.048314,
		-0.989286, -0.105470, -0.100944,
		0.105405, -0.037600, -0.993718,
		33.423798, 41.157715, 43.157669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928879, 40.640877, 43.510448>,  <33.350018, 41.184036, 43.853271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928879, 40.640877, 43.510448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.216400, 40.689262, 43.236607>,  <33.388912, 40.718292, 43.072300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.216400, 40.689262, 43.236607>,  <32.928879, 40.640877, 43.510448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216400, 40.689262, 43.236607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072979, -0.992435, -0.098730,
		-0.691369, 0.021006, -0.722196,
		0.718806, 0.120963, -0.684606,
		33.432041, 40.725552, 43.031223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839172, 40.081398, 43.190468>,  <32.928879, 40.640877, 43.510448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839172, 40.081398, 43.190468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.187660, 40.191048, 43.027580>,  <33.396751, 40.256840, 42.929848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.187660, 40.191048, 43.027580>,  <32.839172, 40.081398, 43.190468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187660, 40.191048, 43.027580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317074, -0.947536, 0.040508,
		-0.374752, -0.164410, -0.912431,
		0.871221, 0.274127, -0.407221,
		33.449028, 40.273285, 42.905415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195320, 39.738895, 42.717422>,  <32.839172, 40.081398, 43.190468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195320, 39.738895, 42.717422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.854101, 39.540180, 42.781303>,  <31.649370, 39.420952, 42.819633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.854101, 39.540180, 42.781303>,  <32.195320, 39.738895, 42.717422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854101, 39.540180, 42.781303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490435, 0.867809, 0.079877,
		-0.178273, -0.010184, -0.983928,
		-0.853049, -0.496793, 0.159701,
		31.598186, 39.391144, 42.829212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672295, 40.093613, 42.360630>,  <32.195320, 39.738895, 42.717422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672295, 40.093613, 42.360630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.444826, 39.895924, 42.623646>,  <31.308344, 39.777309, 42.781456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.444826, 39.895924, 42.623646>,  <31.672295, 40.093613, 42.360630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444826, 39.895924, 42.623646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615360, 0.786063, 0.058632,
		-0.545842, -0.371279, -0.751138,
		-0.568673, -0.494223, 0.657537,
		31.274223, 39.747658, 42.820908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937992, 40.179436, 42.060558>,  <31.672295, 40.093613, 42.360630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937992, 40.179436, 42.060558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.914335, 40.079357, 42.447113>,  <30.900141, 40.019310, 42.679047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.914335, 40.079357, 42.447113>,  <30.937992, 40.179436, 42.060558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914335, 40.079357, 42.447113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692479, 0.707563, 0.140810,
		-0.719010, -0.660875, -0.215103,
		-0.059141, -0.250198, 0.966387,
		30.896593, 40.004299, 42.737030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278074, 40.126896, 42.280346>,  <30.937992, 40.179436, 42.060558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278074, 40.126896, 42.280346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.462799, 40.181671, 42.630882>,  <30.573635, 40.214535, 42.841206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.462799, 40.181671, 42.630882>,  <30.278074, 40.126896, 42.280346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462799, 40.181671, 42.630882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685647, 0.681895, 0.254769,
		-0.562687, -0.718518, 0.408797,
		0.461813, 0.136936, 0.876343,
		30.601343, 40.222752, 42.893784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722210, 40.172821, 42.746147>,  <30.278074, 40.126896, 42.280346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722210, 40.172821, 42.746147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.026392, 40.359707, 42.926552>,  <30.208902, 40.471840, 43.034794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.026392, 40.359707, 42.926552>,  <29.722210, 40.172821, 42.746147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026392, 40.359707, 42.926552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625174, 0.714616, 0.313818,
		-0.175678, -0.520606, 0.835528,
		0.760457, 0.467219, 0.451011,
		30.254530, 40.499874, 43.061855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457222, 40.499947, 43.336761>,  <29.722210, 40.172821, 42.746147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457222, 40.499947, 43.336761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.807165, 40.692490, 43.315140>,  <30.017132, 40.808014, 43.302166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.807165, 40.692490, 43.315140>,  <29.457222, 40.499947, 43.336761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807165, 40.692490, 43.315140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434965, 0.829803, 0.349617,
		0.213142, -0.282355, 0.935332,
		0.874858, 0.481355, -0.054051,
		30.069622, 40.836895, 43.298923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649065, 40.688942, 44.028851>,  <29.457222, 40.499947, 43.336761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649065, 40.688942, 44.028851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.813795, 40.920399, 43.747265>,  <29.912632, 41.059273, 43.578312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.813795, 40.920399, 43.747265>,  <29.649065, 40.688942, 44.028851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813795, 40.920399, 43.747265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527389, 0.781340, 0.333720,
		0.743143, 0.233831, 0.626946,
		0.411824, 0.578647, -0.703967,
		29.937342, 41.093994, 43.536076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737000, 41.470959, 44.253471>,  <29.649065, 40.688942, 44.028851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737000, 41.470959, 44.253471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.703899, 41.474743, 43.854862>,  <29.684038, 41.477013, 43.615696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.703899, 41.474743, 43.854862>,  <29.737000, 41.470959, 44.253471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703899, 41.474743, 43.854862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695972, 0.715159, 0.064584,
		0.713285, 0.698898, -0.052595,
		-0.082751, 0.009462, -0.996525,
		29.679073, 41.477581, 43.555904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125933, 42.040169, 44.487713>,  <29.737000, 41.470959, 44.253471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125933, 42.040169, 44.487713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.956999, 42.043312, 44.125149>,  <29.855639, 42.045200, 43.907612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.956999, 42.043312, 44.125149>,  <30.125933, 42.040169, 44.487713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956999, 42.043312, 44.125149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569314, 0.775822, 0.271997,
		0.705348, 0.630903, -0.323180,
		-0.422334, 0.007862, -0.906406,
		29.830299, 42.045670, 43.853226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972572, 42.657196, 44.314129>,  <30.125933, 42.040169, 44.487713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972572, 42.657196, 44.314129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.733732, 42.534229, 44.017761>,  <29.590429, 42.460449, 43.839939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.733732, 42.534229, 44.017761>,  <29.972572, 42.657196, 44.314129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733732, 42.534229, 44.017761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594652, 0.789556, 0.151624,
		0.538388, 0.531126, -0.654251,
		-0.597099, -0.307419, -0.740923,
		29.554602, 42.442005, 43.795483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985744, 43.132591, 43.692848>,  <29.972572, 42.657196, 44.314129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985744, 43.132591, 43.692848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.637745, 42.935383, 43.695004>,  <29.428944, 42.817059, 43.696297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.637745, 42.935383, 43.695004>,  <29.985744, 43.132591, 43.692848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637745, 42.935383, 43.695004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492851, 0.869290, -0.037848,
		0.013978, -0.035582, -0.999269,
		-0.870002, -0.493020, 0.005386,
		29.376745, 42.787476, 43.696621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513092, 43.446228, 43.211052>,  <29.985744, 43.132591, 43.692848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513092, 43.446228, 43.211052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.262428, 43.253063, 43.455708>,  <29.112030, 43.137165, 43.602501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.262428, 43.253063, 43.455708>,  <29.513092, 43.446228, 43.211052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262428, 43.253063, 43.455708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648004, 0.758879, -0.064757,
		-0.432887, -0.436924, -0.788484,
		-0.626658, -0.482908, 0.611637,
		29.074430, 43.108192, 43.639198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822208, 43.495766, 42.870995>,  <29.513092, 43.446228, 43.211052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822208, 43.495766, 42.870995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.742624, 43.395752, 43.250023>,  <28.694874, 43.335743, 43.477440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.742624, 43.395752, 43.250023>,  <28.822208, 43.495766, 42.870995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742624, 43.395752, 43.250023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727559, 0.685470, 0.028108,
		-0.656562, -0.683824, -0.318294,
		-0.198960, -0.250032, 0.947575,
		28.682936, 43.320744, 43.534294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016216, 43.386600, 43.003761>,  <28.822208, 43.495766, 42.870995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016216, 43.386600, 43.003761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.173759, 43.446342, 43.366543>,  <28.268286, 43.482189, 43.584213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.173759, 43.446342, 43.366543>,  <28.016216, 43.386600, 43.003761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173759, 43.446342, 43.366543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705560, 0.681532, 0.194165,
		-0.589119, -0.716384, 0.373808,
		0.393859, 0.149358, 0.906955,
		28.291918, 43.491150, 43.638630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673582, 43.162228, 42.411480>,  <28.016216, 43.386600, 43.003761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673582, 43.162228, 42.411480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.377304, 43.299366, 42.180367>,  <27.199537, 43.381649, 42.041698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.377304, 43.299366, 42.180367>,  <27.673582, 43.162228, 42.411480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377304, 43.299366, 42.180367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330788, -0.562427, -0.757796,
		-0.584772, -0.752415, 0.303173,
		-0.740689, 0.342852, -0.577782,
		27.155096, 43.402218, 42.007034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398420, 42.573639, 42.024525>,  <27.673582, 43.162228, 42.411480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398420, 42.573639, 42.024525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.285362, 42.905830, 41.832520>,  <27.217527, 43.105145, 41.717316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.285362, 42.905830, 41.832520>,  <27.398420, 42.573639, 42.024525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285362, 42.905830, 41.832520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393333, -0.356068, -0.847646,
		-0.874873, -0.428387, -0.226015,
		-0.282643, 0.830482, -0.480013,
		27.200569, 43.154976, 41.688515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882490, 42.374580, 41.609993>,  <27.398420, 42.573639, 42.024525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882490, 42.374580, 41.609993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.995729, 42.709240, 41.422428>,  <27.063673, 42.910034, 41.309891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.995729, 42.709240, 41.422428>,  <26.882490, 42.374580, 41.609993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995729, 42.709240, 41.422428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156036, -0.522577, -0.838192,
		-0.946313, 0.164123, -0.278487,
		0.283098, 0.836646, -0.468912,
		27.080658, 42.960236, 41.281754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622675, 42.409988, 40.893852>,  <26.882490, 42.374580, 41.609993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622675, 42.409988, 40.893852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.945475, 42.645813, 40.907482>,  <27.139154, 42.787308, 40.915661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.945475, 42.645813, 40.907482>,  <26.622675, 42.409988, 40.893852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945475, 42.645813, 40.907482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354665, -0.437718, -0.826206,
		-0.472188, 0.678834, -0.562337,
		0.807001, 0.589566, 0.034073,
		27.187574, 42.822681, 40.917706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597033, 42.676224, 40.215260>,  <26.622675, 42.409988, 40.893852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597033, 42.676224, 40.215260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.959093, 42.714035, 40.381039>,  <27.176329, 42.736721, 40.480507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.959093, 42.714035, 40.381039>,  <26.597033, 42.676224, 40.215260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959093, 42.714035, 40.381039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408137, -0.465866, -0.785107,
		0.118864, 0.879792, -0.460258,
		0.905150, 0.094527, 0.414450,
		27.230639, 42.742393, 40.505375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046717, 42.914497, 39.670612>,  <26.597033, 42.676224, 40.215260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046717, 42.914497, 39.670612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.265795, 42.744633, 39.958973>,  <27.397242, 42.642715, 40.131989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.265795, 42.744633, 39.958973>,  <27.046717, 42.914497, 39.670612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265795, 42.744633, 39.958973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562756, -0.450622, -0.692997,
		0.619142, 0.785240, -0.007823,
		0.547695, -0.424661, 0.720898,
		27.430103, 42.617233, 40.175243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660439, 42.786095, 39.276249>,  <27.046717, 42.914497, 39.670612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660439, 42.786095, 39.276249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.701288, 42.549671, 39.596306>,  <27.725798, 42.407818, 39.788338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.701288, 42.549671, 39.596306>,  <27.660439, 42.786095, 39.276249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701288, 42.549671, 39.596306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436199, -0.696287, -0.570013,
		0.894037, 0.407232, 0.186710,
		0.102123, -0.591056, 0.800140,
		27.731926, 42.372353, 39.836349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179962, 43.015503, 38.778942>,  <27.660439, 42.786095, 39.276249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179962, 43.015503, 38.778942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.116306, 43.104015, 38.394085>,  <28.078114, 43.157124, 38.163170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.116306, 43.104015, 38.394085>,  <28.179962, 43.015503, 38.778942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116306, 43.104015, 38.394085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329041, 0.906950, 0.263009,
		0.930809, 0.358438, -0.071523,
		-0.159141, 0.221278, -0.962138,
		28.068563, 43.170399, 38.105442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671259, 43.615356, 38.630394>,  <28.179962, 43.015503, 38.778942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671259, 43.615356, 38.630394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.360767, 43.611111, 38.378250>,  <28.174473, 43.608562, 38.226963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.360767, 43.611111, 38.378250>,  <28.671259, 43.615356, 38.630394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360767, 43.611111, 38.378250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146777, 0.975427, 0.164316,
		0.613127, 0.220069, -0.758713,
		-0.776229, -0.010615, -0.630361,
		28.127899, 43.607925, 38.189140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747356, 44.129978, 38.145283>,  <28.671259, 43.615356, 38.630394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747356, 44.129978, 38.145283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.359818, 44.034767, 38.172638>,  <28.127295, 43.977642, 38.189049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.359818, 44.034767, 38.172638>,  <28.747356, 44.129978, 38.145283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359818, 44.034767, 38.172638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202094, 0.919478, 0.337222,
		-0.143145, 0.312897, -0.938938,
		-0.968848, -0.238026, 0.068384,
		28.069162, 43.963360, 38.193153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379066, 44.732265, 37.957649>,  <28.747356, 44.129978, 38.145283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379066, 44.732265, 37.957649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.095995, 44.499035, 38.117256>,  <27.926153, 44.359097, 38.213020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.095995, 44.499035, 38.117256>,  <28.379066, 44.732265, 37.957649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095995, 44.499035, 38.117256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406710, 0.797981, 0.444762,
		-0.577736, 0.152465, -0.801857,
		-0.707678, -0.583079, 0.399014,
		27.883692, 44.324112, 38.236961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688711, 45.042782, 37.800861>,  <28.379066, 44.732265, 37.957649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688711, 45.042782, 37.800861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.647318, 44.797718, 38.114277>,  <27.622482, 44.650681, 38.302326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.647318, 44.797718, 38.114277>,  <27.688711, 45.042782, 37.800861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647318, 44.797718, 38.114277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368113, 0.755425, 0.542058,
		-0.924004, -0.232338, -0.303702,
		-0.103483, -0.612660, 0.783542,
		27.616274, 44.613918, 38.349339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066008, 45.285366, 38.119152>,  <27.688711, 45.042782, 37.800861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066008, 45.285366, 38.119152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.233631, 45.071590, 38.412754>,  <27.334206, 44.943325, 38.588917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.233631, 45.071590, 38.412754>,  <27.066008, 45.285366, 38.119152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233631, 45.071590, 38.412754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336584, 0.659372, 0.672265,
		-0.843268, -0.528772, 0.096431,
		0.419058, -0.534442, 0.734004,
		27.359348, 44.911259, 38.632954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476900, 45.343727, 38.677830>,  <27.066008, 45.285366, 38.119152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476900, 45.343727, 38.677830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.824020, 45.239983, 38.847370>,  <27.032293, 45.177734, 38.949097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.824020, 45.239983, 38.847370>,  <26.476900, 45.343727, 38.677830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824020, 45.239983, 38.847370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151592, 0.674137, 0.722883,
		-0.473224, -0.691571, 0.545699,
		0.867801, -0.259362, 0.423855,
		27.084360, 45.162174, 38.974525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321049, 45.161808, 39.403141>,  <26.476900, 45.343727, 38.677830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321049, 45.161808, 39.403141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.704563, 45.274178, 39.386135>,  <26.934671, 45.341599, 39.375931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.704563, 45.274178, 39.386135>,  <26.321049, 45.161808, 39.403141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704563, 45.274178, 39.386135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139404, 0.595514, 0.791157,
		0.247572, -0.752626, 0.610133,
		0.958788, 0.280924, -0.042513,
		26.992199, 45.358456, 39.373383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625099, 44.973061, 40.075851>,  <26.321049, 45.161808, 39.403141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625099, 44.973061, 40.075851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.758266, 45.282780, 39.860580>,  <26.838167, 45.468609, 39.731419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.758266, 45.282780, 39.860580>,  <26.625099, 44.973061, 40.075851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758266, 45.282780, 39.860580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285351, 0.626700, 0.725136,
		0.898744, -0.087841, 0.429584,
		0.332917, 0.774294, -0.538177,
		26.858141, 45.515068, 39.699127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.899696, 33.068390, 34.774090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055923, 33.436619, 34.773373>,  <36.149658, 33.657555, 34.772942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055923, 33.436619, 34.773373>,  <35.899696, 33.068390, 34.774090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055923, 33.436619, 34.773373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788418, 0.335507, 0.515590,
		0.475241, -0.199956, 0.856834,
		0.390569, 0.920572, -0.001797,
		36.173096, 33.712791, 34.772835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708092, 33.306953, 35.419388>,  <35.899696, 33.068390, 34.774090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708092, 33.306953, 35.419388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761009, 33.630291, 35.189926>,  <35.792759, 33.824295, 35.052250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761009, 33.630291, 35.189926>,  <35.708092, 33.306953, 35.419388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761009, 33.630291, 35.189926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801396, 0.427810, 0.418023,
		0.583321, 0.404419, 0.704402,
		0.132294, 0.808346, -0.573651,
		35.800697, 33.872795, 35.017830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579693, 33.881100, 35.854534>,  <35.708092, 33.306953, 35.419388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579693, 33.881100, 35.854534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566406, 34.044659, 35.489742>,  <35.558434, 34.142796, 35.270866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566406, 34.044659, 35.489742>,  <35.579693, 33.881100, 35.854534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566406, 34.044659, 35.489742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813592, 0.518913, 0.262293,
		0.580487, 0.750688, 0.315440,
		-0.033214, 0.408897, -0.911976,
		35.556442, 34.167328, 35.216148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601063, 34.566704, 35.992386>,  <35.579693, 33.881100, 35.854534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601063, 34.566704, 35.992386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448174, 34.532158, 35.624374>,  <35.356441, 34.511429, 35.403568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448174, 34.532158, 35.624374>,  <35.601063, 34.566704, 35.992386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448174, 34.532158, 35.624374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750864, 0.609352, 0.254742,
		0.538618, 0.788182, -0.297758,
		-0.382223, -0.086367, -0.920025,
		35.333508, 34.506248, 35.348366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562565, 35.269276, 35.788685>,  <35.601063, 34.566704, 35.992386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562565, 35.269276, 35.788685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318459, 35.064938, 35.546490>,  <35.171993, 34.942333, 35.401173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318459, 35.064938, 35.546490>,  <35.562565, 35.269276, 35.788685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318459, 35.064938, 35.546490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706953, 0.696082, 0.125252,
		0.357484, 0.504488, -0.785937,
		-0.610265, -0.510845, -0.605487,
		35.135380, 34.911686, 35.364845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332542, 35.793018, 35.394341>,  <35.562565, 35.269276, 35.788685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332542, 35.793018, 35.394341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061867, 35.508316, 35.318985>,  <34.899460, 35.337494, 35.273769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061867, 35.508316, 35.318985>,  <35.332542, 35.793018, 35.394341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061867, 35.508316, 35.318985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718232, 0.694427, -0.043735,
		0.161954, 0.105714, -0.981119,
		-0.676693, -0.711755, -0.188393,
		34.858860, 35.294788, 35.262466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036137, 35.947174, 34.699520>,  <35.332542, 35.793018, 35.394341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036137, 35.947174, 34.699520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789757, 35.743443, 34.939915>,  <34.641930, 35.621204, 35.084152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789757, 35.743443, 34.939915>,  <35.036137, 35.947174, 34.699520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789757, 35.743443, 34.939915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749719, 0.613263, -0.248656,
		-0.241914, -0.603731, -0.759596,
		-0.615954, -0.509330, 0.600986,
		34.604969, 35.590645, 35.120209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293278, 36.092880, 34.448471>,  <35.036137, 35.947174, 34.699520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293278, 36.092880, 34.448471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221165, 35.927994, 34.805698>,  <34.177895, 35.829063, 35.020035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221165, 35.927994, 34.805698>,  <34.293278, 36.092880, 34.448471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221165, 35.927994, 34.805698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845189, 0.529359, 0.073716,
		-0.503142, -0.741524, -0.443836,
		-0.180286, -0.412215, 0.893071,
		34.167080, 35.804329, 35.073620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603874, 35.812351, 34.477810>,  <34.293278, 36.092880, 34.448471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603874, 35.812351, 34.477810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725620, 35.906609, 34.846989>,  <33.798668, 35.963161, 35.068497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725620, 35.906609, 34.846989>,  <33.603874, 35.812351, 34.477810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725620, 35.906609, 34.846989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839273, 0.524615, 0.142828,
		-0.450538, -0.818079, 0.357439,
		0.304362, 0.235639, 0.922951,
		33.816929, 35.977299, 35.123875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081348, 35.971054, 34.609341>,  <33.603874, 35.812351, 34.477810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081348, 35.971054, 34.609341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290489, 36.119179, 34.916454>,  <33.415974, 36.208054, 35.100723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290489, 36.119179, 34.916454>,  <33.081348, 35.971054, 34.609341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290489, 36.119179, 34.916454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722105, 0.671052, 0.168089,
		-0.452979, -0.642308, 0.618264,
		0.522852, 0.370311, 0.767786,
		33.447346, 36.230270, 35.146790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586868, 36.038593, 35.114307>,  <33.081348, 35.971054, 34.609341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586868, 36.038593, 35.114307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903973, 36.270741, 35.188828>,  <33.094234, 36.410030, 35.233540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903973, 36.270741, 35.188828>,  <32.586868, 36.038593, 35.114307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903973, 36.270741, 35.188828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605777, 0.784063, 0.135203,
		-0.067603, -0.220039, 0.973146,
		0.792758, 0.580369, 0.186300,
		33.141800, 36.444851, 35.244717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460491, 36.350464, 35.678543>,  <32.586868, 36.038593, 35.114307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460491, 36.350464, 35.678543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754208, 36.583546, 35.539249>,  <32.930439, 36.723396, 35.455673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754208, 36.583546, 35.539249>,  <32.460491, 36.350464, 35.678543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754208, 36.583546, 35.539249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571387, 0.807518, 0.146398,
		0.366510, 0.091476, 0.925906,
		0.734294, 0.582707, -0.348231,
		32.974495, 36.758358, 35.434780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823357, 36.186729, 36.403740>,  <32.460491, 36.350464, 35.678543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823357, 36.186729, 36.403740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617466, 36.072887, 36.727234>,  <32.493931, 36.004581, 36.921329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617466, 36.072887, 36.727234>,  <32.823357, 36.186729, 36.403740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617466, 36.072887, 36.727234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235107, -0.953989, -0.186090,
		0.824489, 0.094354, 0.557957,
		-0.514727, -0.284608, 0.808736,
		32.463047, 35.987503, 36.969856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214291, 35.587025, 36.682560>,  <32.823357, 36.186729, 36.403740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214291, 35.587025, 36.682560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837597, 35.535057, 36.806660>,  <32.611580, 35.503876, 36.881119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837597, 35.535057, 36.806660>,  <33.214291, 35.587025, 36.682560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837597, 35.535057, 36.806660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071963, -0.978860, -0.191452,
		0.328566, -0.157971, 0.931176,
		-0.941736, -0.129914, 0.310252,
		32.555077, 35.496082, 36.899734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192089, 34.957397, 37.213894>,  <33.214291, 35.587025, 36.682560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192089, 34.957397, 37.213894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823681, 35.030281, 37.076191>,  <32.602634, 35.074009, 36.993568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823681, 35.030281, 37.076191>,  <33.192089, 34.957397, 37.213894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823681, 35.030281, 37.076191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166101, -0.983177, -0.075982,
		-0.352312, -0.012800, 0.935795,
		-0.921025, 0.182206, -0.344259,
		32.547375, 35.084942, 36.972912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836136, 34.409115, 37.476021>,  <33.192089, 34.957397, 37.213894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836136, 34.409115, 37.476021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576603, 34.569214, 37.217155>,  <32.420883, 34.665276, 37.061836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576603, 34.569214, 37.217155>,  <32.836136, 34.409115, 37.476021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576603, 34.569214, 37.217155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390099, -0.905182, -0.168726,
		-0.653332, 0.142983, 0.743447,
		-0.648829, 0.400252, -0.647162,
		32.381954, 34.689289, 37.023006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228283, 34.077885, 37.632957>,  <32.836136, 34.409115, 37.476021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228283, 34.077885, 37.632957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196056, 34.222248, 37.261311>,  <32.176720, 34.308865, 37.038322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196056, 34.222248, 37.261311>,  <32.228283, 34.077885, 37.632957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196056, 34.222248, 37.261311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499090, -0.821482, -0.275819,
		-0.862797, 0.441489, 0.246312,
		-0.080570, 0.360907, -0.929115,
		32.171886, 34.330521, 36.982574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434633, 34.080070, 37.365089>,  <32.228283, 34.077885, 37.632957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434633, 34.080070, 37.365089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724873, 34.049744, 37.091518>,  <31.899015, 34.031548, 36.927376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724873, 34.049744, 37.091518>,  <31.434633, 34.080070, 37.365089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724873, 34.049744, 37.091518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389388, -0.864712, -0.317254,
		-0.567349, 0.496513, -0.656955,
		0.725597, -0.075817, -0.683930,
		31.942553, 34.027000, 36.886341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152882, 33.682682, 36.893745>,  <31.434633, 34.080070, 37.365089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152882, 33.682682, 36.893745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531712, 33.683178, 36.765343>,  <31.759010, 33.683475, 36.688301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531712, 33.683178, 36.765343>,  <31.152882, 33.682682, 36.893745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531712, 33.683178, 36.765343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112196, -0.935642, -0.334643,
		-0.300760, 0.352948, -0.885986,
		0.947077, 0.001243, -0.321003,
		31.815834, 33.683552, 36.669041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152132, 33.416611, 36.149246>,  <31.152882, 33.682682, 36.893745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152132, 33.416611, 36.149246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507120, 33.359932, 36.324661>,  <31.720114, 33.325924, 36.429913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507120, 33.359932, 36.324661>,  <31.152132, 33.416611, 36.149246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507120, 33.359932, 36.324661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013917, -0.942885, -0.332826,
		0.460655, 0.301476, -0.834811,
		0.887470, -0.141700, 0.438541,
		31.773361, 33.317421, 36.456223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507498, 32.968269, 35.762646>,  <31.152132, 33.416611, 36.149246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507498, 32.968269, 35.762646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729784, 32.949108, 36.094643>,  <31.863155, 32.937611, 36.293842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729784, 32.949108, 36.094643>,  <31.507498, 32.968269, 35.762646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729784, 32.949108, 36.094643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129486, -0.981168, -0.143327,
		0.821228, 0.187122, -0.539046,
		0.555714, -0.047905, 0.829992,
		31.896498, 32.934738, 36.343639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948315, 32.447521, 35.588577>,  <31.507498, 32.968269, 35.762646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948315, 32.447521, 35.588577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013359, 32.468956, 35.982670>,  <32.052387, 32.481815, 36.219128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013359, 32.468956, 35.982670>,  <31.948315, 32.447521, 35.588577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013359, 32.468956, 35.982670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029807, -0.997802, 0.059189,
		0.986240, -0.038992, -0.160658,
		0.162613, 0.053586, 0.985234,
		32.062141, 32.485031, 36.278240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539387, 32.074135, 35.699505>,  <31.948315, 32.447521, 35.588577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539387, 32.074135, 35.699505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330654, 32.067963, 36.040668>,  <32.205414, 32.064259, 36.245365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330654, 32.067963, 36.040668>,  <32.539387, 32.074135, 35.699505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330654, 32.067963, 36.040668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018783, -0.999386, -0.029575,
		0.852840, -0.031453, 0.521224,
		-0.521835, -0.015433, 0.852907,
		32.174103, 32.063332, 36.296539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866264, 31.574663, 36.075733>,  <32.539387, 32.074135, 35.699505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866264, 31.574663, 36.075733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503487, 31.609104, 36.240673>,  <32.285820, 31.629768, 36.339638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503487, 31.609104, 36.240673>,  <32.866264, 31.574663, 36.075733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503487, 31.609104, 36.240673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127455, -0.989095, -0.073803,
		0.401502, -0.119491, 0.908030,
		-0.906946, 0.086101, 0.412353,
		32.231403, 31.634935, 36.364380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336403, 31.565908, 36.827438>,  <32.866264, 31.574663, 36.075733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336403, 31.565908, 36.827438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967396, 31.601444, 36.977676>,  <32.745991, 31.622766, 37.067822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967396, 31.601444, 36.977676>,  <33.336403, 31.565908, 36.827438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967396, 31.601444, 36.977676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101994, -0.994668, -0.015240,
		0.372243, -0.052368, 0.926657,
		-0.922514, 0.088840, 0.375600,
		32.690643, 31.628096, 37.090355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285709, 31.314026, 37.555771>,  <33.336403, 31.565908, 36.827438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285709, 31.314026, 37.555771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007233, 31.266882, 37.272526>,  <32.840145, 31.238596, 37.102577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007233, 31.266882, 37.272526>,  <33.285709, 31.314026, 37.555771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007233, 31.266882, 37.272526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015845, -0.988712, 0.148988,
		-0.717680, 0.092504, 0.690201,
		-0.696192, -0.117861, -0.708114,
		32.798374, 31.231524, 37.060093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771816, 30.936611, 37.867275>,  <33.285709, 31.314026, 37.555771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771816, 30.936611, 37.867275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811848, 30.892321, 37.471756>,  <32.835869, 30.865747, 37.234444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811848, 30.892321, 37.471756>,  <32.771816, 30.936611, 37.867275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811848, 30.892321, 37.471756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152530, -0.980334, 0.125216,
		-0.983218, -0.163353, -0.081225,
		0.100082, -0.110725, -0.988799,
		32.841873, 30.859102, 37.175117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187542, 30.394604, 37.655739>,  <32.771816, 30.936611, 37.867275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187542, 30.394604, 37.655739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557060, 30.367325, 37.806442>,  <33.778770, 30.350958, 37.896866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557060, 30.367325, 37.806442>,  <33.187542, 30.394604, 37.655739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557060, 30.367325, 37.806442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327213, 0.370362, 0.869347,
		-0.198826, -0.926381, 0.319823,
		0.923796, -0.068199, 0.376762,
		33.834198, 30.346865, 37.919472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126492, 29.997658, 38.309074>,  <33.187542, 30.394604, 37.655739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126492, 29.997658, 38.309074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460011, 30.218374, 38.302040>,  <33.660122, 30.350803, 38.297817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460011, 30.218374, 38.302040>,  <33.126492, 29.997658, 38.309074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460011, 30.218374, 38.302040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273086, 0.439921, 0.855508,
		0.479803, -0.708514, 0.517491,
		0.833794, 0.551795, -0.017591,
		33.710148, 30.383911, 38.296764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240135, 30.118038, 38.958294>,  <33.126492, 29.997658, 38.309074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240135, 30.118038, 38.958294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520435, 30.382053, 38.849998>,  <33.688614, 30.540462, 38.785023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520435, 30.382053, 38.849998>,  <33.240135, 30.118038, 38.958294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520435, 30.382053, 38.849998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243943, 0.578314, 0.778488,
		0.670405, -0.479480, 0.566265,
		0.700749, 0.660039, -0.270739,
		33.730659, 30.580065, 38.768776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661789, 30.301115, 39.553875>,  <33.240135, 30.118038, 38.958294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661789, 30.301115, 39.553875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667091, 30.600178, 39.288296>,  <33.670273, 30.779615, 39.128948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667091, 30.600178, 39.288296>,  <33.661789, 30.301115, 39.553875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667091, 30.600178, 39.288296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342927, 0.627139, 0.699355,
		0.939268, 0.218417, 0.264706,
		0.013256, 0.747657, -0.663953,
		33.671070, 30.824474, 39.089111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158264, 30.798868, 39.768467>,  <33.661789, 30.301115, 39.553875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158264, 30.798868, 39.768467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900280, 31.018702, 39.556057>,  <33.745491, 31.150602, 39.428612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900280, 31.018702, 39.556057>,  <34.158264, 30.798868, 39.768467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900280, 31.018702, 39.556057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080047, 0.642453, 0.762133,
		0.760013, 0.534051, -0.370363,
		-0.644959, 0.549585, -0.531022,
		33.706791, 31.183577, 39.396751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446819, 31.460962, 39.921825>,  <34.158264, 30.798868, 39.768467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446819, 31.460962, 39.921825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067497, 31.489956, 39.798233>,  <33.839905, 31.507353, 39.724079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067497, 31.489956, 39.798233>,  <34.446819, 31.460962, 39.921825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067497, 31.489956, 39.798233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164204, 0.721070, 0.673124,
		0.271588, 0.689060, -0.671890,
		-0.948302, 0.072486, -0.308980,
		33.783005, 31.511702, 39.705540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371490, 32.109177, 39.954533>,  <34.446819, 31.460962, 39.921825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371490, 32.109177, 39.954533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991600, 31.986731, 39.928284>,  <33.763664, 31.913261, 39.912537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991600, 31.986731, 39.928284>,  <34.371490, 32.109177, 39.954533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991600, 31.986731, 39.928284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303646, 0.849622, 0.431209,
		-0.076251, 0.429456, -0.899863,
		-0.949729, -0.306120, -0.065618,
		33.706680, 31.894894, 39.908600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969646, 32.658932, 39.768204>,  <34.371490, 32.109177, 39.954533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969646, 32.658932, 39.768204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681648, 32.416073, 39.902649>,  <33.508850, 32.270359, 39.983318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681648, 32.416073, 39.902649>,  <33.969646, 32.658932, 39.768204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681648, 32.416073, 39.902649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425310, 0.768766, 0.477610,
		-0.548376, 0.200923, -0.811735,
		-0.719997, -0.607148, 0.336118,
		33.465649, 32.233929, 40.003483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405750, 33.068439, 39.731773>,  <33.969646, 32.658932, 39.768204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405750, 33.068439, 39.731773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291553, 32.763031, 39.963470>,  <33.223034, 32.579784, 40.102489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291553, 32.763031, 39.963470>,  <33.405750, 33.068439, 39.731773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291553, 32.763031, 39.963470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546753, 0.626151, 0.555874,
		-0.787118, -0.158007, -0.596220,
		-0.285492, -0.763524, 0.579246,
		33.205906, 32.533974, 40.137245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718590, 33.180237, 39.817642>,  <33.405750, 33.068439, 39.731773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718590, 33.180237, 39.817642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863796, 32.965740, 40.122448>,  <32.950920, 32.837040, 40.305332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863796, 32.965740, 40.122448>,  <32.718590, 33.180237, 39.817642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863796, 32.965740, 40.122448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309975, 0.701719, 0.641487,
		-0.878711, -0.469076, 0.088516,
		0.363020, -0.536244, 0.762010,
		32.972702, 32.804867, 40.351051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154381, 32.999004, 40.218231>,  <32.718590, 33.180237, 39.817642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154381, 32.999004, 40.218231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479652, 32.968079, 40.448975>,  <32.674816, 32.949524, 40.587421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479652, 32.968079, 40.448975>,  <32.154381, 32.999004, 40.218231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479652, 32.968079, 40.448975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396084, 0.652709, 0.645824,
		-0.426454, -0.753653, 0.500144,
		0.813175, -0.077315, 0.576861,
		32.723606, 32.944885, 40.622032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921616, 32.987988, 40.874950>,  <32.154381, 32.999004, 40.218231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921616, 32.987988, 40.874950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304523, 33.100887, 40.900154>,  <32.534267, 33.168625, 40.915276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304523, 33.100887, 40.900154>,  <31.921616, 32.987988, 40.874950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304523, 33.100887, 40.900154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266056, 0.774140, 0.574388,
		0.113344, -0.566608, 0.816155,
		0.957271, 0.282247, 0.063005,
		32.591705, 33.185562, 40.919056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023445, 33.154366, 41.657581>,  <31.921616, 32.987988, 40.874950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023445, 33.154366, 41.657581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307667, 33.351974, 41.457157>,  <32.478199, 33.470539, 41.336903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307667, 33.351974, 41.457157>,  <32.023445, 33.154366, 41.657581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307667, 33.351974, 41.457157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121071, 0.787305, 0.604560,
		0.693148, -0.368910, 0.619235,
		0.710555, 0.494021, -0.501054,
		32.520832, 33.500179, 41.306839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506718, 33.516220, 42.123173>,  <32.023445, 33.154366, 41.657581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506718, 33.516220, 42.123173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548374, 33.714867, 41.778492>,  <32.573368, 33.834053, 41.571682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548374, 33.714867, 41.778492>,  <32.506718, 33.516220, 42.123173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548374, 33.714867, 41.778492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011672, 0.866964, 0.498234,
		0.994494, -0.041829, 0.096084,
		0.104142, 0.496613, -0.861702,
		32.579617, 33.863850, 41.519981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065273, 33.991653, 42.256641>,  <32.506718, 33.516220, 42.123173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065273, 33.991653, 42.256641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851444, 34.123489, 41.945358>,  <32.723148, 34.202591, 41.758587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851444, 34.123489, 41.945358>,  <33.065273, 33.991653, 42.256641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851444, 34.123489, 41.945358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059175, 0.903963, 0.423496,
		0.843050, 0.272439, -0.463728,
		-0.534570, 0.329587, -0.778208,
		32.691074, 34.222366, 41.711895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274368, 34.672558, 42.231617>,  <33.065273, 33.991653, 42.256641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274368, 34.672558, 42.231617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964329, 34.666870, 41.978947>,  <32.778305, 34.663456, 41.827343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964329, 34.666870, 41.978947>,  <33.274368, 34.672558, 42.231617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964329, 34.666870, 41.978947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189393, 0.959006, 0.210803,
		0.602786, 0.283029, -0.746018,
		-0.775099, -0.014222, -0.631680,
		32.731800, 34.662605, 41.789444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335903, 35.288494, 41.867332>,  <33.274368, 34.672558, 42.231617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335903, 35.288494, 41.867332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951149, 35.186699, 41.827309>,  <32.720295, 35.125622, 41.803295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951149, 35.186699, 41.827309>,  <33.335903, 35.288494, 41.867332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951149, 35.186699, 41.827309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273332, 0.883946, 0.379379,
		-0.008096, 0.392269, -0.919815,
		-0.961886, -0.254486, -0.100063,
		32.662582, 35.110352, 41.797291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115578, 35.830578, 41.535244>,  <33.335903, 35.288494, 41.867332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115578, 35.830578, 41.535244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792641, 35.669342, 41.707626>,  <32.598881, 35.572601, 41.811054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792641, 35.669342, 41.707626>,  <33.115578, 35.830578, 41.535244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792641, 35.669342, 41.707626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293826, 0.907956, 0.298802,
		-0.511734, 0.114608, -0.851465,
		-0.807338, -0.403090, 0.430957,
		32.550438, 35.548416, 41.836914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645988, 36.294174, 41.372952>,  <33.115578, 35.830578, 41.535244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645988, 36.294174, 41.372952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461723, 36.071487, 41.649460>,  <32.351166, 35.937874, 41.815365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461723, 36.071487, 41.649460>,  <32.645988, 36.294174, 41.372952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461723, 36.071487, 41.649460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496729, 0.807147, 0.319021,
		-0.735563, -0.196415, -0.648359,
		-0.460660, -0.556718, 0.691272,
		32.323524, 35.904472, 41.856842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877186, 36.366810, 41.260868>,  <32.645988, 36.294174, 41.372952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877186, 36.366810, 41.260868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927767, 36.261520, 41.643433>,  <31.958115, 36.198345, 41.872971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927767, 36.261520, 41.643433>,  <31.877186, 36.366810, 41.260868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927767, 36.261520, 41.643433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498489, 0.816707, 0.290685,
		-0.857624, -0.513517, -0.027944,
		0.126450, -0.263228, 0.956411,
		31.965702, 36.182552, 41.930355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308527, 36.635883, 41.590363>,  <31.877186, 36.366810, 41.260868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308527, 36.635883, 41.590363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549412, 36.570110, 41.902851>,  <31.693943, 36.530647, 42.090343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549412, 36.570110, 41.902851>,  <31.308527, 36.635883, 41.590363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549412, 36.570110, 41.902851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226194, 0.903317, 0.364493,
		-0.765621, -0.396209, 0.506796,
		0.602212, -0.164429, 0.781219,
		31.730076, 36.520782, 42.137218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902332, 36.735519, 42.231411>,  <31.308527, 36.635883, 41.590363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902332, 36.735519, 42.231411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284801, 36.819279, 42.313278>,  <31.514282, 36.869534, 42.362400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284801, 36.819279, 42.313278>,  <30.902332, 36.735519, 42.231411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284801, 36.819279, 42.313278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287235, 0.806499, 0.516774,
		-0.056857, -0.552914, 0.831297,
		0.956171, 0.209395, 0.204671,
		31.571653, 36.882099, 42.374680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991249, 37.030338, 43.012989>,  <30.902332, 36.735519, 42.231411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991249, 37.030338, 43.012989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312069, 37.133068, 42.797302>,  <31.504560, 37.194706, 42.667889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312069, 37.133068, 42.797302>,  <30.991249, 37.030338, 43.012989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312069, 37.133068, 42.797302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031024, 0.919520, 0.391817,
		0.596450, -0.297529, 0.745469,
		0.802051, 0.256827, -0.539217,
		31.552685, 37.210117, 42.635536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455605, 37.430439, 43.475990>,  <30.991249, 37.030338, 43.012989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455605, 37.430439, 43.475990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602921, 37.553150, 43.124935>,  <31.691311, 37.626778, 42.914303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602921, 37.553150, 43.124935>,  <31.455605, 37.430439, 43.475990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602921, 37.553150, 43.124935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093178, 0.951417, 0.293469,
		0.925029, -0.026305, 0.378984,
		0.368291, 0.306780, -0.877638,
		31.713408, 37.645184, 42.861645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967937, 37.938217, 43.614544>,  <31.455605, 37.430439, 43.475990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967937, 37.938217, 43.614544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900003, 38.006203, 43.226261>,  <31.859243, 38.046993, 42.993294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900003, 38.006203, 43.226261>,  <31.967937, 37.938217, 43.614544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900003, 38.006203, 43.226261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063779, 0.981054, 0.182936,
		0.983407, 0.092980, -0.155776,
		-0.169834, 0.169965, -0.970705,
		31.849052, 38.057194, 42.935051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392262, 38.548653, 43.430931>,  <31.967937, 37.938217, 43.614544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392262, 38.548653, 43.430931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089176, 38.519558, 43.171520>,  <31.907326, 38.502102, 43.015873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089176, 38.519558, 43.171520>,  <32.392262, 38.548653, 43.430931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089176, 38.519558, 43.171520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286155, 0.930166, 0.230013,
		0.586505, 0.359862, -0.725611,
		-0.757712, -0.072734, -0.648523,
		31.861862, 38.497738, 42.976963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455067, 39.128815, 43.058464>,  <32.392262, 38.548653, 43.430931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455067, 39.128815, 43.058464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070705, 39.025620, 43.018246>,  <31.840090, 38.963703, 42.994114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070705, 39.025620, 43.018246>,  <32.455067, 39.128815, 43.058464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070705, 39.025620, 43.018246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276892, 0.895607, 0.348165,
		0.000230, 0.362394, -0.932026,
		-0.960901, -0.257991, -0.100550,
		31.782434, 38.948223, 42.988079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910881, 39.613827, 42.624744>,  <32.455067, 39.128815, 43.058464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910881, 39.613827, 42.624744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283195, 39.759907, 42.618279>,  <33.506584, 39.847553, 42.614399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283195, 39.759907, 42.618279>,  <32.910881, 39.613827, 42.624744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283195, 39.759907, 42.618279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359316, -0.922139, -0.143358,
		-0.067262, 0.127627, -0.989539,
		0.930789, 0.365200, -0.016167,
		33.562431, 39.869465, 42.613430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346664, 39.308022, 42.018143>,  <32.910881, 39.613827, 42.624744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346664, 39.308022, 42.018143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612202, 39.417179, 42.296665>,  <33.771523, 39.482674, 42.463779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612202, 39.417179, 42.296665>,  <33.346664, 39.308022, 42.018143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612202, 39.417179, 42.296665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368147, -0.929672, 0.013368,
		0.650983, 0.247468, -0.717621,
		0.663844, 0.272892, 0.696305,
		33.811356, 39.499046, 42.505558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005672, 39.218216, 41.605530>,  <33.346664, 39.308022, 42.018143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005672, 39.218216, 41.605530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108620, 39.225422, 41.991989>,  <34.170387, 39.229748, 42.223866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108620, 39.225422, 41.991989>,  <34.005672, 39.218216, 41.605530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108620, 39.225422, 41.991989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455476, -0.884053, -0.104844,
		0.852234, 0.467039, -0.235735,
		0.257369, 0.018019, 0.966145,
		34.185829, 39.230827, 42.281834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688057, 39.101570, 41.717876>,  <34.005672, 39.218216, 41.605530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688057, 39.101570, 41.717876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584007, 38.967422, 42.080063>,  <34.521580, 38.886936, 42.297375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584007, 38.967422, 42.080063>,  <34.688057, 39.101570, 41.717876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584007, 38.967422, 42.080063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488127, -0.854769, -0.176359,
		0.833108, 0.396107, 0.386044,
		-0.260121, -0.335364, 0.905465,
		34.505970, 38.866814, 42.351704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248875, 38.833309, 42.045906>,  <34.688057, 39.101570, 41.717876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248875, 38.833309, 42.045906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946976, 38.651226, 42.234859>,  <34.765839, 38.541977, 42.348232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946976, 38.651226, 42.234859>,  <35.248875, 38.833309, 42.045906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946976, 38.651226, 42.234859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473885, -0.876254, -0.087251,
		0.453643, 0.158002, 0.877065,
		-0.754746, -0.455209, 0.472381,
		34.720551, 38.514664, 42.376575>
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
