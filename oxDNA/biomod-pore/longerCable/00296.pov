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
	<24.774975, 34.846458, 35.024242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399549, 34.764820, 34.912930>,  <24.174294, 34.715836, 34.846142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399549, 34.764820, 34.912930>,  <24.774975, 34.846458, 35.024242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399549, 34.764820, 34.912930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303752, 0.871303, 0.385442,
		0.163798, 0.446291, -0.879769,
		-0.938565, -0.204097, -0.278280,
		24.117979, 34.703590, 34.829445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467438, 34.470005, 35.153336>,  <24.774975, 34.846458, 35.024242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467438, 34.470005, 35.153336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355295, 34.262245, 35.476231>,  <25.288010, 34.137589, 35.669968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355295, 34.262245, 35.476231>,  <25.467438, 34.470005, 35.153336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355295, 34.262245, 35.476231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245740, 0.774098, 0.583424,
		-0.927908, 0.361935, -0.089386,
		-0.280355, -0.519398, 0.807234,
		25.271189, 34.106426, 35.718399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391336, 33.788872, 34.803364>,  <25.467438, 34.470005, 35.153336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391336, 33.788872, 34.803364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701403, 33.542931, 34.861435>,  <25.887442, 33.395367, 34.896278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701403, 33.542931, 34.861435>,  <25.391336, 33.788872, 34.803364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701403, 33.542931, 34.861435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146003, 0.397931, 0.905723,
		-0.614658, -0.680887, 0.398232,
		0.775164, -0.614853, 0.145180,
		25.933952, 33.358475, 34.904987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367674, 33.476013, 35.454140>,  <25.391336, 33.788872, 34.803364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367674, 33.476013, 35.454140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753489, 33.443813, 35.353588>,  <25.984978, 33.424496, 35.293255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753489, 33.443813, 35.353588>,  <25.367674, 33.476013, 35.454140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753489, 33.443813, 35.353588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256950, 0.504294, 0.824418,
		0.060407, -0.859772, 0.507093,
		0.964535, -0.080497, -0.251381,
		26.042849, 33.419666, 35.278175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727320, 33.108891, 36.016026>,  <25.367674, 33.476013, 35.454140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727320, 33.108891, 36.016026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987892, 33.325619, 35.803585>,  <26.144236, 33.455654, 35.676121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987892, 33.325619, 35.803585>,  <25.727320, 33.108891, 36.016026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987892, 33.325619, 35.803585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257180, 0.500876, 0.826427,
		0.713790, -0.674949, 0.186941,
		0.651431, 0.541818, -0.531104,
		26.183321, 33.488163, 35.644253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375122, 33.203922, 36.340557>,  <25.727320, 33.108891, 36.016026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375122, 33.203922, 36.340557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367905, 33.530674, 36.109947>,  <26.363575, 33.726727, 35.971581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367905, 33.530674, 36.109947>,  <26.375122, 33.203922, 36.340557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367905, 33.530674, 36.109947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364704, 0.542270, 0.756924,
		0.930949, -0.196605, -0.307702,
		-0.018043, 0.816878, -0.576529,
		26.362492, 33.775738, 35.936989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039852, 33.488537, 36.245892>,  <26.375122, 33.203922, 36.340557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039852, 33.488537, 36.245892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750193, 33.764370, 36.249439>,  <26.576397, 33.929871, 36.251568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750193, 33.764370, 36.249439>,  <27.039852, 33.488537, 36.245892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750193, 33.764370, 36.249439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435634, 0.447417, 0.781051,
		0.534632, 0.569463, -0.624404,
		-0.724149, 0.689587, 0.008873,
		26.532948, 33.971245, 36.252102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294296, 34.238010, 36.215279>,  <27.039852, 33.488537, 36.245892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294296, 34.238010, 36.215279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951172, 34.192070, 36.415665>,  <26.745296, 34.164505, 36.535896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951172, 34.192070, 36.415665>,  <27.294296, 34.238010, 36.215279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951172, 34.192070, 36.415665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330787, 0.622643, 0.709151,
		-0.393371, 0.774031, -0.496119,
		-0.857811, -0.114849, 0.500970,
		26.693829, 34.157616, 36.565956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075306, 34.866913, 36.454491>,  <27.294296, 34.238010, 36.215279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075306, 34.866913, 36.454491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934761, 34.587288, 36.703606>,  <26.850433, 34.419514, 36.853073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934761, 34.587288, 36.703606>,  <27.075306, 34.866913, 36.454491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934761, 34.587288, 36.703606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294784, 0.548760, 0.782282,
		-0.888620, 0.458452, 0.013257,
		-0.351364, -0.699059, 0.622783,
		26.829351, 34.377571, 36.890442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670261, 35.230663, 37.002544>,  <27.075306, 34.866913, 36.454491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670261, 35.230663, 37.002544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760990, 34.874416, 37.160202>,  <26.815428, 34.660667, 37.254795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760990, 34.874416, 37.160202>,  <26.670261, 35.230663, 37.002544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760990, 34.874416, 37.160202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179097, 0.435933, 0.881979,
		-0.957328, -0.129460, 0.258386,
		0.226820, -0.890619, 0.394145,
		26.829037, 34.607231, 37.278446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209871, 35.112648, 37.534222>,  <26.670261, 35.230663, 37.002544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209871, 35.112648, 37.534222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566769, 34.939407, 37.585335>,  <26.780907, 34.835464, 37.616005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566769, 34.939407, 37.585335>,  <26.209871, 35.112648, 37.534222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566769, 34.939407, 37.585335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219633, 0.663500, 0.715213,
		-0.394543, -0.610077, 0.687125,
		0.892242, -0.433098, 0.127786,
		26.834442, 34.809479, 37.623672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374081, 35.158142, 38.227646>,  <26.209871, 35.112648, 37.534222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374081, 35.158142, 38.227646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733574, 35.072048, 38.074833>,  <26.949270, 35.020393, 37.983147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733574, 35.072048, 38.074833>,  <26.374081, 35.158142, 38.227646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733574, 35.072048, 38.074833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434891, 0.548934, 0.713822,
		0.056072, -0.807679, 0.586950,
		0.898736, -0.215234, -0.382033,
		27.003195, 35.007477, 37.960224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026798, 34.769600, 38.658180>,  <26.374081, 35.158142, 38.227646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026798, 34.769600, 38.658180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172493, 35.029682, 38.391476>,  <27.259909, 35.185730, 38.231453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172493, 35.029682, 38.391476>,  <27.026798, 34.769600, 38.658180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172493, 35.029682, 38.391476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582065, 0.399946, 0.707986,
		0.727003, -0.645969, -0.232788,
		0.364234, 0.650205, -0.666758,
		27.281763, 35.224743, 38.191448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701744, 34.610222, 38.617226>,  <27.026798, 34.769600, 38.658180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701744, 34.610222, 38.617226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588125, 34.985252, 38.536964>,  <27.519953, 35.210270, 38.488808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588125, 34.985252, 38.536964>,  <27.701744, 34.610222, 38.617226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588125, 34.985252, 38.536964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551740, 0.330984, 0.765528,
		0.784155, 0.106740, -0.611316,
		-0.284048, 0.937580, -0.200650,
		27.502911, 35.266525, 38.476768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096327, 34.865894, 38.036270>,  <27.701744, 34.610222, 38.617226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096327, 34.865894, 38.036270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704781, 34.798344, 38.082401>,  <27.469852, 34.757812, 38.110081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704781, 34.798344, 38.082401>,  <28.096327, 34.865894, 38.036270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704781, 34.798344, 38.082401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004103, -0.547607, -0.836725,
		0.204460, -0.819515, 0.535341,
		-0.978866, -0.168880, 0.115326,
		27.411121, 34.747681, 38.117001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902779, 34.136005, 38.018143>,  <28.096327, 34.865894, 38.036270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902779, 34.136005, 38.018143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587759, 34.342915, 37.884163>,  <27.398746, 34.467060, 37.803776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587759, 34.342915, 37.884163>,  <27.902779, 34.136005, 38.018143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587759, 34.342915, 37.884163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009708, -0.553877, -0.832542,
		-0.616176, -0.652415, 0.441227,
		-0.787548, 0.517276, -0.334952,
		27.351494, 34.498096, 37.783676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488720, 33.611526, 37.837147>,  <27.902779, 34.136005, 38.018143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488720, 33.611526, 37.837147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342010, 33.921124, 37.630688>,  <27.253984, 34.106884, 37.506813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342010, 33.921124, 37.630688>,  <27.488720, 33.611526, 37.837147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342010, 33.921124, 37.630688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294118, -0.622829, -0.724968,
		-0.882593, -0.114092, 0.456083,
		-0.366775, 0.773994, -0.516148,
		27.231977, 34.153320, 37.475842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884861, 33.355778, 37.677937>,  <27.488720, 33.611526, 37.837147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884861, 33.355778, 37.677937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859901, 33.735741, 37.555435>,  <26.844925, 33.963718, 37.481934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859901, 33.735741, 37.555435>,  <26.884861, 33.355778, 37.677937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859901, 33.735741, 37.555435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476323, -0.297993, -0.827235,
		-0.877053, 0.094254, 0.471056,
		-0.062401, 0.949903, -0.306251,
		26.841181, 34.020710, 37.463558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174402, 33.546253, 37.578861>,  <26.884861, 33.355778, 37.677937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174402, 33.546253, 37.578861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369108, 33.811100, 37.350945>,  <26.485931, 33.970009, 37.214195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369108, 33.811100, 37.350945>,  <26.174402, 33.546253, 37.578861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369108, 33.811100, 37.350945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583938, -0.238483, -0.775978,
		-0.649675, 0.710439, 0.270553,
		0.486763, 0.662120, -0.569789,
		26.515137, 34.009735, 37.180008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603018, 33.987686, 37.150818>,  <26.174402, 33.546253, 37.578861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603018, 33.987686, 37.150818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953684, 34.023479, 36.961735>,  <26.164083, 34.044956, 36.848286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953684, 34.023479, 36.961735>,  <25.603018, 33.987686, 37.150818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953684, 34.023479, 36.961735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415804, -0.353308, -0.838022,
		-0.241997, 0.931218, -0.272527,
		0.876667, 0.089481, -0.472703,
		26.216684, 34.050323, 36.819923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627676, 34.313721, 36.497730>,  <25.603018, 33.987686, 37.150818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627676, 34.313721, 36.497730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939875, 34.068073, 36.450932>,  <26.127193, 33.920685, 36.422852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939875, 34.068073, 36.450932>,  <25.627676, 34.313721, 36.497730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939875, 34.068073, 36.450932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338228, -0.257415, -0.905174,
		0.525763, 0.746057, -0.408622,
		0.780497, -0.614114, -0.116998,
		26.174025, 33.883839, 36.415833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946686, 34.839710, 36.172832>,  <25.627676, 34.313721, 36.497730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946686, 34.839710, 36.172832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306175, 34.686317, 36.257912>,  <26.521870, 34.594280, 36.308960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306175, 34.686317, 36.257912>,  <25.946686, 34.839710, 36.172832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306175, 34.686317, 36.257912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011175, -0.504903, -0.863104,
		0.438375, 0.773314, -0.458053,
		0.898723, -0.383482, 0.212694,
		26.575792, 34.571274, 36.321720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521338, 34.945656, 35.645248>,  <25.946686, 34.839710, 36.172832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521338, 34.945656, 35.645248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623444, 34.596241, 35.811035>,  <26.684708, 34.386593, 35.910507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623444, 34.596241, 35.811035>,  <26.521338, 34.945656, 35.645248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623444, 34.596241, 35.811035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138649, -0.457307, -0.878434,
		0.956879, 0.166767, -0.237848,
		0.255263, -0.873533, 0.414465,
		26.700022, 34.334183, 35.935375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670349, 34.604877, 35.091484>,  <26.521338, 34.945656, 35.645248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670349, 34.604877, 35.091484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625839, 34.297577, 35.343647>,  <26.599133, 34.113197, 35.494946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625839, 34.297577, 35.343647>,  <26.670349, 34.604877, 35.091484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625839, 34.297577, 35.343647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223782, -0.598682, -0.769091,
		0.968266, -0.226654, -0.105302,
		-0.111275, -0.768250, 0.630405,
		26.592457, 34.067101, 35.532768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080931, 34.089378, 34.902378>,  <26.670349, 34.604877, 35.091484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080931, 34.089378, 34.902378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822308, 33.902367, 35.143505>,  <26.667133, 33.790161, 35.288181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822308, 33.902367, 35.143505>,  <27.080931, 34.089378, 34.902378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822308, 33.902367, 35.143505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192729, -0.664456, -0.722048,
		0.738119, -0.583025, 0.339504,
		-0.646557, -0.467525, 0.602813,
		26.628340, 33.762108, 35.324348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285543, 33.380516, 34.965534>,  <27.080931, 34.089378, 34.902378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285543, 33.380516, 34.965534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896473, 33.429211, 35.044609>,  <26.663031, 33.458427, 35.092052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896473, 33.429211, 35.044609>,  <27.285543, 33.380516, 34.965534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896473, 33.429211, 35.044609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229808, -0.625870, -0.745302,
		0.032997, -0.770368, 0.636745,
		-0.972676, 0.121737, 0.197689,
		26.604670, 33.465733, 35.103916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058949, 32.709869, 35.104561>,  <27.285543, 33.380516, 34.965534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058949, 32.709869, 35.104561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726524, 32.906994, 35.001427>,  <26.527071, 33.025269, 34.939545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726524, 32.906994, 35.001427>,  <27.058949, 32.709869, 35.104561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726524, 32.906994, 35.001427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277772, -0.769385, -0.575231,
		-0.481854, -0.406432, 0.776293,
		-0.831060, 0.492809, -0.257835,
		26.477207, 33.054836, 34.924076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616600, 32.297283, 35.025547>,  <27.058949, 32.709869, 35.104561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616600, 32.297283, 35.025547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469704, 32.076073, 35.324692>,  <27.381565, 31.943348, 35.504181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469704, 32.076073, 35.324692>,  <27.616600, 32.297283, 35.025547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469704, 32.076073, 35.324692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863402, 0.096356, 0.495229,
		-0.345934, 0.827576, 0.442094,
		-0.367242, -0.553021, 0.747864,
		27.359531, 31.910166, 35.549049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605049, 32.544468, 35.808567>,  <27.616600, 32.297283, 35.025547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605049, 32.544468, 35.808567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663851, 32.151356, 35.763779>,  <27.699133, 31.915489, 35.736908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663851, 32.151356, 35.763779>,  <27.605049, 32.544468, 35.808567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663851, 32.151356, 35.763779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778836, 0.045225, 0.625595,
		-0.609757, -0.179171, 0.772071,
		0.147006, -0.982778, -0.111969,
		27.707952, 31.856522, 35.730186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303469, 32.824062, 35.832420>,  <27.605049, 32.544468, 35.808567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303469, 32.824062, 35.832420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698057, 32.765675, 35.862282>,  <28.934811, 32.730644, 35.880199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698057, 32.765675, 35.862282>,  <28.303469, 32.824062, 35.832420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698057, 32.765675, 35.862282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056027, 0.728061, 0.683218,
		-0.154078, -0.669791, 0.726388,
		0.986468, -0.145966, 0.074652,
		28.993998, 32.721886, 35.884678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471298, 32.811260, 36.534523>,  <28.303469, 32.824062, 35.832420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471298, 32.811260, 36.534523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786274, 32.916733, 36.311665>,  <28.975260, 32.980015, 36.177948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786274, 32.916733, 36.311665>,  <28.471298, 32.811260, 36.534523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786274, 32.916733, 36.311665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192444, 0.753535, 0.628610,
		0.585579, -0.602212, 0.542621,
		0.787440, 0.263677, -0.557146,
		29.022507, 32.995834, 36.144520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082993, 32.852058, 36.923302>,  <28.471298, 32.811260, 36.534523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082993, 32.852058, 36.923302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112879, 33.121925, 36.629570>,  <29.130810, 33.283844, 36.453331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112879, 33.121925, 36.629570>,  <29.082993, 32.852058, 36.923302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112879, 33.121925, 36.629570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338394, 0.675543, 0.655081,
		0.938034, -0.297439, -0.177829,
		0.074716, 0.674664, -0.734333,
		29.135294, 33.324326, 36.409271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583046, 33.322910, 37.159294>,  <29.082993, 32.852058, 36.923302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583046, 33.322910, 37.159294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451315, 33.547600, 36.855713>,  <29.372276, 33.682411, 36.673565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451315, 33.547600, 36.855713>,  <29.583046, 33.322910, 37.159294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451315, 33.547600, 36.855713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237321, 0.827233, 0.509278,
		0.913905, -0.012396, -0.405739,
		-0.329328, 0.561722, -0.758954,
		29.352516, 33.716118, 36.628025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127077, 33.867237, 37.099590>,  <29.583046, 33.322910, 37.159294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127077, 33.867237, 37.099590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779284, 33.996017, 36.949741>,  <29.570608, 34.073288, 36.859833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779284, 33.996017, 36.949741>,  <30.127077, 33.867237, 37.099590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779284, 33.996017, 36.949741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127009, 0.878625, 0.460312,
		0.477353, 0.352653, -0.804842,
		-0.869484, 0.321953, -0.374624,
		29.518438, 34.092602, 36.837353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256599, 34.509945, 36.762924>,  <30.127077, 33.867237, 37.099590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256599, 34.509945, 36.762924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866993, 34.509819, 36.853519>,  <29.633230, 34.509743, 36.907875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866993, 34.509819, 36.853519>,  <30.256599, 34.509945, 36.762924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866993, 34.509819, 36.853519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094135, 0.908971, 0.406092,
		-0.205996, 0.416860, -0.885321,
		-0.974014, -0.000314, 0.226486,
		29.574789, 34.509724, 36.921467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897121, 35.083267, 36.399155>,  <30.256599, 34.509945, 36.762924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897121, 35.083267, 36.399155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697454, 35.006760, 36.737206>,  <29.577654, 34.960854, 36.940037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697454, 35.006760, 36.737206>,  <29.897121, 35.083267, 36.399155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697454, 35.006760, 36.737206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234542, 0.909099, 0.344279,
		-0.834159, 0.370072, -0.408931,
		-0.499167, -0.191272, 0.845131,
		29.547705, 34.949379, 36.990746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417326, 35.632492, 36.137913>,  <29.897121, 35.083267, 36.399155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417326, 35.632492, 36.137913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313444, 35.399849, 36.446274>,  <29.251116, 35.260262, 36.631290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313444, 35.399849, 36.446274>,  <29.417326, 35.632492, 36.137913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313444, 35.399849, 36.446274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135222, 0.812326, 0.567310,
		-0.956174, 0.043091, -0.289611,
		-0.259705, -0.581609, 0.770898,
		29.235533, 35.225365, 36.677544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816771, 35.940369, 36.389244>,  <29.417326, 35.632492, 36.137913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816771, 35.940369, 36.389244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989563, 35.717094, 36.672600>,  <29.093239, 35.583130, 36.842613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989563, 35.717094, 36.672600>,  <28.816771, 35.940369, 36.389244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989563, 35.717094, 36.672600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054762, 0.767775, 0.638375,
		-0.900220, -0.314557, 0.301095,
		0.431979, -0.558189, 0.708392,
		29.119156, 35.549637, 36.885117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466482, 35.739624, 37.038448>,  <28.816771, 35.940369, 36.389244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466482, 35.739624, 37.038448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842281, 35.837608, 37.134228>,  <29.067760, 35.896397, 37.191696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842281, 35.837608, 37.134228>,  <28.466482, 35.739624, 37.038448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842281, 35.837608, 37.134228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342385, 0.693273, 0.634149,
		-0.010664, -0.677767, 0.735200,
		0.939499, 0.244959, 0.239450,
		29.124130, 35.911095, 37.206062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722033, 36.232971, 37.509167>,  <28.466482, 35.739624, 37.038448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722033, 36.232971, 37.509167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823957, 36.432213, 37.177635>,  <28.885113, 36.551758, 36.978714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823957, 36.432213, 37.177635>,  <28.722033, 36.232971, 37.509167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823957, 36.432213, 37.177635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705787, -0.681712, -0.192703,
		-0.661011, -0.535876, -0.525263,
		0.254813, 0.498103, -0.828833,
		28.900402, 36.581642, 36.928986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296949, 36.552467, 37.458546>,  <28.722033, 36.232971, 37.509167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296949, 36.552467, 37.458546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249027, 36.350140, 37.800259>,  <29.220274, 36.228745, 38.005287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249027, 36.350140, 37.800259>,  <29.296949, 36.552467, 37.458546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249027, 36.350140, 37.800259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018996, -0.859151, -0.511369,
		0.992616, -0.077492, 0.093321,
		-0.119804, -0.505821, 0.854279,
		29.213085, 36.198395, 38.056541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801886, 36.111240, 37.430134>,  <29.296949, 36.552467, 37.458546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801886, 36.111240, 37.430134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478420, 35.964016, 37.613697>,  <29.284342, 35.875683, 37.723835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478420, 35.964016, 37.613697>,  <29.801886, 36.111240, 37.430134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478420, 35.964016, 37.613697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042262, -0.741730, -0.669366,
		0.586753, -0.560685, 0.584254,
		-0.808662, -0.368061, 0.458908,
		29.235821, 35.853600, 37.751369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846079, 35.457890, 37.726330>,  <29.801886, 36.111240, 37.430134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846079, 35.457890, 37.726330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457361, 35.502476, 37.643200>,  <29.224131, 35.529228, 37.593323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457361, 35.502476, 37.643200>,  <29.846079, 35.457890, 37.726330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457361, 35.502476, 37.643200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048081, -0.769090, -0.637329,
		-0.230876, -0.629345, 0.742038,
		-0.971794, 0.111466, -0.207824,
		29.165823, 35.535915, 37.580853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527592, 34.768875, 37.875931>,  <29.846079, 35.457890, 37.726330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527592, 34.768875, 37.875931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371454, 34.997787, 37.587452>,  <29.277771, 35.135136, 37.414364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371454, 34.997787, 37.587452>,  <29.527592, 34.768875, 37.875931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371454, 34.997787, 37.587452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016206, -0.778949, -0.626878,
		-0.920527, -0.256385, 0.294783,
		-0.390343, 0.572281, -0.721198,
		29.254351, 35.169472, 37.371094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922060, 34.439533, 37.625004>,  <29.527592, 34.768875, 37.875931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922060, 34.439533, 37.625004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032408, 34.685741, 37.329697>,  <29.098616, 34.833466, 37.152512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032408, 34.685741, 37.329697>,  <28.922060, 34.439533, 37.625004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032408, 34.685741, 37.329697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130540, -0.736962, -0.663209,
		-0.952290, 0.279331, -0.122955,
		0.275868, 0.615517, -0.738266,
		29.115168, 34.870396, 37.108215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332861, 34.572865, 37.061028>,  <28.922060, 34.439533, 37.625004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332861, 34.572865, 37.061028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709061, 34.606865, 36.929432>,  <28.934780, 34.627266, 36.850475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709061, 34.606865, 36.929432>,  <28.332861, 34.572865, 37.061028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709061, 34.606865, 36.929432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138998, -0.787249, -0.600765,
		-0.310061, 0.610749, -0.728593,
		0.940501, 0.085001, -0.328988,
		28.991211, 34.632366, 36.830734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385715, 34.574898, 36.275002>,  <28.332861, 34.572865, 37.061028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385715, 34.574898, 36.275002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723169, 34.435268, 36.438183>,  <28.925642, 34.351490, 36.536091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723169, 34.435268, 36.438183>,  <28.385715, 34.574898, 36.275002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723169, 34.435268, 36.438183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039150, -0.797780, -0.601677,
		0.535491, 0.491623, -0.686700,
		0.843633, -0.349076, 0.407957,
		28.976259, 34.330547, 36.560570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808397, 34.528683, 35.790916>,  <28.385715, 34.574898, 36.275002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808397, 34.528683, 35.790916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979380, 34.269417, 36.042999>,  <29.081968, 34.113857, 36.194248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979380, 34.269417, 36.042999>,  <28.808397, 34.528683, 35.790916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979380, 34.269417, 36.042999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004876, -0.695441, -0.718567,
		0.904024, 0.310228, -0.294109,
		0.427455, -0.648167, 0.630208,
		29.107616, 34.074966, 36.232063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451246, 34.183506, 35.500717>,  <28.808397, 34.528683, 35.790916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451246, 34.183506, 35.500717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343294, 33.913185, 35.775074>,  <29.278522, 33.750992, 35.939690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343294, 33.913185, 35.775074>,  <29.451246, 34.183506, 35.500717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343294, 33.913185, 35.775074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049482, -0.701652, -0.710800,
		0.961621, -0.225772, 0.155923,
		-0.269882, -0.675805, 0.685895,
		29.262329, 33.710445, 35.980843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906193, 33.522430, 35.444359>,  <29.451246, 34.183506, 35.500717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906193, 33.522430, 35.444359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557236, 33.411674, 35.605484>,  <29.347862, 33.345219, 35.702160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557236, 33.411674, 35.605484>,  <29.906193, 33.522430, 35.444359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557236, 33.411674, 35.605484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027859, -0.850910, -0.524572,
		0.488011, -0.446411, 0.750042,
		-0.872393, -0.276892, 0.402817,
		29.295517, 33.328606, 35.726330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956146, 32.927025, 35.876640>,  <29.906193, 33.522430, 35.444359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956146, 32.927025, 35.876640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609671, 32.970779, 35.681602>,  <29.401785, 32.997032, 35.564579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609671, 32.970779, 35.681602>,  <29.956146, 32.927025, 35.876640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609671, 32.970779, 35.681602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146143, -0.877638, -0.456502,
		-0.477869, -0.466676, 0.744215,
		-0.866189, 0.109386, -0.487597,
		29.349813, 33.003593, 35.535324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451097, 32.219669, 35.821297>,  <29.956146, 32.927025, 35.876640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451097, 32.219669, 35.821297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372030, 32.448265, 35.502720>,  <29.324591, 32.585423, 35.311573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372030, 32.448265, 35.502720>,  <29.451097, 32.219669, 35.821297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372030, 32.448265, 35.502720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223471, -0.817355, -0.531030,
		-0.954457, 0.073016, 0.289275,
		-0.197666, 0.571490, -0.796447,
		29.312731, 32.619713, 35.263786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758751, 31.997694, 35.540073>,  <29.451097, 32.219669, 35.821297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758751, 31.997694, 35.540073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979963, 32.163357, 35.250900>,  <29.112690, 32.262753, 35.077396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979963, 32.163357, 35.250900>,  <28.758751, 31.997694, 35.540073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979963, 32.163357, 35.250900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125902, -0.816193, -0.563896,
		-0.823593, 0.402870, -0.399237,
		0.553031, 0.414156, -0.722933,
		29.145872, 32.287605, 35.034019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332781, 32.127060, 34.827686>,  <28.758751, 31.997694, 35.540073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332781, 32.127060, 34.827686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724035, 32.044117, 34.821342>,  <28.958788, 31.994350, 34.817535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724035, 32.044117, 34.821342>,  <28.332781, 32.127060, 34.827686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724035, 32.044117, 34.821342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201251, -0.924565, -0.323539,
		0.052427, 0.319657, -0.946082,
		0.978136, -0.207362, -0.015859,
		29.017475, 31.981909, 34.816586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466228, 31.704731, 34.355827>,  <28.332781, 32.127060, 34.827686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466228, 31.704731, 34.355827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812943, 31.616505, 34.534729>,  <29.020971, 31.563568, 34.642071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812943, 31.616505, 34.534729>,  <28.466228, 31.704731, 34.355827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812943, 31.616505, 34.534729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032712, -0.920084, -0.390352,
		0.497607, 0.323721, -0.804731,
		0.866785, -0.220567, 0.447251,
		29.072979, 31.550335, 34.668903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937189, 31.389915, 33.865368>,  <28.466228, 31.704731, 34.355827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937189, 31.389915, 33.865368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084692, 31.277239, 34.219692>,  <29.173193, 31.209633, 34.432289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084692, 31.277239, 34.219692>,  <28.937189, 31.389915, 33.865368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084692, 31.277239, 34.219692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128400, -0.928402, -0.348688,
		0.920616, 0.242319, -0.306184,
		0.368755, -0.281694, 0.885815,
		29.195318, 31.192730, 34.485435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502935, 31.075956, 33.715626>,  <28.937189, 31.389915, 33.865368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502935, 31.075956, 33.715626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383142, 30.957762, 34.078503>,  <29.311266, 30.886845, 34.296230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383142, 30.957762, 34.078503>,  <29.502935, 31.075956, 33.715626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383142, 30.957762, 34.078503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113044, -0.933147, -0.341260,
		0.947381, -0.204754, 0.246059,
		-0.299483, -0.295487, 0.907192,
		29.293297, 30.869116, 34.350658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905861, 30.411283, 33.978424>,  <29.502935, 31.075956, 33.715626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905861, 30.411283, 33.978424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556437, 30.406641, 34.173054>,  <29.346781, 30.403856, 34.289833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556437, 30.406641, 34.173054>,  <29.905861, 30.411283, 33.978424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556437, 30.406641, 34.173054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046844, -0.993070, -0.107787,
		0.484454, -0.116952, 0.866964,
		-0.873562, -0.011606, 0.486575,
		29.294369, 30.403160, 34.319027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838013, 29.778351, 34.096382>,  <29.905861, 30.411283, 33.978424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838013, 29.778351, 34.096382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472233, 29.884855, 34.218292>,  <29.252766, 29.948757, 34.291439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472233, 29.884855, 34.218292>,  <29.838013, 29.778351, 34.096382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472233, 29.884855, 34.218292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279999, -0.959999, -0.001423,
		0.292204, -0.086638, 0.952424,
		-0.914449, 0.266262, 0.304774,
		29.197899, 29.964733, 34.309723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446169, 29.213612, 33.825359>,  <29.838013, 29.778351, 34.096382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446169, 29.213612, 33.825359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464458, 29.162231, 34.221622>,  <29.475431, 29.131403, 34.459381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464458, 29.162231, 34.221622>,  <29.446169, 29.213612, 33.825359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464458, 29.162231, 34.221622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473367, 0.870503, 0.134718,
		-0.879678, -0.475106, -0.021001,
		0.045724, -0.128450, 0.990662,
		29.478176, 29.123697, 34.518822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773224, 29.321108, 34.188934>,  <29.446169, 29.213612, 33.825359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773224, 29.321108, 34.188934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097143, 29.394123, 34.411972>,  <29.291494, 29.437933, 34.545795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097143, 29.394123, 34.411972>,  <28.773224, 29.321108, 34.188934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097143, 29.394123, 34.411972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413517, 0.851765, 0.321713,
		-0.416214, -0.491097, 0.765239,
		0.809796, 0.182538, 0.557593,
		29.340082, 29.448885, 34.579250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484917, 29.852001, 34.539307>,  <28.773224, 29.321108, 34.188934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484917, 29.852001, 34.539307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872835, 29.864109, 34.636120>,  <29.105585, 29.871374, 34.694210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872835, 29.864109, 34.636120>,  <28.484917, 29.852001, 34.539307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872835, 29.864109, 34.636120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147601, 0.862809, 0.483503,
		-0.194196, -0.504623, 0.841215,
		0.969795, 0.030270, 0.242037,
		29.163774, 29.873190, 34.708733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425245, 30.199085, 35.220367>,  <28.484917, 29.852001, 34.539307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425245, 30.199085, 35.220367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737108, 30.234938, 34.972462>,  <28.924225, 30.256449, 34.823719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737108, 30.234938, 34.972462>,  <28.425245, 30.199085, 35.220367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737108, 30.234938, 34.972462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244395, 0.867663, 0.432934,
		0.576548, -0.489006, 0.654573,
		0.779656, 0.089633, -0.619760,
		28.971004, 30.261827, 34.786533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978432, 30.529848, 35.534302>,  <28.425245, 30.199085, 35.220367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978432, 30.529848, 35.534302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098461, 30.615265, 35.162418>,  <29.170479, 30.666515, 34.939289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098461, 30.615265, 35.162418>,  <28.978432, 30.529848, 35.534302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098461, 30.615265, 35.162418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331400, 0.890579, 0.311516,
		0.894502, -0.401581, 0.196466,
		0.300067, 0.213543, -0.929709,
		29.188482, 30.679327, 34.883507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614052, 30.834103, 35.622177>,  <28.978432, 30.529848, 35.534302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614052, 30.834103, 35.622177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469439, 30.953365, 35.268818>,  <29.382669, 31.024923, 35.056801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469439, 30.953365, 35.268818>,  <29.614052, 30.834103, 35.622177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469439, 30.953365, 35.268818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304918, 0.933198, 0.190177,
		0.881089, -0.200609, -0.428297,
		-0.361535, 0.298158, -0.883399,
		29.360979, 31.042812, 35.003799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072132, 31.278498, 35.494347>,  <29.614052, 30.834103, 35.622177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072132, 31.278498, 35.494347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763905, 31.341236, 35.247242>,  <29.578968, 31.378880, 35.098980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763905, 31.341236, 35.247242>,  <30.072132, 31.278498, 35.494347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763905, 31.341236, 35.247242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065583, 0.983615, 0.167928,
		0.633975, 0.088885, -0.768229,
		-0.770568, 0.156845, -0.617758,
		29.532734, 31.388290, 35.061916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292749, 31.933584, 35.071342>,  <30.072132, 31.278498, 35.494347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292749, 31.933584, 35.071342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900087, 31.873146, 35.117859>,  <29.664490, 31.836884, 35.145771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900087, 31.873146, 35.117859>,  <30.292749, 31.933584, 35.071342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900087, 31.873146, 35.117859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121976, 0.966447, 0.226058,
		-0.146549, 0.207726, -0.967147,
		-0.981654, -0.151097, 0.116294,
		29.605591, 31.827816, 35.152748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881483, 32.351551, 34.855743>,  <30.292749, 31.933584, 35.071342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881483, 32.351551, 34.855743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783396, 32.616028, 34.572140>,  <30.724543, 32.774715, 34.401978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783396, 32.616028, 34.572140>,  <30.881483, 32.351551, 34.855743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783396, 32.616028, 34.572140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383749, -0.605401, -0.697300,
		-0.890283, -0.443071, -0.105277,
		-0.245219, 0.661194, -0.709006,
		30.709829, 32.814384, 34.359436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420937, 32.591354, 35.327801>,  <30.881483, 32.351551, 34.855743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420937, 32.591354, 35.327801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781635, 32.763603, 35.342842>,  <31.998055, 32.866955, 35.351868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781635, 32.763603, 35.342842>,  <31.420937, 32.591354, 35.327801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781635, 32.763603, 35.342842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277064, -0.509022, -0.814943,
		-0.331794, 0.745291, -0.578320,
		0.901747, 0.430625, 0.037603,
		32.052158, 32.892792, 35.354122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603600, 32.640827, 34.651768>,  <31.420937, 32.591354, 35.327801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603600, 32.640827, 34.651768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953775, 32.687157, 34.839466>,  <32.163879, 32.714954, 34.952084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953775, 32.687157, 34.839466>,  <31.603600, 32.640827, 34.651768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953775, 32.687157, 34.839466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473838, -0.397108, -0.785991,
		0.095308, 0.910434, -0.402524,
		0.875439, 0.115820, 0.469246,
		32.216408, 32.721901, 34.980240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155376, 32.986835, 34.217873>,  <31.603600, 32.640827, 34.651768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155376, 32.986835, 34.217873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369778, 32.767387, 34.474533>,  <32.498421, 32.635719, 34.628529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369778, 32.767387, 34.474533>,  <32.155376, 32.986835, 34.217873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369778, 32.767387, 34.474533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461292, -0.446229, -0.766870,
		0.707042, 0.707036, 0.013891,
		0.536006, -0.548617, 0.641652,
		32.530579, 32.602802, 34.667030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825523, 32.942490, 33.930470>,  <32.155376, 32.986835, 34.217873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825523, 32.942490, 33.930470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810020, 32.646084, 34.198616>,  <32.800716, 32.468239, 34.359505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810020, 32.646084, 34.198616>,  <32.825523, 32.942490, 33.930470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810020, 32.646084, 34.198616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480228, -0.602129, -0.637825,
		0.876287, 0.297206, 0.379197,
		-0.038760, -0.741019, 0.670365,
		32.798393, 32.423779, 34.399727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446823, 32.623795, 33.901493>,  <32.825523, 32.942490, 33.930470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446823, 32.623795, 33.901493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205246, 32.334011, 34.034409>,  <33.060299, 32.160141, 34.114159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205246, 32.334011, 34.034409>,  <33.446823, 32.623795, 33.901493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205246, 32.334011, 34.034409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444831, -0.652318, -0.613683,
		0.661347, -0.222814, 0.716222,
		-0.603942, -0.724455, 0.332293,
		33.024063, 32.116676, 34.134098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883152, 32.037601, 33.964462>,  <33.446823, 32.623795, 33.901493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883152, 32.037601, 33.964462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516773, 31.877609, 33.977436>,  <33.296944, 31.781614, 33.985222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516773, 31.877609, 33.977436>,  <33.883152, 32.037601, 33.964462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516773, 31.877609, 33.977436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281304, -0.697612, -0.658943,
		0.286192, -0.594434, 0.751494,
		-0.915949, -0.399982, 0.032434,
		33.241989, 31.757614, 33.987167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008076, 31.323925, 33.836426>,  <33.883152, 32.037601, 33.964462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008076, 31.323925, 33.836426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619392, 31.369980, 33.753948>,  <33.386181, 31.397614, 33.704460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619392, 31.369980, 33.753948>,  <34.008076, 31.323925, 33.836426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619392, 31.369980, 33.753948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020705, -0.828211, -0.560035,
		-0.235255, -0.548462, 0.802399,
		-0.971713, 0.115137, -0.206197,
		33.327877, 31.404522, 33.692089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718868, 30.665613, 33.932499>,  <34.008076, 31.323925, 33.836426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718868, 30.665613, 33.932499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459820, 30.850639, 33.690304>,  <33.304390, 30.961655, 33.544987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459820, 30.850639, 33.690304>,  <33.718868, 30.665613, 33.932499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459820, 30.850639, 33.690304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112378, -0.727972, -0.676334,
		-0.753633, -0.506050, 0.419465,
		-0.647618, 0.462569, -0.605493,
		33.265533, 30.989408, 33.508656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436939, 30.085562, 33.639130>,  <33.718868, 30.665613, 33.932499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436939, 30.085562, 33.639130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368366, 30.404158, 33.407192>,  <33.327225, 30.595316, 33.268032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368366, 30.404158, 33.407192>,  <33.436939, 30.085562, 33.639130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368366, 30.404158, 33.407192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100028, -0.571441, -0.814524,
		-0.980105, -0.197634, 0.018290,
		-0.171429, 0.796490, -0.579841,
		33.316936, 30.643105, 33.233238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046524, 29.864285, 33.130108>,  <33.436939, 30.085562, 33.639130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046524, 29.864285, 33.130108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166691, 30.211164, 32.971256>,  <33.238792, 30.419292, 32.875946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166691, 30.211164, 32.971256>,  <33.046524, 29.864285, 33.130108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166691, 30.211164, 32.971256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080725, -0.437983, -0.895352,
		-0.950385, 0.236923, -0.201583,
		0.300419, 0.867202, -0.397127,
		33.256817, 30.471325, 32.852119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737110, 29.877201, 32.421162>,  <33.046524, 29.864285, 33.130108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737110, 29.877201, 32.421162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061886, 30.110512, 32.411896>,  <33.256752, 30.250498, 32.406338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061886, 30.110512, 32.411896>,  <32.737110, 29.877201, 32.421162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061886, 30.110512, 32.411896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325116, -0.484819, -0.811942,
		-0.484819, 0.651718, -0.583278,
		0.811942, 0.583278, -0.023166,
		33.305470, 30.285496, 32.404945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755760, 30.261606, 31.788975>,  <32.737110, 29.877201, 32.421162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755760, 30.261606, 31.788975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130680, 30.249468, 31.927858>,  <33.355633, 30.242186, 32.011189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130680, 30.249468, 31.927858>,  <32.755760, 30.261606, 31.788975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130680, 30.249468, 31.927858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311161, -0.375947, -0.872836,
		0.157018, 0.926144, -0.342932,
		0.937296, -0.030344, 0.347210,
		33.411869, 30.240364, 32.032021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093475, 30.406149, 31.097052>,  <32.755760, 30.261606, 31.788975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093475, 30.406149, 31.097052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369667, 30.304665, 31.368010>,  <33.535381, 30.243774, 31.530584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369667, 30.304665, 31.368010>,  <33.093475, 30.406149, 31.097052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369667, 30.304665, 31.368010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476094, -0.545634, -0.689651,
		0.544580, 0.798696, -0.255962,
		0.690483, -0.253708, 0.677396,
		33.576813, 30.228552, 31.571228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761814, 30.560144, 30.821667>,  <33.093475, 30.406149, 31.097052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761814, 30.560144, 30.821667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818604, 30.275410, 31.096806>,  <33.852676, 30.104568, 31.261889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818604, 30.275410, 31.096806>,  <33.761814, 30.560144, 30.821667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818604, 30.275410, 31.096806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549589, -0.521256, -0.652874,
		0.823283, 0.470726, 0.317211,
		0.141977, -0.711835, 0.687847,
		33.861198, 30.061859, 31.303160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520920, 30.384197, 30.686604>,  <33.761814, 30.560144, 30.821667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520920, 30.384197, 30.686604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317532, 30.077526, 30.843403>,  <34.195499, 29.893524, 30.937483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317532, 30.077526, 30.843403>,  <34.520920, 30.384197, 30.686604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317532, 30.077526, 30.843403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465689, -0.627764, -0.623736,
		0.724288, -0.134601, 0.676232,
		-0.508469, -0.766678, 0.392000,
		34.164989, 29.847523, 30.961002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004166, 29.837595, 30.871130>,  <34.520920, 30.384197, 30.686604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004166, 29.837595, 30.871130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639442, 29.674212, 30.854303>,  <34.420609, 29.576181, 30.844208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639442, 29.674212, 30.854303>,  <35.004166, 29.837595, 30.871130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639442, 29.674212, 30.854303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343156, -0.701733, -0.624352,
		0.225501, -0.583724, 0.780010,
		-0.911808, -0.408457, -0.042067,
		34.365902, 29.551674, 30.841682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190807, 29.157784, 30.776461>,  <35.004166, 29.837595, 30.871130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190807, 29.157784, 30.776461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805519, 29.203884, 30.679359>,  <34.574348, 29.231544, 30.621099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805519, 29.203884, 30.679359>,  <35.190807, 29.157784, 30.776461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805519, 29.203884, 30.679359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122646, -0.615237, -0.778743,
		-0.239100, -0.779872, 0.578473,
		-0.963218, 0.115250, -0.242751,
		34.516552, 29.238459, 30.606533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011745, 28.557211, 30.540621>,  <35.190807, 29.157784, 30.776461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011745, 28.557211, 30.540621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730091, 28.782049, 30.367071>,  <34.561100, 28.916952, 30.262941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730091, 28.782049, 30.367071>,  <35.011745, 28.557211, 30.540621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730091, 28.782049, 30.367071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097096, -0.529072, -0.843004,
		-0.703401, -0.635712, 0.317958,
		-0.704130, 0.562097, -0.433874,
		34.518852, 28.950678, 30.236908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856697, 28.126627, 30.079243>,  <35.011745, 28.557211, 30.540621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856697, 28.126627, 30.079243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691044, 28.459648, 29.932083>,  <34.591652, 28.659460, 29.843788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691044, 28.459648, 29.932083>,  <34.856697, 28.126627, 30.079243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691044, 28.459648, 29.932083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133391, -0.455337, -0.880270,
		-0.900389, -0.315475, 0.299625,
		-0.414134, 0.832553, -0.367899,
		34.566803, 28.709414, 29.821714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156189, 27.954397, 29.767408>,  <34.856697, 28.126627, 30.079243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156189, 27.954397, 29.767408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275295, 28.300577, 29.606245>,  <34.346760, 28.508286, 29.509546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275295, 28.300577, 29.606245>,  <34.156189, 27.954397, 29.767408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275295, 28.300577, 29.606245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022700, -0.428351, -0.903327,
		-0.954370, 0.259830, -0.147192,
		0.297761, 0.865450, -0.402908,
		34.364624, 28.560213, 29.485373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662510, 28.044460, 29.127542>,  <34.156189, 27.954397, 29.767408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662510, 28.044460, 29.127542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980183, 28.283752, 29.084839>,  <34.170788, 28.427328, 29.059217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980183, 28.283752, 29.084839>,  <33.662510, 28.044460, 29.127542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980183, 28.283752, 29.084839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064837, -0.258097, -0.963941,
		-0.604212, 0.758622, -0.243763,
		0.794181, 0.598230, -0.106758,
		34.218437, 28.463221, 29.052811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593418, 28.482742, 28.568419>,  <33.662510, 28.044460, 29.127542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593418, 28.482742, 28.568419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986954, 28.451126, 28.632690>,  <34.223076, 28.432156, 28.671253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986954, 28.451126, 28.632690>,  <33.593418, 28.482742, 28.568419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986954, 28.451126, 28.632690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106607, -0.462425, -0.880226,
		0.143875, 0.883128, -0.446524,
		0.983837, -0.079040, 0.160679,
		34.282104, 28.427414, 28.680895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846069, 28.798388, 27.954750>,  <33.593418, 28.482742, 28.568419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846069, 28.798388, 27.954750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153625, 28.602776, 28.119509>,  <34.338158, 28.485409, 28.218365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153625, 28.602776, 28.119509>,  <33.846069, 28.798388, 27.954750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153625, 28.602776, 28.119509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264425, -0.343329, -0.901224,
		0.582140, 0.801859, -0.134671,
		0.768891, -0.489028, 0.411897,
		34.384293, 28.456068, 28.243078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253975, 28.800430, 27.398100>,  <33.846069, 28.798388, 27.954750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253975, 28.800430, 27.398100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459373, 28.541916, 27.623892>,  <34.582615, 28.386808, 27.759367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459373, 28.541916, 27.623892>,  <34.253975, 28.800430, 27.398100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459373, 28.541916, 27.623892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400008, -0.401695, -0.823793,
		0.759152, 0.648813, 0.052248,
		0.513499, -0.646284, 0.564478,
		34.613422, 28.348030, 27.793236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852127, 28.760824, 27.095976>,  <34.253975, 28.800430, 27.398100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852127, 28.760824, 27.095976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826534, 28.436800, 27.329115>,  <34.811176, 28.242386, 27.468998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826534, 28.436800, 27.329115>,  <34.852127, 28.760824, 27.095976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826534, 28.436800, 27.329115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287806, -0.574207, -0.766456,
		0.955549, 0.118705, 0.269880,
		-0.063985, -0.810059, 0.582847,
		34.807339, 28.193783, 27.503969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590557, 28.560408, 27.249252>,  <34.852127, 28.760824, 27.095976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590557, 28.560408, 27.249252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320827, 28.265078, 27.254387>,  <35.158989, 28.087879, 27.257467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320827, 28.265078, 27.254387>,  <35.590557, 28.560408, 27.249252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320827, 28.265078, 27.254387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554646, -0.517889, -0.651274,
		0.487499, -0.432051, 0.758734,
		-0.674324, -0.738324, 0.012835,
		35.118530, 28.043581, 27.258238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945377, 27.939976, 27.151041>,  <35.590557, 28.560408, 27.249252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945377, 27.939976, 27.151041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569176, 27.820202, 27.086813>,  <35.343452, 27.748337, 27.048275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569176, 27.820202, 27.086813>,  <35.945377, 27.939976, 27.151041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569176, 27.820202, 27.086813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335460, -0.743283, -0.578789,
		0.053960, -0.598222, 0.799512,
		-0.940508, -0.299435, -0.160572,
		35.287022, 27.730371, 27.038641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889236, 27.192984, 27.075678>,  <35.945377, 27.939976, 27.151041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889236, 27.192984, 27.075678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571819, 27.334467, 26.877615>,  <35.381371, 27.419357, 26.758778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571819, 27.334467, 26.877615>,  <35.889236, 27.192984, 27.075678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571819, 27.334467, 26.877615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210643, -0.603741, -0.768848,
		-0.570897, -0.714413, 0.404586,
		-0.793540, 0.353710, -0.495160,
		35.333755, 27.440578, 26.729067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528099, 26.544353, 26.809486>,  <35.889236, 27.192984, 27.075678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528099, 26.544353, 26.809486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399506, 26.864307, 26.606773>,  <35.322350, 27.056280, 26.485146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399506, 26.864307, 26.606773>,  <35.528099, 26.544353, 26.809486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399506, 26.864307, 26.606773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155098, -0.483487, -0.861501,
		-0.934125, -0.355564, 0.031374,
		-0.321488, 0.799884, -0.506784,
		35.303059, 27.104273, 26.454739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311218, 26.147989, 26.197386>,  <35.528099, 26.544353, 26.809486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311218, 26.147989, 26.197386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340904, 26.537331, 26.110600>,  <35.358715, 26.770935, 26.058527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340904, 26.537331, 26.110600>,  <35.311218, 26.147989, 26.197386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340904, 26.537331, 26.110600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191986, -0.227443, -0.954679,
		-0.978587, 0.029200, -0.203750,
		0.074218, 0.973354, -0.216967,
		35.363171, 26.829336, 26.045509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997181, 26.327364, 25.541763>,  <35.311218, 26.147989, 26.197386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997181, 26.327364, 25.541763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263420, 26.613955, 25.625330>,  <35.423164, 26.785910, 25.675470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263420, 26.613955, 25.625330>,  <34.997181, 26.327364, 25.541763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263420, 26.613955, 25.625330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412756, -0.120175, -0.902879,
		-0.621786, 0.687181, -0.375718,
		0.665593, 0.716478, 0.208915,
		35.463097, 26.828897, 25.688005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076862, 26.582281, 24.858208>,  <34.997181, 26.327364, 25.541763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076862, 26.582281, 24.858208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379051, 26.734930, 25.071236>,  <35.560364, 26.826519, 25.199053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379051, 26.734930, 25.071236>,  <35.076862, 26.582281, 24.858208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379051, 26.734930, 25.071236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532512, 0.115915, -0.838448,
		-0.381704, 0.917021, -0.115650,
		0.755468, 0.381624, 0.532570,
		35.605690, 26.849417, 25.231007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293625, 27.122070, 24.495663>,  <35.076862, 26.582281, 24.858208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293625, 27.122070, 24.495663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621685, 27.064478, 24.717159>,  <35.818520, 27.029922, 24.850058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621685, 27.064478, 24.717159>,  <35.293625, 27.122070, 24.495663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621685, 27.064478, 24.717159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571929, 0.233367, -0.786408,
		-0.015995, 0.961670, 0.273743,
		0.820147, -0.143983, 0.553740,
		35.867729, 27.021282, 24.883282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788250, 27.685551, 24.474060>,  <35.293625, 27.122070, 24.495663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788250, 27.685551, 24.474060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006809, 27.369997, 24.586561>,  <36.137947, 27.180664, 24.654062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006809, 27.369997, 24.586561>,  <35.788250, 27.685551, 24.474060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006809, 27.369997, 24.586561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740335, 0.297929, -0.602613,
		0.391599, 0.537491, 0.746829,
		0.546401, -0.788886, 0.281255,
		36.170731, 27.133331, 24.670938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349129, 27.967228, 24.722300>,  <35.788250, 27.685551, 24.474060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349129, 27.967228, 24.722300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433029, 27.590130, 24.618578>,  <36.483368, 27.363871, 24.556345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433029, 27.590130, 24.618578>,  <36.349129, 27.967228, 24.722300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433029, 27.590130, 24.618578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712044, 0.329028, -0.620269,
		0.670074, -0.054537, 0.740288,
		0.209749, -0.942744, -0.259306,
		36.495953, 27.307306, 24.540787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057350, 27.772911, 24.855137>,  <36.349129, 27.967228, 24.722300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057350, 27.772911, 24.855137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926659, 27.527205, 24.567827>,  <36.848244, 27.379780, 24.395441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926659, 27.527205, 24.567827>,  <37.057350, 27.772911, 24.855137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926659, 27.527205, 24.567827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767642, 0.270860, -0.580828,
		0.551337, -0.741154, 0.383039,
		-0.326733, -0.614269, -0.718275,
		36.828640, 27.342924, 24.352345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697868, 27.526407, 24.510571>,  <37.057350, 27.772911, 24.855137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697868, 27.526407, 24.510571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409859, 27.419415, 24.254438>,  <37.237053, 27.355219, 24.100760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409859, 27.419415, 24.254438>,  <37.697868, 27.526407, 24.510571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409859, 27.419415, 24.254438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589216, 0.251809, -0.767735,
		0.366596, -0.930078, -0.023703,
		-0.720022, -0.267482, -0.640330,
		37.193851, 27.339170, 24.062340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109562, 27.331211, 23.984844>,  <37.697868, 27.526407, 24.510571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109562, 27.331211, 23.984844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752682, 27.368006, 23.807978>,  <37.538551, 27.390083, 23.701859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752682, 27.368006, 23.807978>,  <38.109562, 27.331211, 23.984844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752682, 27.368006, 23.807978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443717, 0.361040, -0.820223,
		0.084190, -0.928003, -0.362937,
		-0.892204, 0.091987, -0.442166,
		37.485020, 27.395601, 23.675327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362316, 27.356773, 23.374649>,  <38.109562, 27.331211, 23.984844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362316, 27.356773, 23.374649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978168, 27.445234, 23.306786>,  <37.747681, 27.498312, 23.266068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978168, 27.445234, 23.306786>,  <38.362316, 27.356773, 23.374649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978168, 27.445234, 23.306786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252897, 0.435395, -0.863988,
		-0.117205, -0.872653, -0.474068,
		-0.960368, 0.221154, -0.169661,
		37.690060, 27.511580, 23.255888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070274, 26.882732, 22.743954>,  <38.362316, 27.356773, 23.374649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070274, 26.882732, 22.743954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895988, 27.238373, 22.800028>,  <37.791416, 27.451757, 22.833672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895988, 27.238373, 22.800028>,  <38.070274, 26.882732, 22.743954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895988, 27.238373, 22.800028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292647, 0.287219, -0.912065,
		-0.851183, -0.356374, -0.385338,
		-0.435713, 0.889102, 0.140184,
		37.765274, 27.505104, 22.842083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702881, 27.068895, 22.121708>,  <38.070274, 26.882732, 22.743954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702881, 27.068895, 22.121708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731876, 27.422577, 22.306284>,  <37.749275, 27.634787, 22.417030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731876, 27.422577, 22.306284>,  <37.702881, 27.068895, 22.121708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731876, 27.422577, 22.306284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312321, 0.419264, -0.852451,
		-0.947207, 0.205912, -0.245763,
		0.072490, 0.884205, 0.461441,
		37.753624, 27.687838, 22.444715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453979, 27.506018, 21.638189>,  <37.702881, 27.068895, 22.121708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453979, 27.506018, 21.638189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654816, 27.739647, 21.893303>,  <37.775318, 27.879826, 22.046371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654816, 27.739647, 21.893303>,  <37.453979, 27.506018, 21.638189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654816, 27.739647, 21.893303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358705, 0.530398, -0.768120,
		-0.786918, 0.614438, 0.056795,
		0.502086, 0.584075, 0.637782,
		37.805443, 27.914869, 22.084637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961788, 28.046171, 21.484779>,  <37.453979, 27.506018, 21.638189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961788, 28.046171, 21.484779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939350, 28.377821, 21.262281>,  <37.925888, 28.576811, 21.128782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939350, 28.377821, 21.262281>,  <37.961788, 28.046171, 21.484779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939350, 28.377821, 21.262281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082208, -0.551394, -0.830184,
		-0.995035, -0.092301, -0.037228,
		-0.056099, 0.829123, -0.556245,
		37.922520, 28.626558, 21.095407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504520, 27.840939, 20.966114>,  <37.961788, 28.046171, 21.484779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504520, 27.840939, 20.966114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673557, 28.171495, 20.817255>,  <37.774979, 28.369829, 20.727940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673557, 28.171495, 20.817255>,  <37.504520, 27.840939, 20.966114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673557, 28.171495, 20.817255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066775, -0.381111, -0.922115,
		-0.903858, 0.414526, -0.105871,
		0.422589, 0.826391, -0.372150,
		37.800335, 28.419413, 20.705610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054787, 28.069693, 20.399395>,  <37.504520, 27.840939, 20.966114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054787, 28.069693, 20.399395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422928, 28.214569, 20.340380>,  <37.643814, 28.301495, 20.304970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422928, 28.214569, 20.340380>,  <37.054787, 28.069693, 20.399395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422928, 28.214569, 20.340380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003888, -0.385708, -0.922613,
		-0.391071, 0.848555, -0.356396,
		0.920352, 0.362193, -0.147540,
		37.699032, 28.323227, 20.296118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121658, 27.895748, 19.747116>,  <37.054787, 28.069693, 20.399395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121658, 27.895748, 19.747116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494202, 28.001797, 19.846939>,  <37.717728, 28.065426, 19.906834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494202, 28.001797, 19.846939>,  <37.121658, 27.895748, 19.747116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494202, 28.001797, 19.846939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316218, -0.249237, -0.915362,
		-0.180482, 0.931446, -0.315965,
		0.931360, 0.265120, 0.249558,
		37.773609, 28.081333, 19.921806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260223, 27.643253, 19.155878>,  <37.121658, 27.895748, 19.747116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260223, 27.643253, 19.155878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651791, 27.584032, 19.099583>,  <37.886730, 27.548498, 19.065805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651791, 27.584032, 19.099583>,  <37.260223, 27.643253, 19.155878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651791, 27.584032, 19.099583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200303, 0.560505, 0.803562,
		-0.040086, -0.814809, 0.578342,
		0.978913, -0.148055, -0.140741,
		37.945465, 27.539616, 19.057360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593071, 27.268694, 19.692287>,  <37.260223, 27.643253, 19.155878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593071, 27.268694, 19.692287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851795, 27.520721, 19.520403>,  <38.007030, 27.671938, 19.417273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851795, 27.520721, 19.520403>,  <37.593071, 27.268694, 19.692287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851795, 27.520721, 19.520403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015875, 0.552197, 0.833562,
		0.762488, -0.545976, 0.347163,
		0.646807, 0.630070, -0.429711,
		38.045837, 27.709742, 19.391489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271442, 27.446695, 20.135433>,  <37.593071, 27.268694, 19.692287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271442, 27.446695, 20.135433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208508, 27.746866, 19.878651>,  <38.170746, 27.926968, 19.724581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208508, 27.746866, 19.878651>,  <38.271442, 27.446695, 20.135433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208508, 27.746866, 19.878651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118161, 0.659686, 0.742194,
		0.980451, 0.040918, -0.192463,
		-0.157334, 0.750426, -0.641955,
		38.161308, 27.971994, 19.686064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688896, 28.030100, 20.250950>,  <38.271442, 27.446695, 20.135433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688896, 28.030100, 20.250950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418999, 28.198544, 20.008501>,  <38.257061, 28.299610, 19.863031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418999, 28.198544, 20.008501>,  <38.688896, 28.030100, 20.250950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418999, 28.198544, 20.008501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225198, 0.664616, 0.712441,
		0.702854, 0.617215, -0.353614,
		-0.674746, 0.421108, -0.606123,
		38.216576, 28.324877, 19.826664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787010, 28.854393, 19.971462>,  <38.688896, 28.030100, 20.250950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787010, 28.854393, 19.971462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430275, 28.693691, 20.054619>,  <38.216232, 28.597269, 20.104513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430275, 28.693691, 20.054619>,  <38.787010, 28.854393, 19.971462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430275, 28.693691, 20.054619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059502, 0.559766, 0.826511,
		-0.448426, 0.724744, -0.523126,
		-0.891837, -0.401756, 0.207890,
		38.162724, 28.573164, 20.116985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294724, 29.426510, 19.973988>,  <38.787010, 28.854393, 19.971462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294724, 29.426510, 19.973988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168720, 29.128416, 20.209070>,  <38.093121, 28.949560, 20.350121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168720, 29.128416, 20.209070>,  <38.294724, 29.426510, 19.973988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168720, 29.128416, 20.209070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158644, 0.651864, 0.741556,
		-0.935737, 0.140359, -0.323568,
		-0.315006, -0.745233, 0.587706,
		38.074219, 28.904846, 20.385382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962074, 29.790211, 20.484066>,  <38.294724, 29.426510, 19.973988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962074, 29.790211, 20.484066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923862, 29.431501, 20.656891>,  <37.900936, 29.216276, 20.760586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923862, 29.431501, 20.656891>,  <37.962074, 29.790211, 20.484066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923862, 29.431501, 20.656891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355759, 0.436135, 0.826572,
		-0.929683, -0.074751, -0.360696,
		-0.095525, -0.896771, 0.432061,
		37.895206, 29.162470, 20.786509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310444, 29.753326, 20.730742>,  <37.962074, 29.790211, 20.484066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310444, 29.753326, 20.730742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556320, 29.519093, 20.942118>,  <37.703846, 29.378553, 21.068943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556320, 29.519093, 20.942118>,  <37.310444, 29.753326, 20.730742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556320, 29.519093, 20.942118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246021, 0.494196, 0.833813,
		-0.749420, -0.642543, 0.159711,
		0.614690, -0.585584, 0.528439,
		37.740726, 29.343418, 21.100649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914383, 29.371515, 21.311518>,  <37.310444, 29.753326, 20.730742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914383, 29.371515, 21.311518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304554, 29.414118, 21.388664>,  <37.538658, 29.439678, 21.434952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304554, 29.414118, 21.388664>,  <36.914383, 29.371515, 21.311518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304554, 29.414118, 21.388664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217865, 0.335987, 0.916323,
		0.032792, -0.935826, 0.350935,
		0.975428, 0.106505, 0.192866,
		37.597183, 29.446070, 21.446524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886826, 29.366087, 21.952829>,  <36.914383, 29.371515, 21.311518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886826, 29.366087, 21.952829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267368, 29.488411, 21.937901>,  <37.495693, 29.561806, 21.928944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267368, 29.488411, 21.937901>,  <36.886826, 29.366087, 21.952829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267368, 29.488411, 21.937901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158377, 0.589382, 0.792178,
		0.264254, -0.747736, 0.609148,
		0.951361, 0.305811, -0.037323,
		37.552776, 29.580154, 21.926704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170883, 29.304234, 22.670664>,  <36.886826, 29.366087, 21.952829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170883, 29.304234, 22.670664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403763, 29.572800, 22.487251>,  <37.543491, 29.733940, 22.377203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403763, 29.572800, 22.487251>,  <37.170883, 29.304234, 22.670664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403763, 29.572800, 22.487251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140035, 0.638344, 0.756906,
		0.800900, -0.376455, 0.465661,
		0.582193, 0.671415, -0.458533,
		37.578423, 29.774223, 22.349691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703838, 29.551624, 23.094898>,  <37.170883, 29.304234, 22.670664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703838, 29.551624, 23.094898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639317, 29.850773, 22.837318>,  <37.600605, 30.030262, 22.682772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639317, 29.850773, 22.837318>,  <37.703838, 29.551624, 23.094898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639317, 29.850773, 22.837318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293263, 0.586697, 0.754840,
		0.942326, 0.310602, 0.124689,
		-0.161300, 0.747872, -0.643949,
		37.590927, 30.075134, 22.644135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853741, 30.164833, 23.566622>,  <37.703838, 29.551624, 23.094898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853741, 30.164833, 23.566622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736805, 30.348555, 23.231104>,  <37.666645, 30.458788, 23.029793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736805, 30.348555, 23.231104>,  <37.853741, 30.164833, 23.566622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736805, 30.348555, 23.231104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154567, 0.842887, 0.515413,
		0.943742, 0.280324, -0.175414,
		-0.292337, 0.459304, -0.838796,
		37.649105, 30.486345, 22.979465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134270, 30.791979, 23.585745>,  <37.853741, 30.164833, 23.566622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134270, 30.791979, 23.585745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813759, 30.831196, 23.349661>,  <37.621452, 30.854725, 23.208012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813759, 30.831196, 23.349661>,  <38.134270, 30.791979, 23.585745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813759, 30.831196, 23.349661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300608, 0.786953, 0.538832,
		0.517293, 0.609175, -0.601094,
		-0.801275, 0.098040, -0.590208,
		37.573376, 30.860607, 23.172598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092518, 31.448082, 23.535475>,  <38.134270, 30.791979, 23.585745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092518, 31.448082, 23.535475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728779, 31.310865, 23.441317>,  <37.510536, 31.228537, 23.384821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728779, 31.310865, 23.441317>,  <38.092518, 31.448082, 23.535475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728779, 31.310865, 23.441317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416002, 0.742173, 0.525473,
		-0.005553, 0.575763, -0.817599,
		-0.909347, -0.343040, -0.235397,
		37.455975, 31.207952, 23.370697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633881, 32.092464, 23.322210>,  <38.092518, 31.448082, 23.535475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633881, 32.092464, 23.322210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402931, 31.783400, 23.427755>,  <37.264362, 31.597960, 23.491083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402931, 31.783400, 23.427755>,  <37.633881, 32.092464, 23.322210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402931, 31.783400, 23.427755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529782, 0.600439, 0.599002,
		-0.621261, 0.206061, -0.756025,
		-0.577378, -0.772665, 0.263862,
		37.229717, 31.551600, 23.506914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936089, 32.292267, 23.260345>,  <37.633881, 32.092464, 23.322210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936089, 32.292267, 23.260345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927959, 31.982655, 23.513474>,  <36.923080, 31.796886, 23.665350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927959, 31.982655, 23.513474>,  <36.936089, 32.292267, 23.260345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927959, 31.982655, 23.513474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569183, 0.529326, 0.629162,
		-0.821959, -0.347403, -0.451324,
		-0.020325, -0.774031, 0.632821,
		36.921864, 31.750444, 23.703320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274326, 32.240471, 23.483746>,  <36.936089, 32.292267, 23.260345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274326, 32.240471, 23.483746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481194, 32.034111, 23.756914>,  <36.605312, 31.910295, 23.920816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481194, 32.034111, 23.756914>,  <36.274326, 32.240471, 23.483746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481194, 32.034111, 23.756914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638632, 0.298613, 0.709210,
		-0.569812, -0.802918, -0.175037,
		0.517169, -0.515900, 0.682922,
		36.636345, 31.879341, 23.961790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788620, 32.206779, 24.021538>,  <36.274326, 32.240471, 23.483746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788620, 32.206779, 24.021538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086468, 32.033188, 24.224398>,  <36.265175, 31.929033, 24.346113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086468, 32.033188, 24.224398>,  <35.788620, 32.206779, 24.021538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086468, 32.033188, 24.224398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556481, 0.015963, 0.830707,
		-0.368606, -0.900781, -0.229615,
		0.744620, -0.433980, 0.507152,
		36.309853, 31.902994, 24.376543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540977, 31.526850, 24.393192>,  <35.788620, 32.206779, 24.021538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540977, 31.526850, 24.393192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871048, 31.659462, 24.576134>,  <36.069092, 31.739029, 24.685898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871048, 31.659462, 24.576134>,  <35.540977, 31.526850, 24.393192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871048, 31.659462, 24.576134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469747, -0.046928, 0.881553,
		0.313723, -0.942277, 0.117011,
		0.825176, 0.331529, 0.457354,
		36.118603, 31.758921, 24.713341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649952, 31.071732, 25.085123>,  <35.540977, 31.526850, 24.393192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649952, 31.071732, 25.085123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861973, 31.409973, 25.110424>,  <35.989185, 31.612919, 25.125605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861973, 31.409973, 25.110424>,  <35.649952, 31.071732, 25.085123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861973, 31.409973, 25.110424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255738, 0.088293, 0.962706,
		0.808484, -0.526457, 0.263053,
		0.530049, 0.845605, 0.063251,
		36.020988, 31.663654, 25.129400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350578, 30.881977, 25.478655>,  <35.649952, 31.071732, 25.085123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350578, 30.881977, 25.478655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243797, 31.266468, 25.506321>,  <36.179729, 31.497162, 25.522921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243797, 31.266468, 25.506321>,  <36.350578, 30.881977, 25.478655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243797, 31.266468, 25.506321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295688, -0.150002, 0.943434,
		0.917228, 0.231398, 0.324266,
		-0.266949, 0.961226, 0.069165,
		36.163712, 31.554836, 25.527071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614025, 31.190191, 26.162502>,  <36.350578, 30.881977, 25.478655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614025, 31.190191, 26.162502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335129, 31.458181, 26.060528>,  <36.167793, 31.618977, 25.999344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335129, 31.458181, 26.060528>,  <36.614025, 31.190191, 26.162502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335129, 31.458181, 26.060528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303325, 0.046487, 0.951752,
		0.649503, 0.740925, 0.170808,
		-0.697237, 0.669976, -0.254935,
		36.125957, 31.659174, 25.984047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752258, 31.770844, 26.549652>,  <36.614025, 31.190191, 26.162502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752258, 31.770844, 26.549652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366116, 31.800949, 26.449715>,  <36.134430, 31.819012, 26.389753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366116, 31.800949, 26.449715>,  <36.752258, 31.770844, 26.549652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366116, 31.800949, 26.449715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220955, 0.273531, 0.936141,
		0.138798, 0.958914, -0.247425,
		-0.965357, 0.075264, -0.249843,
		36.076508, 31.823528, 26.374762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633308, 32.476604, 26.835384>,  <36.752258, 31.770844, 26.549652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633308, 32.476604, 26.835384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267769, 32.319748, 26.793224>,  <36.048447, 32.225636, 26.767929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267769, 32.319748, 26.793224>,  <36.633308, 32.476604, 26.835384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267769, 32.319748, 26.793224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253091, 0.347084, 0.903038,
		-0.317535, 0.851915, -0.416429,
		-0.913847, -0.392141, -0.105401,
		35.993614, 32.202106, 26.761604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232189, 32.905605, 27.173008>,  <36.633308, 32.476604, 26.835384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232189, 32.905605, 27.173008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974236, 32.601593, 27.140818>,  <35.819462, 32.419186, 27.121504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974236, 32.601593, 27.140818>,  <36.232189, 32.905605, 27.173008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974236, 32.601593, 27.140818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344842, 0.195388, 0.918100,
		-0.682058, 0.619823, -0.388093,
		-0.644889, -0.760028, -0.080475,
		35.780769, 32.373585, 27.116674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464195, 33.173321, 27.172646>,  <36.232189, 32.905605, 27.173008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464195, 33.173321, 27.172646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468544, 32.782063, 27.255692>,  <35.471153, 32.547306, 27.305519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468544, 32.782063, 27.255692>,  <35.464195, 33.173321, 27.172646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468544, 32.782063, 27.255692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584233, 0.162291, 0.795194,
		-0.811513, -0.129941, -0.569703,
		0.010871, -0.978150, 0.207617,
		35.471806, 32.488617, 27.317976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740116, 32.983650, 27.329618>,  <35.464195, 33.173321, 27.172646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740116, 32.983650, 27.329618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988117, 32.717251, 27.495527>,  <35.136917, 32.557411, 27.595074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988117, 32.717251, 27.495527>,  <34.740116, 32.983650, 27.329618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988117, 32.717251, 27.495527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537627, 0.024402, 0.842830,
		-0.571447, -0.745551, -0.342931,
		0.620004, -0.666001, 0.414773,
		35.174118, 32.517452, 27.619959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365860, 32.795757, 27.962339>,  <34.740116, 32.983650, 27.329618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365860, 32.795757, 27.962339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728085, 32.632256, 28.007751>,  <34.945419, 32.534157, 28.035000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728085, 32.632256, 28.007751>,  <34.365860, 32.795757, 27.962339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728085, 32.632256, 28.007751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123276, 0.002523, 0.992369,
		-0.405918, -0.912643, -0.048104,
		0.905557, -0.408750, 0.113531,
		34.999752, 32.509632, 28.041811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343765, 32.159271, 28.307800>,  <34.365860, 32.795757, 27.962339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343765, 32.159271, 28.307800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719696, 32.269936, 28.387985>,  <34.945255, 32.336334, 28.436096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719696, 32.269936, 28.387985>,  <34.343765, 32.159271, 28.307800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719696, 32.269936, 28.387985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267323, 0.230094, 0.935732,
		0.212739, -0.933019, 0.290203,
		0.939830, 0.276645, 0.200467,
		35.001644, 32.352936, 28.448124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494667, 31.856308, 29.012682>,  <34.343765, 32.159271, 28.307800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494667, 31.856308, 29.012682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782001, 32.131519, 28.971472>,  <34.954403, 32.296646, 28.946745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782001, 32.131519, 28.971472>,  <34.494667, 31.856308, 29.012682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782001, 32.131519, 28.971472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036427, 0.185085, 0.982047,
		0.694743, -0.701686, 0.158016,
		0.718335, 0.688026, -0.103026,
		34.997501, 32.337929, 28.940563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976944, 31.744938, 29.536190>,  <34.494667, 31.856308, 29.012682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976944, 31.744938, 29.536190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016800, 32.128513, 29.429977>,  <35.040714, 32.358658, 29.366249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016800, 32.128513, 29.429977>,  <34.976944, 31.744938, 29.536190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016800, 32.128513, 29.429977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020112, 0.268747, 0.963001,
		0.994820, -0.090616, 0.046065,
		0.099643, 0.958939, -0.265532,
		35.046692, 32.416195, 29.350317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500706, 31.896780, 29.949308>,  <34.976944, 31.744938, 29.536190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500706, 31.896780, 29.949308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350723, 32.251377, 29.840837>,  <35.260735, 32.464134, 29.775755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350723, 32.251377, 29.840837>,  <35.500706, 31.896780, 29.949308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350723, 32.251377, 29.840837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144453, 0.344817, 0.927488,
		0.915720, 0.308593, -0.257347,
		-0.374954, 0.886494, -0.271179,
		35.238235, 32.517326, 29.759483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905769, 32.297222, 30.287382>,  <35.500706, 31.896780, 29.949308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905769, 32.297222, 30.287382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589687, 32.525444, 30.197908>,  <35.400036, 32.662376, 30.144224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589687, 32.525444, 30.197908>,  <35.905769, 32.297222, 30.287382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589687, 32.525444, 30.197908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096790, 0.244224, 0.964876,
		0.605147, 0.784104, -0.137763,
		-0.790208, 0.570558, -0.223685,
		35.352627, 32.696613, 30.130802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931416, 32.936127, 30.731434>,  <35.905769, 32.297222, 30.287382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931416, 32.936127, 30.731434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541496, 32.914551, 30.644844>,  <35.307545, 32.901604, 30.592890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541496, 32.914551, 30.644844>,  <35.931416, 32.936127, 30.731434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541496, 32.914551, 30.644844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213690, 0.504502, 0.836549,
		0.064089, 0.861724, -0.503313,
		-0.974797, -0.053940, -0.216475,
		35.249058, 32.898369, 30.579901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786961, 33.559662, 30.836277>,  <35.931416, 32.936127, 30.731434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786961, 33.559662, 30.836277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423199, 33.393337, 30.839966>,  <35.204941, 33.293541, 30.842178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423199, 33.393337, 30.839966>,  <35.786961, 33.559662, 30.836277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423199, 33.393337, 30.839966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247717, 0.559311, 0.791080,
		-0.334099, 0.717127, -0.611643,
		-0.909403, -0.415813, 0.009221,
		35.150379, 33.268593, 30.842731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284088, 34.081154, 30.956177>,  <35.786961, 33.559662, 30.836277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284088, 34.081154, 30.956177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087669, 33.751495, 31.069067>,  <34.969818, 33.553699, 31.136801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087669, 33.751495, 31.069067>,  <35.284088, 34.081154, 30.956177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087669, 33.751495, 31.069067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255289, 0.445892, 0.857909,
		-0.832887, 0.349225, -0.429350,
		-0.491046, -0.824150, 0.282224,
		34.940357, 33.504250, 31.153734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699345, 34.302193, 31.233471>,  <35.284088, 34.081154, 30.956177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699345, 34.302193, 31.233471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713459, 33.928288, 31.374872>,  <34.721928, 33.703941, 31.459713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713459, 33.928288, 31.374872>,  <34.699345, 34.302193, 31.233471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713459, 33.928288, 31.374872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405975, 0.309815, 0.859767,
		-0.913203, -0.173850, -0.368560,
		0.035285, -0.934768, 0.353503,
		34.724045, 33.647858, 31.480923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036495, 34.158611, 31.505253>,  <34.699345, 34.302193, 31.233471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036495, 34.158611, 31.505253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243172, 33.872883, 31.694048>,  <34.367180, 33.701447, 31.807325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243172, 33.872883, 31.694048>,  <34.036495, 34.158611, 31.505253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243172, 33.872883, 31.694048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418863, 0.269899, 0.867011,
		-0.746714, -0.645677, -0.159748,
		0.516693, -0.714322, 0.471987,
		34.398178, 33.658585, 31.835644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533909, 33.581074, 31.833864>,  <34.036495, 34.158611, 31.505253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533909, 33.581074, 31.833864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886360, 33.598145, 32.022243>,  <34.097832, 33.608387, 32.135269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886360, 33.598145, 32.022243>,  <33.533909, 33.581074, 31.833864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886360, 33.598145, 32.022243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472282, 0.129398, 0.871898,
		-0.023730, -0.990674, 0.134171,
		0.881128, 0.042677, 0.470948,
		34.150700, 33.610947, 32.163528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411301, 33.157490, 32.527031>,  <33.533909, 33.581074, 31.833864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411301, 33.157490, 32.527031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724312, 33.401424, 32.577232>,  <33.912117, 33.547787, 32.607353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724312, 33.401424, 32.577232>,  <33.411301, 33.157490, 32.527031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724312, 33.401424, 32.577232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284694, 0.171196, 0.943208,
		0.553718, -0.773814, 0.307583,
		0.782525, 0.609838, 0.125506,
		33.959068, 33.584377, 32.614883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478828, 33.232372, 33.236423>,  <33.411301, 33.157490, 32.527031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478828, 33.232372, 33.236423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715229, 33.527271, 33.105469>,  <33.857071, 33.704208, 33.026897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715229, 33.527271, 33.105469>,  <33.478828, 33.232372, 33.236423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715229, 33.527271, 33.105469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328004, 0.590417, 0.737442,
		0.736971, -0.328447, 0.590759,
		0.591005, 0.737245, -0.327389,
		33.892532, 33.748444, 33.007252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775875, 33.484844, 33.784538>,  <33.478828, 33.232372, 33.236423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775875, 33.484844, 33.784538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827702, 33.795483, 33.537926>,  <33.858799, 33.981865, 33.389957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827702, 33.795483, 33.537926>,  <33.775875, 33.484844, 33.784538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827702, 33.795483, 33.537926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306509, 0.622687, 0.719939,
		0.943008, 0.095693, 0.318713,
		0.129566, 0.776597, -0.616530,
		33.866570, 34.028461, 33.352966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158024, 33.929256, 34.165680>,  <33.775875, 33.484844, 33.784538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158024, 33.929256, 34.165680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967762, 34.153816, 33.894806>,  <33.853603, 34.288551, 33.732281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967762, 34.153816, 33.894806>,  <34.158024, 33.929256, 34.165680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967762, 34.153816, 33.894806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143652, 0.709939, 0.689457,
		0.867822, 0.425223, -0.257041,
		-0.475656, 0.561401, -0.677185,
		33.825066, 34.322235, 33.691650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373405, 34.695889, 34.210495>,  <34.158024, 33.929256, 34.165680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373405, 34.695889, 34.210495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012280, 34.665550, 34.041180>,  <33.795605, 34.647346, 33.939590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012280, 34.665550, 34.041180>,  <34.373405, 34.695889, 34.210495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012280, 34.665550, 34.041180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344583, 0.716485, 0.606558,
		0.257273, 0.693467, -0.672989,
		-0.902814, -0.075850, -0.423289,
		33.741436, 34.642796, 33.914192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691410, 35.210224, 33.679790>,  <34.373405, 34.695889, 34.210495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691410, 35.210224, 33.679790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964367, 35.464325, 33.824451>,  <35.128143, 35.616787, 33.911247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964367, 35.464325, 33.824451>,  <34.691410, 35.210224, 33.679790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964367, 35.464325, 33.824451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390141, 0.101881, -0.915101,
		-0.618164, 0.765557, -0.178314,
		0.682395, 0.635250, 0.361654,
		35.169086, 35.654900, 33.932949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750481, 35.726837, 33.123112>,  <34.691410, 35.210224, 33.679790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750481, 35.726837, 33.123112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080605, 35.685703, 33.345211>,  <35.278679, 35.661022, 33.478470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080605, 35.685703, 33.345211>,  <34.750481, 35.726837, 33.123112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080605, 35.685703, 33.345211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555381, -0.029965, -0.831056,
		0.102096, 0.994247, 0.032380,
		0.825305, -0.102831, 0.555245,
		35.328197, 35.654854, 33.511784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266228, 36.305710, 32.891357>,  <34.750481, 35.726837, 33.123112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266228, 36.305710, 32.891357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474815, 36.008652, 33.059429>,  <35.599968, 35.830418, 33.160271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474815, 36.008652, 33.059429>,  <35.266228, 36.305710, 32.891357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474815, 36.008652, 33.059429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603409, -0.027215, -0.796967,
		0.603300, 0.669130, 0.433928,
		0.521466, -0.742647, 0.420178,
		35.631256, 35.785858, 33.185482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961002, 36.398552, 32.538307>,  <35.266228, 36.305710, 32.891357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961002, 36.398552, 32.538307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985691, 36.042744, 32.719395>,  <36.000504, 35.829258, 32.828045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985691, 36.042744, 32.719395>,  <35.961002, 36.398552, 32.538307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985691, 36.042744, 32.719395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684699, -0.292285, -0.667650,
		0.726207, 0.351184, 0.591010,
		0.061725, -0.889516, 0.452715,
		36.004208, 35.775890, 32.855209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716400, 36.300686, 32.559002>,  <35.961002, 36.398552, 32.538307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716400, 36.300686, 32.559002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543144, 35.945320, 32.619804>,  <36.439190, 35.732101, 32.656288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543144, 35.945320, 32.619804>,  <36.716400, 36.300686, 32.559002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543144, 35.945320, 32.619804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579275, -0.403598, -0.708202,
		0.690527, -0.218698, 0.689452,
		-0.433143, -0.888414, 0.152009,
		36.413200, 35.678795, 32.665405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321918, 35.815136, 32.688248>,  <36.716400, 36.300686, 32.559002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321918, 35.815136, 32.688248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007965, 35.607700, 32.552586>,  <36.819595, 35.483238, 32.471188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007965, 35.607700, 32.552586>,  <37.321918, 35.815136, 32.688248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007965, 35.607700, 32.552586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594296, -0.475043, -0.648958,
		0.175427, -0.710916, 0.681047,
		-0.784881, -0.518588, -0.339159,
		36.772499, 35.452126, 32.450836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633022, 35.119392, 32.548626>,  <37.321918, 35.815136, 32.688248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633022, 35.119392, 32.548626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277863, 35.144176, 32.366287>,  <37.064766, 35.159046, 32.256882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277863, 35.144176, 32.366287>,  <37.633022, 35.119392, 32.548626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277863, 35.144176, 32.366287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365284, -0.507398, -0.780459,
		-0.279656, -0.859482, 0.427883,
		-0.887897, 0.061961, -0.455852,
		37.011494, 35.162766, 32.229530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587818, 34.529747, 32.190105>,  <37.633022, 35.119392, 32.548626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587818, 34.529747, 32.190105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330479, 34.786278, 32.022869>,  <37.176075, 34.940197, 31.922527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330479, 34.786278, 32.022869>,  <37.587818, 34.529747, 32.190105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330479, 34.786278, 32.022869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361241, -0.227196, -0.904371,
		-0.674984, -0.732862, -0.085505,
		-0.643352, 0.641324, -0.418093,
		37.137474, 34.978676, 31.897442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232849, 34.117729, 31.627604>,  <37.587818, 34.529747, 32.190105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232849, 34.117729, 31.627604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204872, 34.508503, 31.546890>,  <37.188087, 34.742966, 31.498463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204872, 34.508503, 31.546890>,  <37.232849, 34.117729, 31.627604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204872, 34.508503, 31.546890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439195, -0.151461, -0.885533,
		-0.895665, -0.150559, -0.418468,
		-0.069944, 0.976930, -0.201783,
		37.183887, 34.801582, 31.486355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977413, 34.126560, 30.975796>,  <37.232849, 34.117729, 31.627604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977413, 34.126560, 30.975796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100052, 34.507145, 30.986544>,  <37.173637, 34.735497, 30.992992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100052, 34.507145, 30.986544>,  <36.977413, 34.126560, 30.975796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100052, 34.507145, 30.986544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354536, -0.087957, -0.930896,
		-0.883347, 0.294938, -0.364295,
		0.306599, 0.951460, 0.026869,
		37.192032, 34.792583, 30.994604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684834, 34.319687, 30.360220>,  <36.977413, 34.126560, 30.975796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684834, 34.319687, 30.360220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942371, 34.607555, 30.464172>,  <37.096893, 34.780277, 30.526545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942371, 34.607555, 30.464172>,  <36.684834, 34.319687, 30.360220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942371, 34.607555, 30.464172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282718, 0.091859, -0.954794,
		-0.711013, 0.688209, -0.144323,
		0.643840, 0.719674, 0.259882,
		37.135525, 34.823456, 30.542137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715630, 34.912743, 29.942371>,  <36.684834, 34.319687, 30.360220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715630, 34.912743, 29.942371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081524, 34.938412, 30.101942>,  <37.301060, 34.953812, 30.197685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081524, 34.938412, 30.101942>,  <36.715630, 34.912743, 29.942371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081524, 34.938412, 30.101942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396353, 0.049356, -0.916771,
		-0.078520, 0.996718, 0.019713,
		0.914734, 0.064171, 0.398927,
		37.355946, 34.957664, 30.221621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071686, 35.472546, 29.645533>,  <36.715630, 34.912743, 29.942371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071686, 35.472546, 29.645533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387012, 35.274094, 29.791084>,  <37.576210, 35.155022, 29.878416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387012, 35.274094, 29.791084>,  <37.071686, 35.472546, 29.645533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387012, 35.274094, 29.791084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485824, 0.139043, -0.862927,
		0.377527, 0.857044, 0.350641,
		0.788320, -0.496128, 0.363880,
		37.623508, 35.125256, 29.900248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727158, 35.824543, 29.428371>,  <37.071686, 35.472546, 29.645533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727158, 35.824543, 29.428371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808304, 35.442223, 29.513493>,  <37.856991, 35.212830, 29.564566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808304, 35.442223, 29.513493>,  <37.727158, 35.824543, 29.428371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808304, 35.442223, 29.513493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552746, -0.067612, -0.830602,
		0.808281, 0.286125, 0.514601,
		0.202862, -0.955804, 0.212804,
		37.869164, 35.155483, 29.577333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327751, 35.756557, 29.132597>,  <37.727158, 35.824543, 29.428371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327751, 35.756557, 29.132597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190758, 35.381882, 29.161776>,  <38.108562, 35.157078, 29.179283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190758, 35.381882, 29.161776>,  <38.327751, 35.756557, 29.132597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190758, 35.381882, 29.161776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338597, -0.195482, -0.920401,
		0.876387, -0.290525, 0.384109,
		-0.342487, -0.936686, 0.072947,
		38.088013, 35.100876, 29.183661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746124, 35.483345, 28.659821>,  <38.327751, 35.756557, 29.132597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746124, 35.483345, 28.659821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477806, 35.188534, 28.692862>,  <38.316814, 35.011646, 28.712687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477806, 35.188534, 28.692862>,  <38.746124, 35.483345, 28.659821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477806, 35.188534, 28.692862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409763, -0.461151, -0.787041,
		0.618161, -0.494099, 0.611345,
		-0.670799, -0.737025, 0.082602,
		38.276566, 34.967426, 28.717642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097313, 34.923527, 28.476732>,  <38.746124, 35.483345, 28.659821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097313, 34.923527, 28.476732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710194, 34.825329, 28.454475>,  <38.477921, 34.766411, 28.441122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710194, 34.825329, 28.454475>,  <39.097313, 34.923527, 28.476732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710194, 34.825329, 28.454475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181697, -0.528305, -0.829385,
		0.174216, -0.812788, 0.555899,
		-0.967799, -0.245498, -0.055642,
		38.419853, 34.751678, 28.437782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015648, 34.208271, 28.243355>,  <39.097313, 34.923527, 28.476732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015648, 34.208271, 28.243355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672756, 34.394470, 28.155294>,  <38.467022, 34.506191, 28.102459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672756, 34.394470, 28.155294>,  <39.015648, 34.208271, 28.243355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672756, 34.394470, 28.155294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098354, -0.567675, -0.817357,
		-0.505453, -0.679011, 0.532412,
		-0.857231, 0.465500, -0.220150,
		38.415588, 34.534122, 28.089249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558586, 33.698639, 28.246830>,  <39.015648, 34.208271, 28.243355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558586, 33.698639, 28.246830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365292, 33.970955, 28.026646>,  <38.249313, 34.134342, 27.894535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365292, 33.970955, 28.026646>,  <38.558586, 33.698639, 28.246830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365292, 33.970955, 28.026646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055670, -0.651369, -0.756716,
		-0.873716, -0.335031, 0.352667,
		-0.483240, 0.680788, -0.550461,
		38.220318, 34.175190, 27.861507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109863, 33.338013, 27.941235>,  <38.558586, 33.698639, 28.246830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109863, 33.338013, 27.941235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112995, 33.673588, 27.723568>,  <38.114872, 33.874935, 27.592968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112995, 33.673588, 27.723568>,  <38.109863, 33.338013, 27.941235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112995, 33.673588, 27.723568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213322, -0.530255, -0.820563,
		-0.976951, 0.122504, 0.174815,
		0.007825, 0.838941, -0.544166,
		38.115341, 33.925270, 27.560318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507465, 33.350536, 27.551374>,  <38.109863, 33.338013, 27.941235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507465, 33.350536, 27.551374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734196, 33.622036, 27.364613>,  <37.870235, 33.784935, 27.252556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734196, 33.622036, 27.364613>,  <37.507465, 33.350536, 27.551374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734196, 33.622036, 27.364613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084347, -0.515954, -0.852454,
		-0.819507, 0.522577, -0.235207,
		0.566829, 0.678753, -0.466905,
		37.904243, 33.825661, 27.224541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157482, 33.430363, 26.909616>,  <37.507465, 33.350536, 27.551374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157482, 33.430363, 26.909616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528687, 33.564636, 26.844975>,  <37.751408, 33.645199, 26.806190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528687, 33.564636, 26.844975>,  <37.157482, 33.430363, 26.909616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528687, 33.564636, 26.844975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005791, -0.420722, -0.907171,
		-0.372511, 0.842799, -0.388491,
		0.928010, 0.335681, -0.161604,
		37.807091, 33.665340, 26.796494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222775, 33.922642, 26.234682>,  <37.157482, 33.430363, 26.909616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222775, 33.922642, 26.234682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581085, 33.761044, 26.308844>,  <37.796070, 33.664085, 26.353340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581085, 33.761044, 26.308844>,  <37.222775, 33.922642, 26.234682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581085, 33.761044, 26.308844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103274, -0.216534, -0.970797,
		0.432342, 0.888764, -0.152244,
		0.895776, -0.403993, 0.185403,
		37.849819, 33.639847, 26.364464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647114, 34.008095, 25.673218>,  <37.222775, 33.922642, 26.234682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647114, 34.008095, 25.673218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879532, 33.737778, 25.854631>,  <38.018982, 33.575588, 25.963480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879532, 33.737778, 25.854631>,  <37.647114, 34.008095, 25.673218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879532, 33.737778, 25.854631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290183, -0.348607, -0.891216,
		0.760381, 0.649445, -0.006453,
		0.581046, -0.675792, 0.453532,
		38.053844, 33.535042, 25.990690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270340, 34.122364, 25.424664>,  <37.647114, 34.008095, 25.673218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270340, 34.122364, 25.424664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278763, 33.745335, 25.557997>,  <38.283817, 33.519115, 25.637997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278763, 33.745335, 25.557997>,  <38.270340, 34.122364, 25.424664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278763, 33.745335, 25.557997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428770, -0.292676, -0.854691,
		0.903168, 0.160924, 0.397984,
		0.021060, -0.942573, 0.333335,
		38.285080, 33.462563, 25.657997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966824, 33.821198, 25.335878>,  <38.270340, 34.122364, 25.424664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966824, 33.821198, 25.335878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733627, 33.499641, 25.383005>,  <38.593708, 33.306709, 25.411282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733627, 33.499641, 25.383005>,  <38.966824, 33.821198, 25.335878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733627, 33.499641, 25.383005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639236, -0.543344, -0.544202,
		0.501494, -0.241952, 0.830640,
		-0.582994, -0.803889, 0.117819,
		38.558727, 33.258476, 25.418350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298527, 33.342937, 25.680733>,  <38.966824, 33.821198, 25.335878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298527, 33.342937, 25.680733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022186, 33.165268, 25.452549>,  <38.856380, 33.058666, 25.315638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022186, 33.165268, 25.452549>,  <39.298527, 33.342937, 25.680733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022186, 33.165268, 25.452549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717457, -0.518634, -0.465053,
		-0.089295, -0.730566, 0.676978,
		-0.690856, -0.444176, -0.570461,
		38.814930, 33.032017, 25.281410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665222, 32.831417, 25.432646>,  <39.298527, 33.342937, 25.680733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665222, 32.831417, 25.432646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333225, 32.774223, 25.216993>,  <39.134026, 32.739906, 25.087601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333225, 32.774223, 25.216993>,  <39.665222, 32.831417, 25.432646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333225, 32.774223, 25.216993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458029, -0.726320, -0.512512,
		-0.318304, -0.672321, 0.668332,
		-0.829995, -0.142981, -0.539133,
		39.084229, 32.731331, 25.055254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387558, 32.071922, 25.567101>,  <39.665222, 32.831417, 25.432646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387558, 32.071922, 25.567101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258392, 32.191963, 25.208065>,  <39.180893, 32.263988, 24.992643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258392, 32.191963, 25.208065>,  <39.387558, 32.071922, 25.567101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258392, 32.191963, 25.208065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275809, -0.877391, -0.392573,
		-0.905350, -0.374329, 0.200548,
		-0.322911, 0.300104, -0.897589,
		39.161518, 32.281994, 24.938787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204491, 31.458673, 25.295137>,  <39.387558, 32.071922, 25.567101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204491, 31.458673, 25.295137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255196, 31.710485, 24.988510>,  <39.285618, 31.861572, 24.804533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255196, 31.710485, 24.988510>,  <39.204491, 31.458673, 25.295137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255196, 31.710485, 24.988510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306767, -0.759796, -0.573240,
		-0.943306, -0.162495, -0.289429,
		0.126758, 0.629528, -0.766568,
		39.293224, 31.899343, 24.758539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757351, 31.186069, 24.720989>,  <39.204491, 31.458673, 25.295137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757351, 31.186069, 24.720989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042866, 31.422026, 24.569971>,  <39.214172, 31.563601, 24.479361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042866, 31.422026, 24.569971>,  <38.757351, 31.186069, 24.720989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042866, 31.422026, 24.569971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196247, -0.685931, -0.700703,
		-0.672310, 0.426058, -0.605371,
		0.713784, 0.589892, -0.377546,
		39.257000, 31.598993, 24.456707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663513, 31.170774, 24.043539>,  <38.757351, 31.186069, 24.720989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663513, 31.170774, 24.043539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034092, 31.319729, 24.065556>,  <39.256439, 31.409101, 24.078766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034092, 31.319729, 24.065556>,  <38.663513, 31.170774, 24.043539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034092, 31.319729, 24.065556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282903, -0.592315, -0.754407,
		-0.248330, 0.714486, -0.654096,
		0.926444, 0.372387, 0.055041,
		39.312027, 31.431444, 24.082067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787094, 31.450439, 23.371767>,  <38.663513, 31.170774, 24.043539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787094, 31.450439, 23.371767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133987, 31.378889, 23.557629>,  <39.342125, 31.335958, 23.669146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133987, 31.378889, 23.557629>,  <38.787094, 31.450439, 23.371767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133987, 31.378889, 23.557629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284220, -0.588386, -0.756982,
		0.408801, 0.788547, -0.459431,
		0.867238, -0.178875, 0.464653,
		39.394157, 31.325226, 23.697025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260918, 31.376137, 22.818176>,  <38.787094, 31.450439, 23.371767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260918, 31.376137, 22.818176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452728, 31.203686, 23.123905>,  <39.567814, 31.100216, 23.307343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452728, 31.203686, 23.123905>,  <39.260918, 31.376137, 22.818176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452728, 31.203686, 23.123905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330684, -0.718005, -0.612467,
		0.812838, 0.546441, -0.201733,
		0.479522, -0.431127, 0.764322,
		39.596584, 31.074348, 23.353201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866959, 31.210770, 22.510769>,  <39.260918, 31.376137, 22.818176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866959, 31.210770, 22.510769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870823, 31.002228, 22.852083>,  <39.873142, 30.877102, 23.056871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870823, 31.002228, 22.852083>,  <39.866959, 31.210770, 22.510769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870823, 31.002228, 22.852083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318118, -0.807388, -0.496916,
		0.948002, 0.276244, 0.158055,
		0.009659, -0.521357, 0.853284,
		39.873722, 30.845821, 23.108068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571747, 30.986019, 22.567753>,  <39.866959, 31.210770, 22.510769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571747, 30.986019, 22.567753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342381, 30.734697, 22.778059>,  <40.204762, 30.583904, 22.904243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342381, 30.734697, 22.778059>,  <40.571747, 30.986019, 22.567753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342381, 30.734697, 22.778059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452220, -0.777866, -0.436373,
		0.683152, -0.012459, 0.730170,
		-0.573412, -0.628306, 0.525766,
		40.170357, 30.546206, 22.935789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075829, 30.490896, 22.880545>,  <40.571747, 30.986019, 22.567753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075829, 30.490896, 22.880545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733635, 30.283762, 22.880251>,  <40.528320, 30.159481, 22.880075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733635, 30.283762, 22.880251>,  <41.075829, 30.490896, 22.880545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733635, 30.283762, 22.880251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483079, -0.797551, -0.361312,
		0.186514, -0.309451, 0.932444,
		-0.855481, -0.517834, -0.000735,
		40.476990, 30.128412, 22.880030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290741, 29.895247, 23.136145>,  <41.075829, 30.490896, 22.880545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290741, 29.895247, 23.136145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939533, 29.817022, 22.961405>,  <40.728809, 29.770088, 22.856560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939533, 29.817022, 22.961405>,  <41.290741, 29.895247, 23.136145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939533, 29.817022, 22.961405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340693, -0.896426, -0.283459,
		-0.336171, -0.397714, 0.853705,
		-0.878019, -0.195561, -0.436851,
		40.676128, 29.758354, 22.830349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382500, 29.152620, 22.872063>,  <41.290741, 29.895247, 23.136145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382500, 29.152620, 22.872063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665543, 28.904106, 23.006702>,  <41.835369, 28.754997, 23.087486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665543, 28.904106, 23.006702>,  <41.382500, 29.152620, 22.872063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665543, 28.904106, 23.006702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258052, 0.216243, 0.941620,
		-0.657801, -0.753157, -0.007309,
		0.707607, -0.621284, 0.336599,
		41.877823, 28.717720, 23.107681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134853, 28.852242, 23.440191>,  <41.382500, 29.152620, 22.872063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134853, 28.852242, 23.440191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526733, 28.795490, 23.496841>,  <41.761860, 28.761438, 23.530832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526733, 28.795490, 23.496841>,  <41.134853, 28.852242, 23.440191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526733, 28.795490, 23.496841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103704, 0.245920, 0.963726,
		-0.171563, -0.958850, 0.226215,
		0.979700, -0.141881, 0.141627,
		41.820644, 28.752926, 23.539330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274513, 28.481630, 24.040804>,  <41.134853, 28.852242, 23.440191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274513, 28.481630, 24.040804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607594, 28.696285, 23.986214>,  <41.807442, 28.825077, 23.953461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607594, 28.696285, 23.986214>,  <41.274513, 28.481630, 24.040804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607594, 28.696285, 23.986214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030951, 0.291193, 0.956164,
		0.552852, -0.791978, 0.259087,
		0.832705, 0.536636, -0.136474,
		41.857407, 28.857275, 23.945272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610477, 28.511700, 24.695694>,  <41.274513, 28.481630, 24.040804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610477, 28.511700, 24.695694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821373, 28.796867, 24.510756>,  <41.947910, 28.967968, 24.399792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821373, 28.796867, 24.510756>,  <41.610477, 28.511700, 24.695694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821373, 28.796867, 24.510756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124605, 0.473368, 0.872007,
		0.840531, -0.517367, 0.160745,
		0.527239, 0.712919, -0.462347,
		41.979546, 29.010744, 24.372051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145290, 28.601776, 25.179546>,  <41.610477, 28.511700, 24.695694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145290, 28.601776, 25.179546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085102, 28.917149, 24.940971>,  <42.048988, 29.106371, 24.797827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085102, 28.917149, 24.940971>,  <42.145290, 28.601776, 25.179546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085102, 28.917149, 24.940971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107906, 0.586604, 0.802653,
		0.982708, 0.185136, -0.003192,
		-0.150472, 0.788429, -0.596437,
		42.039959, 29.153677, 24.762041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503738, 29.172285, 25.540344>,  <42.145290, 28.601776, 25.179546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503738, 29.172285, 25.540344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241047, 29.352926, 25.298761>,  <42.083431, 29.461311, 25.153812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241047, 29.352926, 25.298761>,  <42.503738, 29.172285, 25.540344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241047, 29.352926, 25.298761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135997, 0.716814, 0.683873,
		0.741762, 0.531256, -0.409336,
		-0.656729, 0.451602, -0.603955,
		42.044029, 29.488407, 25.117575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627117, 29.867729, 25.714224>,  <42.503738, 29.172285, 25.540344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627117, 29.867729, 25.714224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287430, 29.875427, 25.503145>,  <42.083618, 29.880047, 25.376499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287430, 29.875427, 25.503145>,  <42.627117, 29.867729, 25.714224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287430, 29.875427, 25.503145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323947, 0.770194, 0.549418,
		0.417002, 0.637519, -0.647826,
		-0.849216, 0.019247, -0.527695,
		42.032665, 29.881201, 25.344837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510521, 30.544907, 25.573673>,  <42.627117, 29.867729, 25.714224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510521, 30.544907, 25.573673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153511, 30.370140, 25.528942>,  <41.939304, 30.265280, 25.502104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153511, 30.370140, 25.528942>,  <42.510521, 30.544907, 25.573673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153511, 30.370140, 25.528942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406539, 0.672052, 0.618928,
		-0.195266, 0.597871, -0.777446,
		-0.892523, -0.436917, -0.111829,
		41.885754, 30.239065, 25.495394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016224, 31.174080, 25.537766>,  <42.510521, 30.544907, 25.573673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016224, 31.174080, 25.537766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816029, 30.841011, 25.632566>,  <41.695911, 30.641171, 25.689447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816029, 30.841011, 25.632566>,  <42.016224, 31.174080, 25.537766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816029, 30.841011, 25.632566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540885, 0.514495, 0.665385,
		-0.675984, 0.204826, -0.707878,
		-0.500488, -0.832671, 0.237003,
		41.665882, 30.591209, 25.703667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240616, 31.392929, 25.724464>,  <42.016224, 31.174080, 25.537766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240616, 31.392929, 25.724464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281384, 31.027317, 25.881516>,  <41.305843, 30.807949, 25.975746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281384, 31.027317, 25.881516>,  <41.240616, 31.392929, 25.724464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281384, 31.027317, 25.881516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379345, 0.329151, 0.864729,
		-0.919625, -0.237076, -0.313186,
		0.101921, -0.914032, 0.392629,
		41.311958, 30.753107, 25.999304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592831, 31.207424, 25.984669>,  <41.240616, 31.392929, 25.724464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592831, 31.207424, 25.984669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848118, 30.972736, 26.184046>,  <41.001289, 30.831924, 26.303671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848118, 30.972736, 26.184046>,  <40.592831, 31.207424, 25.984669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848118, 30.972736, 26.184046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476745, 0.207159, 0.854283,
		-0.604480, -0.782845, -0.147503,
		0.638215, -0.586718, 0.498441,
		41.039581, 30.796721, 26.333578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107723, 30.705685, 26.321550>,  <40.592831, 31.207424, 25.984669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107723, 30.705685, 26.321550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458202, 30.722286, 26.513617>,  <40.668488, 30.732246, 26.628857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458202, 30.722286, 26.513617>,  <40.107723, 30.705685, 26.321550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458202, 30.722286, 26.513617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472620, 0.269141, 0.839163,
		-0.094405, -0.962206, 0.255435,
		0.876195, 0.041502, 0.480166,
		40.721062, 30.734737, 26.657667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987164, 30.336746, 26.902866>,  <40.107723, 30.705685, 26.321550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987164, 30.336746, 26.902866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314911, 30.549065, 26.989489>,  <40.511559, 30.676455, 27.041462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314911, 30.549065, 26.989489>,  <39.987164, 30.336746, 26.902866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314911, 30.549065, 26.989489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310001, 0.092493, 0.946227,
		0.482222, -0.842439, 0.240332,
		0.819367, 0.530794, 0.216555,
		40.560722, 30.708303, 27.054455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099369, 30.181562, 27.506220>,  <39.987164, 30.336746, 26.902866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099369, 30.181562, 27.506220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314342, 30.516319, 27.464697>,  <40.443325, 30.717175, 27.439783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314342, 30.516319, 27.464697>,  <40.099369, 30.181562, 27.506220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314342, 30.516319, 27.464697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435367, 0.380768, 0.815764,
		0.722234, -0.393223, 0.568993,
		0.537432, 0.836894, -0.103808,
		40.475571, 30.767387, 27.433556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473232, 30.322582, 28.215078>,  <40.099369, 30.181562, 27.506220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473232, 30.322582, 28.215078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470425, 30.690292, 28.057657>,  <40.468742, 30.910917, 27.963203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470425, 30.690292, 28.057657>,  <40.473232, 30.322582, 28.215078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470425, 30.690292, 28.057657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233971, 0.381131, 0.894425,
		0.972218, 0.098355, 0.212410,
		-0.007015, 0.919274, -0.393555,
		40.468319, 30.966074, 27.939590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839806, 30.782776, 28.737406>,  <40.473232, 30.322582, 28.215078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839806, 30.782776, 28.737406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615429, 31.026941, 28.513716>,  <40.480801, 31.173441, 28.379501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615429, 31.026941, 28.513716>,  <40.839806, 30.782776, 28.737406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615429, 31.026941, 28.513716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077512, 0.633819, 0.769588,
		0.824216, 0.475043, -0.308224,
		-0.560945, 0.610416, -0.559226,
		40.447144, 31.210066, 28.345947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115322, 31.527021, 28.851284>,  <40.839806, 30.782776, 28.737406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115322, 31.527021, 28.851284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750130, 31.593315, 28.702158>,  <40.531013, 31.633091, 28.612682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750130, 31.593315, 28.702158>,  <41.115322, 31.527021, 28.851284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750130, 31.593315, 28.702158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156124, 0.702310, 0.694540,
		0.376941, 0.692310, -0.615323,
		-0.912985, 0.165735, -0.372815,
		40.476234, 31.643036, 28.590313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972702, 32.220539, 28.833529>,  <41.115322, 31.527021, 28.851284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972702, 32.220539, 28.833529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599632, 32.076416, 28.840487>,  <40.375790, 31.989943, 28.844662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599632, 32.076416, 28.840487>,  <40.972702, 32.220539, 28.833529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599632, 32.076416, 28.840487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238621, 0.652420, 0.719311,
		-0.270520, 0.666730, -0.694471,
		-0.932673, -0.360303, 0.017397,
		40.319832, 31.968325, 28.845705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594166, 32.799362, 28.846716>,  <40.972702, 32.220539, 28.833529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594166, 32.799362, 28.846716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351662, 32.509232, 28.977163>,  <40.206158, 32.335155, 29.055431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351662, 32.509232, 28.977163>,  <40.594166, 32.799362, 28.846716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351662, 32.509232, 28.977163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267738, 0.572295, 0.775109,
		-0.748841, 0.382604, -0.541157,
		-0.606262, -0.725322, 0.326121,
		40.169785, 32.291634, 29.074999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974743, 33.091850, 28.887905>,  <40.594166, 32.799362, 28.846716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974743, 33.091850, 28.887905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973938, 32.792175, 29.152847>,  <39.973454, 32.612370, 29.311813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973938, 32.792175, 29.152847>,  <39.974743, 33.091850, 28.887905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973938, 32.792175, 29.152847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318457, 0.628354, 0.709758,
		-0.947935, -0.209504, -0.239849,
		-0.002013, -0.749186, 0.662357,
		39.973335, 32.567421, 29.351555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292622, 33.180634, 29.214510>,  <39.974743, 33.091850, 28.887905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292622, 33.180634, 29.214510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499290, 32.937920, 29.456127>,  <39.623291, 32.792294, 29.601097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499290, 32.937920, 29.456127>,  <39.292622, 33.180634, 29.214510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499290, 32.937920, 29.456127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397150, 0.455160, 0.796932,
		-0.758499, -0.651648, -0.005815,
		0.516672, -0.606782, 0.604041,
		39.654293, 32.755886, 29.637339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836018, 33.028324, 29.784714>,  <39.292622, 33.180634, 29.214510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836018, 33.028324, 29.784714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190079, 32.914276, 29.931799>,  <39.402515, 32.845848, 30.020050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190079, 32.914276, 29.931799>,  <38.836018, 33.028324, 29.784714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190079, 32.914276, 29.931799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166720, 0.543455, 0.822715,
		-0.434406, -0.789534, 0.433506,
		0.885153, -0.285118, 0.367711,
		39.455624, 32.828739, 30.042112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669605, 32.783936, 30.363359>,  <38.836018, 33.028324, 29.784714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669605, 32.783936, 30.363359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059502, 32.862564, 30.405754>,  <39.293442, 32.909740, 30.431190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059502, 32.862564, 30.405754>,  <38.669605, 32.783936, 30.363359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059502, 32.862564, 30.405754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170977, 0.351570, 0.920416,
		0.143664, -0.915292, 0.376300,
		0.974744, 0.196569, 0.105986,
		39.351925, 32.921535, 30.437550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810509, 32.525948, 31.023058>,  <38.669605, 32.783936, 30.363359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810509, 32.525948, 31.023058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116791, 32.769367, 30.939762>,  <39.300560, 32.915421, 30.889784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116791, 32.769367, 30.939762>,  <38.810509, 32.525948, 31.023058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116791, 32.769367, 30.939762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037568, 0.365523, 0.930044,
		0.642096, -0.704315, 0.302745,
		0.765704, 0.608551, -0.208241,
		39.346500, 32.951931, 30.877291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196949, 32.568314, 31.601963>,  <38.810509, 32.525948, 31.023058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196949, 32.568314, 31.601963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283688, 32.904587, 31.403475>,  <39.335732, 33.106350, 31.284382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283688, 32.904587, 31.403475>,  <39.196949, 32.568314, 31.601963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283688, 32.904587, 31.403475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023465, 0.512657, 0.858273,
		0.975925, -0.174466, 0.130892,
		0.216842, 0.840681, -0.496220,
		39.348740, 33.156792, 31.254608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656887, 32.908257, 32.029243>,  <39.196949, 32.568314, 31.601963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656887, 32.908257, 32.029243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527138, 33.199570, 31.787785>,  <39.449287, 33.374359, 31.642910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527138, 33.199570, 31.787785>,  <39.656887, 32.908257, 32.029243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527138, 33.199570, 31.787785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044815, 0.625599, 0.778857,
		0.944868, 0.279689, -0.170287,
		-0.324369, 0.728286, -0.603643,
		39.429829, 33.418056, 31.606691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026207, 33.468956, 32.245148>,  <39.656887, 32.908257, 32.029243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026207, 33.468956, 32.245148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719738, 33.617241, 32.035175>,  <39.535854, 33.706211, 31.909193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719738, 33.617241, 32.035175>,  <40.026207, 33.468956, 32.245148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719738, 33.617241, 32.035175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099353, 0.738689, 0.666684,
		0.634905, 0.562950, -0.529135,
		-0.766176, 0.370709, -0.524928,
		39.489883, 33.728455, 31.877697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138702, 34.080154, 32.338764>,  <40.026207, 33.468956, 32.245148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138702, 34.080154, 32.338764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750542, 34.068264, 32.242893>,  <39.517647, 34.061131, 32.185371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750542, 34.068264, 32.242893>,  <40.138702, 34.080154, 32.338764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750542, 34.068264, 32.242893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216976, 0.543120, 0.811136,
		0.106058, 0.839129, -0.533493,
		-0.970398, -0.029727, -0.239674,
		39.459423, 34.059345, 32.170990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928719, 34.730087, 32.370510>,  <40.138702, 34.080154, 32.338764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928719, 34.730087, 32.370510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591942, 34.516895, 32.404110>,  <39.389874, 34.388981, 32.424271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591942, 34.516895, 32.404110>,  <39.928719, 34.730087, 32.370510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591942, 34.516895, 32.404110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243440, 0.514177, 0.822410,
		-0.481523, 0.671975, -0.562659,
		-0.841945, -0.532983, 0.084003,
		39.339359, 34.356998, 32.429310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534546, 35.154015, 32.593632>,  <39.928719, 34.730087, 32.370510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534546, 35.154015, 32.593632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323093, 34.832035, 32.701420>,  <39.196224, 34.638847, 32.766094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323093, 34.832035, 32.701420>,  <39.534546, 35.154015, 32.593632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323093, 34.832035, 32.701420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127050, 0.388909, 0.912474,
		-0.839292, 0.448123, -0.307856,
		-0.528629, -0.804945, 0.269475,
		39.164505, 34.590553, 32.782261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867043, 35.377380, 32.976501>,  <39.534546, 35.154015, 32.593632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867043, 35.377380, 32.976501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960125, 35.000862, 33.074322>,  <39.015972, 34.774952, 33.133015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960125, 35.000862, 33.074322>,  <38.867043, 35.377380, 32.976501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960125, 35.000862, 33.074322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107321, 0.225064, 0.968415,
		-0.966608, -0.251597, -0.048648,
		0.232702, -0.941299, 0.244551,
		39.029934, 34.718472, 33.147686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499523, 35.179363, 33.545628>,  <38.867043, 35.377380, 32.976501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499523, 35.179363, 33.545628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778538, 34.893555, 33.567165>,  <38.945946, 34.722069, 33.580090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778538, 34.893555, 33.567165>,  <38.499523, 35.179363, 33.545628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778538, 34.893555, 33.567165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068444, 0.141241, 0.987606,
		-0.713269, -0.685210, 0.147426,
		0.697541, -0.714519, 0.053844,
		38.987801, 34.679199, 33.583317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271763, 34.710087, 34.024799>,  <38.499523, 35.179363, 33.545628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271763, 34.710087, 34.024799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671200, 34.689926, 34.031422>,  <38.910862, 34.677830, 34.035397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671200, 34.689926, 34.031422>,  <38.271763, 34.710087, 34.024799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671200, 34.689926, 34.031422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012725, 0.075487, 0.997065,
		-0.051505, -0.995872, 0.074740,
		0.998592, -0.050403, 0.016560,
		38.970776, 34.674805, 34.036388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401737, 34.361103, 34.603115>,  <38.271763, 34.710087, 34.024799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401737, 34.361103, 34.603115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776226, 34.487030, 34.540661>,  <39.000919, 34.562588, 34.503189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776226, 34.487030, 34.540661>,  <38.401737, 34.361103, 34.603115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776226, 34.487030, 34.540661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152867, 0.035209, 0.987619,
		0.316419, -0.948498, -0.015162,
		0.936222, 0.314819, -0.156134,
		39.057091, 34.581474, 34.493820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952572, 33.902946, 34.905487>,  <38.401737, 34.361103, 34.603115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952572, 33.902946, 34.905487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114197, 34.266933, 34.868195>,  <39.211174, 34.485325, 34.845821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114197, 34.266933, 34.868195>,  <38.952572, 33.902946, 34.905487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114197, 34.266933, 34.868195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206515, 0.008538, 0.978406,
		0.891113, -0.414593, -0.184472,
		0.404065, 0.909967, -0.093228,
		39.235416, 34.539925, 34.840225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420582, 33.933956, 35.355438>,  <38.952572, 33.902946, 34.905487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420582, 33.933956, 35.355438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352169, 34.325077, 35.307034>,  <39.311123, 34.559750, 35.277992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352169, 34.325077, 35.307034>,  <39.420582, 33.933956, 35.355438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352169, 34.325077, 35.307034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154606, 0.147933, 0.976838,
		0.973060, 0.148362, -0.176476,
		-0.171032, 0.977806, -0.121010,
		39.300861, 34.618420, 35.270729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056164, 34.285248, 35.735291>,  <39.420582, 33.933956, 35.355438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056164, 34.285248, 35.735291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747433, 34.538700, 35.714169>,  <39.562195, 34.690773, 35.701496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747433, 34.538700, 35.714169>,  <40.056164, 34.285248, 35.735291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747433, 34.538700, 35.714169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090778, 0.192007, 0.977186,
		0.629317, 0.749427, -0.205717,
		-0.771829, 0.633634, -0.052802,
		39.515884, 34.728790, 35.698326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189571, 34.750980, 36.217735>,  <40.056164, 34.285248, 35.735291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189571, 34.750980, 36.217735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805382, 34.831482, 36.140816>,  <39.574867, 34.879784, 36.094662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805382, 34.831482, 36.140816>,  <40.189571, 34.750980, 36.217735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805382, 34.831482, 36.140816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143946, 0.232193, 0.961960,
		0.238245, 0.951623, -0.194047,
		-0.960479, 0.201249, -0.192301,
		39.517239, 34.891857, 36.083126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050797, 35.449501, 36.476837>,  <40.189571, 34.750980, 36.217735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050797, 35.449501, 36.476837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707077, 35.246075, 36.455040>,  <39.500847, 35.124020, 36.441959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707077, 35.246075, 36.455040>,  <40.050797, 35.449501, 36.476837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707077, 35.246075, 36.455040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153770, 0.155247, 0.975835,
		-0.487818, 0.846910, -0.211606,
		-0.859295, -0.508569, -0.054497,
		39.449287, 35.093506, 36.438690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627625, 35.860741, 36.779442>,  <40.050797, 35.449501, 36.476837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627625, 35.860741, 36.779442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466770, 35.494534, 36.783726>,  <39.370258, 35.274811, 36.786297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466770, 35.494534, 36.783726>,  <39.627625, 35.860741, 36.779442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466770, 35.494534, 36.783726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205867, 0.101809, 0.973270,
		-0.892135, 0.389183, -0.229416,
		-0.402137, -0.915517, 0.010708,
		39.346130, 35.219879, 36.786938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104588, 35.967327, 37.305321>,  <39.627625, 35.860741, 36.779442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104588, 35.967327, 37.305321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120445, 35.569599, 37.265820>,  <39.129959, 35.330963, 37.242119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120445, 35.569599, 37.265820>,  <39.104588, 35.967327, 37.305321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120445, 35.569599, 37.265820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242458, -0.105453, 0.964414,
		-0.969352, -0.014284, -0.245261,
		0.039639, -0.994322, -0.098757,
		39.132336, 35.271301, 37.236191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396706, 35.600090, 37.527012>,  <39.104588, 35.967327, 37.305321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396706, 35.600090, 37.527012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696560, 35.336594, 37.552631>,  <38.876472, 35.178493, 37.568005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696560, 35.336594, 37.552631>,  <38.396706, 35.600090, 37.527012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696560, 35.336594, 37.552631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322143, -0.278623, 0.904761,
		-0.578160, -0.698875, -0.421075,
		0.749636, -0.658743, 0.064049,
		38.921452, 35.138969, 37.571846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137150, 35.098724, 38.102119>,  <38.396706, 35.600090, 37.527012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137150, 35.098724, 38.102119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529705, 35.041435, 38.050938>,  <38.765236, 35.007061, 38.020229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529705, 35.041435, 38.050938>,  <38.137150, 35.098724, 38.102119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529705, 35.041435, 38.050938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075864, -0.322963, 0.943366,
		-0.176434, -0.935512, -0.306086,
		0.981385, -0.143220, -0.127953,
		38.824120, 34.998470, 38.012550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282078, 34.534172, 38.538643>,  <38.137150, 35.098724, 38.102119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282078, 34.534172, 38.538643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648033, 34.671806, 38.454185>,  <38.867607, 34.754387, 38.403511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648033, 34.671806, 38.454185>,  <38.282078, 34.534172, 38.538643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648033, 34.671806, 38.454185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266841, -0.122942, 0.955867,
		0.302938, -0.930856, -0.204294,
		0.914890, 0.344082, -0.211147,
		38.922501, 34.775032, 38.390842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655529, 34.076099, 38.895679>,  <38.282078, 34.534172, 38.538643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655529, 34.076099, 38.895679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901855, 34.388176, 38.851742>,  <39.049652, 34.575424, 38.825378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901855, 34.388176, 38.851742>,  <38.655529, 34.076099, 38.895679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901855, 34.388176, 38.851742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310081, -0.111830, 0.944110,
		0.724307, -0.615458, -0.310790,
		0.615816, 0.780196, -0.109843,
		39.086601, 34.622234, 38.818790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295059, 33.803429, 39.019779>,  <38.655529, 34.076099, 38.895679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295059, 33.803429, 39.019779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322449, 34.200977, 39.054470>,  <39.338882, 34.439507, 39.075283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322449, 34.200977, 39.054470>,  <39.295059, 33.803429, 39.019779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322449, 34.200977, 39.054470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380682, -0.106383, 0.918566,
		0.922167, -0.029879, -0.385635,
		0.068471, 0.993876, 0.086729,
		39.342991, 34.499142, 39.080490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894196, 33.985035, 39.205639>,  <39.295059, 33.803429, 39.019779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894196, 33.985035, 39.205639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659119, 34.284901, 39.327370>,  <39.518070, 34.464821, 39.400410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659119, 34.284901, 39.327370>,  <39.894196, 33.985035, 39.205639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659119, 34.284901, 39.327370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336505, -0.115587, 0.934561,
		0.735783, 0.651647, -0.184336,
		-0.587697, 0.749664, 0.304330,
		39.482811, 34.509800, 39.418667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233707, 34.400295, 39.836857>,  <39.894196, 33.985035, 39.205639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233707, 34.400295, 39.836857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842709, 34.479259, 39.866585>,  <39.608109, 34.526638, 39.884422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842709, 34.479259, 39.866585>,  <40.233707, 34.400295, 39.836857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842709, 34.479259, 39.866585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008088, -0.316977, 0.948399,
		0.210784, 0.927660, 0.308248,
		-0.977499, 0.197414, 0.074316,
		39.549458, 34.538483, 39.888878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128605, 34.837952, 40.419235>,  <40.233707, 34.400295, 39.836857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128605, 34.837952, 40.419235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793186, 34.639618, 40.328915>,  <39.591934, 34.520618, 40.274723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793186, 34.639618, 40.328915>,  <40.128605, 34.837952, 40.419235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793186, 34.639618, 40.328915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113761, -0.245970, 0.962578,
		-0.532816, 0.832857, 0.149852,
		-0.838550, -0.495830, -0.225803,
		39.541622, 34.490868, 40.261173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599251, 35.212635, 40.782223>,  <40.128605, 34.837952, 40.419235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599251, 35.212635, 40.782223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520065, 34.825306, 40.721352>,  <39.472553, 34.592907, 40.684830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520065, 34.825306, 40.721352>,  <39.599251, 35.212635, 40.782223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520065, 34.825306, 40.721352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107960, -0.132771, 0.985249,
		-0.974246, 0.211470, -0.078257,
		-0.197961, -0.968324, -0.152182,
		39.460678, 34.534809, 40.675697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153694, 35.085735, 41.332798>,  <39.599251, 35.212635, 40.782223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153694, 35.085735, 41.332798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298542, 34.735447, 41.205055>,  <39.385452, 34.525276, 41.128410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298542, 34.735447, 41.205055>,  <39.153694, 35.085735, 41.332798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298542, 34.735447, 41.205055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031370, -0.330965, 0.943121,
		-0.931603, -0.351543, -0.092378,
		0.362121, -0.875717, -0.319356,
		39.407177, 34.472733, 41.109249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785713, 34.507195, 41.540493>,  <39.153694, 35.085735, 41.332798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785713, 34.507195, 41.540493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173279, 34.411800, 41.514164>,  <39.405819, 34.354565, 41.498367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173279, 34.411800, 41.514164>,  <38.785713, 34.507195, 41.540493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173279, 34.411800, 41.514164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054955, -0.051962, 0.997136,
		-0.241224, -0.969755, -0.037240,
		0.968912, -0.238487, -0.065827,
		39.463951, 34.340256, 41.494415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998226, 33.765057, 41.676315>,  <38.785713, 34.507195, 41.540493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998226, 33.765057, 41.676315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371326, 33.822639, 41.544098>,  <39.595184, 33.857189, 41.464767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371326, 33.822639, 41.544098>,  <38.998226, 33.765057, 41.676315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371326, 33.822639, 41.544098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360499, -0.384561, 0.849796,
		-0.004784, -0.911806, -0.410593,
		0.932747, 0.143953, -0.330544,
		39.651150, 33.865826, 41.444935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410103, 33.223675, 41.790436>,  <38.998226, 33.765057, 41.676315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410103, 33.223675, 41.790436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651001, 33.542938, 41.796761>,  <39.795540, 33.734497, 41.800556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651001, 33.542938, 41.796761>,  <39.410103, 33.223675, 41.790436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651001, 33.542938, 41.796761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283053, -0.232007, 0.930620,
		0.746449, -0.555983, -0.365645,
		0.602241, 0.798158, 0.015808,
		39.831673, 33.782387, 41.801502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972118, 32.996506, 42.063198>,  <39.410103, 33.223675, 41.790436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972118, 32.996506, 42.063198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018158, 33.391369, 42.107491>,  <40.045784, 33.628288, 42.134068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018158, 33.391369, 42.107491>,  <39.972118, 32.996506, 42.063198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018158, 33.391369, 42.107491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456655, -0.151579, 0.876636,
		0.882167, -0.050336, -0.468239,
		0.115102, 0.987163, 0.110732,
		40.052689, 33.687519, 42.140709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571014, 32.985508, 42.447872>,  <39.972118, 32.996506, 42.063198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571014, 32.985508, 42.447872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447090, 33.363918, 42.485928>,  <40.372734, 33.590965, 42.508762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447090, 33.363918, 42.485928>,  <40.571014, 32.985508, 42.447872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447090, 33.363918, 42.485928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501229, 0.077476, 0.861839,
		0.807951, 0.314697, -0.498179,
		-0.309815, 0.946025, 0.095138,
		40.354145, 33.647724, 42.514469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080147, 33.318302, 42.815159>,  <40.571014, 32.985508, 42.447872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080147, 33.318302, 42.815159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763515, 33.560516, 42.847965>,  <40.573536, 33.705845, 42.867649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763515, 33.560516, 42.847965>,  <41.080147, 33.318302, 42.815159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763515, 33.560516, 42.847965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148319, 0.060195, 0.987106,
		0.592788, 0.793541, -0.137462,
		-0.791583, 0.605533, 0.082014,
		40.526039, 33.742176, 42.872570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178177, 33.950855, 43.373554>,  <41.080147, 33.318302, 42.815159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178177, 33.950855, 43.373554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787346, 33.867290, 43.357128>,  <40.552849, 33.817154, 43.347271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787346, 33.867290, 43.357128>,  <41.178177, 33.950855, 43.373554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787346, 33.867290, 43.357128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070187, 0.133940, 0.988501,
		-0.201004, 0.968720, -0.145532,
		-0.977073, -0.208907, -0.041069,
		40.494225, 33.804619, 43.344807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020325, 34.344078, 43.855358>,  <41.178177, 33.950855, 43.373554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020325, 34.344078, 43.855358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690155, 34.124924, 43.800953>,  <40.492054, 33.993431, 43.768311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690155, 34.124924, 43.800953>,  <41.020325, 34.344078, 43.855358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690155, 34.124924, 43.800953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178727, 0.025090, 0.983579,
		-0.535481, 0.836174, -0.118633,
		-0.825420, -0.547890, -0.136011,
		40.442528, 33.960556, 43.760151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448441, 34.598289, 44.363441>,  <41.020325, 34.344078, 43.855358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448441, 34.598289, 44.363441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405262, 34.217854, 44.247665>,  <40.379356, 33.989594, 44.178200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405262, 34.217854, 44.247665>,  <40.448441, 34.598289, 44.363441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405262, 34.217854, 44.247665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264669, -0.253146, 0.930520,
		-0.958279, 0.177050, -0.224398,
		-0.107943, -0.951089, -0.289444,
		40.372879, 33.932526, 44.160831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583527, 35.163124, 44.750500>,  <40.448441, 34.598289, 44.363441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583527, 35.163124, 44.750500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573601, 34.841335, 44.987888>,  <40.567646, 34.648262, 45.130322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573601, 34.841335, 44.987888>,  <40.583527, 35.163124, 44.750500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573601, 34.841335, 44.987888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052705, -0.591780, -0.804375,
		0.998302, -0.051238, -0.027716,
		-0.024813, -0.804470, 0.593475,
		40.566158, 34.599995, 45.165932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142948, 34.606915, 44.742123>,  <40.583527, 35.163124, 44.750500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142948, 34.606915, 44.742123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795612, 34.420555, 44.810162>,  <40.587212, 34.308739, 44.850986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795612, 34.420555, 44.810162>,  <41.142948, 34.606915, 44.742123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795612, 34.420555, 44.810162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211444, -0.657964, -0.722755,
		0.448647, -0.591628, 0.669844,
		-0.868336, -0.465896, 0.170097,
		40.535110, 34.280785, 44.861191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329998, 33.853603, 44.770599>,  <41.142948, 34.606915, 44.742123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329998, 33.853603, 44.770599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942898, 33.896286, 44.679314>,  <40.710640, 33.921898, 44.624542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942898, 33.896286, 44.679314>,  <41.329998, 33.853603, 44.770599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942898, 33.896286, 44.679314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099782, -0.669423, -0.736150,
		-0.231323, -0.735178, 0.637184,
		-0.967747, 0.106709, -0.228210,
		40.652573, 33.928299, 44.610851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987362, 33.142719, 44.785820>,  <41.329998, 33.853603, 44.770599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987362, 33.142719, 44.785820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782349, 33.412628, 44.573406>,  <40.659340, 33.574574, 44.445957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782349, 33.412628, 44.573406>,  <40.987362, 33.142719, 44.785820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782349, 33.412628, 44.573406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181296, -0.689534, -0.701195,
		-0.839310, -0.263112, 0.475742,
		-0.512534, 0.674770, -0.531032,
		40.628590, 33.615059, 44.414097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243744, 32.843788, 44.682812>,  <40.987362, 33.142719, 44.785820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243744, 32.843788, 44.682812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447277, 33.058517, 44.413620>,  <40.569397, 33.187355, 44.252106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447277, 33.058517, 44.413620>,  <40.243744, 32.843788, 44.682812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447277, 33.058517, 44.413620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230836, -0.668041, -0.707415,
		-0.829340, 0.515304, -0.216002,
		0.508832, 0.536826, -0.672984,
		40.599926, 33.219566, 44.211723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850910, 32.840153, 43.927887>,  <40.243744, 32.843788, 44.682812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850910, 32.840153, 43.927887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907536, 33.225025, 44.020981>,  <39.941513, 33.455948, 44.076836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907536, 33.225025, 44.020981>,  <39.850910, 32.840153, 43.927887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907536, 33.225025, 44.020981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096565, 0.220557, -0.970582,
		-0.985208, 0.159875, -0.061690,
		0.141565, 0.962182, 0.232733,
		39.950005, 33.513680, 44.090801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413239, 33.167961, 43.571083>,  <39.850910, 32.840153, 43.927887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413239, 33.167961, 43.571083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709732, 33.430511, 43.627277>,  <39.887630, 33.588043, 43.660992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709732, 33.430511, 43.627277>,  <39.413239, 33.167961, 43.571083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709732, 33.430511, 43.627277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057380, 0.146562, -0.987536,
		-0.668787, 0.740059, 0.070974,
		0.741237, 0.656378, 0.140484,
		39.932102, 33.627426, 43.669422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232742, 33.752430, 43.112549>,  <39.413239, 33.167961, 43.571083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232742, 33.752430, 43.112549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618752, 33.800461, 43.205765>,  <39.850357, 33.829281, 43.261692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618752, 33.800461, 43.205765>,  <39.232742, 33.752430, 43.112549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618752, 33.800461, 43.205765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196128, 0.259151, -0.945714,
		-0.173952, 0.958343, 0.226537,
		0.965026, 0.120079, 0.233038,
		39.908260, 33.836483, 43.275677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396996, 34.462353, 43.088150>,  <39.232742, 33.752430, 43.112549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396996, 34.462353, 43.088150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724934, 34.247169, 43.009705>,  <39.921696, 34.118061, 42.962639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724934, 34.247169, 43.009705>,  <39.396996, 34.462353, 43.088150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724934, 34.247169, 43.009705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031259, 0.299937, -0.953447,
		0.571734, 0.787807, 0.229085,
		0.819843, -0.537957, -0.196110,
		39.970886, 34.085781, 42.950871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814037, 34.833069, 42.712666>,  <39.396996, 34.462353, 43.088150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814037, 34.833069, 42.712666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011837, 34.492924, 42.640717>,  <40.130516, 34.288837, 42.597546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011837, 34.492924, 42.640717>,  <39.814037, 34.833069, 42.712666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011837, 34.492924, 42.640717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048696, 0.233728, -0.971082,
		0.867814, 0.471438, 0.156988,
		0.494497, -0.850363, -0.179875,
		40.160187, 34.237816, 42.586754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375965, 34.942112, 42.264606>,  <39.814037, 34.833069, 42.712666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375965, 34.942112, 42.264606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268623, 34.559261, 42.220989>,  <40.204216, 34.329552, 42.194820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268623, 34.559261, 42.220989>,  <40.375965, 34.942112, 42.264606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268623, 34.559261, 42.220989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152425, 0.153954, -0.976250,
		0.951184, -0.245363, -0.187205,
		-0.268357, -0.957129, -0.109039,
		40.188118, 34.272121, 42.188278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766411, 34.668869, 41.772182>,  <40.375965, 34.942112, 42.264606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766411, 34.668869, 41.772182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444778, 34.431286, 41.782555>,  <40.251801, 34.288734, 41.788780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444778, 34.431286, 41.782555>,  <40.766411, 34.668869, 41.772182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444778, 34.431286, 41.782555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037884, 0.007655, -0.999253,
		0.593314, -0.804461, -0.028657,
		-0.804079, -0.593956, 0.025935,
		40.203556, 34.253098, 41.790337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710712, 34.153397, 41.330631>,  <40.766411, 34.668869, 41.772182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710712, 34.153397, 41.330631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314968, 34.194595, 41.371731>,  <40.077522, 34.219315, 41.396393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314968, 34.194595, 41.371731>,  <40.710712, 34.153397, 41.330631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314968, 34.194595, 41.371731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102545, 0.007306, -0.994702,
		-0.103200, -0.994655, 0.003333,
		-0.989361, 0.102995, 0.102751,
		40.018162, 34.225494, 41.402557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401588, 33.672821, 40.853180>,  <40.710712, 34.153397, 41.330631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401588, 33.672821, 40.853180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165939, 33.981808, 40.948029>,  <40.024551, 34.167202, 41.004936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165939, 33.981808, 40.948029>,  <40.401588, 33.672821, 40.853180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165939, 33.981808, 40.948029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233403, 0.118267, -0.965161,
		-0.773601, -0.623942, 0.110624,
		-0.589121, 0.772470, 0.237121,
		39.989204, 34.213547, 41.019165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681614, 33.238022, 40.878071>,  <40.401588, 33.672821, 40.853180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681614, 33.238022, 40.878071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517788, 33.594120, 40.957798>,  <39.419495, 33.807777, 41.005634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517788, 33.594120, 40.957798>,  <39.681614, 33.238022, 40.878071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517788, 33.594120, 40.957798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152347, 0.148677, -0.977080,
		-0.899472, -0.430541, 0.074733,
		-0.409562, 0.890241, 0.199322,
		39.394920, 33.861191, 41.017593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993065, 33.278442, 40.544128>,  <39.681614, 33.238022, 40.878071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993065, 33.278442, 40.544128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146687, 33.646667, 40.572586>,  <39.238857, 33.867603, 40.589661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146687, 33.646667, 40.572586>,  <38.993065, 33.278442, 40.544128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146687, 33.646667, 40.572586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214781, 0.164011, -0.962792,
		-0.897983, 0.354482, 0.260709,
		0.384052, 0.920566, 0.071143,
		39.261902, 33.922836, 40.593929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503902, 33.721298, 40.137867>,  <38.993065, 33.278442, 40.544128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503902, 33.721298, 40.137867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840019, 33.937489, 40.154846>,  <39.041687, 34.067204, 40.165035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840019, 33.937489, 40.154846>,  <38.503902, 33.721298, 40.137867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840019, 33.937489, 40.154846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087777, 0.212904, -0.973122,
		-0.534984, 0.813979, 0.226342,
		0.840290, 0.540472, 0.042451,
		39.092106, 34.099628, 40.167583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395844, 34.387672, 40.001556>,  <38.503902, 33.721298, 40.137867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395844, 34.387672, 40.001556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765839, 34.277912, 39.896404>,  <38.987835, 34.212055, 39.833313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765839, 34.277912, 39.896404>,  <38.395844, 34.387672, 40.001556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765839, 34.277912, 39.896404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219800, 0.177969, -0.959174,
		0.309980, 0.945004, 0.104306,
		0.924986, -0.274399, -0.262879,
		39.043335, 34.195591, 39.817539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460228, 35.109940, 40.015007>,  <38.395844, 34.387672, 40.001556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460228, 35.109940, 40.015007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825577, 34.952023, 39.975212>,  <39.044785, 34.857273, 39.951336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825577, 34.952023, 39.975212>,  <38.460228, 35.109940, 40.015007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825577, 34.952023, 39.975212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038095, 0.326162, -0.944546,
		0.405349, 0.858928, 0.312946,
		0.913368, -0.394793, -0.099489,
		39.099586, 34.833584, 39.945366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758957, 35.603596, 39.655006>,  <38.460228, 35.109940, 40.015007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758957, 35.603596, 39.655006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969376, 35.267902, 39.599911>,  <39.095627, 35.066486, 39.566853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969376, 35.267902, 39.599911>,  <38.758957, 35.603596, 39.655006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969376, 35.267902, 39.599911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064154, 0.200659, -0.977558,
		0.848034, 0.505402, 0.159395,
		0.526044, -0.839229, -0.137742,
		39.127190, 35.016132, 39.558586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313900, 35.805176, 39.278183>,  <38.758957, 35.603596, 39.655006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313900, 35.805176, 39.278183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294212, 35.410946, 39.213413>,  <39.282402, 35.174408, 39.174553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294212, 35.410946, 39.213413>,  <39.313900, 35.805176, 39.278183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294212, 35.410946, 39.213413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103086, 0.156239, -0.982325,
		0.993454, -0.065037, 0.093910,
		-0.049215, -0.985576, -0.161920,
		39.279449, 35.115273, 39.164837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949947, 35.637939, 38.819641>,  <39.313900, 35.805176, 39.278183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949947, 35.637939, 38.819641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663624, 35.360653, 38.786003>,  <39.491829, 35.194279, 38.765820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663624, 35.360653, 38.786003>,  <39.949947, 35.637939, 38.819641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663624, 35.360653, 38.786003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030016, 0.089778, -0.995509,
		0.697655, -0.715114, -0.043456,
		-0.715804, -0.693218, -0.084099,
		39.448883, 35.152687, 38.760773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961895, 35.602341, 38.127125>,  <39.949947, 35.637939, 38.819641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961895, 35.602341, 38.127125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717751, 35.304100, 38.234108>,  <39.571262, 35.125156, 38.298298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717751, 35.304100, 38.234108>,  <39.961895, 35.602341, 38.127125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717751, 35.304100, 38.234108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286138, -0.107316, -0.952160,
		0.738638, -0.657690, -0.147845,
		-0.610359, -0.745605, 0.267457,
		39.534641, 35.080418, 38.314346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115257, 35.016010, 37.775040>,  <39.961895, 35.602341, 38.127125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115257, 35.016010, 37.775040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729290, 34.947109, 37.854301>,  <39.497711, 34.905769, 37.901859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729290, 34.947109, 37.854301>,  <40.115257, 35.016010, 37.775040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729290, 34.947109, 37.854301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177540, -0.127959, -0.975759,
		0.193439, -0.976705, 0.092887,
		-0.964915, -0.172258, 0.198157,
		39.439816, 34.895432, 37.913750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980328, 34.341549, 37.475391>,  <40.115257, 35.016010, 37.775040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980328, 34.341549, 37.475391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649857, 34.565510, 37.500515>,  <39.451576, 34.699886, 37.515591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649857, 34.565510, 37.500515>,  <39.980328, 34.341549, 37.475391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649857, 34.565510, 37.500515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209554, -0.201884, -0.956729,
		-0.522995, -0.803586, 0.284121,
		-0.826173, 0.559903, 0.062811,
		39.402004, 34.733482, 37.519360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298660, 33.950394, 37.248657>,  <39.980328, 34.341549, 37.475391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298660, 33.950394, 37.248657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264874, 34.348209, 37.224136>,  <39.244602, 34.586899, 37.209423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264874, 34.348209, 37.224136>,  <39.298660, 33.950394, 37.248657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264874, 34.348209, 37.224136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103880, -0.069974, -0.992125,
		-0.990997, -0.077431, 0.109223,
		-0.084464, 0.994539, -0.061300,
		39.239532, 34.646572, 37.205746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592842, 33.362400, 36.909153>,  <39.298660, 33.950394, 37.248657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592842, 33.362400, 36.909153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852936, 33.652645, 36.819099>,  <40.008991, 33.826794, 36.765068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852936, 33.652645, 36.819099>,  <39.592842, 33.362400, 36.909153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852936, 33.652645, 36.819099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560374, -0.257967, 0.787041,
		0.513009, -0.637920, -0.574352,
		0.650233, 0.725611, -0.225135,
		40.048004, 33.870327, 36.751560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294498, 33.238522, 37.316151>,  <39.592842, 33.362400, 36.909153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294498, 33.238522, 37.316151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286198, 33.629280, 37.231064>,  <40.281219, 33.863735, 37.180012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286198, 33.629280, 37.231064>,  <40.294498, 33.238522, 37.316151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286198, 33.629280, 37.231064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579285, 0.185159, 0.793817,
		0.814861, -0.106756, -0.569741,
		-0.020748, 0.976893, -0.212720,
		40.279972, 33.922348, 37.167248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032784, 33.354786, 37.489323>,  <40.294498, 33.238522, 37.316151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032784, 33.354786, 37.489323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780479, 33.659592, 37.547932>,  <40.629097, 33.842476, 37.583099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780479, 33.659592, 37.547932>,  <41.032784, 33.354786, 37.489323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780479, 33.659592, 37.547932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464552, 0.219576, 0.857892,
		0.621554, 0.609194, -0.492496,
		-0.630763, 0.762016, 0.146524,
		40.591251, 33.888195, 37.591888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467022, 33.967857, 37.435951>,  <41.032784, 33.354786, 37.489323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467022, 33.967857, 37.435951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126392, 34.022350, 37.638443>,  <40.922016, 34.055046, 37.759937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126392, 34.022350, 37.638443>,  <41.467022, 33.967857, 37.435951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126392, 34.022350, 37.638443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524119, 0.241798, 0.816598,
		-0.011158, 0.960716, -0.277310,
		-0.851572, 0.136231, 0.506227,
		40.870922, 34.063221, 37.790310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081360, 34.238125, 37.852341>,  <41.467022, 33.967857, 37.435951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081360, 34.238125, 37.852341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936302, 34.599453, 37.760681>,  <41.849270, 34.816250, 37.705685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936302, 34.599453, 37.760681>,  <42.081360, 34.238125, 37.852341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936302, 34.599453, 37.760681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887097, 0.259251, -0.381901,
		-0.285571, -0.341770, -0.895345,
		-0.362641, 0.903317, -0.229148,
		41.827511, 34.870449, 37.691936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320034, 34.339615, 37.200340>,  <42.081360, 34.238125, 37.852341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320034, 34.339615, 37.200340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268879, 34.690895, 37.384693>,  <42.238186, 34.901661, 37.495304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268879, 34.690895, 37.384693>,  <42.320034, 34.339615, 37.200340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268879, 34.690895, 37.384693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791285, 0.370501, -0.486412,
		-0.597924, 0.302488, -0.742285,
		-0.127883, 0.878197, 0.460886,
		42.230515, 34.954353, 37.522961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206802, 34.792702, 36.696186>,  <42.320034, 34.339615, 37.200340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206802, 34.792702, 36.696186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386581, 34.965080, 37.009178>,  <42.494450, 35.068508, 37.196976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386581, 34.965080, 37.009178>,  <42.206802, 34.792702, 36.696186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386581, 34.965080, 37.009178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678121, 0.405611, -0.612888,
		-0.581507, 0.806080, -0.109933,
		0.449447, 0.430947, 0.782485,
		42.521416, 35.094364, 37.243923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199368, 35.504601, 36.673206>,  <42.206802, 34.792702, 36.696186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199368, 35.504601, 36.673206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535732, 35.396275, 36.860619>,  <42.737553, 35.331280, 36.973068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535732, 35.396275, 36.860619>,  <42.199368, 35.504601, 36.673206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535732, 35.396275, 36.860619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538925, 0.497811, -0.679517,
		-0.049221, 0.823921, 0.564564,
		0.840914, -0.270811, 0.468534,
		42.788006, 35.315033, 37.001179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740120, 35.946373, 36.456306>,  <42.199368, 35.504601, 36.673206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740120, 35.946373, 36.456306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969028, 35.661026, 36.618103>,  <43.106373, 35.489819, 36.715179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969028, 35.661026, 36.618103>,  <42.740120, 35.946373, 36.456306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969028, 35.661026, 36.618103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730751, 0.219758, -0.646304,
		0.372162, 0.665443, 0.647055,
		0.572274, -0.713367, 0.404488,
		43.140709, 35.447018, 36.739449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275326, 36.099712, 36.039322>,  <42.740120, 35.946373, 36.456306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275326, 36.099712, 36.039322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390808, 35.808918, 36.288525>,  <43.460098, 35.634441, 36.438046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390808, 35.808918, 36.288525>,  <43.275326, 36.099712, 36.039322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390808, 35.808918, 36.288525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950994, 0.142488, -0.274423,
		0.110731, 0.671705, 0.732497,
		0.288703, -0.726987, 0.623009,
		43.477421, 35.590820, 36.475426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757309, 36.305954, 36.505665>,  <43.275326, 36.099712, 36.039322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757309, 36.305954, 36.505665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857662, 35.928913, 36.417519>,  <43.917873, 35.702690, 36.364632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857662, 35.928913, 36.417519>,  <43.757309, 36.305954, 36.505665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857662, 35.928913, 36.417519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897918, 0.311652, -0.310832,
		0.361668, -0.119885, 0.924567,
		0.250879, -0.942603, -0.220362,
		43.932926, 35.646133, 36.351410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502480, 36.526321, 36.548748>,  <43.757309, 36.305954, 36.505665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502480, 36.526321, 36.548748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468090, 36.142460, 36.441666>,  <44.447456, 35.912144, 36.377415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468090, 36.142460, 36.441666>,  <44.502480, 36.526321, 36.548748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468090, 36.142460, 36.441666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917607, 0.028398, -0.396473,
		0.388081, -0.279737, 0.878146,
		-0.085970, -0.959657, -0.267710,
		44.442299, 35.854565, 36.361351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045460, 36.090904, 36.789543>,  <44.502480, 36.526321, 36.548748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045460, 36.090904, 36.789543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923843, 35.932652, 36.442894>,  <44.850876, 35.837700, 36.234905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923843, 35.932652, 36.442894>,  <45.045460, 36.090904, 36.789543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923843, 35.932652, 36.442894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926257, -0.335448, -0.171821,
		-0.222729, -0.854956, 0.468447,
		-0.304039, -0.395633, -0.866623,
		44.832630, 35.813961, 36.182907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235447, 35.365585, 36.738640>,  <45.045460, 36.090904, 36.789543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235447, 35.365585, 36.738640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190266, 35.524754, 36.374462>,  <45.163158, 35.620255, 36.155956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190266, 35.524754, 36.374462>,  <45.235447, 35.365585, 36.738640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190266, 35.524754, 36.374462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839515, -0.451902, -0.301660,
		-0.531466, -0.798401, -0.283017,
		-0.112950, 0.397919, -0.910441,
		45.156380, 35.644131, 36.101330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306408, 34.786297, 36.240742>,  <45.235447, 35.365585, 36.738640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306408, 34.786297, 36.240742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383064, 35.135311, 36.060986>,  <45.429058, 35.344719, 35.953133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383064, 35.135311, 36.060986>,  <45.306408, 34.786297, 36.240742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383064, 35.135311, 36.060986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847214, -0.378223, -0.373062,
		-0.495480, -0.309234, -0.811710,
		0.191644, 0.872537, -0.449390,
		45.440559, 35.397072, 35.926170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458057, 34.578533, 35.471386>,  <45.306408, 34.786297, 36.240742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458057, 34.578533, 35.471386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603958, 34.930981, 35.591774>,  <45.691498, 35.142448, 35.664005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603958, 34.930981, 35.591774>,  <45.458057, 34.578533, 35.471386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603958, 34.930981, 35.591774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802385, -0.133465, -0.581691,
		-0.472373, 0.453662, -0.755682,
		0.364748, 0.881123, 0.300967,
		45.713383, 35.195316, 35.682064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740711, 34.970997, 34.873581>,  <45.458057, 34.578533, 35.471386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740711, 34.970997, 34.873581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925980, 35.093582, 35.206223>,  <46.037140, 35.167133, 35.405807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925980, 35.093582, 35.206223>,  <45.740711, 34.970997, 34.873581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925980, 35.093582, 35.206223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869319, 0.025550, -0.493590,
		-0.172514, 0.951540, -0.254579,
		0.463166, 0.306462, 0.831600,
		46.064930, 35.185520, 35.455704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171135, 35.553246, 34.742035>,  <45.740711, 34.970997, 34.873581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171135, 35.553246, 34.742035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343395, 35.317791, 35.015690>,  <46.446751, 35.176517, 35.179882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343395, 35.317791, 35.015690>,  <46.171135, 35.553246, 34.742035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343395, 35.317791, 35.015690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816570, -0.068712, -0.573142,
		0.384381, 0.805472, 0.451073,
		0.430655, -0.588637, 0.684136,
		46.472591, 35.141201, 35.220932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766766, 35.610977, 34.555328>,  <46.171135, 35.553246, 34.742035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766766, 35.610977, 34.555328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886917, 35.353477, 34.836857>,  <46.959007, 35.198978, 35.005772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886917, 35.353477, 34.836857>,  <46.766766, 35.610977, 34.555328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886917, 35.353477, 34.836857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857711, -0.140492, -0.494564,
		0.417255, 0.752231, 0.509948,
		0.300383, -0.643747, 0.703818,
		46.977032, 35.160355, 35.048000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.489983, 35.770168, 34.864777>,  <46.766766, 35.610977, 34.555328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.489983, 35.770168, 34.864777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404625, 35.379402, 34.868904>,  <47.353409, 35.144943, 34.871380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404625, 35.379402, 34.868904>,  <47.489983, 35.770168, 34.864777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404625, 35.379402, 34.868904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754655, -0.171534, -0.633302,
		0.620450, -0.127359, 0.773836,
		-0.213396, -0.976911, 0.010316,
		47.340607, 35.086330, 34.871998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.159996, 35.352943, 35.031353>,  <47.489983, 35.770168, 34.864777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.159996, 35.352943, 35.031353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.882893, 35.158302, 34.818451>,  <47.716629, 35.041515, 34.690708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.882893, 35.158302, 34.818451>,  <48.159996, 35.352943, 35.031353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.882893, 35.158302, 34.818451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701075, -0.281409, -0.655212,
		0.169048, -0.827057, 0.536096,
		-0.692760, -0.486606, -0.532258,
		47.675064, 35.012321, 34.658775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.908192, 27.405268, 29.796215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598274, 27.165035, 29.717224>,  <37.412323, 27.020895, 29.669830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598274, 27.165035, 29.717224>,  <37.908192, 27.405268, 29.796215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598274, 27.165035, 29.717224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499909, 0.390783, 0.772903,
		-0.387020, 0.697561, -0.603012,
		-0.774794, -0.600580, -0.197476,
		37.365837, 26.984861, 29.657982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388786, 27.789425, 29.844494>,  <37.908192, 27.405268, 29.796215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388786, 27.789425, 29.844494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.188129, 27.443546, 29.854778>,  <37.067738, 27.236019, 29.860949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.188129, 27.443546, 29.854778>,  <37.388786, 27.789425, 29.844494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188129, 27.443546, 29.854778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538438, 0.335353, 0.773061,
		-0.677084, 0.373953, -0.633810,
		-0.501639, -0.864695, 0.025712,
		37.037640, 27.184137, 29.862492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651634, 27.955080, 29.793520>,  <37.388786, 27.789425, 29.844494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651634, 27.955080, 29.793520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680531, 27.594044, 29.963276>,  <36.697868, 27.377422, 30.065130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680531, 27.594044, 29.963276>,  <36.651634, 27.955080, 29.793520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680531, 27.594044, 29.963276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567865, 0.312580, 0.761461,
		-0.819946, -0.296007, -0.489969,
		0.072243, -0.902593, 0.424391,
		36.702202, 27.323265, 30.090593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024956, 27.993639, 30.039812>,  <36.651634, 27.955080, 29.793520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024956, 27.993639, 30.039812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.205688, 27.703434, 30.247458>,  <36.314129, 27.529310, 30.372044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.205688, 27.703434, 30.247458>,  <36.024956, 27.993639, 30.039812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205688, 27.703434, 30.247458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337507, 0.399626, 0.852284,
		-0.825793, -0.560296, -0.064301,
		0.451835, -0.725513, 0.519112,
		36.341240, 27.485781, 30.403191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505066, 27.751768, 30.399044>,  <36.024956, 27.993639, 30.039812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505066, 27.751768, 30.399044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800667, 27.595322, 30.618465>,  <35.978027, 27.501453, 30.750118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800667, 27.595322, 30.618465>,  <35.505066, 27.751768, 30.399044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800667, 27.595322, 30.618465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490252, 0.246288, 0.836060,
		-0.462099, -0.886775, -0.009740,
		0.738998, -0.391118, 0.548552,
		36.022366, 27.477987, 30.783031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162991, 27.292126, 30.855478>,  <35.505066, 27.751768, 30.399044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162991, 27.292126, 30.855478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.511379, 27.410906, 31.012058>,  <35.720413, 27.482174, 31.106007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.511379, 27.410906, 31.012058>,  <35.162991, 27.292126, 30.855478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511379, 27.410906, 31.012058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448243, 0.153925, 0.880560,
		0.201232, -0.942404, 0.267171,
		0.870968, 0.296954, 0.391451,
		35.772671, 27.499990, 31.129494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154625, 27.185225, 31.528551>,  <35.162991, 27.292126, 30.855478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154625, 27.185225, 31.528551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.463329, 27.439302, 31.516441>,  <35.648552, 27.591749, 31.509174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.463329, 27.439302, 31.516441>,  <35.154625, 27.185225, 31.528551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463329, 27.439302, 31.516441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194133, 0.280671, 0.939966,
		0.605561, -0.719548, 0.339922,
		0.771757, 0.635197, -0.030275,
		35.694855, 27.629862, 31.507359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303543, 27.195490, 32.176571>,  <35.154625, 27.185225, 31.528551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303543, 27.195490, 32.176571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539265, 27.500206, 32.068947>,  <35.680698, 27.683037, 32.004372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539265, 27.500206, 32.068947>,  <35.303543, 27.195490, 32.176571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539265, 27.500206, 32.068947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223845, 0.473947, 0.851627,
		0.776280, -0.441643, 0.449824,
		0.589307, 0.761792, -0.269056,
		35.716057, 27.728743, 31.988230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865746, 27.370399, 32.718506>,  <35.303543, 27.195490, 32.176571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865746, 27.370399, 32.718506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.805275, 27.705963, 32.509365>,  <35.768993, 27.907301, 32.383881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.805275, 27.705963, 32.509365>,  <35.865746, 27.370399, 32.718506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805275, 27.705963, 32.509365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255002, 0.477935, 0.840566,
		0.955050, 0.260403, 0.141671,
		-0.151176, 0.838909, -0.522855,
		35.759922, 27.957636, 32.352509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180706, 27.861187, 33.014572>,  <35.865746, 27.370399, 32.718506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180706, 27.861187, 33.014572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900795, 28.067671, 32.817055>,  <35.732849, 28.191561, 32.698544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900795, 28.067671, 32.817055>,  <36.180706, 27.861187, 33.014572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900795, 28.067671, 32.817055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146420, 0.572923, 0.806425,
		0.699193, 0.636621, -0.325336,
		-0.699779, 0.516211, -0.493797,
		35.690861, 28.222534, 32.668915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465336, 28.502813, 33.059906>,  <36.180706, 27.861187, 33.014572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465336, 28.502813, 33.059906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087910, 28.602055, 32.972149>,  <35.861454, 28.661600, 32.919495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087910, 28.602055, 32.972149>,  <36.465336, 28.502813, 33.059906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087910, 28.602055, 32.972149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047770, 0.553554, 0.831442,
		0.327731, 0.794998, -0.510461,
		-0.943563, 0.248104, -0.219394,
		35.804840, 28.676485, 32.906330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549507, 29.196022, 33.041634>,  <36.465336, 28.502813, 33.059906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549507, 29.196022, 33.041634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.156788, 29.126049, 33.071217>,  <35.921158, 29.084064, 33.088966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.156788, 29.126049, 33.071217>,  <36.549507, 29.196022, 33.041634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156788, 29.126049, 33.071217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089359, 0.769072, 0.632885,
		-0.167589, 0.614757, -0.770706,
		-0.981799, -0.174934, 0.073954,
		35.862247, 29.073568, 33.093403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254009, 29.883568, 32.927864>,  <36.549507, 29.196022, 33.041634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254009, 29.883568, 32.927864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.976208, 29.665579, 33.115768>,  <35.809528, 29.534786, 33.228512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.976208, 29.665579, 33.115768>,  <36.254009, 29.883568, 32.927864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976208, 29.665579, 33.115768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302040, 0.813420, 0.497111,
		-0.653023, 0.203358, -0.729525,
		-0.694502, -0.544970, 0.469760,
		35.767857, 29.502089, 33.256695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650368, 30.256020, 32.882618>,  <36.254009, 29.883568, 32.927864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650368, 30.256020, 32.882618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.582466, 30.029325, 33.205109>,  <35.541725, 29.893309, 33.398602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.582466, 30.029325, 33.205109>,  <35.650368, 30.256020, 32.882618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582466, 30.029325, 33.205109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291014, 0.810442, 0.508424,
		-0.941538, -0.148314, -0.302505,
		-0.169757, -0.566734, 0.806223,
		35.531540, 29.859306, 33.446976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130745, 30.589329, 33.203495>,  <35.650368, 30.256020, 32.882618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130745, 30.589329, 33.203495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257690, 30.333370, 33.483440>,  <35.333858, 30.179794, 33.651409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257690, 30.333370, 33.483440>,  <35.130745, 30.589329, 33.203495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257690, 30.333370, 33.483440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193506, 0.678791, 0.708377,
		-0.928352, -0.360240, 0.091598,
		0.317362, -0.639898, 0.699866,
		35.352898, 30.141401, 33.693401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646034, 30.546518, 33.689018>,  <35.130745, 30.589329, 33.203495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646034, 30.546518, 33.689018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.962135, 30.450817, 33.914677>,  <35.151794, 30.393396, 34.050072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.962135, 30.450817, 33.914677>,  <34.646034, 30.546518, 33.689018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962135, 30.450817, 33.914677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306166, 0.643328, 0.701706,
		-0.530817, -0.727246, 0.435139,
		0.790251, -0.239253, 0.564148,
		35.199211, 30.379042, 34.083920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355431, 30.615656, 34.345051>,  <34.646034, 30.546518, 33.689018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355431, 30.615656, 34.345051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751736, 30.631582, 34.396896>,  <34.989521, 30.641138, 34.428001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751736, 30.631582, 34.396896>,  <34.355431, 30.615656, 34.345051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751736, 30.631582, 34.396896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128526, 0.580267, 0.804221,
		-0.043189, -0.813452, 0.580026,
		0.990765, 0.039815, 0.129611,
		35.048965, 30.643526, 34.435780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516033, 30.397636, 35.036915>,  <34.355431, 30.615656, 34.345051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516033, 30.397636, 35.036915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.836468, 30.608740, 34.923973>,  <35.028728, 30.735403, 34.856209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.836468, 30.608740, 34.923973>,  <34.516033, 30.397636, 35.036915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836468, 30.608740, 34.923973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003284, 0.475607, 0.879652,
		0.598536, -0.703752, 0.382737,
		0.801089, 0.527761, -0.282357,
		35.076794, 30.767067, 34.839268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042606, 30.226284, 35.487217>,  <34.516033, 30.397636, 35.036915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042606, 30.226284, 35.487217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143593, 30.577534, 35.324657>,  <35.204185, 30.788284, 35.227123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143593, 30.577534, 35.324657>,  <35.042606, 30.226284, 35.487217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143593, 30.577534, 35.324657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061465, 0.433710, 0.898954,
		0.965652, -0.201975, 0.163470,
		0.252464, 0.878124, -0.406398,
		35.219334, 30.840971, 35.202740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431194, 30.539770, 36.080570>,  <35.042606, 30.226284, 35.487217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431194, 30.539770, 36.080570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349178, 30.842627, 35.832474>,  <35.299969, 31.024340, 35.683617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349178, 30.842627, 35.832474>,  <35.431194, 30.539770, 36.080570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349178, 30.842627, 35.832474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122157, 0.608950, 0.783745,
		0.971101, 0.236465, -0.032368,
		-0.205039, 0.757142, -0.620238,
		35.287666, 31.069769, 35.646400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785294, 31.157825, 36.297028>,  <35.431194, 30.539770, 36.080570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785294, 31.157825, 36.297028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.483269, 31.309015, 36.082733>,  <35.302052, 31.399729, 35.954155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.483269, 31.309015, 36.082733>,  <35.785294, 31.157825, 36.297028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483269, 31.309015, 36.082733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301261, 0.525736, 0.795515,
		0.582339, 0.762062, -0.283096,
		-0.755065, 0.377974, -0.535736,
		35.256748, 31.422407, 35.922012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814903, 31.869490, 36.411167>,  <35.785294, 31.157825, 36.297028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814903, 31.869490, 36.411167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436588, 31.801435, 36.300499>,  <35.209599, 31.760603, 36.234097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436588, 31.801435, 36.300499>,  <35.814903, 31.869490, 36.411167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436588, 31.801435, 36.300499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319413, 0.641634, 0.697338,
		0.058879, 0.747904, -0.661191,
		-0.945785, -0.170135, -0.276669,
		35.152851, 31.750395, 36.217499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306698, 32.401772, 36.505123>,  <35.814903, 31.869490, 36.411167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306698, 32.401772, 36.505123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688778, 32.421555, 36.621841>,  <36.918026, 32.433426, 36.691872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688778, 32.421555, 36.621841>,  <36.306698, 32.401772, 36.505123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688778, 32.421555, 36.621841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252707, -0.649462, -0.717174,
		0.154038, 0.758784, -0.632866,
		0.955202, 0.049458, 0.291792,
		36.975338, 32.436394, 36.709377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717857, 32.387428, 35.861771>,  <36.306698, 32.401772, 36.505123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717857, 32.387428, 35.861771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005775, 32.344170, 36.136055>,  <37.178524, 32.318214, 36.300625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005775, 32.344170, 36.136055>,  <36.717857, 32.387428, 35.861771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005775, 32.344170, 36.136055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464153, -0.659543, -0.591241,
		0.516200, 0.743846, -0.424536,
		0.719792, -0.108149, 0.685714,
		37.221714, 32.311726, 36.341770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397675, 32.702011, 35.514515>,  <36.717857, 32.387428, 35.861771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397675, 32.702011, 35.514515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468071, 32.412327, 35.781212>,  <37.510307, 32.238514, 35.941231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468071, 32.412327, 35.781212>,  <37.397675, 32.702011, 35.514515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468071, 32.412327, 35.781212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469679, -0.533469, -0.703429,
		0.865118, 0.436949, 0.246265,
		0.175988, -0.724215, 0.666739,
		37.520866, 32.195061, 35.981236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990730, 32.502228, 35.301907>,  <37.397675, 32.702011, 35.514515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990730, 32.502228, 35.301907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881077, 32.201477, 35.541752>,  <37.815285, 32.021027, 35.685658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881077, 32.201477, 35.541752>,  <37.990730, 32.502228, 35.301907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881077, 32.201477, 35.541752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454898, -0.650711, -0.607983,
		0.847302, 0.106097, 0.520406,
		-0.274129, -0.751877, 0.599612,
		37.798840, 31.975914, 35.721634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541420, 32.100658, 35.461643>,  <37.990730, 32.502228, 35.301907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541420, 32.100658, 35.461643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.243557, 31.837372, 35.505886>,  <38.064838, 31.679399, 35.532433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.243557, 31.837372, 35.505886>,  <38.541420, 32.100658, 35.461643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243557, 31.837372, 35.505886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466781, -0.632029, -0.618591,
		0.477073, -0.409011, 0.777889,
		-0.744659, -0.658217, 0.110605,
		38.020161, 31.639906, 35.539066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962128, 31.505529, 35.535988>,  <38.541420, 32.100658, 35.461643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962128, 31.505529, 35.535988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586914, 31.419199, 35.427532>,  <38.361786, 31.367401, 35.362457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586914, 31.419199, 35.427532>,  <38.962128, 31.505529, 35.535988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586914, 31.419199, 35.427532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341506, -0.708695, -0.617353,
		-0.058913, -0.671692, 0.738485,
		-0.938031, -0.215827, -0.271138,
		38.305504, 31.354450, 35.346191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067509, 30.832752, 35.242870>,  <38.962128, 31.505529, 35.535988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067509, 30.832752, 35.242870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.705288, 30.929413, 35.103397>,  <38.487957, 30.987410, 35.019714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.705288, 30.929413, 35.103397>,  <39.067509, 30.832752, 35.242870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705288, 30.929413, 35.103397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160811, -0.565052, -0.809232,
		-0.392578, -0.788873, 0.472823,
		-0.905551, 0.241651, -0.348686,
		38.433624, 31.001909, 34.998791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806908, 30.232801, 34.931065>,  <39.067509, 30.832752, 35.242870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806908, 30.232801, 34.931065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575588, 30.515842, 34.768646>,  <38.436798, 30.685667, 34.671196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575588, 30.515842, 34.768646>,  <38.806908, 30.232801, 34.931065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575588, 30.515842, 34.768646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254531, -0.316383, -0.913847,
		-0.775106, -0.631824, 0.002856,
		-0.578294, 0.707601, -0.406049,
		38.402100, 30.728123, 34.646832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342640, 29.910021, 34.498608>,  <38.806908, 30.232801, 34.931065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342640, 29.910021, 34.498608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342346, 30.282804, 34.353584>,  <38.342171, 30.506475, 34.266571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342346, 30.282804, 34.353584>,  <38.342640, 29.910021, 34.498608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342346, 30.282804, 34.353584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024942, -0.362430, -0.931677,
		-0.999689, -0.009729, -0.022978,
		-0.000736, 0.931960, -0.362560,
		38.342125, 30.562393, 34.244816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911407, 29.801317, 33.984467>,  <38.342640, 29.910021, 34.498608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911407, 29.801317, 33.984467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104721, 30.138918, 33.891430>,  <38.220711, 30.341478, 33.835609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104721, 30.138918, 33.891430>,  <37.911407, 29.801317, 33.984467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104721, 30.138918, 33.891430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029016, -0.280973, -0.959277,
		-0.874981, 0.456857, -0.160280,
		0.483286, 0.844000, -0.232590,
		38.249706, 30.392118, 33.821651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631870, 30.125954, 33.334377>,  <37.911407, 29.801317, 33.984467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631870, 30.125954, 33.334377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997913, 30.280954, 33.378944>,  <38.217541, 30.373955, 33.405685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997913, 30.280954, 33.378944>,  <37.631870, 30.125954, 33.334377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997913, 30.280954, 33.378944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167214, -0.113295, -0.979389,
		-0.366893, 0.914881, -0.168474,
		0.915112, 0.387502, 0.111414,
		38.272446, 30.397205, 33.412369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734047, 30.543085, 32.775066>,  <37.631870, 30.125954, 33.334377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734047, 30.543085, 32.775066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109665, 30.499199, 32.905388>,  <38.335037, 30.472868, 32.983582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109665, 30.499199, 32.905388>,  <37.734047, 30.543085, 32.775066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109665, 30.499199, 32.905388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321898, -0.052133, -0.945338,
		0.120702, 0.992595, -0.013639,
		0.939049, -0.109714, 0.325807,
		38.391380, 30.466284, 33.003132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211487, 30.948856, 32.355133>,  <37.734047, 30.543085, 32.775066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211487, 30.948856, 32.355133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.405697, 30.634521, 32.508350>,  <38.522224, 30.445921, 32.600281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.405697, 30.634521, 32.508350>,  <38.211487, 30.948856, 32.355133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405697, 30.634521, 32.508350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282679, -0.273493, -0.919399,
		0.827258, 0.554671, 0.089351,
		0.485527, -0.785838, 0.383043,
		38.551353, 30.398769, 32.623264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875938, 31.067768, 32.052898>,  <38.211487, 30.948856, 32.355133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875938, 31.067768, 32.052898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832703, 30.693420, 32.187042>,  <38.806759, 30.468811, 32.267529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832703, 30.693420, 32.187042>,  <38.875938, 31.067768, 32.052898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832703, 30.693420, 32.187042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368307, -0.351028, -0.860889,
		0.923399, 0.030457, 0.382631,
		-0.108094, -0.935870, 0.335356,
		38.800274, 30.412659, 32.287647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403511, 30.694845, 31.780415>,  <38.875938, 31.067768, 32.052898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403511, 30.694845, 31.780415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.129616, 30.415989, 31.865387>,  <38.965279, 30.248674, 31.916370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.129616, 30.415989, 31.865387>,  <39.403511, 30.694845, 31.780415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129616, 30.415989, 31.865387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180211, -0.444398, -0.877516,
		0.706155, -0.562588, 0.429929,
		-0.684740, -0.697141, 0.212429,
		38.924194, 30.206846, 31.929115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699852, 30.076628, 31.726995>,  <39.403511, 30.694845, 31.780415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699852, 30.076628, 31.726995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319443, 29.967897, 31.668121>,  <39.091198, 29.902660, 31.632797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319443, 29.967897, 31.668121>,  <39.699852, 30.076628, 31.726995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319443, 29.967897, 31.668121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287246, -0.601218, -0.745672,
		0.114201, -0.751431, 0.649854,
		-0.951025, -0.271824, -0.147185,
		39.034134, 29.886351, 31.623966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816360, 29.425842, 31.644102>,  <39.699852, 30.076628, 31.726995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816360, 29.425842, 31.644102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.451111, 29.494385, 31.496130>,  <39.231960, 29.535511, 31.407347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.451111, 29.494385, 31.496130>,  <39.816360, 29.425842, 31.644102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451111, 29.494385, 31.496130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174122, -0.656545, -0.733914,
		-0.368636, -0.734565, 0.569668,
		-0.913121, 0.171356, -0.369930,
		39.177174, 29.545792, 31.385151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632164, 28.750875, 31.573166>,  <39.816360, 29.425842, 31.644102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632164, 28.750875, 31.573166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405285, 28.994129, 31.351009>,  <39.269157, 29.140081, 31.217716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405285, 28.994129, 31.351009>,  <39.632164, 28.750875, 31.573166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405285, 28.994129, 31.351009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072694, -0.634762, -0.769281,
		-0.820366, -0.476710, 0.315829,
		-0.567200, 0.608133, -0.555391,
		39.235126, 29.176569, 31.184393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.174507, 28.223732, 31.199963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148758, 28.560331, 30.985397>,  <39.133308, 28.762291, 30.856657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148758, 28.560331, 30.985397>,  <39.174507, 28.223732, 31.199963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148758, 28.560331, 30.985397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173241, -0.519945, -0.836448,
		-0.982774, -0.146770, -0.112313,
		-0.064369, 0.841496, -0.536415,
		39.129448, 28.812780, 30.824472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851425, 28.039080, 30.579552>,  <39.174507, 28.223732, 31.199963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851425, 28.039080, 30.579552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026752, 28.389250, 30.498060>,  <39.131950, 28.599352, 30.449165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026752, 28.389250, 30.498060>,  <38.851425, 28.039080, 30.579552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026752, 28.389250, 30.498060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087812, -0.267285, -0.959608,
		-0.894520, 0.402724, -0.194029,
		0.438318, 0.875427, -0.203727,
		39.158249, 28.651878, 30.436941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663071, 28.183086, 29.870045>,  <38.851425, 28.039080, 30.579552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663071, 28.183086, 29.870045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967194, 28.440338, 29.906515>,  <39.149670, 28.594688, 29.928398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967194, 28.440338, 29.906515>,  <38.663071, 28.183086, 29.870045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967194, 28.440338, 29.906515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237231, -0.144262, -0.960682,
		-0.604688, 0.752048, -0.262254,
		0.760312, 0.643127, 0.091176,
		39.195286, 28.633276, 29.933868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579010, 28.605148, 29.334221>,  <38.663071, 28.183086, 29.870045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579010, 28.605148, 29.334221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957382, 28.608263, 29.463926>,  <39.184406, 28.610132, 29.541750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957382, 28.608263, 29.463926>,  <38.579010, 28.605148, 29.334221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957382, 28.608263, 29.463926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319416, -0.196219, -0.927077,
		0.056407, 0.980529, -0.188098,
		0.945934, 0.007787, 0.324265,
		39.241161, 28.610600, 29.561205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891663, 28.936174, 28.858452>,  <38.579010, 28.605148, 29.334221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891663, 28.936174, 28.858452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204102, 28.762909, 29.038343>,  <39.391563, 28.658949, 29.146278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204102, 28.762909, 29.038343>,  <38.891663, 28.936174, 28.858452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204102, 28.762909, 29.038343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523910, 0.062794, -0.849456,
		0.339715, 0.899124, 0.275988,
		0.781097, -0.433165, 0.449728,
		39.438431, 28.632959, 29.173262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497070, 29.294136, 28.662010>,  <38.891663, 28.936174, 28.858452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497070, 29.294136, 28.662010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.575722, 28.911518, 28.748135>,  <39.622913, 28.681948, 28.799809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.575722, 28.911518, 28.748135>,  <39.497070, 29.294136, 28.662010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575722, 28.911518, 28.748135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621221, -0.048358, -0.782142,
		0.758567, 0.287544, 0.584718,
		0.196624, -0.956546, 0.215311,
		39.634708, 28.624554, 28.812729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146915, 29.108425, 28.160408>,  <39.497070, 29.294136, 28.662010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146915, 29.108425, 28.160408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.010983, 28.779682, 28.343302>,  <39.929424, 28.582436, 28.453039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.010983, 28.779682, 28.343302>,  <40.146915, 29.108425, 28.160408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010983, 28.779682, 28.343302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475864, -0.569601, -0.670155,
		0.811215, -0.010157, 0.584660,
		-0.339830, -0.821858, 0.457236,
		39.909035, 28.533125, 28.480473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727703, 28.613777, 28.226330>,  <40.146915, 29.108425, 28.160408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727703, 28.613777, 28.226330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.382408, 28.413916, 28.255089>,  <40.175232, 28.293999, 28.272345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.382408, 28.413916, 28.255089>,  <40.727703, 28.613777, 28.226330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382408, 28.413916, 28.255089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439379, -0.813826, -0.380308,
		0.248536, -0.296704, 0.922061,
		-0.863236, -0.499654, 0.071899,
		40.123436, 28.264019, 28.276659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861603, 27.866419, 28.470043>,  <40.727703, 28.613777, 28.226330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861603, 27.866419, 28.470043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507221, 27.861963, 28.284590>,  <40.294590, 27.859291, 28.173319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507221, 27.861963, 28.284590>,  <40.861603, 27.866419, 28.470043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507221, 27.861963, 28.284590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275024, -0.817571, -0.505905,
		-0.373417, -0.575721, 0.727397,
		-0.885958, -0.011138, -0.463631,
		40.241432, 27.858622, 28.145500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795887, 27.147335, 28.495745>,  <40.861603, 27.866419, 28.470043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795887, 27.147335, 28.495745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.545937, 27.316650, 28.233341>,  <40.395966, 27.418240, 28.075899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.545937, 27.316650, 28.233341>,  <40.795887, 27.147335, 28.495745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545937, 27.316650, 28.233341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135139, -0.768936, -0.624880,
		-0.768935, -0.479128, 0.423290,
		0.624880, -0.423290, 0.656011,
		40.358471, 27.443638, 28.036537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503708, 26.667166, 28.071651>,  <40.795887, 27.147335, 28.495745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503708, 26.667166, 28.071651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.467197, 26.995293, 27.845821>,  <40.445293, 27.192169, 27.710323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.467197, 26.995293, 27.845821>,  <40.503708, 26.667166, 28.071651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467197, 26.995293, 27.845821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341831, -0.506685, -0.791468,
		-0.935318, -0.265230, -0.234163,
		-0.091274, 0.820319, -0.564575,
		40.439816, 27.241388, 27.676449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089241, 26.466431, 27.524921>,  <40.503708, 26.667166, 28.071651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089241, 26.466431, 27.524921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.244446, 26.798988, 27.365807>,  <40.337570, 26.998522, 27.270338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.244446, 26.798988, 27.365807>,  <40.089241, 26.466431, 27.524921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244446, 26.798988, 27.365807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162195, -0.486459, -0.858517,
		-0.907271, 0.268595, -0.323599,
		0.388011, 0.831393, -0.397785,
		40.360847, 27.048407, 27.246471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811867, 26.583664, 26.888159>,  <40.089241, 26.466431, 27.524921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811867, 26.583664, 26.888159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.159660, 26.780388, 26.869717>,  <40.368336, 26.898422, 26.858652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.159660, 26.780388, 26.869717>,  <39.811867, 26.583664, 26.888159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159660, 26.780388, 26.869717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170139, -0.385792, -0.906762,
		-0.463743, 0.780567, -0.419115,
		0.869480, 0.491812, -0.046103,
		40.420506, 26.927931, 26.855886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046745, 26.528336, 26.205318>,  <39.811867, 26.583664, 26.888159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046745, 26.528336, 26.205318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.394653, 26.656750, 26.355221>,  <40.603397, 26.733799, 26.445162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.394653, 26.656750, 26.355221>,  <40.046745, 26.528336, 26.205318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394653, 26.656750, 26.355221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476373, -0.348110, -0.807396,
		-0.128746, 0.880770, -0.455707,
		0.869766, 0.321036, 0.374757,
		40.655582, 26.753061, 26.467648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331223, 26.901878, 25.620308>,  <40.046745, 26.528336, 26.205318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331223, 26.901878, 25.620308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.631153, 26.857929, 25.881287>,  <40.811111, 26.831560, 26.037874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.631153, 26.857929, 25.881287>,  <40.331223, 26.901878, 25.620308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631153, 26.857929, 25.881287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656266, -0.001847, -0.754527,
		0.084106, 0.993944, 0.070719,
		0.749827, -0.109871, 0.652447,
		40.856102, 26.824968, 26.077021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786285, 27.404539, 25.508835>,  <40.331223, 26.901878, 25.620308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786285, 27.404539, 25.508835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.974529, 27.097830, 25.683460>,  <41.087475, 26.913805, 25.788235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.974529, 27.097830, 25.683460>,  <40.786285, 27.404539, 25.508835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974529, 27.097830, 25.683460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462392, -0.207075, -0.862157,
		0.751478, 0.607603, 0.257097,
		0.470610, -0.766772, 0.436563,
		41.115711, 26.867798, 25.814428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361973, 27.441051, 25.224117>,  <40.786285, 27.404539, 25.508835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361973, 27.441051, 25.224117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.326229, 27.066099, 25.358778>,  <41.304783, 26.841127, 25.439573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.326229, 27.066099, 25.358778>,  <41.361973, 27.441051, 25.224117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326229, 27.066099, 25.358778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333173, -0.346662, -0.876825,
		0.938622, 0.033812, 0.343286,
		-0.089358, -0.937381, 0.336650,
		41.299423, 26.784885, 25.459772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008938, 27.044285, 25.011202>,  <41.361973, 27.441051, 25.224117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008938, 27.044285, 25.011202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.718899, 26.775520, 25.071569>,  <41.544876, 26.614262, 25.107790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.718899, 26.775520, 25.071569>,  <42.008938, 27.044285, 25.011202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718899, 26.775520, 25.071569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282259, -0.489869, -0.824838,
		0.628147, -0.555487, 0.544854,
		-0.725094, -0.671910, 0.150919,
		41.501369, 26.573948, 25.116846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372826, 26.504976, 25.051638>,  <42.008938, 27.044285, 25.011202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372826, 26.504976, 25.051638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.007893, 26.374212, 24.953020>,  <41.788933, 26.295753, 24.893850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.007893, 26.374212, 24.953020>,  <42.372826, 26.504976, 25.051638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007893, 26.374212, 24.953020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376421, -0.432696, -0.819196,
		0.161124, -0.840181, 0.517817,
		-0.912330, -0.326909, -0.246544,
		41.734192, 26.276140, 24.879057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448761, 25.900585, 24.613832>,  <42.372826, 26.504976, 25.051638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448761, 25.900585, 24.613832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.072308, 26.012348, 24.537733>,  <41.846436, 26.079405, 24.492073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.072308, 26.012348, 24.537733>,  <42.448761, 25.900585, 24.613832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072308, 26.012348, 24.537733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176520, -0.073747, -0.981531,
		-0.288276, -0.957337, 0.020086,
		-0.941137, 0.279406, -0.190248,
		41.789967, 26.096170, 24.480659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055534, 25.302158, 24.207016>,  <42.448761, 25.900585, 24.613832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055534, 25.302158, 24.207016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.886662, 25.657240, 24.133543>,  <41.785336, 25.870289, 24.089458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.886662, 25.657240, 24.133543>,  <42.055534, 25.302158, 24.207016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886662, 25.657240, 24.133543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144453, -0.134157, -0.980375,
		-0.894926, -0.440435, -0.071592,
		-0.422187, 0.887705, -0.183682,
		41.760006, 25.923552, 24.078438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630714, 25.175234, 23.633762>,  <42.055534, 25.302158, 24.207016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630714, 25.175234, 23.633762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.660847, 25.573872, 23.620350>,  <41.678925, 25.813055, 23.612303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.660847, 25.573872, 23.620350>,  <41.630714, 25.175234, 23.633762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660847, 25.573872, 23.620350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255665, -0.051807, -0.965376,
		-0.963826, 0.064148, -0.258697,
		0.075330, 0.996595, -0.033533,
		41.683445, 25.872850, 23.610291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557365, 25.634512, 22.942440>,  <41.630714, 25.175234, 23.633762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557365, 25.634512, 22.942440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.203636, 25.767723, 22.811556>,  <40.991398, 25.847649, 22.733025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.203636, 25.767723, 22.811556>,  <41.557365, 25.634512, 22.942440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203636, 25.767723, 22.811556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174779, 0.413745, 0.893458,
		0.432927, 0.847295, -0.307679,
		-0.884323, 0.333026, -0.327211,
		40.938339, 25.867632, 22.713392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803017, 25.360622, 22.703115>,  <41.557365, 25.634512, 22.942440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803017, 25.360622, 22.703115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650185, 25.146570, 22.401745>,  <40.558487, 25.018139, 22.220922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650185, 25.146570, 22.401745>,  <40.803017, 25.360622, 22.703115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650185, 25.146570, 22.401745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906876, 0.060316, 0.417059,
		-0.177737, 0.842614, -0.508341,
		-0.382081, -0.535129, -0.753426,
		40.535561, 24.986031, 22.175716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325249, 25.783802, 22.421522>,  <40.803017, 25.360622, 22.703115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325249, 25.783802, 22.421522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.194603, 25.413815, 22.343794>,  <40.116215, 25.191822, 22.297157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.194603, 25.413815, 22.343794>,  <40.325249, 25.783802, 22.421522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194603, 25.413815, 22.343794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888423, 0.230288, 0.397079,
		-0.322535, 0.302332, -0.896976,
		-0.326613, -0.924966, -0.194323,
		40.096619, 25.136324, 22.285498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625477, 25.849150, 22.094959>,  <40.325249, 25.783802, 22.421522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625477, 25.849150, 22.094959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669662, 25.484379, 22.253042>,  <39.696175, 25.265516, 22.347891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669662, 25.484379, 22.253042>,  <39.625477, 25.849150, 22.094959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669662, 25.484379, 22.253042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900992, 0.075973, 0.427133,
		-0.419539, -0.403259, -0.813246,
		0.110460, -0.911927, 0.395207,
		39.702801, 25.210800, 22.371605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972061, 25.553766, 22.012566>,  <39.625477, 25.849150, 22.094959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972061, 25.553766, 22.012566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111824, 25.308109, 22.295618>,  <39.195683, 25.160715, 22.465450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111824, 25.308109, 22.295618>,  <38.972061, 25.553766, 22.012566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111824, 25.308109, 22.295618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719077, 0.308425, 0.622738,
		-0.600701, -0.726432, -0.333849,
		0.349409, -0.614143, 0.707631,
		39.216648, 25.123867, 22.507908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495224, 25.064121, 22.336031>,  <38.972061, 25.553766, 22.012566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495224, 25.064121, 22.336031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758419, 25.074200, 22.637075>,  <38.916336, 25.080246, 22.817701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758419, 25.074200, 22.637075>,  <38.495224, 25.064121, 22.336031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758419, 25.074200, 22.637075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726935, 0.282080, 0.626096,
		-0.196522, -0.959060, 0.203920,
		0.657985, 0.025195, 0.752609,
		38.955814, 25.081758, 22.862858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108295, 24.794102, 23.081045>,  <38.495224, 25.064121, 22.336031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108295, 24.794102, 23.081045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442997, 24.992327, 23.174223>,  <38.643818, 25.111261, 23.230129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442997, 24.992327, 23.174223>,  <38.108295, 24.794102, 23.081045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442997, 24.992327, 23.174223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442544, 0.361462, 0.820671,
		0.322485, -0.789791, 0.521760,
		0.836755, 0.495555, 0.232951,
		38.694023, 25.140995, 23.244106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276512, 24.572819, 23.749907>,  <38.108295, 24.794102, 23.081045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276512, 24.572819, 23.749907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.455673, 24.929325, 23.721542>,  <38.563171, 25.143229, 23.704525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.455673, 24.929325, 23.721542>,  <38.276512, 24.572819, 23.749907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455673, 24.929325, 23.721542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463842, 0.299437, 0.833779,
		0.764353, -0.340560, 0.547525,
		0.447901, 0.891267, -0.070909,
		38.590042, 25.196705, 23.700270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577366, 24.636589, 24.330589>,  <38.276512, 24.572819, 23.749907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577366, 24.636589, 24.330589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576775, 25.011547, 24.191282>,  <38.576420, 25.236521, 24.107698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576775, 25.011547, 24.191282>,  <38.577366, 24.636589, 24.330589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576775, 25.011547, 24.191282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178001, 0.342460, 0.922516,
		0.984029, 0.063360, 0.166350,
		-0.001482, 0.937394, -0.348269,
		38.576328, 25.292765, 24.086802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176289, 24.983885, 24.667160>,  <38.577366, 24.636589, 24.330589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176289, 24.983885, 24.667160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.900730, 25.258936, 24.575436>,  <38.735394, 25.423967, 24.520401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.900730, 25.258936, 24.575436>,  <39.176289, 24.983885, 24.667160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900730, 25.258936, 24.575436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092690, 0.230191, 0.968721,
		0.718907, 0.688606, -0.094843,
		-0.688899, 0.687629, -0.229313,
		38.694061, 25.465225, 24.506641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399548, 25.542255, 25.054487>,  <39.176289, 24.983885, 24.667160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399548, 25.542255, 25.054487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016258, 25.596405, 24.953711>,  <38.786285, 25.628895, 24.893246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016258, 25.596405, 24.953711>,  <39.399548, 25.542255, 25.054487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016258, 25.596405, 24.953711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137793, 0.553401, 0.821438,
		0.250626, 0.821840, -0.511631,
		-0.958227, 0.135375, -0.251941,
		38.728790, 25.637018, 24.878128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301220, 26.123898, 25.458391>,  <39.399548, 25.542255, 25.054487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301220, 26.123898, 25.458391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929287, 25.999866, 25.379137>,  <38.706127, 25.925447, 25.331585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929287, 25.999866, 25.379137>,  <39.301220, 26.123898, 25.458391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929287, 25.999866, 25.379137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326299, 0.445889, 0.833494,
		-0.170101, 0.839664, -0.515781,
		-0.929836, -0.310077, -0.198136,
		38.650337, 25.906843, 25.319696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894913, 26.658236, 25.615644>,  <39.301220, 26.123898, 25.458391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894913, 26.658236, 25.615644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624428, 26.364391, 25.637867>,  <38.462139, 26.188086, 25.651199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624428, 26.364391, 25.637867>,  <38.894913, 26.658236, 25.615644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624428, 26.364391, 25.637867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301601, 0.344845, 0.888886,
		-0.672144, 0.584318, -0.454747,
		-0.676210, -0.734611, 0.055555,
		38.421566, 26.144009, 25.654533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240242, 26.968826, 25.710535>,  <38.894913, 26.658236, 25.615644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240242, 26.968826, 25.710535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244091, 26.595146, 25.853182>,  <38.246403, 26.370937, 25.938770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244091, 26.595146, 25.853182>,  <38.240242, 26.968826, 25.710535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244091, 26.595146, 25.853182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036808, 0.356062, 0.933737,
		-0.999276, -0.022113, -0.030959,
		0.009625, -0.934200, 0.356619,
		38.246979, 26.314886, 25.960167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911713, 27.088865, 26.279549>,  <38.240242, 26.968826, 25.710535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911713, 27.088865, 26.279549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012913, 26.710623, 26.361349>,  <38.073631, 26.483677, 26.410429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012913, 26.710623, 26.361349>,  <37.911713, 27.088865, 26.279549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012913, 26.710623, 26.361349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332948, 0.113365, 0.936106,
		-0.908371, -0.304921, -0.286156,
		0.252998, -0.945606, 0.204500,
		38.088814, 26.426941, 26.422699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372211, 26.856800, 26.706589>,  <37.911713, 27.088865, 26.279549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372211, 26.856800, 26.706589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676785, 26.607430, 26.777643>,  <37.859528, 26.457808, 26.820276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676785, 26.607430, 26.777643>,  <37.372211, 26.856800, 26.706589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676785, 26.607430, 26.777643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226943, 0.000320, 0.973908,
		-0.607219, -0.781880, -0.141239,
		0.761435, -0.623429, 0.177637,
		37.905216, 26.420401, 26.830935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115608, 26.215784, 27.138937>,  <37.372211, 26.856800, 26.706589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115608, 26.215784, 27.138937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510250, 26.267248, 27.179043>,  <37.747036, 26.298126, 27.203106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510250, 26.267248, 27.179043>,  <37.115608, 26.215784, 27.138937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510250, 26.267248, 27.179043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104925, 0.029967, 0.994029,
		0.124888, -0.991236, 0.043065,
		0.986607, 0.128661, 0.100263,
		37.806232, 26.305845, 27.209122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289673, 25.679592, 27.593958>,  <37.115608, 26.215784, 27.138937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289673, 25.679592, 27.593958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.591892, 25.935099, 27.652096>,  <37.773224, 26.088404, 27.686979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.591892, 25.935099, 27.652096>,  <37.289673, 25.679592, 27.593958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591892, 25.935099, 27.652096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207585, 0.023013, 0.977946,
		0.621337, -0.769054, 0.149986,
		0.755545, 0.638769, 0.145345,
		37.818558, 26.126730, 27.695700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550827, 25.505705, 28.185118>,  <37.289673, 25.679592, 27.593958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550827, 25.505705, 28.185118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684517, 25.882341, 28.168642>,  <37.764732, 26.108324, 28.158756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684517, 25.882341, 28.168642>,  <37.550827, 25.505705, 28.185118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684517, 25.882341, 28.168642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265832, 0.136108, 0.954363,
		0.904226, -0.308025, 0.295796,
		0.334227, 0.941592, -0.041190,
		37.784786, 26.164820, 28.156284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865570, 25.688189, 28.829912>,  <37.550827, 25.505705, 28.185118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865570, 25.688189, 28.829912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784206, 26.053278, 28.688177>,  <37.735386, 26.272331, 28.603136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784206, 26.053278, 28.688177>,  <37.865570, 25.688189, 28.829912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784206, 26.053278, 28.688177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145781, 0.329638, 0.932785,
		0.968180, 0.241395, 0.066006,
		-0.203411, 0.912725, -0.354339,
		37.723183, 26.327095, 28.581875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236389, 26.119864, 29.199923>,  <37.865570, 25.688189, 28.829912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236389, 26.119864, 29.199923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954891, 26.368113, 29.061604>,  <37.785992, 26.517061, 28.978613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954891, 26.368113, 29.061604>,  <38.236389, 26.119864, 29.199923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954891, 26.368113, 29.061604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146377, 0.349623, 0.925385,
		0.695214, 0.701848, -0.155199,
		-0.703741, 0.620623, -0.345797,
		37.743771, 26.554300, 28.957865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232101, 26.683693, 29.665518>,  <38.236389, 26.119864, 29.199923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232101, 26.683693, 29.665518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873199, 26.708000, 29.490591>,  <37.657860, 26.722586, 29.385635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873199, 26.708000, 29.490591>,  <38.232101, 26.683693, 29.665518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873199, 26.708000, 29.490591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422937, 0.166048, 0.890816,
		0.126750, 0.984244, -0.123286,
		-0.897251, 0.060769, -0.437319,
		37.604023, 26.726231, 29.359396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.621586, 30.256445, 33.425442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244144, 30.300928, 33.300701>,  <39.017681, 30.327618, 33.225857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244144, 30.300928, 33.300701>,  <39.621586, 30.256445, 33.425442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244144, 30.300928, 33.300701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247881, 0.387098, 0.888093,
		0.219478, 0.915308, -0.337701,
		-0.943602, 0.111207, -0.311847,
		38.961063, 30.334290, 33.207146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444386, 30.930395, 33.771538>,  <39.621586, 30.256445, 33.425442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444386, 30.930395, 33.771538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109303, 30.768230, 33.625175>,  <38.908253, 30.670931, 33.537357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109303, 30.768230, 33.625175>,  <39.444386, 30.930395, 33.771538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109303, 30.768230, 33.625175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521285, 0.393839, 0.757068,
		-0.162816, 0.824944, -0.541257,
		-0.837707, -0.405412, -0.365908,
		38.857990, 30.646606, 33.515404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065571, 31.440969, 33.777885>,  <39.444386, 30.930395, 33.771538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065571, 31.440969, 33.777885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783493, 31.157793, 33.762260>,  <38.614246, 30.987886, 33.752884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783493, 31.157793, 33.762260>,  <39.065571, 31.440969, 33.777885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783493, 31.157793, 33.762260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459981, 0.414874, 0.785046,
		-0.539559, 0.571576, -0.618204,
		-0.705191, -0.707940, -0.039065,
		38.571938, 30.945412, 33.750542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442898, 31.748440, 33.738071>,  <39.065571, 31.440969, 33.777885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442898, 31.748440, 33.738071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.406746, 31.389263, 33.910366>,  <38.385056, 31.173758, 34.013741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.406746, 31.389263, 33.910366>,  <38.442898, 31.748440, 33.738071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406746, 31.389263, 33.910366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487892, 0.416969, 0.766876,
		-0.868213, -0.140845, -0.475783,
		-0.090377, -0.897942, 0.430735,
		38.379631, 31.119881, 34.039585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781555, 31.726368, 34.158737>,  <38.442898, 31.748440, 33.738071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781555, 31.726368, 34.158737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967617, 31.407373, 34.312435>,  <38.079254, 31.215977, 34.404655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967617, 31.407373, 34.312435>,  <37.781555, 31.726368, 34.158737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967617, 31.407373, 34.312435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266143, 0.287997, 0.919905,
		-0.844273, -0.530165, -0.078282,
		0.465157, -0.797486, 0.384248,
		38.107162, 31.168127, 34.427708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294731, 31.332174, 34.519344>,  <37.781555, 31.726368, 34.158737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294731, 31.332174, 34.519344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.656635, 31.258886, 34.673149>,  <37.873775, 31.214914, 34.765430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.656635, 31.258886, 34.673149>,  <37.294731, 31.332174, 34.519344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656635, 31.258886, 34.673149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329738, 0.270132, 0.904600,
		-0.269609, -0.945230, 0.183988,
		0.904756, -0.183221, 0.384508,
		37.928062, 31.203920, 34.788502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134415, 30.956953, 35.054939>,  <37.294731, 31.332174, 34.519344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134415, 30.956953, 35.054939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.504139, 31.073994, 35.152943>,  <37.725975, 31.144218, 35.211742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.504139, 31.073994, 35.152943>,  <37.134415, 30.956953, 35.054939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504139, 31.073994, 35.152943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313773, 0.217233, 0.924314,
		0.217233, -0.931232, 0.292602,
		-0.924314, -0.292602, -0.245005,
		37.781433, 31.161774, 35.226444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208698, 30.693136, 35.723938>,  <37.134415, 30.956953, 35.054939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208698, 30.693136, 35.723938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.455421, 31.003942, 35.673672>,  <37.603455, 31.190426, 35.643513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.455421, 31.003942, 35.673672>,  <37.208698, 30.693136, 35.723938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455421, 31.003942, 35.673672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270549, 0.359218, 0.893177,
		0.739154, -0.516921, 0.431791,
		0.616809, 0.777017, -0.125665,
		37.640465, 31.237047, 35.635971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276417, 30.888124, 36.393314>,  <37.208698, 30.693136, 35.723938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276417, 30.888124, 36.393314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.445850, 31.197920, 36.205379>,  <37.547512, 31.383797, 36.092621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.445850, 31.197920, 36.205379>,  <37.276417, 30.888124, 36.393314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445850, 31.197920, 36.205379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134657, 0.566736, 0.812821,
		0.895792, -0.281033, 0.344351,
		0.423585, 0.774488, -0.469834,
		37.572926, 31.430265, 36.064430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793377, 31.232559, 36.845261>,  <37.276417, 30.888124, 36.393314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793377, 31.232559, 36.845261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.686947, 31.517605, 36.585602>,  <37.623089, 31.688633, 36.429810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.686947, 31.517605, 36.585602>,  <37.793377, 31.232559, 36.845261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686947, 31.517605, 36.585602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210942, 0.614052, 0.760555,
		0.940590, 0.339293, -0.013061,
		-0.266071, 0.712615, -0.649142,
		37.607124, 31.731390, 36.390858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158092, 31.927938, 37.120766>,  <37.793377, 31.232559, 36.845261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158092, 31.927938, 37.120766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.884682, 32.087963, 36.876556>,  <37.720634, 32.183979, 36.730030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.884682, 32.087963, 36.876556>,  <38.158092, 31.927938, 37.120766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884682, 32.087963, 36.876556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283372, 0.625375, 0.727054,
		0.672672, 0.669967, -0.314096,
		-0.683530, 0.400063, -0.610522,
		37.679623, 32.207981, 36.693401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183224, 32.666477, 37.209431>,  <38.158092, 31.927938, 37.120766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183224, 32.666477, 37.209431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817551, 32.588898, 37.067078>,  <37.598145, 32.542351, 36.981667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817551, 32.588898, 37.067078>,  <38.183224, 32.666477, 37.209431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817551, 32.588898, 37.067078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385407, 0.687699, 0.615249,
		0.125410, 0.699610, -0.703434,
		-0.914185, -0.193950, -0.355879,
		37.543297, 32.530712, 36.960316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677811, 33.286812, 36.957081>,  <38.183224, 32.666477, 37.209431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677811, 33.286812, 36.957081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.478821, 32.980614, 37.120316>,  <37.359428, 32.796894, 37.218254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.478821, 32.980614, 37.120316>,  <37.677811, 33.286812, 36.957081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478821, 32.980614, 37.120316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515504, 0.639224, 0.570656,
		-0.697692, 0.073519, -0.712616,
		-0.497475, -0.765498, 0.408082,
		37.329578, 32.750965, 37.242741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367012, 33.620525, 36.938576>,  <37.677811, 33.286812, 36.957081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367012, 33.620525, 36.938576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.324055, 33.260921, 36.768753>,  <38.298283, 33.045158, 36.666859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.324055, 33.260921, 36.768753>,  <38.367012, 33.620525, 36.938576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324055, 33.260921, 36.768753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092280, 0.416166, -0.904594,
		0.989925, -0.136321, 0.038270,
		-0.107388, -0.899012, -0.424553,
		38.291840, 32.991219, 36.641388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623486, 34.194626, 36.745533>,  <38.367012, 33.620525, 36.938576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623486, 34.194626, 36.745533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854614, 34.520706, 36.761379>,  <38.993294, 34.716354, 36.770889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854614, 34.520706, 36.761379>,  <38.623486, 34.194626, 36.745533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854614, 34.520706, 36.761379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121875, 0.134181, -0.983434,
		-0.807010, 0.563424, 0.176885,
		0.577825, 0.815198, 0.039618,
		39.027962, 34.765266, 36.773266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240318, 34.717648, 36.469334>,  <38.623486, 34.194626, 36.745533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240318, 34.717648, 36.469334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.630295, 34.805286, 36.453903>,  <38.864281, 34.857868, 36.444645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.630295, 34.805286, 36.453903>,  <38.240318, 34.717648, 36.469334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630295, 34.805286, 36.453903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072390, 0.148461, -0.986265,
		-0.210359, 0.964343, 0.160601,
		0.974940, 0.219096, -0.038579,
		38.922775, 34.871014, 36.442329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251976, 35.338474, 35.916027>,  <38.240318, 34.717648, 36.469334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251976, 35.338474, 35.916027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628933, 35.214043, 35.965206>,  <38.855106, 35.139381, 35.994713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628933, 35.214043, 35.965206>,  <38.251976, 35.338474, 35.916027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628933, 35.214043, 35.965206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172841, 0.138179, -0.975209,
		0.286382, 0.940284, 0.183988,
		0.942397, -0.311082, 0.122948,
		38.911652, 35.120716, 36.002090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672356, 35.706230, 35.405899>,  <38.251976, 35.338474, 35.916027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672356, 35.706230, 35.405899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908184, 35.403130, 35.517769>,  <39.049683, 35.221268, 35.584892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908184, 35.403130, 35.517769>,  <38.672356, 35.706230, 35.405899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908184, 35.403130, 35.517769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373435, -0.051308, -0.926236,
		0.716207, 0.650522, 0.252721,
		0.589571, -0.757752, 0.279675,
		39.085056, 35.175804, 35.601673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215729, 35.857708, 35.009998>,  <38.672356, 35.706230, 35.405899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215729, 35.857708, 35.009998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.236763, 35.472107, 35.114250>,  <39.249386, 35.240746, 35.176800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.236763, 35.472107, 35.114250>,  <39.215729, 35.857708, 35.009998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236763, 35.472107, 35.114250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117979, -0.253165, -0.960202,
		0.991623, 0.081246, 0.100418,
		0.052590, -0.964006, 0.260630,
		39.252541, 35.182907, 35.192440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834946, 35.673557, 34.672268>,  <39.215729, 35.857708, 35.009998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834946, 35.673557, 34.672268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.645721, 35.325069, 34.724705>,  <39.532188, 35.115974, 34.756165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.645721, 35.325069, 34.724705>,  <39.834946, 35.673557, 34.672268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645721, 35.325069, 34.724705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255360, -0.277990, -0.926020,
		0.843211, -0.404589, 0.353982,
		-0.473061, -0.871223, 0.131088,
		39.503803, 35.063702, 34.764030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122917, 35.164303, 34.221733>,  <39.834946, 35.673557, 34.672268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122917, 35.164303, 34.221733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.777729, 34.989033, 34.322357>,  <39.570614, 34.883873, 34.382732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.777729, 34.989033, 34.322357>,  <40.122917, 35.164303, 34.221733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777729, 34.989033, 34.322357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127993, -0.292064, -0.947796,
		0.488769, -0.850120, 0.195960,
		-0.862973, -0.438172, 0.251561,
		39.518837, 34.857582, 34.397827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259190, 34.544537, 33.968555>,  <40.122917, 35.164303, 34.221733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259190, 34.544537, 33.968555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860172, 34.541744, 33.996418>,  <39.620762, 34.540070, 34.013134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860172, 34.541744, 33.996418>,  <40.259190, 34.544537, 33.968555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860172, 34.541744, 33.996418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061432, -0.389908, -0.918803,
		0.033572, -0.920828, 0.388522,
		-0.997547, -0.006979, 0.069658,
		39.560909, 34.539650, 34.017315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005207, 33.919777, 33.675926>,  <40.259190, 34.544537, 33.968555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005207, 33.919777, 33.675926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690620, 34.165562, 33.650932>,  <39.501869, 34.313034, 33.635937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690620, 34.165562, 33.650932>,  <40.005207, 33.919777, 33.675926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690620, 34.165562, 33.650932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162547, -0.303527, -0.938856,
		-0.595860, -0.728221, 0.338593,
		-0.786467, 0.614464, -0.062489,
		39.454681, 34.349899, 33.632187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349464, 33.476456, 33.438961>,  <40.005207, 33.919777, 33.675926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349464, 33.476456, 33.438961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257343, 33.854660, 33.346901>,  <39.202072, 34.081581, 33.291664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257343, 33.854660, 33.346901>,  <39.349464, 33.476456, 33.438961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257343, 33.854660, 33.346901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170145, -0.271988, -0.947140,
		-0.958129, -0.178970, 0.223514,
		-0.230302, 0.945512, -0.230148,
		39.188251, 34.138313, 33.277855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739353, 33.448273, 33.071381>,  <39.349464, 33.476456, 33.438961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739353, 33.448273, 33.071381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.875954, 33.815205, 32.989525>,  <38.957912, 34.035366, 32.940411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.875954, 33.815205, 32.989525>,  <38.739353, 33.448273, 33.071381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875954, 33.815205, 32.989525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052600, -0.198731, -0.978642,
		-0.938409, 0.344970, -0.019614,
		0.341500, 0.917334, -0.204636,
		38.978405, 34.090405, 32.928135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182350, 33.819920, 32.634167>,  <38.739353, 33.448273, 33.071381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182350, 33.819920, 32.634167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554501, 33.952255, 32.570995>,  <38.777790, 34.031658, 32.533092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554501, 33.952255, 32.570995>,  <38.182350, 33.819920, 32.634167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554501, 33.952255, 32.570995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077596, -0.243303, -0.966842,
		-0.358297, 0.911782, -0.200692,
		0.930377, 0.330844, -0.157925,
		38.833614, 34.051510, 32.523617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152645, 33.877338, 31.917944>,  <38.182350, 33.819920, 32.634167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152645, 33.877338, 31.917944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.537914, 33.952305, 31.995073>,  <38.769073, 33.997284, 32.041351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.537914, 33.952305, 31.995073>,  <38.152645, 33.877338, 31.917944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537914, 33.952305, 31.995073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238599, -0.265015, -0.934258,
		-0.123991, 0.945856, -0.299971,
		0.963170, 0.187412, 0.192821,
		38.826866, 34.008530, 32.052921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508778, 34.361629, 31.424770>,  <38.152645, 33.877338, 31.917944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508778, 34.361629, 31.424770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.818874, 34.151108, 31.564484>,  <39.004932, 34.024796, 31.648312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.818874, 34.151108, 31.564484>,  <38.508778, 34.361629, 31.424770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818874, 34.151108, 31.564484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263322, -0.233345, -0.936062,
		0.574159, 0.817650, -0.042312,
		0.775244, -0.526306, 0.349283,
		39.051449, 33.993217, 31.669268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542007, 34.981895, 30.791269>,  <38.508778, 34.361629, 31.424770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542007, 34.981895, 30.791269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.192875, 35.017124, 30.599266>,  <37.983395, 35.038261, 30.484064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.192875, 35.017124, 30.599266>,  <38.542007, 34.981895, 30.791269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192875, 35.017124, 30.599266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378150, 0.499692, 0.779301,
		0.308494, 0.861714, -0.402841,
		-0.872831, 0.088075, -0.480010,
		37.931026, 35.043549, 30.455263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169285, 35.600319, 30.915216>,  <38.542007, 34.981895, 30.791269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169285, 35.600319, 30.915216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.841690, 35.400658, 30.802010>,  <37.645134, 35.280861, 30.734085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.841690, 35.400658, 30.802010>,  <38.169285, 35.600319, 30.915216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841690, 35.400658, 30.802010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483243, 0.334045, 0.809253,
		-0.309404, 0.799536, -0.514793,
		-0.818991, -0.499156, -0.283015,
		37.595993, 35.250912, 30.717106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566902, 36.019909, 30.972534>,  <38.169285, 35.600319, 30.915216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566902, 36.019909, 30.972534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.426098, 35.646095, 30.993431>,  <37.341614, 35.421806, 31.005970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.426098, 35.646095, 30.993431>,  <37.566902, 36.019909, 30.972534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426098, 35.646095, 30.993431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565174, 0.256712, 0.784014,
		-0.746101, 0.246455, -0.618541,
		-0.352011, -0.934537, 0.052243,
		37.320496, 35.365734, 31.009104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000114, 36.010586, 31.128407>,  <37.566902, 36.019909, 30.972534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000114, 36.010586, 31.128407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.037384, 35.625210, 31.228886>,  <37.059746, 35.393986, 31.289173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.037384, 35.625210, 31.228886>,  <37.000114, 36.010586, 31.128407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037384, 35.625210, 31.228886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716181, 0.110413, 0.689125,
		-0.691666, -0.244114, -0.679710,
		0.093176, -0.963440, 0.251198,
		37.065338, 35.336178, 31.304245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304802, 35.716492, 31.210436>,  <37.000114, 36.010586, 31.128407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304802, 35.716492, 31.210436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.540539, 35.475960, 31.426247>,  <36.681980, 35.331642, 31.555733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.540539, 35.475960, 31.426247>,  <36.304802, 35.716492, 31.210436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540539, 35.475960, 31.426247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712322, -0.071694, 0.698182,
		-0.381155, -0.795780, -0.470590,
		0.589338, -0.601327, 0.539525,
		36.717339, 35.295563, 31.588104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839050, 35.218651, 31.518036>,  <36.304802, 35.716492, 31.210436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839050, 35.218651, 31.518036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.181065, 35.197147, 31.724342>,  <36.386272, 35.184246, 31.848127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.181065, 35.197147, 31.724342>,  <35.839050, 35.218651, 31.518036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181065, 35.197147, 31.724342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515245, 0.024237, 0.856700,
		-0.058558, -0.998260, -0.006977,
		0.855040, -0.053761, 0.515768,
		36.437576, 35.181019, 31.879072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816086, 34.698822, 32.084538>,  <35.839050, 35.218651, 31.518036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816086, 34.698822, 32.084538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.116230, 34.940968, 32.190739>,  <36.296318, 35.086254, 32.254459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.116230, 34.940968, 32.190739>,  <35.816086, 34.698822, 32.084538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116230, 34.940968, 32.190739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323201, -0.014387, 0.946221,
		0.576628, -0.795819, 0.184859,
		0.750360, 0.605364, 0.265505,
		36.341339, 35.122578, 32.270390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938892, 34.469830, 32.721970>,  <35.816086, 34.698822, 32.084538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938892, 34.469830, 32.721970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.079865, 34.843819, 32.705853>,  <36.164448, 35.068211, 32.696182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.079865, 34.843819, 32.705853>,  <35.938892, 34.469830, 32.721970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079865, 34.843819, 32.705853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417778, 0.195713, 0.887219,
		0.837408, -0.295854, 0.459585,
		0.352434, 0.934969, -0.040290,
		36.185596, 35.124310, 32.693764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103130, 34.576679, 33.410019>,  <35.938892, 34.469830, 32.721970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103130, 34.576679, 33.410019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.092670, 34.943989, 33.251984>,  <36.086395, 35.164375, 33.157162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.092670, 34.943989, 33.251984>,  <36.103130, 34.576679, 33.410019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092670, 34.943989, 33.251984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355021, 0.360930, 0.862374,
		0.934492, 0.162818, 0.316566,
		-0.026151, 0.918270, -0.395090,
		36.084824, 35.219471, 33.133457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378292, 35.055523, 33.938313>,  <36.103130, 34.576679, 33.410019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378292, 35.055523, 33.938313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.173542, 35.291355, 33.688393>,  <36.050694, 35.432854, 33.538441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.173542, 35.291355, 33.688393>,  <36.378292, 35.055523, 33.938313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173542, 35.291355, 33.688393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417104, 0.465257, 0.780743,
		0.751006, 0.660250, 0.007764,
		-0.511873, 0.589581, -0.624804,
		36.019981, 35.468231, 33.500950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465034, 35.653290, 34.163425>,  <36.378292, 35.055523, 33.938313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465034, 35.653290, 34.163425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.112652, 35.655582, 33.974159>,  <35.901222, 35.656960, 33.860600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.112652, 35.655582, 33.974159>,  <36.465034, 35.653290, 34.163425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112652, 35.655582, 33.974159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439212, 0.362226, 0.822122,
		0.176107, 0.932073, -0.316587,
		-0.880954, 0.005733, -0.473167,
		35.848366, 35.657303, 33.832211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239719, 36.277035, 34.414135>,  <36.465034, 35.653290, 34.163425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239719, 36.277035, 34.414135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.923889, 36.073933, 34.276299>,  <35.734390, 35.952072, 34.193596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.923889, 36.073933, 34.276299>,  <36.239719, 36.277035, 34.414135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923889, 36.073933, 34.276299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536161, 0.297684, 0.789883,
		-0.298490, 0.808433, -0.507286,
		-0.789579, -0.507760, -0.344594,
		35.687016, 35.921604, 34.172920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.806622, 34.649269, 26.655876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515156, 34.414764, 26.797495>,  <38.340279, 34.274063, 26.882467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515156, 34.414764, 26.797495>,  <38.806622, 34.649269, 26.655876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515156, 34.414764, 26.797495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148495, 0.639897, 0.753977,
		-0.668582, 0.496820, -0.553325,
		-0.728662, -0.586261, 0.354048,
		38.296558, 34.238888, 26.903709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175079, 35.020775, 26.843950>,  <38.806622, 34.649269, 26.655876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175079, 35.020775, 26.843950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168278, 34.693218, 27.073427>,  <38.164196, 34.496685, 27.211113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168278, 34.693218, 27.073427>,  <38.175079, 35.020775, 26.843950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168278, 34.693218, 27.073427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239848, 0.560365, 0.792758,
		-0.970662, -0.124121, -0.205937,
		-0.017002, -0.818893, 0.573695,
		38.163177, 34.447552, 27.245535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631813, 35.116554, 27.184170>,  <38.175079, 35.020775, 26.843950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631813, 35.116554, 27.184170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815826, 34.833214, 27.398314>,  <37.926235, 34.663212, 27.526800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815826, 34.833214, 27.398314>,  <37.631813, 35.116554, 27.184170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815826, 34.833214, 27.398314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244682, 0.478467, 0.843327,
		-0.853522, -0.518951, 0.046790,
		0.460033, -0.708350, 0.535360,
		37.953835, 34.620708, 27.558922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256142, 35.011112, 27.758062>,  <37.631813, 35.116554, 27.184170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256142, 35.011112, 27.758062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615425, 34.868401, 27.860767>,  <37.830994, 34.782772, 27.922390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615425, 34.868401, 27.860767>,  <37.256142, 35.011112, 27.758062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615425, 34.868401, 27.860767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207699, 0.170332, 0.963249,
		-0.387406, -0.918528, 0.078890,
		0.898208, -0.356783, 0.256764,
		37.884888, 34.761364, 27.937798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096558, 34.699776, 28.360115>,  <37.256142, 35.011112, 27.758062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096558, 34.699776, 28.360115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495457, 34.689152, 28.387804>,  <37.734795, 34.682777, 28.404417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495457, 34.689152, 28.387804>,  <37.096558, 34.699776, 28.360115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495457, 34.689152, 28.387804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064962, 0.137057, 0.988431,
		-0.035739, -0.990207, 0.134954,
		0.997247, -0.026559, 0.069224,
		37.794632, 34.681183, 28.408571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292580, 34.145187, 28.762960>,  <37.096558, 34.699776, 28.360115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292580, 34.145187, 28.762960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602272, 34.398289, 28.757309>,  <37.788086, 34.550148, 28.753918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602272, 34.398289, 28.757309>,  <37.292580, 34.145187, 28.762960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602272, 34.398289, 28.757309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025286, 0.053230, 0.998262,
		0.632403, -0.772524, 0.057212,
		0.774226, 0.632751, -0.014129,
		37.834541, 34.588116, 28.753071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725590, 33.868874, 29.253702>,  <37.292580, 34.145187, 28.762960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725590, 33.868874, 29.253702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839184, 34.251442, 29.226530>,  <37.907341, 34.480984, 29.210228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839184, 34.251442, 29.226530>,  <37.725590, 33.868874, 29.253702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839184, 34.251442, 29.226530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059495, 0.053132, 0.996814,
		0.956980, -0.287124, -0.041814,
		0.283988, 0.956419, -0.067929,
		37.924381, 34.538368, 29.206152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188110, 33.921768, 29.803656>,  <37.725590, 33.868874, 29.253702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188110, 33.921768, 29.803656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089653, 34.303101, 29.733713>,  <38.030579, 34.531898, 29.691748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089653, 34.303101, 29.733713>,  <38.188110, 33.921768, 29.803656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089653, 34.303101, 29.733713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062415, 0.164440, 0.984410,
		0.967223, 0.253216, 0.019027,
		-0.246140, 0.953332, -0.174855,
		38.015812, 34.589100, 29.681257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532249, 34.334171, 30.359526>,  <38.188110, 33.921768, 29.803656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532249, 34.334171, 30.359526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255123, 34.578583, 30.206345>,  <38.088848, 34.725231, 30.114437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255123, 34.578583, 30.206345>,  <38.532249, 34.334171, 30.359526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255123, 34.578583, 30.206345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232415, 0.313510, 0.920703,
		0.682635, 0.726880, -0.075193,
		-0.692815, 0.611029, -0.382951,
		38.047279, 34.761890, 30.091459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996067, 34.399151, 30.817604>,  <38.532249, 34.334171, 30.359526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996067, 34.399151, 30.817604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115761, 34.107559, 31.063871>,  <39.187576, 33.932606, 31.211632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115761, 34.107559, 31.063871>,  <38.996067, 34.399151, 30.817604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115761, 34.107559, 31.063871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410089, -0.484349, -0.772808,
		0.861559, 0.483733, 0.154010,
		0.299238, -0.728977, 0.615669,
		39.205532, 33.888866, 31.248571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735023, 34.246387, 30.684641>,  <38.996067, 34.399151, 30.817604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735023, 34.246387, 30.684641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607296, 33.907963, 30.855387>,  <39.530659, 33.704906, 30.957834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607296, 33.907963, 30.855387>,  <39.735023, 34.246387, 30.684641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607296, 33.907963, 30.855387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304169, -0.518119, -0.799396,
		0.897505, -0.125426, 0.422793,
		-0.319322, -0.846062, 0.426863,
		39.511501, 33.654144, 30.983446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284283, 33.852921, 30.670364>,  <39.735023, 34.246387, 30.684641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284283, 33.852921, 30.670364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989986, 33.587032, 30.722261>,  <39.813408, 33.427498, 30.753401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989986, 33.587032, 30.722261>,  <40.284283, 33.852921, 30.670364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989986, 33.587032, 30.722261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349271, -0.536529, -0.768210,
		0.580257, -0.519886, 0.626913,
		-0.735739, -0.664722, 0.129744,
		39.769264, 33.387615, 30.761185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611202, 33.122799, 30.651909>,  <40.284283, 33.852921, 30.670364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611202, 33.122799, 30.651909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222733, 33.052311, 30.587704>,  <39.989651, 33.010017, 30.549181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222733, 33.052311, 30.587704>,  <40.611202, 33.122799, 30.651909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222733, 33.052311, 30.587704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229797, -0.513197, -0.826935,
		0.063351, -0.839984, 0.538899,
		-0.971174, -0.176224, -0.160514,
		39.931381, 32.999443, 30.539549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561062, 32.423306, 30.508638>,  <40.611202, 33.122799, 30.651909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561062, 32.423306, 30.508638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210476, 32.560257, 30.373240>,  <40.000122, 32.642429, 30.292000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210476, 32.560257, 30.373240>,  <40.561062, 32.423306, 30.508638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210476, 32.560257, 30.373240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128261, -0.511617, -0.849587,
		-0.464059, -0.788052, 0.404503,
		-0.876469, 0.342377, -0.338497,
		39.947536, 32.662971, 30.271690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245354, 31.867884, 30.421782>,  <40.561062, 32.423306, 30.508638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245354, 31.867884, 30.421782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054962, 32.136837, 30.195032>,  <39.940727, 32.298210, 30.058983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054962, 32.136837, 30.195032>,  <40.245354, 31.867884, 30.421782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054962, 32.136837, 30.195032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032380, -0.630737, -0.775321,
		-0.878861, -0.387390, 0.278445,
		-0.475977, 0.672384, -0.566874,
		39.912170, 32.338551, 30.024969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747337, 31.525288, 30.091454>,  <40.245354, 31.867884, 30.421782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747337, 31.525288, 30.091454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833958, 31.841850, 29.862797>,  <39.885929, 32.031788, 29.725603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833958, 31.841850, 29.862797>,  <39.747337, 31.525288, 30.091454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833958, 31.841850, 29.862797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000080, -0.585524, -0.810655,
		-0.976270, 0.175597, -0.126735,
		0.216555, 0.791409, -0.571643,
		39.898926, 32.079273, 29.691303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515747, 31.282803, 29.527338>,  <39.747337, 31.525288, 30.091454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515747, 31.282803, 29.527338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699696, 31.610670, 29.390720>,  <39.810066, 31.807390, 29.308750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699696, 31.610670, 29.390720>,  <39.515747, 31.282803, 29.527338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699696, 31.610670, 29.390720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034300, -0.400742, -0.915549,
		-0.887320, 0.409324, -0.212406,
		0.459876, 0.819671, -0.341546,
		39.837658, 31.856571, 29.288256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228455, 31.264891, 28.878265>,  <39.515747, 31.282803, 29.527338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228455, 31.264891, 28.878265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547115, 31.505486, 28.854395>,  <39.738312, 31.649843, 28.840073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547115, 31.505486, 28.854395>,  <39.228455, 31.264891, 28.878265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547115, 31.505486, 28.854395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106871, -0.237343, -0.965529,
		-0.594919, 0.762810, -0.253361,
		0.796649, 0.601489, -0.059677,
		39.786110, 31.685932, 28.836493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244350, 31.606550, 28.167906>,  <39.228455, 31.264891, 28.878265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244350, 31.606550, 28.167906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627151, 31.639277, 28.279224>,  <39.856831, 31.658913, 28.346016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627151, 31.639277, 28.279224>,  <39.244350, 31.606550, 28.167906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627151, 31.639277, 28.279224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289789, -0.227129, -0.929750,
		-0.012861, 0.970422, -0.241073,
		0.957004, 0.081818, 0.278297,
		39.914253, 31.663822, 28.362713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670376, 31.944468, 27.554558>,  <39.244350, 31.606550, 28.167906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670376, 31.944468, 27.554558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905010, 31.721096, 27.789188>,  <40.045792, 31.587074, 27.929966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905010, 31.721096, 27.789188>,  <39.670376, 31.944468, 27.554558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905010, 31.721096, 27.789188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302435, -0.520839, -0.798286,
		0.751296, 0.645668, -0.136631,
		0.586590, -0.558427, 0.586577,
		40.080986, 31.553568, 27.965162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389168, 32.099739, 27.275423>,  <39.670376, 31.944468, 27.554558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389168, 32.099739, 27.275423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414665, 31.755629, 27.477753>,  <40.429966, 31.549162, 27.599150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414665, 31.755629, 27.477753>,  <40.389168, 32.099739, 27.275423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414665, 31.755629, 27.477753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507775, -0.408379, -0.758545,
		0.859128, 0.305199, 0.410796,
		0.063746, -0.860279, 0.505822,
		40.433788, 31.497545, 27.629499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083759, 31.896709, 27.452374>,  <40.389168, 32.099739, 27.275423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083759, 31.896709, 27.452374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878510, 31.554873, 27.420424>,  <40.755360, 31.349770, 27.401253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878510, 31.554873, 27.420424>,  <41.083759, 31.896709, 27.452374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878510, 31.554873, 27.420424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635412, -0.315651, -0.704710,
		0.577026, -0.412356, 0.704985,
		-0.513121, -0.854592, -0.079877,
		40.724575, 31.298494, 27.396460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649513, 31.441853, 27.289066>,  <41.083759, 31.896709, 27.452374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649513, 31.441853, 27.289066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327293, 31.215788, 27.217875>,  <41.133961, 31.080149, 27.175159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327293, 31.215788, 27.217875>,  <41.649513, 31.441853, 27.289066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327293, 31.215788, 27.217875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521383, -0.533401, -0.666066,
		0.281501, -0.629346, 0.724349,
		-0.805554, -0.565161, -0.177977,
		41.085629, 31.046240, 27.164482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.070438, 27.268320, 26.814882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.438744, 27.415625, 26.866390>,  <34.659725, 27.504007, 26.897295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.438744, 27.415625, 26.866390>,  <34.070438, 27.268320, 26.814882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438744, 27.415625, 26.866390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227952, 0.239994, 0.943632,
		0.316596, -0.898214, 0.304923,
		0.920763, 0.368258, 0.128768,
		34.714973, 27.526102, 26.905020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290760, 27.022787, 27.588854>,  <34.070438, 27.268320, 26.814882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290760, 27.022787, 27.588854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509041, 27.327671, 27.449575>,  <34.640011, 27.510601, 27.366009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509041, 27.327671, 27.449575>,  <34.290760, 27.022787, 27.588854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509041, 27.327671, 27.449575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027620, 0.398933, 0.916564,
		0.837524, -0.509789, 0.196647,
		0.545703, 0.762212, -0.348196,
		34.672752, 27.556335, 27.345116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650219, 27.076790, 28.197279>,  <34.290760, 27.022787, 27.588854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650219, 27.076790, 28.197279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.711262, 27.408319, 27.981960>,  <34.747887, 27.607237, 27.852770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.711262, 27.408319, 27.981960>,  <34.650219, 27.076790, 28.197279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711262, 27.408319, 27.981960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138458, 0.521372, 0.842022,
		0.978540, -0.203031, -0.035191,
		0.152609, 0.828824, -0.538295,
		34.757046, 27.656967, 27.820473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186954, 27.449612, 28.543596>,  <34.650219, 27.076790, 28.197279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186954, 27.449612, 28.543596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011501, 27.726154, 28.313944>,  <34.906227, 27.892080, 28.176153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011501, 27.726154, 28.313944>,  <35.186954, 27.449612, 28.543596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011501, 27.726154, 28.313944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022857, 0.647246, 0.761938,
		0.898374, 0.321091, -0.299709,
		-0.438637, 0.691356, -0.574130,
		34.879910, 27.933561, 28.141705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592903, 28.037560, 28.569809>,  <35.186954, 27.449612, 28.543596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592903, 28.037560, 28.569809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215164, 28.136129, 28.482641>,  <34.988522, 28.195271, 28.430340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215164, 28.136129, 28.482641>,  <35.592903, 28.037560, 28.569809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215164, 28.136129, 28.482641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016647, 0.625808, 0.779800,
		0.328535, 0.740028, -0.586876,
		-0.944345, 0.246422, -0.217919,
		34.931862, 28.210056, 28.417265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571342, 28.595404, 28.878138>,  <35.592903, 28.037560, 28.569809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571342, 28.595404, 28.878138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184689, 28.527296, 28.801584>,  <34.952698, 28.486431, 28.755651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184689, 28.527296, 28.801584>,  <35.571342, 28.595404, 28.878138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184689, 28.527296, 28.801584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255577, 0.590535, 0.765473,
		-0.017316, 0.788845, -0.614348,
		-0.966634, -0.170268, -0.191385,
		34.894699, 28.476215, 28.744169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334625, 29.246370, 28.954853>,  <35.571342, 28.595404, 28.878138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334625, 29.246370, 28.954853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.015419, 29.006344, 28.977118>,  <34.823895, 28.862328, 28.990477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.015419, 29.006344, 28.977118>,  <35.334625, 29.246370, 28.954853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015419, 29.006344, 28.977118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283991, 0.455913, 0.843500,
		-0.531533, 0.657315, -0.534237,
		-0.798011, -0.600067, 0.055661,
		34.776016, 28.826324, 28.993816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819038, 29.688347, 29.069292>,  <35.334625, 29.246370, 28.954853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819038, 29.688347, 29.069292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.684040, 29.333685, 29.195745>,  <34.603043, 29.120888, 29.271618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.684040, 29.333685, 29.195745>,  <34.819038, 29.688347, 29.069292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684040, 29.333685, 29.195745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322983, 0.424522, 0.845850,
		-0.884183, 0.183365, -0.429648,
		-0.337495, -0.886656, 0.316131,
		34.582790, 29.067688, 29.290585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134075, 29.877752, 29.311928>,  <34.819038, 29.688347, 29.069292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134075, 29.877752, 29.311928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231709, 29.526505, 29.476526>,  <34.290287, 29.315756, 29.575285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231709, 29.526505, 29.476526>,  <34.134075, 29.877752, 29.311928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231709, 29.526505, 29.476526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324839, 0.325783, 0.887888,
		-0.913730, -0.350390, -0.205729,
		0.244084, -0.878119, 0.411498,
		34.304935, 29.263069, 29.599976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621597, 29.721582, 29.721771>,  <34.134075, 29.877752, 29.311928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621597, 29.721582, 29.721771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.883900, 29.469791, 29.888500>,  <34.041283, 29.318718, 29.988537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.883900, 29.469791, 29.888500>,  <33.621597, 29.721582, 29.721771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883900, 29.469791, 29.888500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302527, 0.286747, 0.908985,
		-0.691707, -0.722174, -0.002397,
		0.655758, -0.629476, 0.416823,
		34.080627, 29.280949, 30.013548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275776, 29.433439, 30.321133>,  <33.621597, 29.721582, 29.721771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275776, 29.433439, 30.321133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666405, 29.379902, 30.388535>,  <33.900784, 29.347780, 30.428976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666405, 29.379902, 30.388535>,  <33.275776, 29.433439, 30.321133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666405, 29.379902, 30.388535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144310, 0.173534, 0.974197,
		-0.159632, -0.975690, 0.150153,
		0.976572, -0.133844, 0.168504,
		33.959377, 29.339748, 30.439085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224701, 29.011497, 30.973774>,  <33.275776, 29.433439, 30.321133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224701, 29.011497, 30.973774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.588467, 29.174257, 30.939379>,  <33.806728, 29.271914, 30.918741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.588467, 29.174257, 30.939379>,  <33.224701, 29.011497, 30.973774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588467, 29.174257, 30.939379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048933, 0.310010, 0.949473,
		0.412996, -0.859260, 0.301839,
		0.909417, 0.406898, -0.085987,
		33.861294, 29.296326, 30.913584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628529, 28.835827, 31.641140>,  <33.224701, 29.011497, 30.973774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628529, 28.835827, 31.641140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.807381, 29.141495, 31.455187>,  <33.914692, 29.324896, 31.343615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.807381, 29.141495, 31.455187>,  <33.628529, 28.835827, 31.641140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807381, 29.141495, 31.455187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036174, 0.503859, 0.863028,
		0.893736, -0.402704, 0.197649,
		0.447132, 0.764169, -0.464884,
		33.941521, 29.370745, 31.315722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147945, 29.050644, 32.057045>,  <33.628529, 28.835827, 31.641140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147945, 29.050644, 32.057045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085831, 29.377771, 31.835394>,  <34.048561, 29.574049, 31.702404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085831, 29.377771, 31.835394>,  <34.147945, 29.050644, 32.057045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085831, 29.377771, 31.835394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129971, 0.572967, 0.809207,
		0.979282, 0.053642, -0.195270,
		-0.155290, 0.817821, -0.554124,
		34.039242, 29.623117, 31.669157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871883, 28.870586, 31.946726>,  <34.147945, 29.050644, 32.057045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871883, 28.870586, 31.946726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140850, 28.671791, 32.166130>,  <35.302231, 28.552513, 32.297771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140850, 28.671791, 32.166130>,  <34.871883, 28.870586, 31.946726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140850, 28.671791, 32.166130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291553, -0.503301, -0.813440,
		0.680336, 0.706888, -0.193528,
		0.672414, -0.496988, 0.548509,
		35.342575, 28.522694, 32.330685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508736, 28.972599, 31.560177>,  <34.871883, 28.870586, 31.946726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508736, 28.972599, 31.560177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.577183, 28.666412, 31.808298>,  <35.618252, 28.482700, 31.957170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.577183, 28.666412, 31.808298>,  <35.508736, 28.972599, 31.560177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577183, 28.666412, 31.808298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544987, -0.450963, -0.706839,
		0.820796, 0.459012, 0.340001,
		0.171119, -0.765467, 0.620305,
		35.628517, 28.436771, 31.994390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204594, 28.860493, 31.517262>,  <35.508736, 28.972599, 31.560177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204594, 28.860493, 31.517262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.041286, 28.522081, 31.654406>,  <35.943302, 28.319035, 31.736692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.041286, 28.522081, 31.654406>,  <36.204594, 28.860493, 31.517262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041286, 28.522081, 31.654406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532753, -0.525815, -0.663094,
		0.741276, -0.088062, 0.665398,
		-0.408269, -0.846029, 0.342859,
		35.918804, 28.268272, 31.757263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765369, 28.424595, 31.560232>,  <36.204594, 28.860493, 31.517262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765369, 28.424595, 31.560232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.446270, 28.184269, 31.539757>,  <36.254810, 28.040073, 31.527472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.446270, 28.184269, 31.539757>,  <36.765369, 28.424595, 31.560232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446270, 28.184269, 31.539757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414804, -0.485186, -0.769761,
		0.437646, -0.635310, 0.636276,
		-0.797749, -0.600813, -0.051190,
		36.206944, 28.004025, 31.524401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970497, 27.842310, 31.582163>,  <36.765369, 28.424595, 31.560232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970497, 27.842310, 31.582163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.608391, 27.736942, 31.448837>,  <36.391125, 27.673721, 31.368843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.608391, 27.736942, 31.448837>,  <36.970497, 27.842310, 31.582163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608391, 27.736942, 31.448837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424657, -0.584010, -0.691808,
		-0.012421, -0.767816, 0.640550,
		-0.905269, -0.263421, -0.333312,
		36.336811, 27.657915, 31.348845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975243, 27.133892, 31.526108>,  <36.970497, 27.842310, 31.582163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975243, 27.133892, 31.526108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.682861, 27.247059, 31.277702>,  <36.507431, 27.314959, 31.128658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.682861, 27.247059, 31.277702>,  <36.975243, 27.133892, 31.526108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682861, 27.247059, 31.277702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320535, -0.661048, -0.678435,
		-0.602460, -0.694964, 0.392514,
		-0.730958, 0.282916, -0.621015,
		36.463573, 27.331934, 31.091398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851280, 26.567730, 31.172287>,  <36.975243, 27.133892, 31.526108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851280, 26.567730, 31.172287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702065, 26.847729, 30.928699>,  <36.612534, 27.015728, 30.782547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702065, 26.847729, 30.928699>,  <36.851280, 26.567730, 31.172287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702065, 26.847729, 30.928699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368896, -0.490337, -0.789611,
		-0.851326, -0.519203, -0.075311,
		-0.373041, 0.699999, -0.608968,
		36.590153, 27.057728, 30.746010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661598, 26.193516, 30.698666>,  <36.851280, 26.567730, 31.172287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661598, 26.193516, 30.698666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695438, 26.540373, 30.502337>,  <36.715744, 26.748487, 30.384539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695438, 26.540373, 30.502337>,  <36.661598, 26.193516, 30.698666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695438, 26.540373, 30.502337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519398, -0.458749, -0.720955,
		-0.850335, -0.193938, -0.489202,
		0.084600, 0.867143, -0.490821,
		36.720818, 26.800516, 30.355089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431355, 26.068531, 29.980671>,  <36.661598, 26.193516, 30.698666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431355, 26.068531, 29.980671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.644714, 26.405401, 29.949100>,  <36.772728, 26.607523, 29.930159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.644714, 26.405401, 29.949100>,  <36.431355, 26.068531, 29.980671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644714, 26.405401, 29.949100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538329, -0.409956, -0.736300,
		-0.652451, 0.350251, -0.672036,
		0.533395, 0.842176, -0.078926,
		36.804733, 26.658054, 29.925423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377060, 26.199690, 29.254051>,  <36.431355, 26.068531, 29.980671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377060, 26.199690, 29.254051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.681618, 26.419308, 29.391937>,  <36.864353, 26.551079, 29.474669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.681618, 26.419308, 29.391937>,  <36.377060, 26.199690, 29.254051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681618, 26.419308, 29.391937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503898, -0.166666, -0.847531,
		-0.407881, 0.819006, -0.403562,
		0.761393, 0.549046, 0.344716,
		36.910034, 26.584021, 29.495352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527584, 26.788097, 28.687593>,  <36.377060, 26.199690, 29.254051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527584, 26.788097, 28.687593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.858067, 26.743614, 28.908504>,  <37.056358, 26.716925, 29.041052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.858067, 26.743614, 28.908504>,  <36.527584, 26.788097, 28.687593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858067, 26.743614, 28.908504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544142, -0.096365, -0.833441,
		0.145905, 0.989114, -0.019105,
		0.826209, -0.111208, 0.552279,
		37.105930, 26.710253, 29.074188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958401, 27.310677, 28.298340>,  <36.527584, 26.788097, 28.687593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958401, 27.310677, 28.298340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.184444, 27.063475, 28.516960>,  <37.320072, 26.915154, 28.648132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.184444, 27.063475, 28.516960>,  <36.958401, 27.310677, 28.298340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184444, 27.063475, 28.516960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479936, -0.292591, -0.827074,
		0.671054, 0.729697, 0.131258,
		0.565108, -0.618007, 0.546553,
		37.353977, 26.878073, 28.680925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573009, 27.549213, 28.102163>,  <36.958401, 27.310677, 28.298340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573009, 27.549213, 28.102163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641518, 27.186716, 28.256767>,  <37.682625, 26.969217, 28.349529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641518, 27.186716, 28.256767>,  <37.573009, 27.549213, 28.102163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641518, 27.186716, 28.256767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564477, -0.231269, -0.792389,
		0.807485, 0.353890, 0.471943,
		0.171273, -0.906243, 0.386509,
		37.692898, 26.914843, 28.372721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327641, 27.355639, 28.035879>,  <37.573009, 27.549213, 28.102163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327641, 27.355639, 28.035879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.173779, 26.988264, 28.072786>,  <38.081459, 26.767839, 28.094931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.173779, 26.988264, 28.072786>,  <38.327641, 27.355639, 28.035879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173779, 26.988264, 28.072786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407354, -0.258602, -0.875893,
		0.828313, -0.299332, 0.473601,
		-0.384657, -0.918436, 0.092269,
		38.058380, 26.712732, 28.100468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040062, 27.494076, 28.372578>,  <38.327641, 27.355639, 28.035879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040062, 27.494076, 28.372578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.375568, 27.710556, 28.348660>,  <39.576870, 27.840445, 28.334309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.375568, 27.710556, 28.348660>,  <39.040062, 27.494076, 28.372578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375568, 27.710556, 28.348660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236618, 0.461203, 0.855163,
		0.490401, -0.703126, 0.514898,
		0.838760, 0.541208, -0.059802,
		39.627197, 27.872917, 28.330721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467747, 27.473446, 29.007870>,  <39.040062, 27.494076, 28.372578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467747, 27.473446, 29.007870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.605682, 27.818884, 28.860744>,  <39.688442, 28.026148, 28.772469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.605682, 27.818884, 28.860744>,  <39.467747, 27.473446, 29.007870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605682, 27.818884, 28.860744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010259, 0.388357, 0.921452,
		0.938606, -0.321525, 0.125060,
		0.344837, 0.863597, -0.367813,
		39.709133, 28.077963, 28.750401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067245, 27.538349, 29.318972>,  <39.467747, 27.473446, 29.007870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067245, 27.538349, 29.318972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947918, 27.895639, 29.184420>,  <39.876320, 28.110014, 29.103689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947918, 27.895639, 29.184420>,  <40.067245, 27.538349, 29.318972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947918, 27.895639, 29.184420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075850, 0.373496, 0.924525,
		0.951447, 0.250291, -0.179173,
		-0.298320, 0.893227, -0.336378,
		39.858421, 28.163609, 29.083506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410076, 27.971703, 29.749123>,  <40.067245, 27.538349, 29.318972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410076, 27.971703, 29.749123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.117256, 28.173706, 29.566227>,  <39.941563, 28.294909, 29.456490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.117256, 28.173706, 29.566227>,  <40.410076, 27.971703, 29.749123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117256, 28.173706, 29.566227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266486, 0.405416, 0.874427,
		0.626966, 0.761973, -0.162208,
		-0.732052, 0.505010, -0.457237,
		39.897640, 28.325209, 29.429056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482952, 28.653652, 29.839014>,  <40.410076, 27.971703, 29.749123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482952, 28.653652, 29.839014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.091778, 28.624439, 29.760733>,  <39.857071, 28.606913, 29.713764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.091778, 28.624439, 29.760733>,  <40.482952, 28.653652, 29.839014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091778, 28.624439, 29.760733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205903, 0.494792, 0.844266,
		0.035176, 0.865937, -0.498914,
		-0.977940, -0.073030, -0.195704,
		39.798397, 28.602530, 29.702021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219292, 29.329094, 30.061035>,  <40.482952, 28.653652, 29.839014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219292, 29.329094, 30.061035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.901096, 29.091267, 30.014233>,  <39.710178, 28.948570, 29.986151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.901096, 29.091267, 30.014233>,  <40.219292, 29.329094, 30.061035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901096, 29.091267, 30.014233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447980, 0.446983, 0.774287,
		-0.408067, 0.668350, -0.621924,
		-0.795484, -0.594570, -0.117008,
		39.662453, 28.912895, 29.979130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733658, 29.798830, 30.159559>,  <40.219292, 29.329094, 30.061035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733658, 29.798830, 30.159559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.554268, 29.448193, 30.229361>,  <39.446632, 29.237810, 30.271242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.554268, 29.448193, 30.229361>,  <39.733658, 29.798830, 30.159559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554268, 29.448193, 30.229361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485721, 0.402922, 0.775712,
		-0.750297, 0.263126, -0.606481,
		-0.448474, -0.876595, 0.174506,
		39.419727, 29.185215, 30.281712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008999, 29.894926, 30.144445>,  <39.733658, 29.798830, 30.159559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008999, 29.894926, 30.144445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073410, 29.575455, 30.376369>,  <39.112057, 29.383772, 30.515524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073410, 29.575455, 30.376369>,  <39.008999, 29.894926, 30.144445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073410, 29.575455, 30.376369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585688, 0.395523, 0.707482,
		-0.794381, -0.453510, -0.404089,
		0.161023, -0.798681, 0.579811,
		39.121716, 29.335850, 30.550312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391930, 29.798546, 30.394939>,  <39.008999, 29.894926, 30.144445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391930, 29.798546, 30.394939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653175, 29.630203, 30.646757>,  <38.809921, 29.529198, 30.797848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653175, 29.630203, 30.646757>,  <38.391930, 29.798546, 30.394939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653175, 29.630203, 30.646757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499074, 0.386033, 0.775824,
		-0.569535, -0.820889, 0.042085,
		0.653112, -0.420856, 0.629544,
		38.849110, 29.503946, 30.835621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008160, 29.640606, 30.941206>,  <38.391930, 29.798546, 30.394939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008160, 29.640606, 30.941206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376343, 29.621796, 31.096405>,  <38.597252, 29.610510, 31.189526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376343, 29.621796, 31.096405>,  <38.008160, 29.640606, 30.941206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376343, 29.621796, 31.096405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318855, 0.483747, 0.815059,
		-0.226023, -0.873944, 0.430274,
		0.920459, -0.047027, 0.387999,
		38.652481, 29.607687, 31.212805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858383, 29.393986, 31.601351>,  <38.008160, 29.640606, 30.941206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858383, 29.393986, 31.601351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.221165, 29.562319, 31.608639>,  <38.438835, 29.663319, 31.613010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.221165, 29.562319, 31.608639>,  <37.858383, 29.393986, 31.601351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221165, 29.562319, 31.608639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192151, 0.374849, 0.906954,
		0.374849, -0.826067, 0.420835,
		-0.906954, -0.420835, -0.018218,
		38.493252, 29.688570, 31.614103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148197, 29.178398, 32.224064>,  <37.858383, 29.393986, 31.601351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148197, 29.178398, 32.224064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399357, 29.479155, 32.143661>,  <38.550053, 29.659609, 32.095421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399357, 29.479155, 32.143661>,  <38.148197, 29.178398, 32.224064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399357, 29.479155, 32.143661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011135, 0.249555, 0.968296,
		0.778215, -0.610231, 0.148323,
		0.627899, 0.751891, -0.201003,
		38.587727, 29.704721, 32.083363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741699, 29.204193, 32.765224>,  <38.148197, 29.178398, 32.224064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741699, 29.204193, 32.765224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.756561, 29.574001, 32.613495>,  <38.765480, 29.795885, 32.522457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.756561, 29.574001, 32.613495>,  <38.741699, 29.204193, 32.765224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756561, 29.574001, 32.613495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162360, 0.368953, 0.915157,
		0.986032, -0.095590, -0.136397,
		0.037156, 0.924519, -0.379319,
		38.767708, 29.851357, 32.499699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369316, 29.555098, 33.073254>,  <38.741699, 29.204193, 32.765224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369316, 29.555098, 33.073254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110744, 29.839081, 32.961475>,  <38.955601, 30.009472, 32.894409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110744, 29.839081, 32.961475>,  <39.369316, 29.555098, 33.073254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110744, 29.839081, 32.961475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043577, 0.331307, 0.942516,
		0.761731, 0.621444, -0.183227,
		-0.646426, 0.709960, -0.279448,
		38.916817, 30.052069, 32.877640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.929043, 30.725647, 27.166273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550419, 30.712490, 27.037939>,  <41.323242, 30.704596, 26.960939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550419, 30.712490, 27.037939>,  <41.929043, 30.725647, 27.166273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550419, 30.712490, 27.037939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297038, -0.476437, -0.827512,
		-0.125636, -0.878594, 0.460749,
		-0.946564, -0.032895, -0.320833,
		41.266449, 30.702621, 26.941689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913967, 30.027716, 26.934315>,  <41.929043, 30.725647, 27.166273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913967, 30.027716, 26.934315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.617554, 30.237432, 26.766508>,  <41.439705, 30.363262, 26.665825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.617554, 30.237432, 26.766508>,  <41.913967, 30.027716, 26.934315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617554, 30.237432, 26.766508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167187, -0.461032, -0.871492,
		-0.650327, -0.715938, 0.253984,
		-0.741028, 0.524292, -0.419517,
		41.395245, 30.394720, 26.640654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514236, 29.596466, 26.494740>,  <41.913967, 30.027716, 26.934315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514236, 29.596466, 26.494740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.454048, 29.958818, 26.336382>,  <41.417934, 30.176229, 26.241367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.454048, 29.958818, 26.336382>,  <41.514236, 29.596466, 26.494740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454048, 29.958818, 26.336382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028203, -0.404225, -0.914225,
		-0.988212, -0.126402, 0.086374,
		-0.150474, 0.905883, -0.395895,
		41.408905, 30.230583, 26.217613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798222, 29.676640, 26.006430>,  <41.514236, 29.596466, 26.494740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798222, 29.676640, 26.006430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.090134, 29.934179, 25.914446>,  <41.265282, 30.088703, 25.859255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.090134, 29.934179, 25.914446>,  <40.798222, 29.676640, 26.006430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090134, 29.934179, 25.914446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040572, -0.376546, -0.925509,
		-0.682479, 0.666087, -0.300917,
		0.729778, 0.643849, -0.229960,
		41.309067, 30.127335, 25.845457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750557, 29.631443, 25.352449>,  <40.798222, 29.676640, 26.006430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750557, 29.631443, 25.352449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.089378, 29.840277, 25.392313>,  <41.292671, 29.965576, 25.416231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.089378, 29.840277, 25.392313>,  <40.750557, 29.631443, 25.352449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089378, 29.840277, 25.392313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419837, -0.542235, -0.727817,
		-0.325942, 0.658340, -0.678491,
		0.847053, 0.522082, 0.099658,
		41.343494, 29.996901, 25.422211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887974, 29.780762, 24.690762>,  <40.750557, 29.631443, 25.352449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887974, 29.780762, 24.690762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.241322, 29.824209, 24.873125>,  <41.453331, 29.850277, 24.982544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.241322, 29.824209, 24.873125>,  <40.887974, 29.780762, 24.690762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241322, 29.824209, 24.873125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455283, -0.429723, -0.779779,
		0.111216, 0.896404, -0.429058,
		0.883373, 0.108619, 0.455910,
		41.506332, 29.856794, 25.009897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314999, 30.233759, 24.277967>,  <40.887974, 29.780762, 24.690762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314999, 30.233759, 24.277967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.518978, 29.990429, 24.521242>,  <41.641365, 29.844431, 24.667206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.518978, 29.990429, 24.521242>,  <41.314999, 30.233759, 24.277967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518978, 29.990429, 24.521242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540489, -0.323435, -0.776699,
		0.669195, 0.724796, 0.163858,
		0.509951, -0.608326, 0.608185,
		41.671963, 29.807932, 24.703697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929829, 30.177347, 23.954929>,  <41.314999, 30.233759, 24.277967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929829, 30.177347, 23.954929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.023521, 29.883337, 24.209446>,  <42.079739, 29.706930, 24.362156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.023521, 29.883337, 24.209446>,  <41.929829, 30.177347, 23.954929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023521, 29.883337, 24.209446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435893, -0.505622, -0.744543,
		0.868983, 0.451753, 0.201959,
		0.234235, -0.735027, 0.636293,
		42.093792, 29.662828, 24.400333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651398, 29.955215, 23.775600>,  <41.929829, 30.177347, 23.954929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651398, 29.955215, 23.775600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.449783, 29.661461, 23.957420>,  <42.328812, 29.485209, 24.066513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.449783, 29.661461, 23.957420>,  <42.651398, 29.955215, 23.775600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449783, 29.661461, 23.957420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259216, -0.630665, -0.731484,
		0.823863, -0.250871, 0.508246,
		-0.504041, -0.734388, 0.454552,
		42.298573, 29.441145, 24.093786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039055, 29.345987, 23.703669>,  <42.651398, 29.955215, 23.775600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039055, 29.345987, 23.703669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.672249, 29.202467, 23.773352>,  <42.452168, 29.116354, 23.815163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.672249, 29.202467, 23.773352>,  <43.039055, 29.345987, 23.703669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672249, 29.202467, 23.773352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109777, -0.646944, -0.754594,
		0.383454, -0.672848, 0.632644,
		-0.917013, -0.358802, 0.174209,
		42.397144, 29.094826, 23.825615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130791, 28.694035, 23.575378>,  <43.039055, 29.345987, 23.703669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130791, 28.694035, 23.575378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.731201, 28.683102, 23.560890>,  <42.491447, 28.676542, 23.552197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.731201, 28.683102, 23.560890>,  <43.130791, 28.694035, 23.575378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731201, 28.683102, 23.560890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045368, -0.588012, -0.807579,
		0.000774, -0.808390, 0.588647,
		-0.998970, -0.027331, -0.036220,
		42.431511, 28.674902, 23.550024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935638, 28.030561, 23.365538>,  <43.130791, 28.694035, 23.575378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935638, 28.030561, 23.365538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.604713, 28.241634, 23.288492>,  <42.406158, 28.368279, 23.242266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.604713, 28.241634, 23.288492>,  <42.935638, 28.030561, 23.365538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604713, 28.241634, 23.288492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085446, -0.457112, -0.885295,
		-0.555200, -0.715961, 0.423265,
		-0.827316, 0.527682, -0.192613,
		42.356518, 28.399939, 23.230709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258881, 27.631828, 23.212154>,  <42.935638, 28.030561, 23.365538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258881, 27.631828, 23.212154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.256779, 27.994465, 23.043362>,  <42.255516, 28.212046, 22.942087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.256779, 27.994465, 23.043362>,  <42.258881, 27.631828, 23.212154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256779, 27.994465, 23.043362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089730, -0.420711, -0.902746,
		-0.995952, 0.033120, 0.083559,
		-0.005255, 0.906590, -0.421980,
		42.255203, 28.266441, 22.916767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261326, 26.877254, 23.142612>,  <42.258881, 27.631828, 23.212154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261326, 26.877254, 23.142612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.961525, 26.612621, 23.152050>,  <41.781643, 26.453842, 23.157713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.961525, 26.612621, 23.152050>,  <42.261326, 26.877254, 23.142612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961525, 26.612621, 23.152050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121643, 0.172667, 0.977440,
		-0.650731, 0.729722, -0.209891,
		-0.749501, -0.661582, 0.023594,
		41.736675, 26.414146, 23.159128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680702, 27.153269, 23.494820>,  <42.261326, 26.877254, 23.142612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680702, 27.153269, 23.494820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663197, 26.757404, 23.549459>,  <41.652695, 26.519886, 23.582243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663197, 26.757404, 23.549459>,  <41.680702, 27.153269, 23.494820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663197, 26.757404, 23.549459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197000, 0.142594, 0.969978,
		-0.979426, 0.015538, -0.201203,
		-0.043762, -0.989659, 0.136599,
		41.650066, 26.460506, 23.590439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071754, 27.013092, 23.993546>,  <41.680702, 27.153269, 23.494820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071754, 27.013092, 23.993546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.324692, 26.703743, 24.011599>,  <41.476456, 26.518133, 24.022430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.324692, 26.703743, 24.011599>,  <41.071754, 27.013092, 23.993546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324692, 26.703743, 24.011599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282690, -0.176117, 0.942905,
		-0.721267, -0.609000, -0.329991,
		0.632346, -0.773371, 0.045130,
		41.514397, 26.471731, 24.025137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585392, 26.451704, 24.168407>,  <41.071754, 27.013092, 23.993546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585392, 26.451704, 24.168407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961143, 26.364206, 24.274025>,  <41.186596, 26.311707, 24.337397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961143, 26.364206, 24.274025>,  <40.585392, 26.451704, 24.168407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961143, 26.364206, 24.274025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276421, -0.027478, 0.960644,
		-0.202881, -0.975395, -0.086278,
		0.939377, -0.218746, 0.264045,
		41.242958, 26.298582, 24.353239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459949, 25.945547, 24.674797>,  <40.585392, 26.451704, 24.168407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459949, 25.945547, 24.674797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.838223, 26.063404, 24.729742>,  <41.065186, 26.134117, 24.762709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.838223, 26.063404, 24.729742>,  <40.459949, 25.945547, 24.674797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838223, 26.063404, 24.729742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196303, 0.180759, 0.963738,
		0.259130, -0.938356, 0.228780,
		0.945683, 0.294644, 0.137362,
		41.121929, 26.151796, 24.770950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635216, 25.658432, 25.305119>,  <40.459949, 25.945547, 24.674797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635216, 25.658432, 25.305119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.885620, 25.964203, 25.243448>,  <41.035862, 26.147665, 25.206446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.885620, 25.964203, 25.243448>,  <40.635216, 25.658432, 25.305119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885620, 25.964203, 25.243448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003831, 0.194688, 0.980858,
		0.779809, -0.614614, 0.118947,
		0.626006, 0.764426, -0.154174,
		41.073421, 26.193531, 25.197197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152653, 25.517281, 25.799229>,  <40.635216, 25.658432, 25.305119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152653, 25.517281, 25.799229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.173756, 25.905558, 25.705442>,  <41.186417, 26.138523, 25.649170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.173756, 25.905558, 25.705442>,  <41.152653, 25.517281, 25.799229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173756, 25.905558, 25.705442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042373, 0.236757, 0.970644,
		0.997708, -0.041272, 0.053621,
		0.052755, 0.970692, -0.234466,
		41.189583, 26.196766, 25.635103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688549, 25.759342, 26.247118>,  <41.152653, 25.517281, 25.799229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688549, 25.759342, 26.247118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.502930, 26.091194, 26.122946>,  <41.391556, 26.290306, 26.048443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.502930, 26.091194, 26.122946>,  <41.688549, 25.759342, 26.247118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502930, 26.091194, 26.122946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079347, 0.310106, 0.947385,
		0.882247, 0.464268, -0.078076,
		-0.464052, 0.829632, -0.310428,
		41.363712, 26.340084, 26.029818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655197, 26.151146, 26.823307>,  <41.688549, 25.759342, 26.247118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655197, 26.151146, 26.823307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.427998, 26.383432, 26.590017>,  <41.291679, 26.522804, 26.450043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.427998, 26.383432, 26.590017>,  <41.655197, 26.151146, 26.823307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427998, 26.383432, 26.590017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298505, 0.515025, 0.803520,
		0.766991, 0.630491, -0.119186,
		-0.567996, 0.580715, -0.583224,
		41.257599, 26.557648, 26.415051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784615, 26.878025, 26.997473>,  <41.655197, 26.151146, 26.823307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784615, 26.878025, 26.997473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428402, 26.856680, 26.816759>,  <41.214676, 26.843872, 26.708332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428402, 26.856680, 26.816759>,  <41.784615, 26.878025, 26.997473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428402, 26.856680, 26.816759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398815, 0.569359, 0.718872,
		0.218866, 0.820355, -0.528314,
		-0.890530, -0.053363, -0.451783,
		41.161243, 26.840672, 26.681225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567200, 27.526491, 26.913536>,  <41.784615, 26.878025, 26.997473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567200, 27.526491, 26.913536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.205692, 27.357012, 26.889278>,  <40.988789, 27.255323, 26.874723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.205692, 27.357012, 26.889278>,  <41.567200, 27.526491, 26.913536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205692, 27.357012, 26.889278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331146, 0.602400, 0.726262,
		-0.271184, 0.676457, -0.684738,
		-0.903771, -0.423699, -0.060644,
		40.934563, 27.229902, 26.871084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999340, 28.079338, 26.882713>,  <41.567200, 27.526491, 26.913536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999340, 28.079338, 26.882713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811321, 27.744144, 26.993593>,  <40.698509, 27.543028, 27.060122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811321, 27.744144, 26.993593>,  <40.999340, 28.079338, 26.882713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811321, 27.744144, 26.993593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482781, 0.507007, 0.714050,
		-0.738904, 0.201810, -0.642879,
		-0.470046, -0.837984, 0.277199,
		40.670307, 27.492750, 27.076754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208073, 28.265560, 26.930798>,  <40.999340, 28.079338, 26.882713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208073, 28.265560, 26.930798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.281067, 27.942245, 27.154716>,  <40.324863, 27.748257, 27.289068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.281067, 27.942245, 27.154716>,  <40.208073, 28.265560, 26.930798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281067, 27.942245, 27.154716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528714, 0.399358, 0.748983,
		-0.828951, -0.432654, -0.354473,
		0.182489, -0.808285, 0.559798,
		40.335815, 27.699760, 27.322657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603012, 27.947014, 27.125736>,  <40.208073, 28.265560, 26.930798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603012, 27.947014, 27.125736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.844723, 27.810614, 27.413784>,  <39.989750, 27.728773, 27.586613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.844723, 27.810614, 27.413784>,  <39.603012, 27.947014, 27.125736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844723, 27.810614, 27.413784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573169, 0.441771, 0.690156,
		-0.553471, -0.829794, 0.071501,
		0.604274, -0.340999, 0.720120,
		40.026005, 27.708313, 27.629820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097103, 27.611290, 27.619061>,  <39.603012, 27.947014, 27.125736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097103, 27.611290, 27.619061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.453121, 27.708811, 27.773144>,  <39.666733, 27.767323, 27.865593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.453121, 27.708811, 27.773144>,  <39.097103, 27.611290, 27.619061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453121, 27.708811, 27.773144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455876, 0.476124, 0.751986,
		-0.000072, -0.844907, 0.534913,
		0.890043, 0.243800, 0.385207,
		39.720135, 27.781952, 27.888706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858757, 26.912127, 27.746271>,  <39.097103, 27.611290, 27.619061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858757, 26.912127, 27.746271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.536602, 26.675169, 27.738102>,  <38.343307, 26.532995, 27.733200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.536602, 26.675169, 27.738102>,  <38.858757, 26.912127, 27.746271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536602, 26.675169, 27.738102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190932, -0.226656, -0.955077,
		0.561152, -0.773109, 0.295653,
		-0.805390, -0.592393, -0.020423,
		38.294987, 26.497452, 27.731976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112648, 26.258617, 27.417667>,  <38.858757, 26.912127, 27.746271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112648, 26.258617, 27.417667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717407, 26.282257, 27.360859>,  <38.480263, 26.296442, 27.326775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717407, 26.282257, 27.360859>,  <39.112648, 26.258617, 27.417667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717407, 26.282257, 27.360859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107302, -0.396730, -0.911642,
		-0.110222, -0.916031, 0.385666,
		-0.988098, 0.059101, -0.142020,
		38.420979, 26.299988, 27.318253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894653, 25.607721, 27.141386>,  <39.112648, 26.258617, 27.417667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894653, 25.607721, 27.141386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.615246, 25.874271, 27.037067>,  <38.447601, 26.034201, 26.974476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.615246, 25.874271, 27.037067>,  <38.894653, 25.607721, 27.141386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615246, 25.874271, 27.037067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047589, -0.406902, -0.912231,
		-0.714008, -0.624799, 0.315940,
		-0.698518, 0.666376, -0.260798,
		38.405689, 26.074184, 26.958828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495285, 25.229519, 26.735025>,  <38.894653, 25.607721, 27.141386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495285, 25.229519, 26.735025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.356625, 25.586681, 26.620096>,  <38.273430, 25.800980, 26.551140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.356625, 25.586681, 26.620096>,  <38.495285, 25.229519, 26.735025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356625, 25.586681, 26.620096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002546, -0.307208, -0.951639,
		-0.937992, -0.329152, 0.108766,
		-0.346648, 0.892906, -0.287321,
		38.252628, 25.854553, 26.533899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976513, 25.071163, 26.283237>,  <38.495285, 25.229519, 26.735025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976513, 25.071163, 26.283237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.052837, 25.455013, 26.200567>,  <38.098633, 25.685324, 26.150965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.052837, 25.455013, 26.200567>,  <37.976513, 25.071163, 26.283237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052837, 25.455013, 26.200567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197319, -0.168753, -0.965706,
		-0.961591, 0.225047, 0.157152,
		0.190810, 0.959623, -0.206677,
		38.110081, 25.742901, 26.138563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521416, 25.227825, 25.684999>,  <37.976513, 25.071163, 26.283237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521416, 25.227825, 25.684999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.804058, 25.510860, 25.682812>,  <37.973644, 25.680681, 25.681499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.804058, 25.510860, 25.682812>,  <37.521416, 25.227825, 25.684999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804058, 25.510860, 25.682812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118459, 0.110666, -0.986773,
		-0.697623, 0.697905, 0.162017,
		0.706604, 0.707588, -0.005469,
		38.016041, 25.723137, 25.681171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332531, 25.740971, 25.185183>,  <37.521416, 25.227825, 25.684999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332531, 25.740971, 25.185183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.732208, 25.750280, 25.198296>,  <37.972015, 25.755865, 25.206163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.732208, 25.750280, 25.198296>,  <37.332531, 25.740971, 25.185183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732208, 25.750280, 25.198296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033308, -0.022516, -0.999191,
		-0.022516, 0.999475, -0.023273,
		0.999191, 0.023273, 0.032783,
		38.031967, 25.757261, 25.208130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745747, 26.063629, 24.996473>,  <37.332531, 25.740971, 25.185183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745747, 26.063629, 24.996473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591930, 26.422623, 24.910076>,  <36.499641, 26.638018, 24.858238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591930, 26.422623, 24.910076>,  <36.745747, 26.063629, 24.996473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591930, 26.422623, 24.910076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366609, 0.066258, 0.928013,
		0.847187, 0.436044, 0.303546,
		-0.384542, 0.897483, -0.215991,
		36.476566, 26.691868, 24.845280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878731, 26.641155, 25.540489>,  <36.745747, 26.063629, 24.996473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878731, 26.641155, 25.540489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552914, 26.767458, 25.345835>,  <36.357422, 26.843239, 25.229042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552914, 26.767458, 25.345835>,  <36.878731, 26.641155, 25.540489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552914, 26.767458, 25.345835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445655, 0.196410, 0.873393,
		0.371360, 0.928289, -0.019266,
		-0.814545, 0.315757, -0.486635,
		36.308552, 26.862185, 25.199844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706944, 27.282606, 25.870754>,  <36.878731, 26.641155, 25.540489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706944, 27.282606, 25.870754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386097, 27.133642, 25.684027>,  <36.193588, 27.044264, 25.571991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386097, 27.133642, 25.684027>,  <36.706944, 27.282606, 25.870754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386097, 27.133642, 25.684027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553358, 0.169642, 0.815485,
		-0.224503, 0.912432, -0.342149,
		-0.802118, -0.372409, -0.466817,
		36.145462, 27.021919, 25.543982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238075, 27.838856, 25.865273>,  <36.706944, 27.282606, 25.870754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238075, 27.838856, 25.865273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.000854, 27.524549, 25.795002>,  <35.858521, 27.335966, 25.752840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.000854, 27.524549, 25.795002>,  <36.238075, 27.838856, 25.865273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000854, 27.524549, 25.795002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559710, 0.245484, 0.791494,
		-0.578801, 0.567726, -0.585385,
		-0.593055, -0.785764, -0.175676,
		35.822937, 27.288820, 25.742300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591190, 28.107561, 25.607986>,  <36.238075, 27.838856, 25.865273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591190, 28.107561, 25.607986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.527733, 27.746798, 25.768679>,  <35.489658, 27.530338, 25.865095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.527733, 27.746798, 25.768679>,  <35.591190, 28.107561, 25.607986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527733, 27.746798, 25.768679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602031, 0.410861, 0.684655,
		-0.782553, -0.133236, -0.608160,
		-0.158648, -0.901910, 0.401733,
		35.480137, 27.476225, 25.889198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854282, 28.040821, 25.742737>,  <35.591190, 28.107561, 25.607986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854282, 28.040821, 25.742737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038380, 27.776175, 25.979528>,  <35.148838, 27.617388, 26.121603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038380, 27.776175, 25.979528>,  <34.854282, 28.040821, 25.742737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038380, 27.776175, 25.979528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458234, 0.394077, 0.796696,
		-0.760391, -0.637942, -0.121802,
		0.460247, -0.661614, 0.591979,
		35.176453, 27.577690, 26.157122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242538, 27.882339, 26.160666>,  <34.854282, 28.040821, 25.742737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242538, 27.882339, 26.160666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575726, 27.741116, 26.331079>,  <34.775639, 27.656382, 26.433329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575726, 27.741116, 26.331079>,  <34.242538, 27.882339, 26.160666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575726, 27.741116, 26.331079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402735, 0.141133, 0.904371,
		-0.379427, -0.924894, -0.024631,
		0.832971, -0.353062, 0.426036,
		34.825615, 27.635197, 26.458891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.513794, 29.493616, 22.193079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.853420, 29.559233, 22.393951>,  <40.057194, 29.598602, 22.514475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.853420, 29.559233, 22.393951>,  <39.513794, 29.493616, 22.193079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853420, 29.559233, 22.393951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464166, 0.685569, 0.560844,
		-0.252278, -0.709286, 0.658232,
		0.849062, 0.164040, 0.502180,
		40.108139, 29.608444, 22.544605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385777, 29.443771, 22.821707>,  <39.513794, 29.493616, 22.193079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385777, 29.443771, 22.821707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.712601, 29.674347, 22.826366>,  <39.908695, 29.812693, 22.829163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.712601, 29.674347, 22.826366>,  <39.385777, 29.443771, 22.821707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712601, 29.674347, 22.826366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481389, 0.670928, 0.564022,
		0.317308, -0.466447, 0.825677,
		0.817056, 0.576440, 0.011652,
		39.957718, 29.847279, 22.829863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427975, 29.624521, 23.501904>,  <39.385777, 29.443771, 22.821707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427975, 29.624521, 23.501904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.643372, 29.906826, 23.317762>,  <39.772610, 30.076210, 23.207277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.643372, 29.906826, 23.317762>,  <39.427975, 29.624521, 23.501904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643372, 29.906826, 23.317762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296539, 0.670104, 0.680460,
		0.788729, -0.229908, 0.570131,
		0.538490, 0.705764, -0.460354,
		39.804920, 30.118555, 23.179657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713074, 30.039520, 24.084305>,  <39.427975, 29.624521, 23.501904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713074, 30.039520, 24.084305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.800533, 30.290190, 23.785114>,  <39.853008, 30.440592, 23.605600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.800533, 30.290190, 23.785114>,  <39.713074, 30.039520, 24.084305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800533, 30.290190, 23.785114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116809, 0.744205, 0.657659,
		0.968786, -0.231168, 0.089520,
		0.218651, 0.626674, -0.747978,
		39.866127, 30.478191, 23.560720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315166, 30.519583, 24.272238>,  <39.713074, 30.039520, 24.084305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315166, 30.519583, 24.272238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.069843, 30.693043, 24.008175>,  <39.922649, 30.797119, 23.849737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.069843, 30.693043, 24.008175>,  <40.315166, 30.519583, 24.272238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069843, 30.693043, 24.008175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085301, 0.794548, 0.601180,
		0.785228, 0.425018, -0.450308,
		-0.613304, 0.433652, -0.660155,
		39.885853, 30.823139, 23.810129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419975, 31.173279, 24.426210>,  <40.315166, 30.519583, 24.272238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419975, 31.173279, 24.426210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.104206, 31.188547, 24.181149>,  <39.914745, 31.197708, 24.034111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.104206, 31.188547, 24.181149>,  <40.419975, 31.173279, 24.426210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104206, 31.188547, 24.181149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289846, 0.856617, 0.426844,
		0.541104, 0.514538, -0.665174,
		-0.789427, 0.038169, -0.612656,
		39.867378, 31.199999, 23.997353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490376, 31.903749, 24.277571>,  <40.419975, 31.173279, 24.426210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490376, 31.903749, 24.277571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.126308, 31.760872, 24.193661>,  <39.907867, 31.675146, 24.143314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.126308, 31.760872, 24.193661>,  <40.490376, 31.903749, 24.277571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126308, 31.760872, 24.193661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414114, 0.772240, 0.481825,
		-0.010107, 0.525414, -0.850787,
		-0.910169, -0.357192, -0.209776,
		39.853256, 31.653713, 24.130728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050781, 32.452370, 23.897062>,  <40.490376, 31.903749, 24.277571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050781, 32.452370, 23.897062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791210, 32.196587, 24.061979>,  <39.635468, 32.043118, 24.160931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791210, 32.196587, 24.061979>,  <40.050781, 32.452370, 23.897062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791210, 32.196587, 24.061979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512208, 0.767861, 0.384751,
		-0.562617, 0.038494, -0.825821,
		-0.648926, -0.639459, 0.412295,
		39.596531, 32.004749, 24.185667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407253, 32.635880, 23.741369>,  <40.050781, 32.452370, 23.897062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407253, 32.635880, 23.741369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.354092, 32.395050, 24.056290>,  <39.322193, 32.250553, 24.245243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.354092, 32.395050, 24.056290>,  <39.407253, 32.635880, 23.741369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354092, 32.395050, 24.056290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711405, 0.611037, 0.347183,
		-0.690100, -0.513948, -0.509528,
		-0.132906, -0.602072, 0.787302,
		39.314220, 32.214428, 24.292480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631779, 32.848961, 23.930607>,  <39.407253, 32.635880, 23.741369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631779, 32.848961, 23.930607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.771618, 32.625282, 24.231293>,  <38.855522, 32.491074, 24.411705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.771618, 32.625282, 24.231293>,  <38.631779, 32.848961, 23.930607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771618, 32.625282, 24.231293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585635, 0.495849, 0.641222,
		-0.731309, -0.664401, -0.154139,
		0.349599, -0.559200, 0.751715,
		38.876499, 32.457523, 24.456808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023972, 32.736473, 24.380947>,  <38.631779, 32.848961, 23.930607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023972, 32.736473, 24.380947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.355259, 32.686989, 24.599577>,  <38.554031, 32.657299, 24.730755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.355259, 32.686989, 24.599577>,  <38.023972, 32.736473, 24.380947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355259, 32.686989, 24.599577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455714, 0.418954, 0.785368,
		-0.326150, -0.899540, 0.290609,
		0.828222, -0.123714, 0.546575,
		38.603725, 32.649876, 24.763550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940533, 32.174118, 24.898983>,  <38.023972, 32.736473, 24.380947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940533, 32.174118, 24.898983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.190445, 32.471954, 24.992983>,  <38.340393, 32.650658, 25.049383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.190445, 32.471954, 24.992983>,  <37.940533, 32.174118, 24.898983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190445, 32.471954, 24.992983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459467, 0.107265, 0.881694,
		0.631298, -0.658842, 0.409134,
		0.624782, 0.744595, 0.235000,
		38.377880, 32.695332, 25.063482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379398, 31.540092, 24.968067>,  <37.940533, 32.174118, 24.898983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379398, 31.540092, 24.968067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.046452, 31.654993, 24.778479>,  <36.846684, 31.723932, 24.664724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.046452, 31.654993, 24.778479>,  <37.379398, 31.540092, 24.968067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046452, 31.654993, 24.778479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372302, -0.343707, -0.862123,
		-0.410556, -0.894064, 0.179146,
		-0.832368, 0.287253, -0.473973,
		36.796741, 31.741169, 24.636288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175133, 30.956564, 24.673941>,  <37.379398, 31.540092, 24.968067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175133, 30.956564, 24.673941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.003105, 31.247763, 24.460377>,  <36.899887, 31.422482, 24.332237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.003105, 31.247763, 24.460377>,  <37.175133, 30.956564, 24.673941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003105, 31.247763, 24.460377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169050, -0.515998, -0.839743,
		-0.886826, -0.451407, 0.098848,
		-0.430071, 0.727996, -0.533911,
		36.874084, 31.466162, 24.300203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655857, 30.656694, 24.318874>,  <37.175133, 30.956564, 24.673941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655857, 30.656694, 24.318874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.763245, 30.988817, 24.123522>,  <36.827679, 31.188091, 24.006311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.763245, 30.988817, 24.123522>,  <36.655857, 30.656694, 24.318874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763245, 30.988817, 24.123522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258300, -0.550478, -0.793886,
		-0.928011, 0.086988, -0.362256,
		0.268473, 0.830305, -0.488380,
		36.843788, 31.237909, 23.977007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338600, 30.598509, 23.718908>,  <36.655857, 30.656694, 24.318874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338600, 30.598509, 23.718908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.609184, 30.883661, 23.644930>,  <36.771534, 31.054752, 23.600542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.609184, 30.883661, 23.644930>,  <36.338600, 30.598509, 23.718908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609184, 30.883661, 23.644930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223959, -0.438343, -0.870458,
		-0.701604, 0.547407, -0.456177,
		0.676457, 0.712882, -0.184946,
		36.812122, 31.097527, 23.589445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211113, 30.832575, 22.995914>,  <36.338600, 30.598509, 23.718908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211113, 30.832575, 22.995914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.585571, 30.919573, 23.106419>,  <36.810246, 30.971771, 23.172722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.585571, 30.919573, 23.106419>,  <36.211113, 30.832575, 22.995914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585571, 30.919573, 23.106419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346074, -0.431200, -0.833246,
		-0.062105, 0.875649, -0.478938,
		0.936149, 0.217497, 0.276260,
		36.866417, 30.984821, 23.189297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554352, 30.858736, 22.312592>,  <36.211113, 30.832575, 22.995914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554352, 30.858736, 22.312592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.862942, 30.868624, 22.566902>,  <37.048096, 30.874556, 22.719488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.862942, 30.868624, 22.566902>,  <36.554352, 30.858736, 22.312592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862942, 30.868624, 22.566902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517545, -0.605617, -0.604463,
		0.370096, 0.795372, -0.480013,
		0.771477, 0.024719, 0.635777,
		37.094383, 30.876040, 22.757635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184071, 31.051268, 21.917759>,  <36.554352, 30.858736, 22.312592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184071, 31.051268, 21.917759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.311916, 30.854464, 22.241678>,  <37.388622, 30.736382, 22.436029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.311916, 30.854464, 22.241678>,  <37.184071, 31.051268, 21.917759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311916, 30.854464, 22.241678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561073, -0.590423, -0.580171,
		0.763574, 0.639785, 0.087348,
		0.319613, -0.492012, 0.809797,
		37.407799, 30.706860, 22.484617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920120, 31.030560, 21.937986>,  <37.184071, 31.051268, 21.917759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920120, 31.030560, 21.937986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.798023, 30.720964, 22.159895>,  <37.724766, 30.535208, 22.293039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.798023, 30.720964, 22.159895>,  <37.920120, 31.030560, 21.937986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798023, 30.720964, 22.159895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502154, -0.625818, -0.596819,
		0.809117, 0.096406, 0.579686,
		-0.305241, -0.773988, 0.554771,
		37.706451, 30.488768, 22.326326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375946, 30.641449, 21.752689>,  <37.920120, 31.030560, 21.937986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375946, 30.641449, 21.752689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.132992, 30.387808, 21.944103>,  <37.987221, 30.235622, 22.058952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.132992, 30.387808, 21.944103>,  <38.375946, 30.641449, 21.752689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132992, 30.387808, 21.944103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314254, -0.745029, -0.588367,
		0.729609, -0.206983, 0.651789,
		-0.607384, -0.634105, 0.478535,
		37.950775, 30.197577, 22.087664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745548, 30.050846, 22.036892>,  <38.375946, 30.641449, 21.752689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745548, 30.050846, 22.036892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.375694, 29.906971, 21.986805>,  <38.153782, 29.820646, 21.956753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.375694, 29.906971, 21.986805>,  <38.745548, 30.050846, 22.036892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375694, 29.906971, 21.986805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351347, -0.678653, -0.644969,
		0.147009, -0.640354, 0.753880,
		-0.924632, -0.359690, -0.125219,
		38.098305, 29.799065, 21.949240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794041, 29.277452, 21.952820>,  <38.745548, 30.050846, 22.036892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794041, 29.277452, 21.952820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.432930, 29.344673, 21.794456>,  <38.216263, 29.385006, 21.699438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.432930, 29.344673, 21.794456>,  <38.794041, 29.277452, 21.952820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432930, 29.344673, 21.794456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191841, -0.666530, -0.720371,
		-0.384947, -0.726289, 0.569491,
		-0.902781, 0.168053, -0.395910,
		38.162094, 29.395088, 21.675684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585781, 28.613743, 21.737879>,  <38.794041, 29.277452, 21.952820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585781, 28.613743, 21.737879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.333401, 28.828596, 21.513954>,  <38.181973, 28.957508, 21.379599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.333401, 28.828596, 21.513954>,  <38.585781, 28.613743, 21.737879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333401, 28.828596, 21.513954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161707, -0.614673, -0.772028,
		-0.758783, -0.577638, 0.300970,
		-0.630951, 0.537133, -0.559812,
		38.144115, 28.989737, 21.346010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870914, 28.763695, 22.438923>,  <38.585781, 28.613743, 21.737879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870914, 28.763695, 22.438923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549545, 28.601278, 22.264729>,  <38.356724, 28.503828, 22.160212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549545, 28.601278, 22.264729>,  <38.870914, 28.763695, 22.438923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549545, 28.601278, 22.264729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303904, -0.349304, 0.886357,
		-0.512014, 0.844463, 0.157241,
		-0.803420, -0.406041, -0.435484,
		38.308517, 28.479465, 22.134083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440594, 28.582893, 22.982521>,  <38.870914, 28.763695, 22.438923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440594, 28.582893, 22.982521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.208645, 28.426825, 22.696440>,  <38.069477, 28.333183, 22.524790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.208645, 28.426825, 22.696440>,  <38.440594, 28.582893, 22.982521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208645, 28.426825, 22.696440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654280, -0.300071, 0.694173,
		-0.485459, 0.870473, -0.081280,
		-0.579868, -0.390172, -0.715205,
		38.034683, 28.309772, 22.481878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758121, 28.834898, 23.066933>,  <38.440594, 28.582893, 22.982521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758121, 28.834898, 23.066933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.763748, 28.482357, 22.878031>,  <37.767124, 28.270832, 22.764690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.763748, 28.482357, 22.878031>,  <37.758121, 28.834898, 23.066933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763748, 28.482357, 22.878031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516287, -0.410873, 0.751419,
		-0.856300, 0.233247, -0.460810,
		0.014069, -0.881351, -0.472253,
		37.767967, 28.217953, 22.736355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171585, 28.613241, 23.210457>,  <37.758121, 28.834898, 23.066933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171585, 28.613241, 23.210457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.360607, 28.284883, 23.082191>,  <37.474018, 28.087870, 23.005232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.360607, 28.284883, 23.082191>,  <37.171585, 28.613241, 23.210457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360607, 28.284883, 23.082191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579730, -0.563593, 0.588452,
		-0.663782, -0.092175, -0.742224,
		0.472553, -0.820894, -0.320666,
		37.502373, 28.038616, 22.985992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640697, 28.197905, 22.979532>,  <37.171585, 28.613241, 23.210457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640697, 28.197905, 22.979532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.953430, 27.972990, 23.087290>,  <37.141071, 27.838041, 23.151945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.953430, 27.972990, 23.087290>,  <36.640697, 28.197905, 22.979532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953430, 27.972990, 23.087290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581223, -0.500917, 0.641297,
		-0.225647, -0.657966, -0.718446,
		0.781833, -0.562284, 0.269395,
		37.187981, 27.804304, 23.168108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447773, 27.521023, 22.922493>,  <36.640697, 28.197905, 22.979532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447773, 27.521023, 22.922493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.758484, 27.481066, 23.171213>,  <36.944912, 27.457092, 23.320446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.758484, 27.481066, 23.171213>,  <36.447773, 27.521023, 22.922493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758484, 27.481066, 23.171213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552891, -0.580914, 0.597370,
		0.301541, -0.807812, -0.506470,
		0.776778, -0.099891, 0.621801,
		36.991516, 27.451099, 23.357754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354580, 26.873943, 23.186071>,  <36.447773, 27.521023, 22.922493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354580, 26.873943, 23.186071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604874, 27.031160, 23.455582>,  <36.755051, 27.125490, 23.617287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604874, 27.031160, 23.455582>,  <36.354580, 26.873943, 23.186071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604874, 27.031160, 23.455582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438389, -0.537254, 0.720537,
		0.645190, -0.746241, -0.163873,
		0.625736, 0.393043, 0.673775,
		36.792595, 27.149073, 23.657715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493690, 26.381149, 23.610710>,  <36.354580, 26.873943, 23.186071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493690, 26.381149, 23.610710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.605915, 26.687214, 23.842508>,  <36.673252, 26.870853, 23.981586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.605915, 26.687214, 23.842508>,  <36.493690, 26.381149, 23.610710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605915, 26.687214, 23.842508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376074, -0.467838, 0.799810,
		0.883093, -0.442330, 0.156499,
		0.280564, 0.765161, 0.579493,
		36.690083, 26.916761, 24.016356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838879, 26.098516, 24.235159>,  <36.493690, 26.381149, 23.610710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838879, 26.098516, 24.235159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.721916, 26.468325, 24.332939>,  <36.651737, 26.690210, 24.391607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.721916, 26.468325, 24.332939>,  <36.838879, 26.098516, 24.235159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721916, 26.468325, 24.332939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283567, -0.327953, 0.901131,
		0.913283, 0.194182, 0.358061,
		-0.292411, 0.924522, 0.244451,
		36.634193, 26.745682, 24.406275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504005, 26.171495, 24.654787>,  <36.838879, 26.098516, 24.235159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504005, 26.171495, 24.654787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.859505, 26.000025, 24.719727>,  <38.072803, 25.897142, 24.758690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.859505, 26.000025, 24.719727>,  <37.504005, 26.171495, 24.654787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859505, 26.000025, 24.719727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132838, -0.098114, -0.986269,
		0.438721, 0.898114, -0.030254,
		0.888751, -0.428678, 0.162348,
		38.126129, 25.871422, 24.768431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933083, 26.432535, 24.158302>,  <37.504005, 26.171495, 24.654787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933083, 26.432535, 24.158302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143429, 26.110954, 24.269384>,  <38.269638, 25.918005, 24.336035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143429, 26.110954, 24.269384>,  <37.933083, 26.432535, 24.158302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143429, 26.110954, 24.269384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300673, -0.129711, -0.944866,
		0.795648, 0.580376, 0.173515,
		0.525870, -0.803952, 0.277707,
		38.301189, 25.869768, 24.352697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507206, 26.503838, 23.660675>,  <37.933083, 26.432535, 24.158302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507206, 26.503838, 23.660675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549152, 26.136959, 23.814430>,  <38.574322, 25.916832, 23.906683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549152, 26.136959, 23.814430>,  <38.507206, 26.503838, 23.660675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549152, 26.136959, 23.814430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481470, -0.291379, -0.826610,
		0.870166, 0.271754, 0.411047,
		0.104865, -0.917196, 0.384390,
		38.580612, 25.861801, 23.929747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279453, 26.339960, 23.562239>,  <38.507206, 26.503838, 23.660675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279453, 26.339960, 23.562239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.085415, 25.991875, 23.596678>,  <38.968990, 25.783024, 23.617340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.085415, 25.991875, 23.596678>,  <39.279453, 26.339960, 23.562239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085415, 25.991875, 23.596678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614563, -0.409306, -0.674375,
		0.622089, -0.274225, 0.733353,
		-0.485096, -0.870212, 0.086096,
		38.939888, 25.730810, 23.622507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757267, 25.802059, 23.604578>,  <39.279453, 26.339960, 23.562239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757267, 25.802059, 23.604578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.423946, 25.607777, 23.498978>,  <39.223953, 25.491207, 23.435617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.423946, 25.607777, 23.498978>,  <39.757267, 25.802059, 23.604578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423946, 25.607777, 23.498978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528872, -0.561405, -0.636489,
		0.160937, -0.670010, 0.724697,
		-0.833303, -0.485707, -0.263999,
		39.173954, 25.462065, 23.419779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942657, 25.107756, 23.731100>,  <39.757267, 25.802059, 23.604578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942657, 25.107756, 23.731100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.645252, 25.117935, 23.463804>,  <39.466808, 25.124043, 23.303427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.645252, 25.117935, 23.463804>,  <39.942657, 25.107756, 23.731100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645252, 25.117935, 23.463804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523424, -0.599776, -0.605225,
		-0.416196, -0.799764, 0.432620,
		-0.743511, 0.025448, -0.668239,
		39.422199, 25.125570, 23.263332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984341, 24.504354, 23.414921>,  <39.942657, 25.107756, 23.731100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984341, 24.504354, 23.414921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.748825, 24.690880, 23.150837>,  <39.607513, 24.802795, 22.992386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.748825, 24.690880, 23.150837>,  <39.984341, 24.504354, 23.414921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748825, 24.690880, 23.150837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461626, -0.476488, -0.748238,
		-0.663494, -0.745327, 0.065290,
		-0.588792, 0.466312, -0.660209,
		39.572186, 24.830772, 22.952774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911926, 24.073690, 22.922745>,  <39.984341, 24.504354, 23.414921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911926, 24.073690, 22.922745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825817, 24.418722, 22.739609>,  <39.774151, 24.625740, 22.629726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825817, 24.418722, 22.739609>,  <39.911926, 24.073690, 22.922745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825817, 24.418722, 22.739609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633152, -0.233658, -0.737917,
		-0.743489, -0.448735, -0.495843,
		-0.215271, 0.862578, -0.457840,
		39.761234, 24.677496, 22.602257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910839, 23.892290, 22.208244>,  <39.911926, 24.073690, 22.922745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910839, 23.892290, 22.208244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.978153, 24.282326, 22.266048>,  <40.018543, 24.516346, 22.300732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.978153, 24.282326, 22.266048>,  <39.910839, 23.892290, 22.208244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978153, 24.282326, 22.266048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781128, -0.042493, -0.622923,
		-0.601264, 0.217710, -0.768820,
		0.168286, 0.975088, 0.144510,
		40.028641, 24.574852, 22.309401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.943089, 31.618238, 35.752045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318821, 31.672007, 35.878277>,  <34.544258, 31.704268, 35.954018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318821, 31.672007, 35.878277>,  <33.943089, 31.618238, 35.752045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318821, 31.672007, 35.878277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342634, -0.324219, -0.881751,
		-0.016210, 0.936383, -0.350606,
		0.939329, 0.134423, 0.315581,
		34.600620, 31.712334, 35.972950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345245, 31.879087, 35.181248>,  <33.943089, 31.618238, 35.752045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345245, 31.879087, 35.181248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631241, 31.728090, 35.416634>,  <34.802837, 31.637493, 35.557865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631241, 31.728090, 35.416634>,  <34.345245, 31.879087, 35.181248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631241, 31.728090, 35.416634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450172, -0.395416, -0.800620,
		0.534914, 0.837345, -0.112783,
		0.714991, -0.377491, 0.588463,
		34.845737, 31.614843, 35.593174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994816, 32.043076, 34.821499>,  <34.345245, 31.879087, 35.181248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994816, 32.043076, 34.821499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088718, 31.747295, 35.073883>,  <35.145058, 31.569828, 35.225315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088718, 31.747295, 35.073883>,  <34.994816, 32.043076, 34.821499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088718, 31.747295, 35.073883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434916, -0.500606, -0.748493,
		0.869332, 0.450126, 0.204077,
		0.234754, -0.739446, 0.630960,
		35.159145, 31.525461, 35.263172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722683, 31.976931, 34.862762>,  <34.994816, 32.043076, 34.821499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722683, 31.976931, 34.862762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.550556, 31.626900, 34.951366>,  <35.447281, 31.416882, 35.004528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.550556, 31.626900, 34.951366>,  <35.722683, 31.976931, 34.862762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550556, 31.626900, 34.951366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524483, -0.442104, -0.727641,
		0.734673, -0.196939, 0.649208,
		-0.430318, -0.875077, 0.221511,
		35.421459, 31.364376, 35.017818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147633, 31.479174, 34.632977>,  <35.722683, 31.976931, 34.862762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147633, 31.479174, 34.632977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820377, 31.257387, 34.693935>,  <35.624023, 31.124315, 34.730511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820377, 31.257387, 34.693935>,  <36.147633, 31.479174, 34.632977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820377, 31.257387, 34.693935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276195, -0.611364, -0.741587,
		0.504354, -0.564626, 0.653318,
		-0.818134, -0.554465, 0.152397,
		35.574936, 31.091047, 34.739655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365273, 30.721930, 34.607563>,  <36.147633, 31.479174, 34.632977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365273, 30.721930, 34.607563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970089, 30.682005, 34.560265>,  <35.732979, 30.658051, 34.531887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970089, 30.682005, 34.560265>,  <36.365273, 30.721930, 34.607563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970089, 30.682005, 34.560265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154709, -0.651728, -0.742506,
		-0.002949, -0.751856, 0.659320,
		-0.987956, -0.099813, -0.118241,
		35.673702, 30.652061, 34.524792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240124, 30.017330, 34.730621>,  <36.365273, 30.721930, 34.607563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240124, 30.017330, 34.730621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924240, 30.148039, 34.522938>,  <35.734711, 30.226463, 34.398327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924240, 30.148039, 34.522938>,  <36.240124, 30.017330, 34.730621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924240, 30.148039, 34.522938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051933, -0.807689, -0.587317,
		-0.611280, -0.490773, 0.620869,
		-0.789709, 0.326771, -0.519212,
		35.687328, 30.246071, 34.367172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785946, 29.471966, 34.678276>,  <36.240124, 30.017330, 34.730621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785946, 29.471966, 34.678276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642174, 29.682262, 34.369884>,  <35.555912, 29.808441, 34.184849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642174, 29.682262, 34.369884>,  <35.785946, 29.471966, 34.678276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642174, 29.682262, 34.369884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087206, -0.803650, -0.588679,
		-0.929088, -0.278823, 0.243008,
		-0.359431, 0.525743, -0.770976,
		35.534344, 29.839985, 34.138592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253651, 29.073677, 34.421230>,  <35.785946, 29.471966, 34.678276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253651, 29.073677, 34.421230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354485, 29.327909, 34.129341>,  <35.414986, 29.480450, 33.954208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354485, 29.327909, 34.129341>,  <35.253651, 29.073677, 34.421230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354485, 29.327909, 34.129341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124364, -0.769096, -0.626916,
		-0.959680, 0.067285, -0.272922,
		0.252085, 0.635581, -0.729719,
		35.430111, 29.518583, 33.910427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957443, 28.744890, 33.938667>,  <35.253651, 29.073677, 34.421230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957443, 28.744890, 33.938667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179291, 28.996132, 33.720352>,  <35.312401, 29.146877, 33.589363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179291, 28.996132, 33.720352>,  <34.957443, 28.744890, 33.938667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179291, 28.996132, 33.720352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085742, -0.695557, -0.713336,
		-0.827673, 0.348835, -0.439626,
		0.554622, 0.628104, -0.545784,
		35.345676, 29.184563, 33.556618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579403, 28.878233, 33.287205>,  <34.957443, 28.744890, 33.938667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579403, 28.878233, 33.287205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974152, 28.908451, 33.230095>,  <35.210999, 28.926582, 33.195831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974152, 28.908451, 33.230095>,  <34.579403, 28.878233, 33.287205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974152, 28.908451, 33.230095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075856, -0.563608, -0.822552,
		-0.142605, 0.822580, -0.550477,
		0.986869, 0.075544, -0.142771,
		35.270214, 28.931114, 33.187263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634636, 29.084263, 32.604393>,  <34.579403, 28.878233, 33.287205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634636, 29.084263, 32.604393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.999146, 28.936491, 32.677170>,  <35.217850, 28.847828, 32.720837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.999146, 28.936491, 32.677170>,  <34.634636, 29.084263, 32.604393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999146, 28.936491, 32.677170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006984, -0.455620, -0.890147,
		0.411745, 0.809896, -0.417774,
		0.911272, -0.369431, 0.181942,
		35.272526, 28.825661, 32.731754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506699, 29.711464, 32.348530>,  <34.634636, 29.084263, 32.604393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506699, 29.711464, 32.348530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219646, 29.874588, 32.122719>,  <34.047413, 29.972462, 31.987232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219646, 29.874588, 32.122719>,  <34.506699, 29.711464, 32.348530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219646, 29.874588, 32.122719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050222, 0.778198, 0.626008,
		0.694607, 0.477596, -0.537980,
		-0.717634, 0.407811, -0.564528,
		34.004356, 29.996931, 31.953360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630939, 30.462498, 32.315708>,  <34.506699, 29.711464, 32.348530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630939, 30.462498, 32.315708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244972, 30.404936, 32.227875>,  <34.013390, 30.370399, 32.175175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244972, 30.404936, 32.227875>,  <34.630939, 30.462498, 32.315708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244972, 30.404936, 32.227875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257539, 0.681281, 0.685222,
		0.050994, 0.717738, -0.694444,
		-0.964921, -0.143904, -0.219587,
		33.955498, 30.361765, 32.161999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325253, 31.098505, 32.452827>,  <34.630939, 30.462498, 32.315708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325253, 31.098505, 32.452827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009083, 30.854372, 32.431931>,  <33.819382, 30.707891, 32.419392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009083, 30.854372, 32.431931>,  <34.325253, 31.098505, 32.452827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009083, 30.854372, 32.431931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503601, 0.598899, 0.622661,
		-0.348742, 0.518473, -0.780746,
		-0.790421, -0.610333, -0.052242,
		33.771957, 30.671272, 32.416256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756645, 31.472326, 32.265965>,  <34.325253, 31.098505, 32.452827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756645, 31.472326, 32.265965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622986, 31.156309, 32.471558>,  <33.542789, 30.966700, 32.594913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622986, 31.156309, 32.471558>,  <33.756645, 31.472326, 32.265965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622986, 31.156309, 32.471558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479522, 0.611975, 0.628924,
		-0.811422, -0.036315, -0.583331,
		-0.334144, -0.790043, 0.513984,
		33.522743, 30.919296, 32.625751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046833, 31.581944, 32.434856>,  <33.756645, 31.472326, 32.265965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046833, 31.581944, 32.434856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163277, 31.305502, 32.699471>,  <33.233143, 31.139637, 32.858238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163277, 31.305502, 32.699471>,  <33.046833, 31.581944, 32.434856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163277, 31.305502, 32.699471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464329, 0.502513, 0.729300,
		-0.836453, -0.519476, -0.174615,
		0.291107, -0.691105, 0.661536,
		33.250610, 31.098171, 32.897930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404243, 31.484200, 32.785450>,  <33.046833, 31.581944, 32.434856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404243, 31.484200, 32.785450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712883, 31.381287, 33.018150>,  <32.898067, 31.319538, 33.157772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712883, 31.381287, 33.018150>,  <32.404243, 31.484200, 32.785450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712883, 31.381287, 33.018150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362588, 0.573540, 0.734562,
		-0.522652, -0.777725, 0.349255,
		0.771599, -0.257285, 0.581756,
		32.944363, 31.304102, 33.192677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113262, 31.600504, 33.315578>,  <32.404243, 31.484200, 32.785450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113262, 31.600504, 33.315578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479237, 31.525017, 33.458282>,  <32.698822, 31.479725, 33.543907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479237, 31.525017, 33.458282>,  <32.113262, 31.600504, 33.315578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479237, 31.525017, 33.458282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224210, 0.497343, 0.838081,
		-0.335596, -0.846779, 0.412723,
		0.914934, -0.188720, 0.356763,
		32.753716, 31.468401, 33.565311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043636, 31.318180, 34.003769>,  <32.113262, 31.600504, 33.315578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043636, 31.318180, 34.003769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.408527, 31.480127, 33.978745>,  <32.627464, 31.577295, 33.963730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.408527, 31.480127, 33.978745>,  <32.043636, 31.318180, 34.003769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408527, 31.480127, 33.978745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150423, 0.473058, 0.868095,
		0.381055, -0.782495, 0.492441,
		0.912234, 0.404867, -0.062556,
		32.682198, 31.601587, 33.959976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314945, 31.166397, 34.641239>,  <32.043636, 31.318180, 34.003769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314945, 31.166397, 34.641239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528374, 31.475523, 34.503799>,  <32.656433, 31.660997, 34.421337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528374, 31.475523, 34.503799>,  <32.314945, 31.166397, 34.641239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528374, 31.475523, 34.503799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088348, 0.454968, 0.886114,
		0.841126, -0.442452, 0.311036,
		0.533575, 0.772813, -0.343596,
		32.688446, 31.707367, 34.400723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756935, 31.421820, 35.296204>,  <32.314945, 31.166397, 34.641239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756935, 31.421820, 35.296204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771469, 31.714134, 35.023548>,  <32.780190, 31.889523, 34.859955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771469, 31.714134, 35.023548>,  <32.756935, 31.421820, 35.296204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771469, 31.714134, 35.023548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223959, 0.670696, 0.707114,
		0.973921, 0.126966, 0.188035,
		0.036335, 0.730785, -0.681640,
		32.782372, 31.933371, 34.819057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152813, 31.938572, 35.563778>,  <32.756935, 31.421820, 35.296204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152813, 31.938572, 35.563778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.939007, 32.136345, 35.289600>,  <32.810722, 32.255009, 35.125095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.939007, 32.136345, 35.289600>,  <33.152813, 31.938572, 35.563778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939007, 32.136345, 35.289600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148227, 0.743607, 0.651980,
		0.832058, 0.450095, -0.324182,
		-0.534517, 0.494432, -0.685440,
		32.778652, 32.284676, 35.083969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212254, 32.646454, 35.772099>,  <33.152813, 31.938572, 35.563778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212254, 32.646454, 35.772099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920284, 32.673092, 35.499985>,  <32.745102, 32.689075, 35.336716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920284, 32.673092, 35.499985>,  <33.212254, 32.646454, 35.772099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920284, 32.673092, 35.499985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372972, 0.795222, 0.478031,
		0.572807, 0.602650, -0.555612,
		-0.729921, 0.066592, -0.680281,
		32.701309, 32.693069, 35.295902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282841, 33.278378, 35.440369>,  <33.212254, 32.646454, 35.772099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282841, 33.278378, 35.440369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907089, 33.142071, 35.425194>,  <32.681637, 33.060287, 35.416088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907089, 33.142071, 35.425194>,  <33.282841, 33.278378, 35.440369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907089, 33.142071, 35.425194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300749, 0.765771, 0.568458,
		-0.164663, 0.545408, -0.821837,
		-0.939381, -0.340771, -0.037937,
		32.625275, 33.039841, 35.413815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019024, 33.790257, 35.144573>,  <33.282841, 33.278378, 35.440369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019024, 33.790257, 35.144573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.763885, 33.591537, 35.379974>,  <32.610802, 33.472305, 35.521217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.763885, 33.591537, 35.379974>,  <33.019024, 33.790257, 35.144573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763885, 33.591537, 35.379974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169741, 0.836028, 0.521771,
		-0.751222, 0.232918, -0.617587,
		-0.637850, -0.496796, 0.588507,
		32.572529, 33.442497, 35.556526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928658, 34.117180, 34.360863>,  <33.019024, 33.790257, 35.144573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928658, 34.117180, 34.360863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911339, 34.514408, 34.317158>,  <32.900948, 34.752747, 34.290936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911339, 34.514408, 34.317158>,  <32.928658, 34.117180, 34.360863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911339, 34.514408, 34.317158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754006, -0.039265, -0.655692,
		-0.655438, -0.110774, -0.747081,
		-0.043300, 0.993070, -0.109260,
		32.898350, 34.812328, 34.284378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701477, 34.267406, 33.695705>,  <32.928658, 34.117180, 34.360863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701477, 34.267406, 33.695705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916023, 34.580475, 33.822033>,  <33.044750, 34.768314, 33.897831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916023, 34.580475, 33.822033>,  <32.701477, 34.267406, 33.695705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916023, 34.580475, 33.822033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640463, -0.133750, -0.756253,
		-0.549653, 0.607900, -0.573009,
		0.536366, 0.782667, 0.315822,
		33.076935, 34.815273, 33.916779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736572, 34.819252, 33.139732>,  <32.701477, 34.267406, 33.695705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736572, 34.819252, 33.139732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049431, 34.791000, 33.387363>,  <33.237144, 34.774048, 33.535942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049431, 34.791000, 33.387363>,  <32.736572, 34.819252, 33.139732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049431, 34.791000, 33.387363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575550, -0.298761, -0.761238,
		0.238721, 0.951711, -0.193024,
		0.782147, -0.070629, 0.619078,
		33.284077, 34.769814, 33.573086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328838, 34.972912, 32.672565>,  <32.736572, 34.819252, 33.139732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328838, 34.972912, 32.672565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491867, 34.790436, 32.988987>,  <33.589684, 34.680950, 33.178841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491867, 34.790436, 32.988987>,  <33.328838, 34.972912, 32.672565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491867, 34.790436, 32.988987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601093, -0.518106, -0.608484,
		0.687438, 0.723501, 0.063048,
		0.407573, -0.456193, 0.791058,
		33.614140, 34.653580, 33.226303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065884, 35.052761, 32.562847>,  <33.328838, 34.972912, 32.672565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065884, 35.052761, 32.562847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022709, 34.750248, 32.820957>,  <33.996803, 34.568741, 32.975822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022709, 34.750248, 32.820957>,  <34.065884, 35.052761, 32.562847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022709, 34.750248, 32.820957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640742, -0.549197, -0.536500,
		0.760132, 0.355550, 0.543861,
		-0.107935, -0.756285, 0.645278,
		33.990330, 34.523361, 33.014542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723381, 34.653061, 32.571938>,  <34.065884, 35.052761, 32.562847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723381, 34.653061, 32.571938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478252, 34.375164, 32.722553>,  <34.331173, 34.208427, 32.812923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478252, 34.375164, 32.722553>,  <34.723381, 34.653061, 32.571938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478252, 34.375164, 32.722553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469972, -0.703500, -0.533117,
		0.635274, -0.149743, 0.757630,
		-0.612824, -0.694741, 0.376541,
		34.294407, 34.166740, 32.835514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131874, 34.162502, 32.866844>,  <34.723381, 34.653061, 32.571938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131874, 34.162502, 32.866844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789299, 33.973297, 32.784115>,  <34.583755, 33.859772, 32.734478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789299, 33.973297, 32.784115>,  <35.131874, 34.162502, 32.866844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789299, 33.973297, 32.784115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462831, -0.526024, -0.713502,
		0.228707, -0.706791, 0.669433,
		-0.856435, -0.473017, -0.206819,
		34.532368, 33.831390, 32.722069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302834, 33.533699, 32.723118>,  <35.131874, 34.162502, 32.866844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302834, 33.533699, 32.723118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937943, 33.557674, 32.561008>,  <34.719006, 33.572060, 32.463745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937943, 33.557674, 32.561008>,  <35.302834, 33.533699, 32.723118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937943, 33.557674, 32.561008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312793, -0.536945, -0.783486,
		-0.264572, -0.841485, 0.471068,
		-0.912229, 0.059942, -0.405271,
		34.664272, 33.575657, 32.439426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156254, 32.791553, 32.362293>,  <35.302834, 33.533699, 32.723118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156254, 32.791553, 32.362293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945515, 33.086674, 32.193497>,  <34.819069, 33.263744, 32.092220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945515, 33.086674, 32.193497>,  <35.156254, 32.791553, 32.362293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945515, 33.086674, 32.193497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214764, -0.364820, -0.905971,
		-0.822377, -0.567940, 0.033752,
		-0.526851, 0.737801, -0.421993,
		34.787460, 33.308014, 32.066898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727879, 32.443283, 31.929256>,  <35.156254, 32.791553, 32.362293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727879, 32.443283, 31.929256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718075, 32.817280, 31.787733>,  <34.712193, 33.041679, 31.702820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718075, 32.817280, 31.787733>,  <34.727879, 32.443283, 31.929256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718075, 32.817280, 31.787733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313756, -0.328838, -0.890743,
		-0.949187, -0.132843, -0.285300,
		-0.024511, 0.934997, -0.353809,
		34.710720, 33.097778, 31.681591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244556, 32.418793, 31.361393>,  <34.727879, 32.443283, 31.929256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244556, 32.418793, 31.361393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480461, 32.736912, 31.305277>,  <34.622002, 32.927784, 31.271608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480461, 32.736912, 31.305277>,  <34.244556, 32.418793, 31.361393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480461, 32.736912, 31.305277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033526, -0.197677, -0.979694,
		-0.806884, 0.573079, -0.143245,
		0.589758, 0.795301, -0.140289,
		34.657387, 32.975502, 31.263189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944027, 32.832241, 30.863312>,  <34.244556, 32.418793, 31.361393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944027, 32.832241, 30.863312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324486, 32.955467, 30.855253>,  <34.552761, 33.029404, 30.850418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324486, 32.955467, 30.855253>,  <33.944027, 32.832241, 30.863312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324486, 32.955467, 30.855253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033094, -0.166625, -0.985465,
		-0.306946, 0.936660, -0.168681,
		0.951151, 0.308067, -0.020147,
		34.609833, 33.047886, 30.849209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015560, 32.897484, 30.209206>,  <33.944027, 32.832241, 30.863312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015560, 32.897484, 30.209206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399643, 32.923447, 30.317865>,  <34.630093, 32.939026, 30.383062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399643, 32.923447, 30.317865>,  <34.015560, 32.897484, 30.209206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399643, 32.923447, 30.317865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276869, -0.093197, -0.956378,
		-0.036763, 0.993530, -0.107460,
		0.960204, 0.064911, 0.271651,
		34.687706, 32.942921, 30.399361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256363, 33.480190, 29.829988>,  <34.015560, 32.897484, 30.209206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256363, 33.480190, 29.829988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565617, 33.235756, 29.897930>,  <34.751167, 33.089096, 29.938696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565617, 33.235756, 29.897930>,  <34.256363, 33.480190, 29.829988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565617, 33.235756, 29.897930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186663, -0.036718, -0.981738,
		0.606158, 0.790716, 0.085679,
		0.773130, -0.611081, 0.169854,
		34.797554, 33.052433, 29.948887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732067, 33.620487, 29.359821>,  <34.256363, 33.480190, 29.829988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732067, 33.620487, 29.359821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912041, 33.288292, 29.491182>,  <35.020023, 33.088974, 29.570000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912041, 33.288292, 29.491182>,  <34.732067, 33.620487, 29.359821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912041, 33.288292, 29.491182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320763, -0.192908, -0.927307,
		0.833470, 0.522565, 0.179595,
		0.449932, -0.830489, 0.328402,
		35.047020, 33.039146, 29.589703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374943, 33.644672, 28.965658>,  <34.732067, 33.620487, 29.359821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374943, 33.644672, 28.965658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281609, 33.274391, 29.084738>,  <35.225609, 33.052223, 29.156185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281609, 33.274391, 29.084738>,  <35.374943, 33.644672, 28.965658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281609, 33.274391, 29.084738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233316, -0.350505, -0.907034,
		0.943990, -0.142188, 0.297768,
		-0.233338, -0.925705, 0.297698,
		35.211609, 32.996681, 29.174047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903248, 33.283665, 28.698719>,  <35.374943, 33.644672, 28.965658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903248, 33.283665, 28.698719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630238, 33.000362, 28.770868>,  <35.466431, 32.830383, 28.814157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630238, 33.000362, 28.770868>,  <35.903248, 33.283665, 28.698719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630238, 33.000362, 28.770868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194410, -0.413842, -0.889348,
		0.704530, -0.571937, 0.420150,
		-0.682527, -0.708253, 0.180374,
		35.425480, 32.787888, 28.824980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241016, 32.675785, 28.627426>,  <35.903248, 33.283665, 28.698719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241016, 32.675785, 28.627426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854179, 32.595131, 28.565357>,  <35.622078, 32.546738, 28.528116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854179, 32.595131, 28.565357>,  <36.241016, 32.675785, 28.627426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854179, 32.595131, 28.565357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230340, -0.434799, -0.870571,
		0.108071, -0.877663, 0.466935,
		-0.967090, -0.201637, -0.155172,
		35.564053, 32.534641, 28.518806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278175, 32.052876, 28.302540>,  <36.241016, 32.675785, 28.627426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278175, 32.052876, 28.302540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903149, 32.169971, 28.227417>,  <35.678131, 32.240231, 28.182343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903149, 32.169971, 28.227417>,  <36.278175, 32.052876, 28.302540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903149, 32.169971, 28.227417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058427, -0.399742, -0.914764,
		-0.342860, -0.868626, 0.357681,
		-0.937568, 0.292737, -0.187807,
		35.621880, 32.257793, 28.171074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016548, 31.573578, 27.955883>,  <36.278175, 32.052876, 28.302540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016548, 31.573578, 27.955883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748978, 31.856960, 27.865875>,  <35.588436, 32.026989, 27.811871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748978, 31.856960, 27.865875>,  <36.016548, 31.573578, 27.955883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748978, 31.856960, 27.865875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087200, -0.225837, -0.970255,
		-0.738200, -0.668646, 0.089290,
		-0.668922, 0.708456, -0.225019,
		35.548302, 32.069496, 27.798370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427647, 31.251402, 27.619413>,  <36.016548, 31.573578, 27.955883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427647, 31.251402, 27.619413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.436161, 31.637152, 27.513943>,  <35.441269, 31.868603, 27.450661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.436161, 31.637152, 27.513943>,  <35.427647, 31.251402, 27.619413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436161, 31.637152, 27.513943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222036, -0.261709, -0.939260,
		-0.974806, -0.038553, -0.219696,
		0.021285, 0.964376, -0.263676,
		35.442547, 31.926464, 27.434839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058208, 31.303917, 27.045174>,  <35.427647, 31.251402, 27.619413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058208, 31.303917, 27.045174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.266701, 31.645239, 27.050686>,  <35.391796, 31.850031, 27.053993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.266701, 31.645239, 27.050686>,  <35.058208, 31.303917, 27.045174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266701, 31.645239, 27.050686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182336, -0.095574, -0.978580,
		-0.833708, 0.512581, -0.205404,
		0.521233, 0.853303, 0.013781,
		35.423069, 31.901230, 27.054821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791534, 31.788614, 26.492975>,  <35.058208, 31.303917, 27.045174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791534, 31.788614, 26.492975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163754, 31.894222, 26.594458>,  <35.387085, 31.957588, 26.655348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163754, 31.894222, 26.594458>,  <34.791534, 31.788614, 26.492975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163754, 31.894222, 26.594458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297817, -0.142635, -0.943907,
		-0.213024, 0.953912, -0.211359,
		0.930551, 0.264022, 0.253706,
		35.442921, 31.973429, 26.670570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873558, 32.248463, 26.038473>,  <34.791534, 31.788614, 26.492975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873558, 32.248463, 26.038473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229919, 32.089504, 26.126442>,  <35.443737, 31.994131, 26.179224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229919, 32.089504, 26.126442>,  <34.873558, 32.248463, 26.038473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229919, 32.089504, 26.126442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276858, 0.091306, -0.956563,
		0.360050, 0.913095, 0.191366,
		0.890906, -0.397392, 0.219923,
		35.497192, 31.970287, 26.192419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218929, 32.455025, 25.588177>,  <34.873558, 32.248463, 26.038473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218929, 32.455025, 25.588177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501606, 32.203716, 25.718321>,  <35.671211, 32.052933, 25.796408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501606, 32.203716, 25.718321>,  <35.218929, 32.455025, 25.588177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501606, 32.203716, 25.718321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510945, 0.135090, -0.848932,
		0.489406, 0.766177, 0.416479,
		0.706695, -0.628270, 0.325360,
		35.713615, 32.015236, 25.815929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839890, 32.786282, 25.435236>,  <35.218929, 32.455025, 25.588177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839890, 32.786282, 25.435236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942059, 32.402103, 25.479620>,  <36.003361, 32.171597, 25.506250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942059, 32.402103, 25.479620>,  <35.839890, 32.786282, 25.435236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942059, 32.402103, 25.479620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605887, 0.069571, -0.792503,
		0.753433, 0.269651, 0.599689,
		0.255420, -0.960442, 0.110961,
		36.018684, 32.113972, 25.512909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594013, 32.727966, 25.430389>,  <35.839890, 32.786282, 25.435236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594013, 32.727966, 25.430389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393677, 32.402832, 25.311422>,  <36.273476, 32.207752, 25.240042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393677, 32.402832, 25.311422>,  <36.594013, 32.727966, 25.430389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393677, 32.402832, 25.311422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707267, -0.186256, -0.681969,
		0.498934, -0.551910, 0.668177,
		-0.500838, -0.812837, -0.297418,
		36.243427, 32.158981, 25.222197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168800, 32.278019, 25.228153>,  <36.594013, 32.727966, 25.430389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168800, 32.278019, 25.228153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830231, 32.142635, 25.063711>,  <36.627087, 32.061405, 24.965046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830231, 32.142635, 25.063711>,  <37.168800, 32.278019, 25.228153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830231, 32.142635, 25.063711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480069, -0.150949, -0.864146,
		0.230422, -0.928795, 0.290252,
		-0.846427, -0.338459, -0.411103,
		36.576302, 32.041096, 24.940380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786663, 32.282246, 25.671448>,  <37.168800, 32.278019, 25.228153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786663, 32.282246, 25.671448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053318, 32.568741, 25.588892>,  <38.213310, 32.740639, 25.539358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053318, 32.568741, 25.588892>,  <37.786663, 32.282246, 25.671448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053318, 32.568741, 25.588892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046488, 0.316305, 0.947518,
		0.743932, -0.622054, 0.244157,
		0.666636, 0.716240, -0.206392,
		38.253307, 32.783611, 25.526974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470798, 32.245159, 26.061712>,  <37.786663, 32.282246, 25.671448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470798, 32.245159, 26.061712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426533, 32.627831, 25.953993>,  <38.399975, 32.857433, 25.889362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426533, 32.627831, 25.953993>,  <38.470798, 32.245159, 26.061712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426533, 32.627831, 25.953993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013374, 0.269504, 0.962906,
		0.993768, 0.110157, -0.017029,
		-0.110660, 0.956678, -0.269297,
		38.393333, 32.914833, 25.873203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792629, 32.667034, 26.607893>,  <38.470798, 32.245159, 26.061712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792629, 32.667034, 26.607893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.585239, 32.945110, 26.408735>,  <38.460804, 33.111954, 26.289240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.585239, 32.945110, 26.408735>,  <38.792629, 32.667034, 26.607893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585239, 32.945110, 26.408735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180376, 0.480251, 0.858384,
		0.835852, 0.534858, -0.123603,
		-0.518474, 0.695187, -0.497894,
		38.429699, 33.153667, 26.259367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992413, 33.344810, 26.852350>,  <38.792629, 32.667034, 26.607893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992413, 33.344810, 26.852350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639282, 33.409138, 26.675829>,  <38.427402, 33.447735, 26.569916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639282, 33.409138, 26.675829>,  <38.992413, 33.344810, 26.852350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639282, 33.409138, 26.675829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268212, 0.598704, 0.754729,
		0.385584, 0.784660, -0.485421,
		-0.882829, 0.160816, -0.441305,
		38.374432, 33.457382, 26.543438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051048, 33.983852, 26.607166>,  <38.992413, 33.344810, 26.852350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051048, 33.983852, 26.607166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673748, 33.874058, 26.681936>,  <38.447369, 33.808182, 26.726799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673748, 33.874058, 26.681936>,  <39.051048, 33.983852, 26.607166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673748, 33.874058, 26.681936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011456, 0.589443, 0.807729,
		-0.331891, 0.759747, -0.559135,
		-0.943248, -0.274484, 0.186927,
		38.390774, 33.791714, 26.738014>
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
