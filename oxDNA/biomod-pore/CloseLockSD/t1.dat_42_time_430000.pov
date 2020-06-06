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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.217133, 14.823648, 14.951919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.212550, 15.184335, 14.779048>,  <4.209801, 15.400746, 14.675325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.212550, 15.184335, 14.779048>,  <4.217133, 14.823648, 14.951919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.212550, 15.184335, 14.779048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535074, 0.370648, 0.759154,
		0.844727, -0.222550, -0.486732,
		-0.011457, 0.901716, -0.432177,
		4.209113, 15.454849, 14.649395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.830184, 15.202197, 14.636352>,  <4.217133, 14.823648, 14.951919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.830184, 15.202197, 14.636352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.571081, 15.451955, 14.810955>,  <4.415619, 15.601810, 14.915717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.571081, 15.451955, 14.810955>,  <4.830184, 15.202197, 14.636352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.571081, 15.451955, 14.810955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691443, 0.241267, 0.680953,
		0.319868, 0.742914, -0.588016,
		-0.647758, 0.624395, 0.436509,
		4.376753, 15.639274, 14.941908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.167946, 15.875766, 14.778435>,  <4.830184, 15.202197, 14.636352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.167946, 15.875766, 14.778435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.865753, 15.846072, 15.038815>,  <4.684437, 15.828257, 15.195043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.865753, 15.846072, 15.038815>,  <5.167946, 15.875766, 14.778435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.865753, 15.846072, 15.038815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600867, 0.317543, 0.733570,
		-0.261160, 0.945334, -0.195293,
		-0.755483, -0.074233, 0.650949,
		4.639108, 15.823802, 15.234099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.102060, 15.610225, 14.068416>,  <5.167946, 15.875766, 14.778435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.102060, 15.610225, 14.068416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.497913, 15.663220, 14.090594>,  <5.735425, 15.695018, 14.103902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.497913, 15.663220, 14.090594>,  <5.102060, 15.610225, 14.068416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.497913, 15.663220, 14.090594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013982, 0.295356, -0.955285,
		-0.142941, 0.946156, 0.290441,
		0.989632, 0.132489, 0.055447,
		5.794803, 15.702967, 14.107228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.307759, 16.222851, 13.827020>,  <5.102060, 15.610225, 14.068416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.307759, 16.222851, 13.827020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.630977, 15.996979, 13.759849>,  <5.824907, 15.861455, 13.719546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.630977, 15.996979, 13.759849>,  <5.307759, 16.222851, 13.827020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.630977, 15.996979, 13.759849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077722, 0.384736, -0.919748,
		0.583972, 0.730146, 0.354772,
		0.808045, -0.564681, -0.167927,
		5.873390, 15.827575, 13.709471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.749077, 16.620386, 13.452486>,  <5.307759, 16.222851, 13.827020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.749077, 16.620386, 13.452486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.888723, 16.250200, 13.393656>,  <5.972511, 16.028088, 13.358357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.888723, 16.250200, 13.393656>,  <5.749077, 16.620386, 13.452486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.888723, 16.250200, 13.393656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031613, 0.168493, -0.985196,
		0.936546, 0.339298, 0.088080,
		0.349116, -0.925466, -0.147076,
		5.993458, 15.972561, 13.349533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.349451, 16.690445, 13.089920>,  <5.749077, 16.620386, 13.452486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.349451, 16.690445, 13.089920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.190832, 16.328495, 13.028009>,  <6.095660, 16.111326, 12.990863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.190832, 16.328495, 13.028009>,  <6.349451, 16.690445, 13.089920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.190832, 16.328495, 13.028009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147190, 0.103747, -0.983652,
		0.906137, -0.412847, 0.092048,
		-0.396548, -0.904872, -0.154776,
		6.071867, 16.057034, 12.981577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.728537, 16.434900, 12.543574>,  <6.349451, 16.690445, 13.089920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.728537, 16.434900, 12.543574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.437490, 16.164228, 12.498535>,  <6.262863, 16.001825, 12.471512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.437490, 16.164228, 12.498535>,  <6.728537, 16.434900, 12.543574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.437490, 16.164228, 12.498535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111554, 0.278677, -0.953884,
		0.676853, -0.681501, -0.278257,
		-0.727616, -0.676680, -0.112599,
		6.219205, 15.961225, 12.464755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.907574, 16.004877, 11.881799>,  <6.728537, 16.434900, 12.543574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.907574, 16.004877, 11.881799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.525198, 15.943980, 11.982202>,  <6.295774, 15.907442, 12.042443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.525198, 15.943980, 11.982202>,  <6.907574, 16.004877, 11.881799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.525198, 15.943980, 11.982202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274087, 0.156565, -0.948875,
		0.105156, -0.975864, -0.191393,
		-0.955939, -0.152238, 0.251007,
		6.238417, 15.898307, 12.057504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.724173, 15.552325, 11.437725>,  <6.907574, 16.004877, 11.881799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.724173, 15.552325, 11.437725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.367966, 15.697244, 11.547795>,  <6.154242, 15.784195, 11.613837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.367966, 15.697244, 11.547795>,  <6.724173, 15.552325, 11.437725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.367966, 15.697244, 11.547795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295531, -0.000805, -0.955333,
		-0.345893, -0.932062, 0.107787,
		-0.890516, 0.362297, 0.275174,
		6.100811, 15.805932, 11.630347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.240214, 15.227011, 11.031073>,  <6.724173, 15.552325, 11.437725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.240214, 15.227011, 11.031073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.048487, 15.556953, 11.150984>,  <5.933451, 15.754919, 11.222931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.048487, 15.556953, 11.150984>,  <6.240214, 15.227011, 11.031073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.048487, 15.556953, 11.150984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313410, 0.158179, -0.936351,
		-0.819774, -0.542763, 0.182700,
		-0.479317, 0.824856, 0.299778,
		5.904692, 15.804410, 11.240917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.504576, 15.270502, 10.682172>,  <6.240214, 15.227011, 11.031073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.504576, 15.270502, 10.682172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.600430, 15.644816, 10.785616>,  <5.657943, 15.869405, 10.847682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.600430, 15.644816, 10.785616>,  <5.504576, 15.270502, 10.682172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.600430, 15.644816, 10.785616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224751, 0.312606, -0.922911,
		-0.944490, 0.163040, 0.285231,
		0.239636, 0.935786, 0.258609,
		5.672321, 15.925552, 10.863199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.969556, 15.588361, 10.393582>,  <5.504576, 15.270502, 10.682172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.969556, 15.588361, 10.393582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.256523, 15.864273, 10.432604>,  <5.428702, 16.029821, 10.456017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.256523, 15.864273, 10.432604>,  <4.969556, 15.588361, 10.393582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.256523, 15.864273, 10.432604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272117, 0.406378, -0.872244,
		-0.641301, 0.599215, 0.479243,
		0.717416, 0.689781, 0.097554,
		5.471747, 16.071207, 10.461870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.731042, 16.047831, 9.947835>,  <4.969556, 15.588361, 10.393582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.731042, 16.047831, 9.947835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.101212, 16.186470, 10.009103>,  <5.323313, 16.269653, 10.045863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.101212, 16.186470, 10.009103>,  <4.731042, 16.047831, 9.947835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.101212, 16.186470, 10.009103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010748, 0.380041, -0.924907,
		-0.378782, 0.857577, 0.347973,
		0.925424, 0.346598, 0.153170,
		5.378839, 16.290449, 10.055054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.724359, 16.645294, 9.608171>,  <4.731042, 16.047831, 9.947835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.724359, 16.645294, 9.608171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.096157, 16.498993, 9.627194>,  <5.319236, 16.411213, 9.638609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.096157, 16.498993, 9.627194>,  <4.724359, 16.645294, 9.608171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.096157, 16.498993, 9.627194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126284, 0.194439, -0.972752,
		0.346538, 0.910175, 0.226919,
		0.929497, -0.365751, 0.047560,
		5.375006, 16.389267, 9.641462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.110555, 17.056889, 9.162519>,  <4.724359, 16.645294, 9.608171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.110555, 17.056889, 9.162519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.336513, 16.729025, 9.200574>,  <5.472088, 16.532307, 9.223407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.336513, 16.729025, 9.200574>,  <5.110555, 17.056889, 9.162519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.336513, 16.729025, 9.200574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345071, 0.129928, -0.929540,
		0.749546, 0.557921, 0.356237,
		0.564895, -0.819660, 0.095135,
		5.505981, 16.483128, 9.229115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.780233, 17.368763, 8.896298>,  <5.110555, 17.056889, 9.162519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.780233, 17.368763, 8.896298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.775373, 16.968946, 8.907394>,  <5.772458, 16.729057, 8.914052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.775373, 16.968946, 8.907394>,  <5.780233, 17.368763, 8.896298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.775373, 16.968946, 8.907394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296359, -0.030094, -0.954602,
		0.954999, -0.003376, 0.296589,
		-0.012148, -0.999541, 0.027740,
		5.771729, 16.669085, 8.915716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.481511, 17.143879, 8.549708>,  <5.780233, 17.368763, 8.896298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.481511, 17.143879, 8.549708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.267012, 16.808193, 8.513585>,  <6.138313, 16.606781, 8.491911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.267012, 16.808193, 8.513585>,  <6.481511, 17.143879, 8.549708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.267012, 16.808193, 8.513585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247505, -0.054052, -0.967378,
		0.806958, -0.541104, 0.236696,
		-0.536246, -0.839217, -0.090308,
		6.106138, 16.556429, 8.486492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.886088, 16.796932, 8.132779>,  <6.481511, 17.143879, 8.549708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.886088, 16.796932, 8.132779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.540715, 16.601562, 8.082299>,  <6.333491, 16.484341, 8.052011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.540715, 16.601562, 8.082299>,  <6.886088, 16.796932, 8.132779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.540715, 16.601562, 8.082299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167002, -0.040689, -0.985117,
		0.476020, -0.871657, 0.116700,
		-0.863433, -0.488424, -0.126199,
		6.281685, 16.455036, 8.044439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.052139, 16.310274, 7.627960>,  <6.886088, 16.796932, 8.132779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.052139, 16.310274, 7.627960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.654565, 16.354191, 7.625448>,  <6.416020, 16.380541, 7.623941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.654565, 16.354191, 7.625448>,  <7.052139, 16.310274, 7.627960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.654565, 16.354191, 7.625448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007143, 0.007470, -0.999947,
		-0.109742, -0.993926, -0.008209,
		-0.993935, 0.109794, -0.006280,
		6.356384, 16.387129, 7.623564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.722733, 15.868397, 6.981889>,  <7.052139, 16.310274, 7.627960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.722733, 15.868397, 6.981889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.473432, 16.161943, 7.089959>,  <6.323851, 16.338072, 7.154801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.473432, 16.161943, 7.089959>,  <6.722733, 15.868397, 6.981889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.473432, 16.161943, 7.089959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118881, 0.252558, -0.960251,
		-0.772931, -0.630599, -0.070165,
		-0.623254, 0.733866, 0.270176,
		6.286455, 16.382103, 7.171012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.171343, 15.805487, 6.536820>,  <6.722733, 15.868397, 6.981889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.171343, 15.805487, 6.536820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.142396, 16.186888, 6.653845>,  <6.125028, 16.415730, 6.724061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.142396, 16.186888, 6.653845>,  <6.171343, 15.805487, 6.536820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.142396, 16.186888, 6.653845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132447, 0.281547, -0.950363,
		-0.988545, -0.107526, 0.105913,
		-0.072369, 0.953504, 0.292564,
		6.120686, 16.472939, 6.741614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.566935, 16.146353, 6.179663>,  <6.171343, 15.805487, 6.536820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.566935, 16.146353, 6.179663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.764424, 16.460318, 6.329410>,  <5.882917, 16.648697, 6.419258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.764424, 16.460318, 6.329410>,  <5.566935, 16.146353, 6.179663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.764424, 16.460318, 6.329410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087440, 0.473122, -0.876647,
		-0.865213, 0.400085, 0.302223,
		0.493721, 0.784913, 0.374367,
		5.912540, 16.695791, 6.441720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.186021, 16.747890, 6.087933>,  <5.566935, 16.146353, 6.179663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.186021, 16.747890, 6.087933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.563535, 16.878618, 6.107772>,  <5.790043, 16.957054, 6.119676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.563535, 16.878618, 6.107772>,  <5.186021, 16.747890, 6.087933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.563535, 16.878618, 6.107772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139163, 0.528922, -0.837183,
		-0.299842, 0.783218, 0.544669,
		0.943784, 0.326820, 0.049598,
		5.846670, 16.976664, 6.122652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.070679, 17.481293, 5.789776>,  <5.186021, 16.747890, 6.087933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.070679, 17.481293, 5.789776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.455121, 17.371283, 5.799901>,  <5.685785, 17.305277, 5.805976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.455121, 17.371283, 5.799901>,  <5.070679, 17.481293, 5.789776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.455121, 17.371283, 5.799901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164977, 0.498185, -0.851231,
		0.221499, 0.822297, 0.524181,
		0.961104, -0.275025, 0.025313,
		5.743452, 17.288774, 5.807495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.283972, 17.995710, 5.339864>,  <5.070679, 17.481293, 5.789776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.283972, 17.995710, 5.339864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.607307, 17.766092, 5.392111>,  <5.801309, 17.628321, 5.423459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.607307, 17.766092, 5.392111>,  <5.283972, 17.995710, 5.339864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.607307, 17.766092, 5.392111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331108, 0.259845, -0.907110,
		0.486783, 0.776499, 0.400114,
		0.808338, -0.574047, 0.130617,
		5.849809, 17.593878, 5.431296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.831749, 18.355536, 5.292582>,  <5.283972, 17.995710, 5.339864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.831749, 18.355536, 5.292582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.953023, 17.990009, 5.184496>,  <6.025788, 17.770693, 5.119645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.953023, 17.990009, 5.184496>,  <5.831749, 18.355536, 5.292582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.953023, 17.990009, 5.184496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437134, 0.385336, -0.812668,
		0.846753, 0.128271, 0.516290,
		0.303187, -0.913818, -0.270213,
		6.043979, 17.715864, 5.103433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.674486, 18.190687, 5.177952>,  <5.831749, 18.355536, 5.292582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.674486, 18.190687, 5.177952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.384795, 18.028755, 4.954666>,  <6.210980, 17.931595, 4.820694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.384795, 18.028755, 4.954666>,  <6.674486, 18.190687, 5.177952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.384795, 18.028755, 4.954666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393996, 0.421430, -0.816801,
		0.565917, -0.811485, -0.145708,
		-0.724227, -0.404833, -0.558216,
		6.167526, 17.907307, 4.787201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.715773, 18.603292, 5.781699>,  <6.674486, 18.190687, 5.177952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.715773, 18.603292, 5.781699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.502565, 18.906111, 5.630559>,  <6.374641, 19.087803, 5.539875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.502565, 18.906111, 5.630559>,  <6.715773, 18.603292, 5.781699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.502565, 18.906111, 5.630559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675148, -0.649717, -0.349345,
		-0.509967, 0.068897, 0.857430,
		-0.533019, 0.757047, -0.377850,
		6.342660, 19.133224, 5.517204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.345929, 19.028465, 6.243723>,  <6.715773, 18.603292, 5.781699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.345929, 19.028465, 6.243723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.443393, 18.704893, 6.457736>,  <6.501871, 18.510750, 6.586144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.443393, 18.704893, 6.457736>,  <6.345929, 19.028465, 6.243723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.443393, 18.704893, 6.457736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111951, -0.524513, -0.844010,
		0.963378, 0.265549, -0.037242,
		0.243660, -0.808931, 0.535032,
		6.516491, 18.462214, 6.618246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.792415, 19.267857, 6.791892>,  <6.345929, 19.028465, 6.243723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.792415, 19.267857, 6.791892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.489590, 19.399748, 6.566278>,  <6.307895, 19.478882, 6.430909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.489590, 19.399748, 6.566278>,  <6.792415, 19.267857, 6.791892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.489590, 19.399748, 6.566278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652395, -0.427977, 0.625473,
		-0.035159, 0.841496, 0.539118,
		-0.757063, 0.329727, -0.564035,
		6.262471, 19.498667, 6.397067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.023857, 19.986942, 6.642342>,  <6.792415, 19.267857, 6.791892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.023857, 19.986942, 6.642342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.401759, 20.112041, 6.603097>,  <7.628500, 20.187101, 6.579550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.401759, 20.112041, 6.603097>,  <7.023857, 19.986942, 6.642342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.401759, 20.112041, 6.603097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327365, -0.915297, 0.234657,
		-0.016413, -0.253812, -0.967114,
		0.944755, 0.312748, -0.098112,
		7.685186, 20.205866, 6.573663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.475180, 19.381720, 6.445404>,  <7.023857, 19.986942, 6.642342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.475180, 19.381720, 6.445404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.729676, 19.654758, 6.589214>,  <7.882373, 19.818583, 6.675500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.729676, 19.654758, 6.589214>,  <7.475180, 19.381720, 6.445404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.729676, 19.654758, 6.589214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567657, -0.729788, 0.381019,
		0.522460, -0.038332, -0.851802,
		0.636240, 0.682598, 0.359526,
		7.920548, 19.859537, 6.697072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.091751, 19.157526, 6.124610>,  <7.475180, 19.381720, 6.445404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.091751, 19.157526, 6.124610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.113004, 19.353867, 6.472458>,  <8.125755, 19.471672, 6.681168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.113004, 19.353867, 6.472458>,  <8.091751, 19.157526, 6.124610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.113004, 19.353867, 6.472458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564727, -0.732988, 0.379227,
		0.823566, 0.470949, -0.316142,
		0.053132, 0.490852, 0.869621,
		8.128943, 19.501122, 6.733345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.371616, 18.707294, 6.617479>,  <8.091751, 19.157526, 6.124610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.371616, 18.707294, 6.617479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.397007, 19.036589, 6.843135>,  <8.412241, 19.234165, 6.978528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.397007, 19.036589, 6.843135>,  <8.371616, 18.707294, 6.617479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.397007, 19.036589, 6.843135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344551, -0.548598, 0.761790,
		0.936619, 0.146020, -0.318470,
		0.063476, 0.823236, 0.564139,
		8.416050, 19.283560, 7.012377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.050783, 18.706432, 6.890105>,  <8.371616, 18.707294, 6.617479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.050783, 18.706432, 6.890105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.801364, 18.878536, 7.151200>,  <8.651712, 18.981798, 7.307857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.801364, 18.878536, 7.151200>,  <9.050783, 18.706432, 6.890105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.801364, 18.878536, 7.151200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355162, -0.587897, 0.726799,
		0.696454, 0.685021, 0.213770,
		-0.623548, 0.430259, 0.652737,
		8.614300, 19.007614, 7.347021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.453288, 18.858793, 7.562390>,  <9.050783, 18.706432, 6.890105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.453288, 18.858793, 7.562390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.067541, 18.875652, 7.666866>,  <8.836093, 18.885767, 7.729551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.067541, 18.875652, 7.666866>,  <9.453288, 18.858793, 7.562390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.067541, 18.875652, 7.666866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188745, -0.582203, 0.790832,
		0.185397, 0.811950, 0.553502,
		-0.964367, 0.042148, 0.261191,
		8.778231, 18.888296, 7.745223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.377308, 19.066505, 8.182744>,  <9.453288, 18.858793, 7.562390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.377308, 19.066505, 8.182744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.022918, 18.881609, 8.167881>,  <8.810284, 18.770672, 8.158963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.022918, 18.881609, 8.167881>,  <9.377308, 19.066505, 8.182744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.022918, 18.881609, 8.167881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204386, -0.461158, 0.863458,
		-0.416260, 0.757408, 0.503050,
		-0.885976, -0.462240, -0.037158,
		8.757125, 18.742937, 8.156734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.095208, 19.227219, 8.874614>,  <9.377308, 19.066505, 8.182744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.095208, 19.227219, 8.874614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.896218, 18.909128, 8.735970>,  <8.776824, 18.718275, 8.652784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.896218, 18.909128, 8.735970>,  <9.095208, 19.227219, 8.874614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.896218, 18.909128, 8.735970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100501, -0.449702, 0.887506,
		-0.861637, 0.406677, 0.303636,
		-0.497475, -0.795224, -0.346609,
		8.746976, 18.670561, 8.631988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.637062, 19.040087, 9.368828>,  <9.095208, 19.227219, 8.874614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.637062, 19.040087, 9.368828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.682396, 18.705883, 9.153763>,  <8.709596, 18.505362, 9.024724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.682396, 18.705883, 9.153763>,  <8.637062, 19.040087, 9.368828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.682396, 18.705883, 9.153763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165681, -0.517680, 0.839379,
		-0.979645, -0.184210, 0.079758,
		0.113333, -0.835508, -0.537663,
		8.716396, 18.455231, 8.992464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.420541, 18.477081, 9.854777>,  <8.637062, 19.040087, 9.368828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.420541, 18.477081, 9.854777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.598428, 18.255495, 9.573254>,  <8.705160, 18.122543, 9.404340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.598428, 18.255495, 9.573254>,  <8.420541, 18.477081, 9.854777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.598428, 18.255495, 9.573254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092054, -0.753359, 0.651135,
		-0.890928, -0.354358, -0.284036,
		0.444716, -0.553968, -0.703809,
		8.731843, 18.089304, 9.362111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.074755, 17.840786, 9.945614>,  <8.420541, 18.477081, 9.854777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.074755, 17.840786, 9.945614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.424648, 17.773802, 9.763714>,  <8.634584, 17.733610, 9.654573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.424648, 17.773802, 9.763714>,  <8.074755, 17.840786, 9.945614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.424648, 17.773802, 9.763714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162333, -0.782923, 0.600566,
		-0.456606, -0.599156, -0.657665,
		0.874734, -0.167461, -0.454750,
		8.687069, 17.723564, 9.627289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.081596, 17.162680, 9.734645>,  <8.074755, 17.840786, 9.945614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.081596, 17.162680, 9.734645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.464501, 17.263359, 9.791631>,  <8.694244, 17.323767, 9.825822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.464501, 17.263359, 9.791631>,  <8.081596, 17.162680, 9.734645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.464501, 17.263359, 9.791631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179199, -0.902807, 0.390931,
		0.227014, -0.348694, -0.909328,
		0.957263, 0.251697, 0.142465,
		8.751680, 17.338869, 9.834370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.415773, 16.417568, 9.716391>,  <8.081596, 17.162680, 9.734645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.415773, 16.417568, 9.716391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.710261, 16.653954, 9.848295>,  <8.886954, 16.795784, 9.927438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.710261, 16.653954, 9.848295>,  <8.415773, 16.417568, 9.716391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.710261, 16.653954, 9.848295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367159, -0.758126, 0.538924,
		0.568485, -0.275691, -0.775125,
		0.736220, 0.590964, 0.329761,
		8.931128, 16.831244, 9.947224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.066663, 16.057650, 9.606443>,  <8.415773, 16.417568, 9.716391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.066663, 16.057650, 9.606443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114071, 16.320070, 9.904584>,  <9.142515, 16.477524, 10.083468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114071, 16.320070, 9.904584>,  <9.066663, 16.057650, 9.606443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.114071, 16.320070, 9.904584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204367, -0.750687, 0.628254,
		0.971693, 0.077865, -0.223047,
		0.118519, 0.656053, 0.745351,
		9.149627, 16.516886, 10.128189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.613302, 15.791798, 10.082610>,  <9.066663, 16.057650, 9.606443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.613302, 15.791798, 10.082610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.395387, 16.039644, 10.308629>,  <9.264637, 16.188353, 10.444241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.395387, 16.039644, 10.308629>,  <9.613302, 15.791798, 10.082610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.395387, 16.039644, 10.308629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022692, -0.662681, 0.748558,
		0.838265, 0.420629, 0.346961,
		-0.544790, 0.619617, 0.565047,
		9.231950, 16.225529, 10.478143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.827021, 15.579380, 10.685758>,  <9.613302, 15.791798, 10.082610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.827021, 15.579380, 10.685758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.505395, 15.799080, 10.776799>,  <9.312420, 15.930900, 10.831425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.505395, 15.799080, 10.776799>,  <9.827021, 15.579380, 10.685758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.505395, 15.799080, 10.776799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033943, -0.424607, 0.904741,
		0.593572, 0.719745, 0.360055,
		-0.804065, 0.549251, 0.227605,
		9.264175, 15.963855, 10.845080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.971722, 15.709589, 11.330578>,  <9.827021, 15.579380, 10.685758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.971722, 15.709589, 11.330578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.577751, 15.752398, 11.276218>,  <9.341369, 15.778083, 11.243603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.577751, 15.752398, 11.276218>,  <9.971722, 15.709589, 11.330578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.577751, 15.752398, 11.276218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157755, -0.233437, 0.959490,
		0.070963, 0.966464, 0.246802,
		-0.984925, 0.107022, -0.135899,
		9.282273, 15.784504, 11.235449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.755304, 15.988798, 11.953117>,  <9.971722, 15.709589, 11.330578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.755304, 15.988798, 11.953117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.428671, 15.842793, 11.774251>,  <9.232691, 15.755189, 11.666931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.428671, 15.842793, 11.774251>,  <9.755304, 15.988798, 11.953117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.428671, 15.842793, 11.774251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355154, -0.292981, 0.887710,
		-0.455037, 0.883701, 0.109607,
		-0.816583, -0.365013, -0.447167,
		9.183696, 15.733289, 11.640101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.080262, 16.197786, 12.382774>,  <9.755304, 15.988798, 11.953117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.080262, 16.197786, 12.382774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.951663, 15.867108, 12.198075>,  <8.874503, 15.668701, 12.087255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.951663, 15.867108, 12.198075>,  <9.080262, 16.197786, 12.382774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.951663, 15.867108, 12.198075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408604, -0.318782, 0.855231,
		-0.854214, 0.463627, -0.235304,
		-0.321498, -0.826697, -0.461748,
		8.855214, 15.619100, 12.059551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.333300, 16.117481, 12.461391>,  <9.080262, 16.197786, 12.382774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.333300, 16.117481, 12.461391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.435000, 15.738449, 12.383987>,  <8.496020, 15.511029, 12.337545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.435000, 15.738449, 12.383987>,  <8.333300, 16.117481, 12.461391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.435000, 15.738449, 12.383987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421465, -0.288644, 0.859681,
		-0.870473, -0.137018, -0.472760,
		0.254252, -0.947581, -0.193509,
		8.511276, 15.454175, 12.325934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.678427, 15.815384, 12.570848>,  <8.333300, 16.117481, 12.461391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.678427, 15.815384, 12.570848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.969950, 15.541806, 12.583861>,  <8.144864, 15.377660, 12.591669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.969950, 15.541806, 12.583861>,  <7.678427, 15.815384, 12.570848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.969950, 15.541806, 12.583861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493441, -0.491685, 0.717469,
		-0.474699, -0.538963, -0.695830,
		0.728818, -0.683933, 0.032544,
		8.188593, 15.336623, 12.593620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.363606, 15.198891, 12.621390>,  <7.678427, 15.815384, 12.570848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.363606, 15.198891, 12.621390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.719314, 15.058544, 12.738757>,  <7.932738, 14.974337, 12.809177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.719314, 15.058544, 12.738757>,  <7.363606, 15.198891, 12.621390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.719314, 15.058544, 12.738757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457053, -0.706083, 0.540878,
		0.017402, -0.615094, -0.788262,
		0.889269, -0.350865, 0.293418,
		7.986094, 14.953284, 12.826782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.261546, 14.542384, 12.649230>,  <7.363606, 15.198891, 12.621390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.261546, 14.542384, 12.649230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.578171, 14.564110, 12.892698>,  <7.768146, 14.577146, 13.038779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.578171, 14.564110, 12.892698>,  <7.261546, 14.542384, 12.649230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.578171, 14.564110, 12.892698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440666, -0.639337, 0.630128,
		0.423371, -0.767006, -0.482140,
		0.791562, 0.054316, 0.608670,
		7.815639, 14.580404, 13.075299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.373152, 13.839653, 12.895755>,  <7.261546, 14.542384, 12.649230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.373152, 13.839653, 12.895755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.595304, 14.074059, 13.131768>,  <7.728595, 14.214704, 13.273376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.595304, 14.074059, 13.131768>,  <7.373152, 13.839653, 12.895755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.595304, 14.074059, 13.131768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424220, -0.410609, 0.807117,
		0.715256, -0.698560, 0.020556,
		0.555379, 0.586016, 0.590034,
		7.761918, 14.249865, 13.308779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.521080, 13.431324, 13.486778>,  <7.373152, 13.839653, 12.895755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.521080, 13.431324, 13.486778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.586984, 13.803858, 13.616682>,  <7.626526, 14.027378, 13.694624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.586984, 13.803858, 13.616682>,  <7.521080, 13.431324, 13.486778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.586984, 13.803858, 13.616682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561444, -0.182156, 0.807217,
		0.810947, -0.315330, 0.492881,
		0.164759, 0.931336, 0.324759,
		7.636411, 14.083259, 13.714109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.647185, 13.384303, 14.211734>,  <7.521080, 13.431324, 13.486778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.647185, 13.384303, 14.211734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.552554, 13.766062, 14.138898>,  <7.495775, 13.995117, 14.095196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.552554, 13.766062, 14.138898>,  <7.647185, 13.384303, 14.211734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.552554, 13.766062, 14.138898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568542, 0.015994, 0.822499,
		0.787903, 0.298111, 0.538831,
		-0.236578, 0.954397, -0.182090,
		7.481580, 14.052381, 14.084270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.530076, 13.514741, 13.998148>,  <7.647185, 13.384303, 14.211734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.530076, 13.514741, 13.998148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.727713, 13.432502, 14.336048>,  <8.846294, 13.383159, 14.538788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.727713, 13.432502, 14.336048>,  <8.530076, 13.514741, 13.998148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.727713, 13.432502, 14.336048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637565, -0.574905, -0.512831,
		0.591087, 0.791969, -0.152974,
		0.494091, -0.205597, 0.844751,
		8.875940, 13.370823, 14.589474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.321979, 13.608280, 13.958428>,  <8.530076, 13.514741, 13.998148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.321979, 13.608280, 13.958428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.214941, 13.337518, 14.232711>,  <9.150719, 13.175060, 14.397281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.214941, 13.337518, 14.232711>,  <9.321979, 13.608280, 13.958428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.214941, 13.337518, 14.232711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594654, -0.675981, -0.435243,
		0.758143, 0.291289, 0.583413,
		-0.267594, -0.676905, 0.685706,
		9.134663, 13.134446, 14.438423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.927005, 13.360963, 14.218609>,  <9.321979, 13.608280, 13.958428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.927005, 13.360963, 14.218609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.620774, 13.105277, 14.189504>,  <9.437036, 12.951865, 14.172041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.620774, 13.105277, 14.189504>,  <9.927005, 13.360963, 14.218609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.620774, 13.105277, 14.189504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535571, -0.570575, -0.622582,
		0.356448, -0.515604, 0.779164,
		-0.765577, -0.639216, -0.072762,
		9.391101, 12.913512, 14.167675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.090846, 12.639808, 14.371084>,  <9.927005, 13.360963, 14.218609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.090846, 12.639808, 14.371084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.808434, 12.661061, 14.088610>,  <9.638988, 12.673814, 13.919125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.808434, 12.661061, 14.088610>,  <10.090846, 12.639808, 14.371084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.808434, 12.661061, 14.088610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500977, -0.667336, -0.551076,
		-0.500545, -0.742859, 0.444539,
		-0.706029, 0.053134, -0.706187,
		9.596626, 12.677002, 13.876754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.726935, 12.403049, 14.824915>,  <10.090846, 12.639808, 14.371084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.726935, 12.403049, 14.824915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.338148, 12.470428, 14.890525>,  <10.104876, 12.510855, 14.929891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.338148, 12.470428, 14.890525>,  <10.726935, 12.403049, 14.824915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.338148, 12.470428, 14.890525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230621, 0.818800, 0.525719,
		-0.045748, 0.548809, -0.834695,
		-0.971968, 0.168447, 0.164026,
		10.046557, 12.520962, 14.939733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.640355, 13.082962, 14.599880>,  <10.726935, 12.403049, 14.824915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.640355, 13.082962, 14.599880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.390556, 12.996529, 14.900097>,  <10.240677, 12.944669, 15.080227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.390556, 12.996529, 14.900097>,  <10.640355, 13.082962, 14.599880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.390556, 12.996529, 14.900097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418976, 0.718311, 0.555417,
		-0.659138, 0.661315, -0.358049,
		-0.624496, -0.216082, 0.750542,
		10.203207, 12.931704, 15.125259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.222663, 13.674655, 14.916002>,  <10.640355, 13.082962, 14.599880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.222663, 13.674655, 14.916002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.293938, 13.400107, 15.198037>,  <10.336702, 13.235379, 15.367258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.293938, 13.400107, 15.198037>,  <10.222663, 13.674655, 14.916002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.293938, 13.400107, 15.198037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372571, 0.710266, 0.597255,
		-0.910736, 0.156272, 0.382281,
		0.178187, -0.686369, 0.705087,
		10.347394, 13.194197, 15.409563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.971758, 13.949588, 15.513594>,  <10.222663, 13.674655, 14.916002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.971758, 13.949588, 15.513594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.222034, 13.663108, 15.637250>,  <10.372200, 13.491220, 15.711444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.222034, 13.663108, 15.637250>,  <9.971758, 13.949588, 15.513594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.222034, 13.663108, 15.637250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326746, 0.600479, 0.729837,
		-0.708342, -0.355642, 0.609730,
		0.625690, -0.716201, 0.309140,
		10.409741, 13.448248, 15.729992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.817497, 13.869350, 16.123655>,  <9.971758, 13.949588, 15.513594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.817497, 13.869350, 16.123655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.176312, 13.692657, 16.118029>,  <10.391602, 13.586642, 16.114653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.176312, 13.692657, 16.118029>,  <9.817497, 13.869350, 16.123655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.176312, 13.692657, 16.118029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238312, 0.456651, 0.857133,
		-0.372199, -0.772232, 0.514903,
		0.897037, -0.441732, -0.014067,
		10.445423, 13.560138, 16.113808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.046394, 13.973403, 16.690744>,  <9.817497, 13.869350, 16.123655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.046394, 13.973403, 16.690744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.394816, 13.902472, 16.507521>,  <10.603869, 13.859913, 16.397587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.394816, 13.902472, 16.507521>,  <10.046394, 13.973403, 16.690744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.394816, 13.902472, 16.507521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480220, 0.503389, 0.718323,
		0.103201, -0.845668, 0.523637,
		0.871056, -0.177329, -0.458057,
		10.656133, 13.849273, 16.370104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.608223, 13.675611, 17.170786>,  <10.046394, 13.973403, 16.690744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.608223, 13.675611, 17.170786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.809352, 13.861119, 16.879009>,  <10.930029, 13.972425, 16.703943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.809352, 13.861119, 16.879009>,  <10.608223, 13.675611, 17.170786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.809352, 13.861119, 16.879009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408278, 0.616391, 0.673328,
		0.761892, -0.636379, 0.120588,
		0.502822, 0.463770, -0.729443,
		10.960198, 14.000251, 16.660175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.275362, 13.751559, 17.412565>,  <10.608223, 13.675611, 17.170786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.275362, 13.751559, 17.412565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.226862, 14.017324, 17.117579>,  <11.197762, 14.176784, 16.940586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.226862, 14.017324, 17.117579>,  <11.275362, 13.751559, 17.412565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.226862, 14.017324, 17.117579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366996, 0.720309, 0.588616,
		0.922287, -0.199278, -0.331174,
		-0.121250, 0.664412, -0.737465,
		11.190487, 14.216648, 16.896339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.867127, 14.227336, 17.379026>,  <11.275362, 13.751559, 17.412565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.867127, 14.227336, 17.379026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.620269, 14.446935, 17.153555>,  <11.472154, 14.578693, 17.018272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.620269, 14.446935, 17.153555>,  <11.867127, 14.227336, 17.379026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.620269, 14.446935, 17.153555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368267, 0.834600, 0.409661,
		0.695349, 0.045236, -0.717247,
		-0.617146, 0.548996, -0.563679,
		11.435125, 14.611633, 16.984451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.311022, 14.730932, 17.035780>,  <11.867127, 14.227336, 17.379026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.311022, 14.730932, 17.035780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.953154, 14.898615, 16.974033>,  <11.738433, 14.999225, 16.936985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.953154, 14.898615, 16.974033>,  <12.311022, 14.730932, 17.035780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.953154, 14.898615, 16.974033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374348, 0.892102, 0.253018,
		0.243778, 0.168581, -0.955067,
		-0.894671, 0.419207, -0.154367,
		11.684752, 15.024377, 16.927723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.397625, 15.363246, 16.591007>,  <12.311022, 14.730932, 17.035780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.397625, 15.363246, 16.591007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.058574, 15.401244, 16.799814>,  <11.855144, 15.424043, 16.925098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.058574, 15.401244, 16.799814>,  <12.397625, 15.363246, 16.591007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.058574, 15.401244, 16.799814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333424, 0.860685, 0.384772,
		-0.412743, 0.500197, -0.761214,
		-0.847627, 0.094995, 0.522019,
		11.804286, 15.429743, 16.956421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.259690, 16.082895, 16.627163>,  <12.397625, 15.363246, 16.591007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.259690, 16.082895, 16.627163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.045730, 15.935651, 16.931366>,  <11.917354, 15.847304, 17.113888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.045730, 15.935651, 16.931366>,  <12.259690, 16.082895, 16.627163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.045730, 15.935651, 16.931366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387820, 0.692712, 0.608067,
		-0.750651, 0.620197, -0.227772,
		-0.534901, -0.368111, 0.760510,
		11.885260, 15.825217, 17.159519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.066827, 16.658653, 16.983274>,  <12.259690, 16.082895, 16.627163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.066827, 16.658653, 16.983274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.984255, 16.367077, 17.244358>,  <11.934711, 16.192131, 17.401009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.984255, 16.367077, 17.244358>,  <12.066827, 16.658653, 16.983274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.984255, 16.367077, 17.244358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152689, 0.634908, 0.757349,
		-0.966474, 0.256002, -0.019764,
		-0.206431, -0.728941, 0.652711,
		11.922325, 16.148396, 17.440172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.545729, 16.914072, 17.575386>,  <12.066827, 16.658653, 16.983274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.545729, 16.914072, 17.575386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719438, 16.594446, 17.741713>,  <11.823663, 16.402670, 17.841509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719438, 16.594446, 17.741713>,  <11.545729, 16.914072, 17.575386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.719438, 16.594446, 17.741713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095339, 0.499798, 0.860879,
		-0.895723, -0.334212, 0.293230,
		0.434271, -0.799065, 0.415817,
		11.849719, 16.354727, 17.866457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.215975, 16.762440, 18.171135>,  <11.545729, 16.914072, 17.575386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.215975, 16.762440, 18.171135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.602531, 16.661808, 18.192276>,  <11.834466, 16.601429, 18.204962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.602531, 16.661808, 18.192276>,  <11.215975, 16.762440, 18.171135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.602531, 16.661808, 18.192276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089514, 0.522051, 0.848204,
		-0.240983, -0.814967, 0.527025,
		0.966392, -0.251579, 0.052855,
		11.892449, 16.586334, 18.208132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.385587, 16.556425, 18.840935>,  <11.215975, 16.762440, 18.171135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.385587, 16.556425, 18.840935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.761536, 16.609249, 18.714951>,  <11.987104, 16.640944, 18.639360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.761536, 16.609249, 18.714951>,  <11.385587, 16.556425, 18.840935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.761536, 16.609249, 18.714951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283034, 0.214934, 0.934716,
		0.191127, -0.967660, 0.164635,
		0.939873, 0.132052, -0.314961,
		12.043497, 16.648869, 18.620462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.835508, 16.295790, 19.273600>,  <11.385587, 16.556425, 18.840935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.835508, 16.295790, 19.273600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.105583, 16.520493, 19.082373>,  <12.267629, 16.655315, 18.967636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.105583, 16.520493, 19.082373>,  <11.835508, 16.295790, 19.273600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.105583, 16.520493, 19.082373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478504, 0.159684, 0.863444,
		0.561388, -0.811743, -0.160987,
		0.675187, 0.561759, -0.478067,
		12.308140, 16.689020, 18.938953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.460852, 16.086172, 19.572062>,  <11.835508, 16.295790, 19.273600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.460852, 16.086172, 19.572062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.538634, 16.429836, 19.382732>,  <12.585303, 16.636034, 19.269135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.538634, 16.429836, 19.382732>,  <12.460852, 16.086172, 19.572062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.538634, 16.429836, 19.382732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382748, 0.377824, 0.843061,
		0.903156, -0.345101, -0.255372,
		0.194456, 0.859159, -0.473321,
		12.596972, 16.687584, 19.240736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.159257, 16.233862, 19.623251>,  <12.460852, 16.086172, 19.572062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.159257, 16.233862, 19.623251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.955867, 16.572336, 19.559479>,  <12.833833, 16.775421, 19.521215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.955867, 16.572336, 19.559479>,  <13.159257, 16.233862, 19.623251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.955867, 16.572336, 19.559479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379138, 0.386254, 0.840870,
		0.773114, 0.367116, -0.517223,
		-0.508476, 0.846188, -0.159430,
		12.803324, 16.826193, 19.511650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.682567, 16.700621, 19.601307>,  <13.159257, 16.233862, 19.623251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.682567, 16.700621, 19.601307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.347359, 16.894161, 19.702192>,  <13.146234, 17.010284, 19.762724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.347359, 16.894161, 19.702192>,  <13.682567, 16.700621, 19.601307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.347359, 16.894161, 19.702192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452863, 0.358925, 0.816142,
		0.304365, 0.798162, -0.519904,
		-0.838020, 0.483850, 0.252214,
		13.095953, 17.039316, 19.777857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.854750, 17.484671, 19.712643>,  <13.682567, 16.700621, 19.601307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.854750, 17.484671, 19.712643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511000, 17.402090, 19.899771>,  <13.304749, 17.352541, 20.012047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511000, 17.402090, 19.899771>,  <13.854750, 17.484671, 19.712643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.511000, 17.402090, 19.899771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306028, 0.525296, 0.793984,
		-0.409662, 0.825495, -0.388246,
		-0.859374, -0.206451, 0.467819,
		13.253187, 17.340155, 20.040117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.803828, 17.993414, 20.193005>,  <13.854750, 17.484671, 19.712643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.803828, 17.993414, 20.193005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.508953, 17.751236, 20.312998>,  <13.332028, 17.605928, 20.384995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.508953, 17.751236, 20.312998>,  <13.803828, 17.993414, 20.193005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.508953, 17.751236, 20.312998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017911, 0.426301, 0.904404,
		-0.675450, 0.672089, -0.303420,
		-0.737188, -0.605445, 0.299983,
		13.287797, 17.569603, 20.402992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.333000, 18.445068, 20.530455>,  <13.803828, 17.993414, 20.193005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.333000, 18.445068, 20.530455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.289337, 18.067728, 20.655787>,  <13.263140, 17.841324, 20.730986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.289337, 18.067728, 20.655787>,  <13.333000, 18.445068, 20.530455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.289337, 18.067728, 20.655787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060334, 0.320919, 0.945183,
		-0.992192, 0.084269, -0.091946,
		-0.109157, -0.943350, 0.313329,
		13.256590, 17.784723, 20.749784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.824994, 18.479822, 21.054531>,  <13.333000, 18.445068, 20.530455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.824994, 18.479822, 21.054531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.984267, 18.121355, 21.132845>,  <13.079831, 17.906275, 21.179834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.984267, 18.121355, 21.132845>,  <12.824994, 18.479822, 21.054531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.984267, 18.121355, 21.132845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033987, 0.198876, 0.979435,
		-0.916676, -0.396649, 0.048731,
		0.398183, -0.896168, 0.195786,
		13.103723, 17.852505, 21.191580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.414680, 18.213608, 21.610632>,  <12.824994, 18.479822, 21.054531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.414680, 18.213608, 21.610632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.751374, 17.999847, 21.641354>,  <12.953390, 17.871592, 21.659786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.751374, 17.999847, 21.641354>,  <12.414680, 18.213608, 21.610632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.751374, 17.999847, 21.641354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055883, 0.227735, 0.972118,
		-0.536993, -0.813973, 0.221557,
		0.841734, -0.534402, 0.076805,
		13.003895, 17.839527, 21.664394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.415318, 17.756983, 22.166716>,  <12.414680, 18.213608, 21.610632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.415318, 17.756983, 22.166716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.813681, 17.777084, 22.136665>,  <13.052698, 17.789145, 22.118635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.813681, 17.777084, 22.136665>,  <12.415318, 17.756983, 22.166716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.813681, 17.777084, 22.136665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060510, 0.246750, 0.967188,
		0.067142, -0.967775, 0.242699,
		0.995907, 0.050253, -0.075128,
		13.112453, 17.792160, 22.114126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608406, 17.276939, 22.700024>,  <12.415318, 17.756983, 22.166716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.608406, 17.276939, 22.700024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.910217, 17.521692, 22.605122>,  <13.091304, 17.668543, 22.548180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.910217, 17.521692, 22.605122>,  <12.608406, 17.276939, 22.700024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.910217, 17.521692, 22.605122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130270, 0.214686, 0.967957,
		0.643209, -0.761257, 0.082276,
		0.754527, 0.611880, -0.237257,
		13.136576, 17.705256, 22.533945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.078845, 17.113035, 23.168558>,  <12.608406, 17.276939, 22.700024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.078845, 17.113035, 23.168558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.162459, 17.490107, 23.064510>,  <13.212628, 17.716349, 23.002081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.162459, 17.490107, 23.064510>,  <13.078845, 17.113035, 23.168558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.162459, 17.490107, 23.064510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242956, 0.207595, 0.947564,
		0.947246, -0.261274, -0.185634,
		0.209037, 0.942677, -0.260121,
		13.225170, 17.772909, 22.986473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.624957, 17.223063, 23.518335>,  <13.078845, 17.113035, 23.168558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.624957, 17.223063, 23.518335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.516711, 17.592167, 23.408588>,  <13.451764, 17.813629, 23.342739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.516711, 17.592167, 23.408588>,  <13.624957, 17.223063, 23.518335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.516711, 17.592167, 23.408588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287900, 0.349532, 0.891594,
		0.918630, 0.162287, -0.360252,
		-0.270614, 0.922762, -0.274368,
		13.435527, 17.868996, 23.326279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.249703, 17.538288, 23.549313>,  <13.624957, 17.223063, 23.518335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.249703, 17.538288, 23.549313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968265, 17.822527, 23.548288>,  <13.799401, 17.993071, 23.547674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968265, 17.822527, 23.548288>,  <14.249703, 17.538288, 23.549313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.968265, 17.822527, 23.548288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460552, 0.458753, 0.759894,
		0.541151, 0.533479, -0.650043,
		-0.703596, 0.710595, -0.002560,
		13.757186, 18.035706, 23.547520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.613478, 18.167667, 23.425989>,  <14.249703, 17.538288, 23.549313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.613478, 18.167667, 23.425989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.270331, 18.204184, 23.628269>,  <14.064444, 18.226093, 23.749638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.270331, 18.204184, 23.628269>,  <14.613478, 18.167667, 23.425989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.270331, 18.204184, 23.628269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492345, 0.427871, 0.757973,
		-0.147179, 0.899218, -0.412002,
		-0.857866, 0.091289, 0.505699,
		14.012972, 18.231571, 23.779980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.586433, 18.925880, 23.485624>,  <14.613478, 18.167667, 23.425989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.586433, 18.925880, 23.485624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.327037, 18.800714, 23.763197>,  <14.171399, 18.725615, 23.929741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.327037, 18.800714, 23.763197>,  <14.586433, 18.925880, 23.485624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.327037, 18.800714, 23.763197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385365, 0.651204, 0.653779,
		-0.656469, 0.691388, -0.301714,
		-0.648492, -0.312916, 0.693932,
		14.132489, 18.706841, 23.971376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.399803, 19.560970, 23.810640>,  <14.586433, 18.925880, 23.485624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.399803, 19.560970, 23.810640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247471, 19.283215, 24.054867>,  <14.156072, 19.116560, 24.201403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247471, 19.283215, 24.054867>,  <14.399803, 19.560970, 23.810640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.247471, 19.283215, 24.054867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341886, 0.507780, 0.790742,
		-0.859117, 0.509882, 0.044025,
		-0.380830, -0.694392, 0.610564,
		14.133222, 19.074898, 24.238035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.961123, 19.927025, 24.376175>,  <14.399803, 19.560970, 23.810640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.961123, 19.927025, 24.376175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.110934, 19.584911, 24.519407>,  <14.200821, 19.379644, 24.605347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.110934, 19.584911, 24.519407>,  <13.961123, 19.927025, 24.376175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.110934, 19.584911, 24.519407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418452, 0.500534, 0.757868,
		-0.827422, -0.134004, 0.545359,
		0.374528, -0.855283, 0.358079,
		14.223292, 19.328327, 24.626831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.836535, 19.934111, 25.115402>,  <13.961123, 19.927025, 24.376175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.836535, 19.934111, 25.115402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.130782, 19.664602, 25.087416>,  <14.307331, 19.502897, 25.070623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.130782, 19.664602, 25.087416>,  <13.836535, 19.934111, 25.115402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.130782, 19.664602, 25.087416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379961, 0.324905, 0.866064,
		-0.560796, -0.663678, 0.495014,
		0.735620, -0.673771, -0.069966,
		14.351468, 19.462471, 25.066425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.967910, 19.761271, 25.811153>,  <13.836535, 19.934111, 25.115402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.967910, 19.761271, 25.811153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.293844, 19.654377, 25.605385>,  <14.489405, 19.590240, 25.481924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.293844, 19.654377, 25.605385>,  <13.967910, 19.761271, 25.811153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.293844, 19.654377, 25.605385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576767, 0.284715, 0.765688,
		-0.058153, -0.920611, 0.386127,
		0.814836, -0.267232, -0.514421,
		14.538295, 19.574207, 25.451059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.419134, 19.298958, 26.232874>,  <13.967910, 19.761271, 25.811153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.419134, 19.298958, 26.232874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.658416, 19.452496, 25.951502>,  <14.801985, 19.544619, 25.782679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.658416, 19.452496, 25.951502>,  <14.419134, 19.298958, 26.232874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.658416, 19.452496, 25.951502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713425, 0.144657, 0.685638,
		0.364933, -0.911997, -0.187309,
		0.598204, 0.383843, -0.703432,
		14.837877, 19.567648, 25.740473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004043, 19.020784, 26.391260>,  <14.419134, 19.298958, 26.232874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004043, 19.020784, 26.391260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.084765, 19.344088, 26.169992>,  <15.133199, 19.538069, 26.037231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.084765, 19.344088, 26.169992>,  <15.004043, 19.020784, 26.391260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.084765, 19.344088, 26.169992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766617, 0.221155, 0.602817,
		0.609567, -0.545720, -0.574993,
		0.201807, 0.808257, -0.553167,
		15.145308, 19.586565, 26.004042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648751, 18.976028, 26.361002>,  <15.004043, 19.020784, 26.391260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.648751, 18.976028, 26.361002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.598878, 19.359619, 26.259169>,  <15.568954, 19.589773, 26.198069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.598878, 19.359619, 26.259169>,  <15.648751, 18.976028, 26.361002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.598878, 19.359619, 26.259169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792670, 0.250602, 0.555763,
		0.596765, -0.132508, -0.791400,
		-0.124683, 0.958979, -0.254586,
		15.561473, 19.647312, 26.182793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.288900, 19.168165, 26.348795>,  <15.648751, 18.976028, 26.361002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.288900, 19.168165, 26.348795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060919, 19.488430, 26.422657>,  <15.924129, 19.680588, 26.466974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060919, 19.488430, 26.422657>,  <16.288900, 19.168165, 26.348795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060919, 19.488430, 26.422657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672071, 0.324964, 0.665372,
		0.472730, 0.503331, -0.723314,
		-0.569954, 0.800660, 0.184654,
		15.889933, 19.728628, 26.478054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766998, 19.723026, 26.413103>,  <16.288900, 19.168165, 26.348795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.766998, 19.723026, 26.413103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.446766, 19.880484, 26.593819>,  <16.254627, 19.974958, 26.702248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.446766, 19.880484, 26.593819>,  <16.766998, 19.723026, 26.413103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.446766, 19.880484, 26.593819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597306, 0.463968, 0.654185,
		0.047898, 0.793586, -0.606569,
		-0.800582, 0.393642, 0.451791,
		16.206591, 19.998577, 26.729357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916441, 20.405535, 26.585152>,  <16.766998, 19.723026, 26.413103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916441, 20.405535, 26.585152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.602144, 20.312670, 26.814486>,  <16.413567, 20.256950, 26.952085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.602144, 20.312670, 26.814486>,  <16.916441, 20.405535, 26.585152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.602144, 20.312670, 26.814486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484984, 0.344081, 0.803989,
		-0.383927, 0.909786, -0.157765,
		-0.785742, -0.232160, 0.573333,
		16.366421, 20.243021, 26.986486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869587, 20.999670, 27.113375>,  <16.916441, 20.405535, 26.585152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869587, 20.999670, 27.113375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.636112, 20.710398, 27.261061>,  <16.496027, 20.536835, 27.349672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.636112, 20.710398, 27.261061>,  <16.869587, 20.999670, 27.113375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636112, 20.710398, 27.261061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187182, 0.322623, 0.927835,
		-0.790108, 0.610677, -0.052945,
		-0.583689, -0.723179, 0.369215,
		16.461006, 20.493444, 27.371824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381096, 21.268717, 27.565840>,  <16.869587, 20.999670, 27.113375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381096, 21.268717, 27.565840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416334, 20.891258, 27.693445>,  <16.437477, 20.664783, 27.770008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416334, 20.891258, 27.693445>,  <16.381096, 21.268717, 27.565840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.416334, 20.891258, 27.693445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090532, 0.326520, 0.940845,
		-0.991990, -0.054003, 0.114195,
		0.088095, -0.943646, 0.319015,
		16.442762, 20.608164, 27.789150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939519, 21.168110, 28.236532>,  <16.381096, 21.268717, 27.565840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939519, 21.168110, 28.236532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.206770, 20.871025, 28.218702>,  <16.367121, 20.692774, 28.208004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.206770, 20.871025, 28.218702>,  <15.939519, 21.168110, 28.236532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.206770, 20.871025, 28.218702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061587, -0.004501, 0.998091,
		-0.741494, -0.669597, 0.042734,
		0.668127, -0.742711, -0.044576,
		16.407207, 20.648212, 28.205330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802681, 20.506796, 28.467600>,  <15.939519, 21.168110, 28.236532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802681, 20.506796, 28.467600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.195881, 20.520565, 28.539743>,  <16.431801, 20.528826, 28.583029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.195881, 20.520565, 28.539743>,  <15.802681, 20.506796, 28.467600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.195881, 20.520565, 28.539743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176019, -0.102893, 0.978995,
		0.052257, -0.994097, -0.095085,
		0.982999, 0.034423, 0.180357,
		16.490780, 20.530891, 28.593851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.995137, 19.843231, 28.885721>,  <15.802681, 20.506796, 28.467600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.995137, 19.843231, 28.885721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.216003, 20.171059, 28.946932>,  <16.348522, 20.367756, 28.983658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.216003, 20.171059, 28.946932>,  <15.995137, 19.843231, 28.885721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216003, 20.171059, 28.946932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220661, -0.033343, 0.974780,
		0.804004, -0.572007, 0.162437,
		0.552165, 0.819571, 0.153028,
		16.381653, 20.416929, 28.992840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630220, 19.652586, 29.277163>,  <15.995137, 19.843231, 28.885721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630220, 19.652586, 29.277163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.489201, 20.025526, 29.309238>,  <16.404589, 20.249290, 29.328484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.489201, 20.025526, 29.309238>,  <16.630220, 19.652586, 29.277163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.489201, 20.025526, 29.309238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035703, -0.099033, 0.994443,
		0.935111, 0.347730, 0.068202,
		-0.352552, 0.932350, 0.080192,
		16.383434, 20.305231, 29.333296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076014, 20.156343, 29.781013>,  <16.630220, 19.652586, 29.277163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076014, 20.156343, 29.781013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.682573, 20.211969, 29.735067>,  <16.446510, 20.245344, 29.707500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.682573, 20.211969, 29.735067>,  <17.076014, 20.156343, 29.781013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.682573, 20.211969, 29.735067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115587, 0.002902, 0.993293,
		0.138464, 0.990279, 0.013220,
		-0.983599, 0.139064, -0.114865,
		16.387493, 20.253689, 29.700607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.255711, 20.904291, 29.664513>,  <17.076014, 20.156343, 29.781013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.255711, 20.904291, 29.664513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650927, 20.960039, 29.690903>,  <17.888056, 20.993488, 29.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650927, 20.960039, 29.690903>,  <17.255711, 20.904291, 29.664513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.650927, 20.960039, 29.690903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153404, -0.845147, -0.512049,
		-0.015604, 0.516046, -0.856419,
		0.988040, 0.139368, 0.065976,
		17.947338, 21.001850, 29.710695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.558012, 20.832672, 29.005302>,  <17.255711, 20.904291, 29.664513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.558012, 20.832672, 29.005302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.816778, 20.729609, 29.292389>,  <17.972038, 20.667770, 29.464642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.816778, 20.729609, 29.292389>,  <17.558012, 20.832672, 29.005302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.816778, 20.729609, 29.292389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169709, -0.868938, -0.464914,
		0.743439, 0.422562, -0.518401,
		0.646913, -0.257658, 0.717715,
		18.010853, 20.652311, 29.507704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221506, 20.555670, 28.707798>,  <17.558012, 20.832672, 29.005302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.221506, 20.555670, 28.707798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.117416, 20.394466, 29.058767>,  <18.054962, 20.297745, 29.269348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.117416, 20.394466, 29.058767>,  <18.221506, 20.555670, 28.707798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117416, 20.394466, 29.058767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136687, -0.914953, -0.379708,
		0.955824, 0.021124, 0.293178,
		-0.260223, -0.403008, 0.877421,
		18.039349, 20.273563, 29.321993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.634855, 19.938328, 28.668045>,  <18.221506, 20.555670, 28.707798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.634855, 19.938328, 28.668045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.336370, 19.929491, 28.934181>,  <18.157280, 19.924189, 29.093863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.336370, 19.929491, 28.934181>,  <18.634855, 19.938328, 28.668045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.336370, 19.929491, 28.934181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057780, -0.993528, -0.097794,
		0.663194, -0.111419, 0.740108,
		-0.746214, -0.022093, 0.665340,
		18.112507, 19.922863, 29.133783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.721504, 19.432476, 29.196758>,  <18.634855, 19.938328, 28.668045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.721504, 19.432476, 29.196758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.329929, 19.492323, 29.141190>,  <18.094984, 19.528231, 29.107847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.329929, 19.492323, 29.141190>,  <18.721504, 19.432476, 29.196758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.329929, 19.492323, 29.141190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153691, -0.987936, 0.019023,
		-0.134402, 0.039974, 0.990120,
		-0.978936, 0.149616, -0.138924,
		18.036249, 19.537209, 29.099512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.503527, 18.789207, 29.417362>,  <18.721504, 19.432476, 29.196758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.503527, 18.789207, 29.417362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.216202, 18.989424, 29.224079>,  <18.043808, 19.109554, 29.108109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.216202, 18.989424, 29.224079>,  <18.503527, 18.789207, 29.417362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.216202, 18.989424, 29.224079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350475, -0.860313, -0.370174,
		-0.600997, -0.096547, 0.793398,
		-0.718310, 0.500540, -0.483208,
		18.000710, 19.139585, 29.079117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939831, 18.386551, 29.467604>,  <18.503527, 18.789207, 29.417362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939831, 18.386551, 29.467604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.866255, 18.598080, 29.136179>,  <17.822109, 18.724997, 28.937325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.866255, 18.598080, 29.136179>,  <17.939831, 18.386551, 29.467604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.866255, 18.598080, 29.136179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363886, -0.819690, -0.442375,
		-0.913101, 0.220131, 0.343205,
		-0.183941, 0.528820, -0.828562,
		17.811073, 18.756725, 28.887609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.198210, 18.417866, 29.360435>,  <17.939831, 18.386551, 29.467604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.198210, 18.417866, 29.360435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383600, 18.467129, 29.009432>,  <17.494835, 18.496687, 28.798830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383600, 18.467129, 29.009432>,  <17.198210, 18.417866, 29.360435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.383600, 18.467129, 29.009432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528486, -0.756468, -0.385303,
		-0.711259, 0.642331, -0.285519,
		0.463478, 0.123158, -0.877508,
		17.522644, 18.504076, 28.746180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.724409, 18.058357, 28.845903>,  <17.198210, 18.417866, 29.360435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.724409, 18.058357, 28.845903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019119, 18.141552, 28.588562>,  <17.195946, 18.191469, 28.434156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019119, 18.141552, 28.588562>,  <16.724409, 18.058357, 28.845903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019119, 18.141552, 28.588562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430226, -0.589824, -0.683384,
		-0.521601, 0.780288, -0.345085,
		0.736775, 0.207989, -0.643353,
		17.240152, 18.203949, 28.395555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433512, 18.276018, 28.181499>,  <16.724409, 18.058357, 28.845903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433512, 18.276018, 28.181499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799257, 18.138315, 28.096243>,  <17.018703, 18.055695, 28.045088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799257, 18.138315, 28.096243>,  <16.433512, 18.276018, 28.181499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799257, 18.138315, 28.096243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387710, -0.592666, -0.705995,
		0.116720, 0.728172, -0.675383,
		0.914362, -0.344256, -0.213143,
		17.073566, 18.035038, 28.032299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.352783, 18.094624, 27.472204>,  <16.433512, 18.276018, 28.181499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.352783, 18.094624, 27.472204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.681089, 17.901152, 27.593792>,  <16.878073, 17.785069, 27.666744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.681089, 17.901152, 27.593792>,  <16.352783, 18.094624, 27.472204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.681089, 17.901152, 27.593792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276679, -0.802097, -0.529234,
		0.499792, 0.350275, -0.792158,
		0.820766, -0.483681, 0.303968,
		16.927319, 17.756048, 27.684982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872362, 18.087694, 26.981928>,  <16.352783, 18.094624, 27.472204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872362, 18.087694, 26.981928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.895916, 17.760231, 27.210430>,  <16.910048, 17.563753, 27.347532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.895916, 17.760231, 27.210430>,  <16.872362, 18.087694, 26.981928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.895916, 17.760231, 27.210430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081619, -0.574282, -0.814579,
		0.994922, 0.001341, -0.100635,
		0.058885, -0.818656, 0.571257,
		16.913582, 17.514633, 27.381807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.369890, 17.675322, 26.678953>,  <16.872362, 18.087694, 26.981928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.369890, 17.675322, 26.678953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.194197, 17.423393, 26.935204>,  <17.088781, 17.272236, 27.088953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.194197, 17.423393, 26.935204>,  <17.369890, 17.675322, 26.678953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.194197, 17.423393, 26.935204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082282, -0.681893, -0.726810,
		0.894598, -0.371950, 0.247686,
		-0.439232, -0.629822, 0.640624,
		17.062428, 17.234447, 27.127390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680479, 17.040028, 26.443209>,  <17.369890, 17.675322, 26.678953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680479, 17.040028, 26.443209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.358244, 16.957296, 26.665289>,  <17.164902, 16.907658, 26.798536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.358244, 16.957296, 26.665289>,  <17.680479, 17.040028, 26.443209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.358244, 16.957296, 26.665289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270932, -0.704768, -0.655666,
		0.526897, -0.678619, 0.511718,
		-0.805590, -0.206828, 0.555200,
		17.116568, 16.895248, 26.831848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.594711, 16.368788, 26.380196>,  <17.680479, 17.040028, 26.443209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.594711, 16.368788, 26.380196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.232218, 16.473898, 26.512672>,  <17.014721, 16.536964, 26.592157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.232218, 16.473898, 26.512672>,  <17.594711, 16.368788, 26.380196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.232218, 16.473898, 26.512672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416732, -0.687192, -0.595064,
		0.071223, -0.677285, 0.732265,
		-0.906235, 0.262776, 0.331191,
		16.960348, 16.552731, 26.612030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248064, 15.795456, 26.441420>,  <17.594711, 16.368788, 26.380196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.248064, 15.795456, 26.441420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936369, 16.045267, 26.420418>,  <16.749352, 16.195154, 26.407816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936369, 16.045267, 26.420418>,  <17.248064, 15.795456, 26.441420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936369, 16.045267, 26.420418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460837, -0.627738, -0.627355,
		-0.424759, -0.464661, 0.776961,
		-0.779236, 0.624528, -0.052505,
		16.702599, 16.232626, 26.404667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.544760, 15.344171, 26.474705>,  <17.248064, 15.795456, 26.441420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.544760, 15.344171, 26.474705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.418230, 15.695969, 26.332479>,  <16.342312, 15.907047, 26.247145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.418230, 15.695969, 26.332479>,  <16.544760, 15.344171, 26.474705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.418230, 15.695969, 26.332479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628523, -0.475042, -0.615869,
		-0.710562, 0.028665, 0.703051,
		-0.316325, 0.879496, -0.355563,
		16.323332, 15.959818, 26.225811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.790941, 15.384750, 26.514854>,  <16.544760, 15.344171, 26.474705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.790941, 15.384750, 26.514854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.907437, 15.656393, 26.245338>,  <15.977335, 15.819378, 26.083628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.907437, 15.656393, 26.245338>,  <15.790941, 15.384750, 26.514854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.907437, 15.656393, 26.245338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773470, -0.247317, -0.583591,
		-0.562960, 0.691122, 0.453239,
		0.291239, 0.679105, -0.673792,
		15.994809, 15.860125, 26.043201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.223130, 15.717500, 26.335756>,  <15.790941, 15.384750, 26.514854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.223130, 15.717500, 26.335756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460034, 15.754063, 26.015539>,  <15.602177, 15.776001, 25.823408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460034, 15.754063, 26.015539>,  <15.223130, 15.717500, 26.335756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.460034, 15.754063, 26.015539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787221, -0.146183, -0.599094,
		-0.171788, 0.985026, -0.014620,
		0.592260, 0.091408, -0.800545,
		15.637712, 15.781486, 25.775375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840488, 16.012629, 25.902666>,  <15.223130, 15.717500, 26.335756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840488, 16.012629, 25.902666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.125185, 15.872637, 25.659048>,  <15.296003, 15.788642, 25.512877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.125185, 15.872637, 25.659048>,  <14.840488, 16.012629, 25.902666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.125185, 15.872637, 25.659048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681656, -0.134767, -0.719154,
		0.169611, 0.927012, -0.334486,
		0.711742, -0.349980, -0.609046,
		15.338708, 15.767643, 25.476334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.693178, 16.386774, 25.254040>,  <14.840488, 16.012629, 25.902666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.693178, 16.386774, 25.254040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.933091, 16.086542, 25.143124>,  <15.077039, 15.906403, 25.076574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.933091, 16.086542, 25.143124>,  <14.693178, 16.386774, 25.254040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933091, 16.086542, 25.143124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456768, -0.036634, -0.888831,
		0.656981, 0.659764, -0.364813,
		0.599783, -0.750580, -0.277291,
		15.113026, 15.861368, 25.059937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969567, 16.496336, 24.579924>,  <14.693178, 16.386774, 25.254040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.969567, 16.496336, 24.579924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971358, 16.100973, 24.640625>,  <14.972433, 15.863755, 24.677046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971358, 16.100973, 24.640625>,  <14.969567, 16.496336, 24.579924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.971358, 16.100973, 24.640625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404855, -0.140553, -0.903514,
		0.914370, -0.057393, -0.400791,
		0.004477, -0.988408, 0.151753,
		14.972701, 15.804451, 24.686152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.125130, 16.188408, 23.974277>,  <14.969567, 16.496336, 24.579924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.125130, 16.188408, 23.974277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.950095, 15.889017, 24.173597>,  <14.845075, 15.709383, 24.293188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.950095, 15.889017, 24.173597>,  <15.125130, 16.188408, 23.974277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.950095, 15.889017, 24.173597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451276, -0.296517, -0.841681,
		0.777732, -0.593179, -0.208017,
		-0.437587, -0.748476, 0.498299,
		14.818819, 15.664474, 24.323088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.113930, 15.577401, 23.528894>,  <15.125130, 16.188408, 23.974277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.113930, 15.577401, 23.528894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.843436, 15.489219, 23.810064>,  <14.681140, 15.436309, 23.978767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.843436, 15.489219, 23.810064>,  <15.113930, 15.577401, 23.528894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.843436, 15.489219, 23.810064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626807, -0.329154, -0.706237,
		0.387066, -0.918181, 0.084401,
		-0.676234, -0.220457, 0.702927,
		14.640566, 15.423081, 24.020943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.929640, 14.845858, 23.589417>,  <15.113930, 15.577401, 23.528894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.929640, 14.845858, 23.589417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.604733, 15.039408, 23.719700>,  <14.409788, 15.155538, 23.797871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.604733, 15.039408, 23.719700>,  <14.929640, 14.845858, 23.589417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.604733, 15.039408, 23.719700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566565, -0.521769, -0.637779,
		-0.138659, -0.702583, 0.697962,
		-0.812267, 0.483875, 0.325711,
		14.361053, 15.184570, 23.817413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.496877, 14.347836, 23.740904>,  <14.929640, 14.845858, 23.589417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.496877, 14.347836, 23.740904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262474, 14.670506, 23.710253>,  <14.121833, 14.864108, 23.691862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262474, 14.670506, 23.710253>,  <14.496877, 14.347836, 23.740904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.262474, 14.670506, 23.710253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713878, -0.558696, -0.422180,
		-0.383373, -0.192698, 0.903268,
		-0.586006, 0.806676, -0.076626,
		14.086673, 14.912508, 23.687265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.823603, 13.967624, 23.707302>,  <14.496877, 14.347836, 23.740904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.823603, 13.967624, 23.707302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765976, 14.344954, 23.587715>,  <13.731400, 14.571353, 23.515963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765976, 14.344954, 23.587715>,  <13.823603, 13.967624, 23.707302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.765976, 14.344954, 23.587715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725475, -0.306153, -0.616406,
		-0.673002, 0.128089, 0.728466,
		-0.144067, 0.943326, -0.298967,
		13.722755, 14.627953, 23.498026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.080672, 14.115337, 23.881262>,  <13.823603, 13.967624, 23.707302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.080672, 14.115337, 23.881262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.202418, 14.336046, 23.570673>,  <13.275466, 14.468472, 23.384319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.202418, 14.336046, 23.570673>,  <13.080672, 14.115337, 23.881262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.202418, 14.336046, 23.570673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736084, -0.381148, -0.559381,
		-0.604601, 0.741805, 0.290142,
		0.304365, 0.551771, -0.776473,
		13.293728, 14.501577, 23.337730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.418197, 14.238200, 23.426952>,  <13.080672, 14.115337, 23.881262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.418197, 14.238200, 23.426952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.709575, 14.336933, 23.171314>,  <12.884401, 14.396173, 23.017931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.709575, 14.336933, 23.171314>,  <12.418197, 14.238200, 23.426952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.709575, 14.336933, 23.171314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511440, -0.424761, -0.746998,
		-0.455845, 0.871006, -0.183176,
		0.728446, 0.246832, -0.639093,
		12.928108, 14.410983, 22.979586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.045233, 14.469837, 22.855385>,  <12.418197, 14.238200, 23.426952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.045233, 14.469837, 22.855385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.404674, 14.422211, 22.686464>,  <12.620338, 14.393635, 22.585112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.404674, 14.422211, 22.686464>,  <12.045233, 14.469837, 22.855385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.404674, 14.422211, 22.686464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434012, -0.382483, -0.815684,
		-0.064402, 0.916259, -0.395376,
		0.898602, -0.119066, -0.422301,
		12.674254, 14.386491, 22.559774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.120193, 14.877567, 22.268526>,  <12.045233, 14.469837, 22.855385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.120193, 14.877567, 22.268526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.395741, 14.599111, 22.187687>,  <12.561070, 14.432036, 22.139183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.395741, 14.599111, 22.187687>,  <12.120193, 14.877567, 22.268526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.395741, 14.599111, 22.187687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507395, -0.263954, -0.820292,
		0.517695, 0.667618, -0.535049,
		0.688870, -0.696142, -0.202098,
		12.602403, 14.390268, 22.127058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.254219, 14.874786, 21.515331>,  <12.120193, 14.877567, 22.268526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.254219, 14.874786, 21.515331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.351776, 14.514012, 21.657896>,  <12.410310, 14.297548, 21.743435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.351776, 14.514012, 21.657896>,  <12.254219, 14.874786, 21.515331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.351776, 14.514012, 21.657896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490787, -0.431764, -0.756775,
		0.836448, 0.009649, -0.547961,
		0.243892, -0.901935, 0.356413,
		12.424944, 14.243432, 21.764820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394985, 14.608371, 20.960960>,  <12.254219, 14.874786, 21.515331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.394985, 14.608371, 20.960960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.335242, 14.295280, 21.202633>,  <12.299397, 14.107427, 21.347635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.335242, 14.295280, 21.202633>,  <12.394985, 14.608371, 20.960960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.335242, 14.295280, 21.202633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348328, -0.530213, -0.773008,
		0.925397, -0.325907, -0.193454,
		-0.149357, -0.782725, 0.604180,
		12.290435, 14.060463, 21.383886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.589849, 14.073991, 20.549034>,  <12.394985, 14.608371, 20.960960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.589849, 14.073991, 20.549034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371677, 13.894308, 20.832081>,  <12.240774, 13.786499, 21.001909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371677, 13.894308, 20.832081>,  <12.589849, 14.073991, 20.549034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.371677, 13.894308, 20.832081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387989, -0.613036, -0.688224,
		0.742948, -0.649925, 0.160080,
		-0.545429, -0.449206, 0.707617,
		12.208049, 13.759546, 21.044367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.729053, 13.442025, 20.526695>,  <12.589849, 14.073991, 20.549034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.729053, 13.442025, 20.526695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.358276, 13.410058, 20.673334>,  <12.135811, 13.390878, 20.761318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.358276, 13.410058, 20.673334>,  <12.729053, 13.442025, 20.526695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.358276, 13.410058, 20.673334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178288, -0.765886, -0.617764,
		0.330142, -0.637991, 0.695682,
		-0.926941, -0.079918, 0.366597,
		12.080194, 13.386083, 20.783314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562515, 12.787301, 20.363808>,  <12.729053, 13.442025, 20.526695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562515, 12.787301, 20.363808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215291, 12.924073, 20.507782>,  <12.006956, 13.006137, 20.594166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215291, 12.924073, 20.507782>,  <12.562515, 12.787301, 20.363808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.215291, 12.924073, 20.507782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496381, -0.610423, -0.617244,
		0.008658, -0.714470, 0.699612,
		-0.868061, 0.341930, 0.359935,
		11.954872, 13.026652, 20.615763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185085, 12.206639, 20.654547>,  <12.562515, 12.787301, 20.363808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185085, 12.206639, 20.654547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.913747, 12.492674, 20.587021>,  <11.750944, 12.664294, 20.546505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.913747, 12.492674, 20.587021>,  <12.185085, 12.206639, 20.654547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.913747, 12.492674, 20.587021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482335, -0.606721, -0.631856,
		-0.554256, -0.347191, 0.756478,
		-0.678346, 0.715086, -0.168817,
		11.710243, 12.707200, 20.536377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.519181, 11.873684, 20.843409>,  <12.185085, 12.206639, 20.654547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.519181, 11.873684, 20.843409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.455229, 12.182184, 20.596958>,  <11.416858, 12.367284, 20.449087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.455229, 12.182184, 20.596958>,  <11.519181, 11.873684, 20.843409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.455229, 12.182184, 20.596958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515016, -0.597646, -0.614473,
		-0.842138, 0.219072, 0.492758,
		-0.159881, 0.771249, -0.616127,
		11.407265, 12.413559, 20.412121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.766807, 11.810798, 20.560610>,  <11.519181, 11.873684, 20.843409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.766807, 11.810798, 20.560610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.941473, 12.059717, 20.300743>,  <11.046272, 12.209068, 20.144823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.941473, 12.059717, 20.300743>,  <10.766807, 11.810798, 20.560610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.941473, 12.059717, 20.300743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431802, -0.488551, -0.758198,
		-0.789221, 0.611607, 0.055377,
		0.436665, 0.622298, -0.649668,
		11.072473, 12.246407, 20.105843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.268126, 12.083116, 20.041172>,  <10.766807, 11.810798, 20.560610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.268126, 12.083116, 20.041172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.611081, 12.144610, 19.844702>,  <10.816854, 12.181507, 19.726820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.611081, 12.144610, 19.844702>,  <10.268126, 12.083116, 20.041172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.611081, 12.144610, 19.844702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357796, -0.507962, -0.783554,
		-0.369960, 0.847549, -0.380513,
		0.857386, 0.153737, -0.491175,
		10.868298, 12.190731, 19.697350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.067071, 12.314485, 19.354902>,  <10.268126, 12.083116, 20.041172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.067071, 12.314485, 19.354902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.445162, 12.184812, 19.339655>,  <10.672016, 12.107008, 19.330507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.445162, 12.184812, 19.339655>,  <10.067071, 12.314485, 19.354902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.445162, 12.184812, 19.339655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199218, -0.480435, -0.854105,
		0.258572, 0.814916, -0.518703,
		0.945226, -0.324182, -0.038119,
		10.728729, 12.087557, 19.328218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.255302, 12.544676, 18.663954>,  <10.067071, 12.314485, 19.354902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.255302, 12.544676, 18.663954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.543036, 12.271088, 18.712524>,  <10.715675, 12.106935, 18.741667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.543036, 12.271088, 18.712524>,  <10.255302, 12.544676, 18.663954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.543036, 12.271088, 18.712524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098987, -0.273940, -0.956639,
		0.687578, 0.676121, -0.264758,
		0.719332, -0.683972, 0.121428,
		10.758835, 12.065896, 18.748953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.715457, 12.586034, 18.056767>,  <10.255302, 12.544676, 18.663954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.715457, 12.586034, 18.056767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.790052, 12.227884, 18.218521>,  <10.834809, 12.012995, 18.315575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.790052, 12.227884, 18.218521>,  <10.715457, 12.586034, 18.056767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.790052, 12.227884, 18.218521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022262, -0.407651, -0.912867,
		0.982205, 0.179242, -0.056089,
		0.186489, -0.895373, 0.404387,
		10.845999, 11.959272, 18.339838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.294081, 12.294267, 17.653908>,  <10.715457, 12.586034, 18.056767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.294081, 12.294267, 17.653908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.090667, 11.992249, 17.819460>,  <10.968618, 11.811037, 17.918791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.090667, 11.992249, 17.819460>,  <11.294081, 12.294267, 17.653908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.090667, 11.992249, 17.819460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014476, -0.488104, -0.872665,
		0.860920, -0.437789, 0.259148,
		-0.508534, -0.755046, 0.413882,
		10.938107, 11.765735, 17.943624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.692778, 11.781898, 17.499670>,  <11.294081, 12.294267, 17.653908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.692778, 11.781898, 17.499670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.348154, 11.595881, 17.581108>,  <11.141379, 11.484270, 17.629971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.348154, 11.595881, 17.581108>,  <11.692778, 11.781898, 17.499670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.348154, 11.595881, 17.581108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103759, -0.553890, -0.826099,
		0.496940, -0.690609, 0.525461,
		-0.861560, -0.465043, 0.203593,
		11.089686, 11.456367, 17.642185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.381708, 11.666118, 16.905506>,  <11.692778, 11.781898, 17.499670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.381708, 11.666118, 16.905506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.611040, 11.434158, 16.673986>,  <12.748639, 11.294983, 16.535074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.611040, 11.434158, 16.673986>,  <12.381708, 11.666118, 16.905506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.611040, 11.434158, 16.673986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819093, 0.388861, 0.421752,
		-0.019500, -0.715895, 0.697936,
		0.573330, -0.579898, -0.578802,
		12.783039, 11.260189, 16.500345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.773535, 11.270318, 17.356365>,  <12.381708, 11.666118, 16.905506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.773535, 11.270318, 17.356365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.950727, 11.310967, 17.000065>,  <13.057043, 11.335357, 16.786283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.950727, 11.310967, 17.000065>,  <12.773535, 11.270318, 17.356365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.950727, 11.310967, 17.000065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835230, 0.314298, 0.451228,
		0.325818, -0.943869, 0.054348,
		0.442982, 0.101625, -0.890752,
		13.083622, 11.341455, 16.732840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.369768, 10.805129, 17.328510>,  <12.773535, 11.270318, 17.356365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.369768, 10.805129, 17.328510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444909, 11.084213, 17.051987>,  <13.489994, 11.251664, 16.886072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444909, 11.084213, 17.051987>,  <13.369768, 10.805129, 17.328510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444909, 11.084213, 17.051987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736963, 0.365166, 0.568805,
		0.649304, -0.616323, -0.445590,
		0.187853, 0.697711, -0.691311,
		13.501265, 11.293527, 16.844593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.063302, 10.883588, 17.382305>,  <13.369768, 10.805129, 17.328510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.063302, 10.883588, 17.382305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.944265, 11.199766, 17.168152>,  <13.872844, 11.389473, 17.039660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.944265, 11.199766, 17.168152>,  <14.063302, 10.883588, 17.382305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.944265, 11.199766, 17.168152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705206, 0.560012, 0.434822,
		0.643524, -0.248155, -0.724083,
		-0.297592, 0.790446, -0.535382,
		13.854988, 11.436900, 17.007538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679914, 11.111483, 17.320099>,  <14.063302, 10.883588, 17.382305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679914, 11.111483, 17.320099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448100, 11.428173, 17.242834>,  <14.309011, 11.618187, 17.196476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448100, 11.428173, 17.242834>,  <14.679914, 11.111483, 17.320099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448100, 11.428173, 17.242834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697454, 0.604451, 0.384963,
		0.421542, 0.088378, -0.902492,
		-0.579534, 0.791725, -0.193162,
		14.274240, 11.665690, 17.184885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.087675, 11.653681, 16.984743>,  <14.679914, 11.111483, 17.320099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.087675, 11.653681, 16.984743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.763965, 11.828918, 17.141279>,  <14.569738, 11.934061, 17.235201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.763965, 11.828918, 17.141279>,  <15.087675, 11.653681, 16.984743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.763965, 11.828918, 17.141279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579215, 0.706127, 0.407302,
		-0.097899, 0.556290, -0.825202,
		-0.809275, 0.438095, 0.391340,
		14.521182, 11.960347, 17.258680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.201736, 12.387710, 16.814732>,  <15.087675, 11.653681, 16.984743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.201736, 12.387710, 16.814732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951433, 12.317177, 17.118662>,  <14.801251, 12.274857, 17.301020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951433, 12.317177, 17.118662>,  <15.201736, 12.387710, 16.814732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.951433, 12.317177, 17.118662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390783, 0.772176, 0.501032,
		-0.675066, 0.610451, -0.414289,
		-0.625759, -0.176333, 0.759824,
		14.763705, 12.264277, 17.346609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138742, 13.061997, 17.143917>,  <15.201736, 12.387710, 16.814732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.138742, 13.061997, 17.143917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.990468, 12.800277, 17.407578>,  <14.901503, 12.643244, 17.565773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.990468, 12.800277, 17.407578>,  <15.138742, 13.061997, 17.143917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.990468, 12.800277, 17.407578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297930, 0.588435, 0.751653,
		-0.879675, 0.475009, -0.023189,
		-0.370687, -0.654302, 0.659151,
		14.879262, 12.603986, 17.605322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819624, 13.536712, 17.604918>,  <15.138742, 13.061997, 17.143917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819624, 13.536712, 17.604918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.857903, 13.197278, 17.813051>,  <14.880871, 12.993618, 17.937931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.857903, 13.197278, 17.813051>,  <14.819624, 13.536712, 17.604918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.857903, 13.197278, 17.813051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228174, 0.527516, 0.818330,
		-0.968906, 0.040415, 0.244107,
		0.095698, -0.848584, 0.520335,
		14.886613, 12.942703, 17.969152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.637219, 13.699377, 18.307028>,  <14.819624, 13.536712, 17.604918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.637219, 13.699377, 18.307028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801635, 13.340396, 18.371059>,  <14.900284, 13.125007, 18.409477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801635, 13.340396, 18.371059>,  <14.637219, 13.699377, 18.307028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801635, 13.340396, 18.371059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412596, 0.339727, 0.845192,
		-0.812904, -0.281358, 0.509927,
		0.411037, -0.897454, 0.160078,
		14.924946, 13.071159, 18.419083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.548156, 13.399138, 19.139053>,  <14.637219, 13.699377, 18.307028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.548156, 13.399138, 19.139053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.871120, 13.250950, 18.955385>,  <15.064899, 13.162037, 18.845184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.871120, 13.250950, 18.955385>,  <14.548156, 13.399138, 19.139053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.871120, 13.250950, 18.955385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556462, 0.219572, 0.801335,
		-0.196051, -0.902518, 0.383439,
		0.807412, -0.370472, -0.459170,
		15.113344, 13.139809, 18.817635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.825966, 13.081528, 19.745264>,  <14.548156, 13.399138, 19.139053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.825966, 13.081528, 19.745264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.121183, 13.120683, 19.478218>,  <15.298314, 13.144176, 19.317991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.121183, 13.120683, 19.478218>,  <14.825966, 13.081528, 19.745264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.121183, 13.120683, 19.478218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658852, 0.108988, 0.744336,
		0.145624, -0.989212, 0.015944,
		0.738043, 0.097888, -0.667615,
		15.342596, 13.150049, 19.277933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.392663, 12.549145, 19.835520>,  <14.825966, 13.081528, 19.745264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.392663, 12.549145, 19.835520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.550404, 12.878117, 19.671522>,  <15.645048, 13.075500, 19.573124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.550404, 12.878117, 19.671522>,  <15.392663, 12.549145, 19.835520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.550404, 12.878117, 19.671522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605160, 0.103343, 0.789367,
		0.691570, -0.559401, -0.456948,
		0.394351, 0.822430, -0.409996,
		15.668709, 13.124846, 19.548523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040569, 12.451963, 19.920254>,  <15.392663, 12.549145, 19.835520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040569, 12.451963, 19.920254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.005457, 12.848623, 19.882469>,  <15.984389, 13.086619, 19.859798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.005457, 12.848623, 19.882469>,  <16.040569, 12.451963, 19.920254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.005457, 12.848623, 19.882469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614553, 0.128543, 0.778332,
		0.783976, 0.010272, -0.620706,
		-0.087782, 0.991651, -0.094463,
		15.979122, 13.146118, 19.854130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.713787, 12.637722, 20.157766>,  <16.040569, 12.451963, 19.920254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.713787, 12.637722, 20.157766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.482676, 12.963836, 20.173183>,  <16.344009, 13.159504, 20.182434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.482676, 12.963836, 20.173183>,  <16.713787, 12.637722, 20.157766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.482676, 12.963836, 20.173183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355077, 0.208555, 0.911277,
		0.734912, 0.540200, -0.409986,
		-0.577776, 0.815284, 0.038543,
		16.309343, 13.208421, 20.184746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.151035, 13.186463, 20.433258>,  <16.713787, 12.637722, 20.157766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.151035, 13.186463, 20.433258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.778650, 13.321233, 20.489527>,  <16.555220, 13.402094, 20.523287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.778650, 13.321233, 20.489527>,  <17.151035, 13.186463, 20.433258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778650, 13.321233, 20.489527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300465, 0.488097, 0.819440,
		0.207427, 0.805136, -0.555635,
		-0.930964, 0.336923, 0.140671,
		16.499361, 13.422310, 20.531729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093161, 13.878577, 20.242950>,  <17.151035, 13.186463, 20.433258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093161, 13.878577, 20.242950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.784765, 13.806166, 20.487181>,  <16.599728, 13.762719, 20.633718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.784765, 13.806166, 20.487181>,  <17.093161, 13.878577, 20.242950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.784765, 13.806166, 20.487181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291302, 0.752325, 0.590889,
		-0.566320, 0.633431, -0.527301,
		-0.770989, -0.181029, 0.610577,
		16.553469, 13.751857, 20.670353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.016603, 14.486444, 20.528650>,  <17.093161, 13.878577, 20.242950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.016603, 14.486444, 20.528650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.773956, 14.303135, 20.788496>,  <16.628368, 14.193150, 20.944403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.773956, 14.303135, 20.788496>,  <17.016603, 14.486444, 20.528650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.773956, 14.303135, 20.788496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214140, 0.692738, 0.688664,
		-0.765609, 0.556865, -0.322094,
		-0.606619, -0.458274, 0.649614,
		16.591970, 14.165653, 20.983379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521320, 15.010899, 20.847719>,  <17.016603, 14.486444, 20.528650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.521320, 15.010899, 20.847719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.539103, 14.689771, 21.085543>,  <16.549772, 14.497094, 21.228237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.539103, 14.689771, 21.085543>,  <16.521320, 15.010899, 20.847719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539103, 14.689771, 21.085543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186052, 0.591390, 0.784629,
		-0.981534, 0.075739, 0.175656,
		0.044454, -0.802821, 0.594561,
		16.552439, 14.448924, 21.263910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132803, 15.135784, 21.493507>,  <16.521320, 15.010899, 20.847719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.132803, 15.135784, 21.493507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375208, 14.841102, 21.613514>,  <16.520651, 14.664292, 21.685518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375208, 14.841102, 21.613514>,  <16.132803, 15.135784, 21.493507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375208, 14.841102, 21.613514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328175, 0.575126, 0.749354,
		-0.724602, -0.355660, 0.590303,
		0.606014, -0.736706, 0.300019,
		16.557013, 14.620090, 21.703520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951889, 15.092631, 22.116716>,  <16.132803, 15.135784, 21.493507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951889, 15.092631, 22.116716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.304745, 14.904742, 22.130529>,  <16.516459, 14.792008, 22.138817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.304745, 14.904742, 22.130529>,  <15.951889, 15.092631, 22.116716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.304745, 14.904742, 22.130529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251499, 0.531767, 0.808685,
		-0.398221, -0.704687, 0.587227,
		0.882138, -0.469722, 0.034533,
		16.569386, 14.763825, 22.140890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029810, 14.926297, 22.807848>,  <15.951889, 15.092631, 22.116716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029810, 14.926297, 22.807848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392237, 14.933163, 22.638735>,  <16.609694, 14.937282, 22.537266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392237, 14.933163, 22.638735>,  <16.029810, 14.926297, 22.807848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392237, 14.933163, 22.638735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322308, 0.619380, 0.715881,
		0.274151, -0.784904, 0.555668,
		0.906068, 0.017163, -0.422784,
		16.664057, 14.938312, 22.511900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.554482, 14.883508, 23.357203>,  <16.029810, 14.926297, 22.807848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.554482, 14.883508, 23.357203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.804159, 15.017762, 23.075003>,  <16.953966, 15.098314, 22.905682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.804159, 15.017762, 23.075003>,  <16.554482, 14.883508, 23.357203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.804159, 15.017762, 23.075003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431730, 0.604436, 0.669527,
		0.651148, -0.722499, 0.232379,
		0.624191, 0.335636, -0.705502,
		16.991417, 15.118453, 22.863352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247631, 14.784240, 23.572435>,  <16.554482, 14.883508, 23.357203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.247631, 14.784240, 23.572435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270191, 15.073435, 23.297014>,  <17.283728, 15.246952, 23.131762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270191, 15.073435, 23.297014>,  <17.247631, 14.784240, 23.572435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270191, 15.073435, 23.297014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598077, 0.527757, 0.603139,
		0.799452, -0.445827, -0.402636,
		0.056401, 0.722988, -0.688555,
		17.287111, 15.290331, 23.090448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.972366, 14.977831, 23.596260>,  <17.247631, 14.784240, 23.572435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.972366, 14.977831, 23.596260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744640, 15.263160, 23.432772>,  <17.608006, 15.434358, 23.334679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744640, 15.263160, 23.432772>,  <17.972366, 14.977831, 23.596260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.744640, 15.263160, 23.432772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564212, 0.700602, 0.436832,
		0.597951, 0.018091, -0.801328,
		-0.569314, 0.713323, -0.408719,
		17.573847, 15.477157, 23.310156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.424816, 15.519440, 23.495308>,  <17.972366, 14.977831, 23.596260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.424816, 15.519440, 23.495308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.072754, 15.708516, 23.477930>,  <17.861517, 15.821962, 23.467503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.072754, 15.708516, 23.477930>,  <18.424816, 15.519440, 23.495308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.072754, 15.708516, 23.477930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398249, 0.785136, 0.474298,
		0.258308, 0.400155, -0.879292,
		-0.880156, 0.472692, -0.043445,
		17.808706, 15.850324, 23.464897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.498730, 16.145149, 23.281805>,  <18.424816, 15.519440, 23.495308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.498730, 16.145149, 23.281805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.169962, 16.178289, 23.507223>,  <17.972700, 16.198174, 23.642473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.169962, 16.178289, 23.507223>,  <18.498730, 16.145149, 23.281805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.169962, 16.178289, 23.507223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443034, 0.714821, 0.541065,
		-0.358005, 0.694382, -0.624232,
		-0.821920, 0.082852, 0.563545,
		17.923386, 16.203144, 23.676287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.329788, 16.826984, 23.265322>,  <18.498730, 16.145149, 23.281805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.329788, 16.826984, 23.265322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.135057, 16.685402, 23.584749>,  <18.018219, 16.600452, 23.776405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.135057, 16.685402, 23.584749>,  <18.329788, 16.826984, 23.265322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.135057, 16.685402, 23.584749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298371, 0.791848, 0.532872,
		-0.820959, 0.497686, -0.279882,
		-0.486827, -0.353957, 0.798570,
		17.989010, 16.579214, 23.824320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845667, 17.368982, 23.573305>,  <18.329788, 16.826984, 23.265322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.845667, 17.368982, 23.573305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.930609, 17.115103, 23.870510>,  <17.981573, 16.962776, 24.048832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.930609, 17.115103, 23.870510>,  <17.845667, 17.368982, 23.573305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.930609, 17.115103, 23.870510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149039, 0.772493, 0.617286,
		-0.965760, -0.020347, 0.258637,
		0.212355, -0.634698, 0.743010,
		17.994316, 16.924694, 24.093412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773819, 17.745432, 24.071051>,  <17.845667, 17.368982, 23.573305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773819, 17.745432, 24.071051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901161, 17.438892, 24.294249>,  <17.977566, 17.254969, 24.428167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901161, 17.438892, 24.294249>,  <17.773819, 17.745432, 24.071051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.901161, 17.438892, 24.294249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184331, 0.627429, 0.756541,
		-0.929878, -0.137991, 0.341006,
		0.318353, -0.766349, 0.557997,
		17.996668, 17.208988, 24.461647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.390966, 17.814281, 24.622934>,  <17.773819, 17.745432, 24.071051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.390966, 17.814281, 24.622934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.725563, 17.615908, 24.716169>,  <17.926321, 17.496883, 24.772110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.725563, 17.615908, 24.716169>,  <17.390966, 17.814281, 24.622934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.725563, 17.615908, 24.716169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214175, 0.687410, 0.693971,
		-0.504390, -0.530581, 0.681231,
		0.836493, -0.495934, 0.233086,
		17.976511, 17.467127, 24.786095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413231, 17.717028, 25.310091>,  <17.390966, 17.814281, 24.622934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413231, 17.717028, 25.310091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.803028, 17.703585, 25.221336>,  <18.036907, 17.695518, 25.168083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.803028, 17.703585, 25.221336>,  <17.413231, 17.717028, 25.310091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803028, 17.703585, 25.221336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165429, 0.775680, 0.609060,
		0.151642, -0.630232, 0.761454,
		0.974494, -0.033607, -0.221884,
		18.095377, 17.693502, 25.154772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.828146, 17.745247, 25.917570>,  <17.413231, 17.717028, 25.310091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.828146, 17.745247, 25.917570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.073757, 17.865311, 25.625576>,  <18.221125, 17.937349, 25.450380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.073757, 17.865311, 25.625576>,  <17.828146, 17.745247, 25.917570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.073757, 17.865311, 25.625576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307064, 0.761162, 0.571265,
		0.727106, -0.574924, 0.375207,
		0.614027, 0.300158, -0.729983,
		18.257965, 17.955359, 25.406582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.430784, 17.781479, 26.310312>,  <17.828146, 17.745247, 25.917570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.430784, 17.781479, 26.310312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.408695, 17.998423, 25.974981>,  <18.395441, 18.128590, 25.773783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.408695, 17.998423, 25.974981>,  <18.430784, 17.781479, 26.310312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.408695, 17.998423, 25.974981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189432, 0.830053, 0.524526,
		0.980340, -0.129840, -0.148578,
		-0.055223, 0.542359, -0.838330,
		18.392128, 18.161131, 25.723482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.774033, 18.213406, 26.560337>,  <18.430784, 17.781479, 26.310312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.774033, 18.213406, 26.560337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.589199, 18.367239, 26.240694>,  <18.478298, 18.459539, 26.048908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.589199, 18.367239, 26.240694>,  <18.774033, 18.213406, 26.560337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.589199, 18.367239, 26.240694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148604, 0.921914, 0.357758,
		0.874296, 0.046564, -0.483154,
		-0.462085, 0.384585, -0.799107,
		18.450573, 18.482615, 26.000961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.221394, 18.522770, 26.023722>,  <18.774033, 18.213406, 26.560337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.221394, 18.522770, 26.023722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.855669, 18.668163, 26.095184>,  <18.636234, 18.755400, 26.138062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.855669, 18.668163, 26.095184>,  <19.221394, 18.522770, 26.023722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.855669, 18.668163, 26.095184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404699, 0.837356, 0.367496,
		-0.016021, 0.408307, -0.912704,
		-0.914310, 0.363483, 0.178656,
		18.581375, 18.777208, 26.148781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171841, 19.140188, 25.668955>,  <19.221394, 18.522770, 26.023722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171841, 19.140188, 25.668955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.949980, 19.149185, 26.001665>,  <18.816864, 19.154583, 26.201292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.949980, 19.149185, 26.001665>,  <19.171841, 19.140188, 25.668955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.949980, 19.149185, 26.001665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440205, 0.856219, 0.270388,
		-0.706102, 0.516124, -0.484805,
		-0.554653, 0.022492, 0.831778,
		18.783585, 19.155933, 26.251198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963797, 19.929153, 25.830442>,  <19.171841, 19.140188, 25.668955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.963797, 19.929153, 25.830442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.005083, 19.674129, 26.135824>,  <19.029854, 19.521114, 26.319054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.005083, 19.674129, 26.135824>,  <18.963797, 19.929153, 25.830442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.005083, 19.674129, 26.135824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643454, 0.628110, 0.437543,
		-0.758494, 0.446087, 0.475071,
		0.103215, -0.637561, 0.763455,
		19.036047, 19.482861, 26.364861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.569223, 20.539854, 25.835571>,  <18.963797, 19.929153, 25.830442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.569223, 20.539854, 25.835571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.742706, 20.746651, 25.540379>,  <18.846796, 20.870729, 25.363264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.742706, 20.746651, 25.540379>,  <18.569223, 20.539854, 25.835571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.742706, 20.746651, 25.540379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549130, -0.497695, -0.671384,
		-0.714390, 0.696432, 0.068042,
		0.433709, 0.516994, -0.737980,
		18.872820, 20.901749, 25.318985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076895, 20.768642, 25.395153>,  <18.569223, 20.539854, 25.835571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076895, 20.768642, 25.395153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.391081, 20.783463, 25.148035>,  <18.579594, 20.792355, 24.999765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.391081, 20.783463, 25.148035>,  <18.076895, 20.768642, 25.395153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.391081, 20.783463, 25.148035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570824, -0.342379, -0.746282,
		-0.239169, 0.938831, -0.247779,
		0.785467, 0.037049, -0.617794,
		18.626720, 20.794577, 24.962696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.726131, 20.968866, 24.838747>,  <18.076895, 20.768642, 25.395153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.726131, 20.968866, 24.838747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.080622, 20.813009, 24.738522>,  <18.293316, 20.719496, 24.678387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.080622, 20.813009, 24.738522>,  <17.726131, 20.968866, 24.838747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.080622, 20.813009, 24.738522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418926, -0.443190, -0.792517,
		0.197751, 0.807317, -0.555998,
		0.886225, -0.389643, -0.250565,
		18.346489, 20.696115, 24.663353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.901411, 21.184664, 24.163473>,  <17.726131, 20.968866, 24.838747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.901411, 21.184664, 24.163473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.120457, 20.854422, 24.217875>,  <18.251884, 20.656277, 24.250515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.120457, 20.854422, 24.217875>,  <17.901411, 21.184664, 24.163473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.120457, 20.854422, 24.217875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349378, -0.373309, -0.859404,
		0.760299, 0.423105, -0.492878,
		0.547614, -0.825604, 0.136003,
		18.284740, 20.606741, 24.258675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939775, 20.904194, 23.476116>,  <17.901411, 21.184664, 24.163473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939775, 20.904194, 23.476116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.037733, 20.607273, 23.725599>,  <18.096508, 20.429121, 23.875290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.037733, 20.607273, 23.725599>,  <17.939775, 20.904194, 23.476116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.037733, 20.607273, 23.725599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499267, -0.647999, -0.575178,
		0.831120, -0.170539, -0.529298,
		0.244894, -0.742303, 0.623709,
		18.111202, 20.384583, 23.912712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.043354, 20.424444, 23.043968>,  <17.939775, 20.904194, 23.476116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.043354, 20.424444, 23.043968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.979630, 20.234591, 23.390226>,  <17.941395, 20.120678, 23.597980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.979630, 20.234591, 23.390226>,  <18.043354, 20.424444, 23.043968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.979630, 20.234591, 23.390226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489623, -0.723417, -0.486762,
		0.857256, -0.501387, -0.117144,
		-0.159312, -0.474636, 0.865644,
		17.931835, 20.092199, 23.649920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.456192, 19.743326, 22.972656>,  <18.043354, 20.424444, 23.043968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.456192, 19.743326, 22.972656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.174454, 19.685507, 23.250650>,  <18.005411, 19.650816, 23.417446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.174454, 19.685507, 23.250650>,  <18.456192, 19.743326, 22.972656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.174454, 19.685507, 23.250650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276947, -0.845505, -0.456532,
		0.653603, -0.514030, 0.555496,
		-0.704346, -0.144548, 0.694984,
		17.963150, 19.642143, 23.459145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.462740, 19.055948, 23.069202>,  <18.456192, 19.743326, 22.972656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.462740, 19.055948, 23.069202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.108585, 19.141441, 23.234324>,  <17.896091, 19.192738, 23.333395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.108585, 19.141441, 23.234324>,  <18.462740, 19.055948, 23.069202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.108585, 19.141441, 23.234324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425215, -0.731198, -0.533425,
		0.187828, -0.647817, 0.738277,
		-0.885388, 0.213734, 0.412801,
		17.842968, 19.205561, 23.358164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.102734, 18.466152, 23.127943>,  <18.462740, 19.055948, 23.069202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.102734, 18.466152, 23.127943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.774910, 18.686960, 23.189392>,  <17.578217, 18.819445, 23.226261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.774910, 18.686960, 23.189392>,  <18.102734, 18.466152, 23.127943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774910, 18.686960, 23.189392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489735, -0.535639, -0.687932,
		-0.297464, -0.639036, 0.709330,
		-0.819558, 0.552019, 0.153625,
		17.529043, 18.852566, 23.235479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580280, 18.034153, 23.200466>,  <18.102734, 18.466152, 23.127943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.580280, 18.034153, 23.200466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412567, 18.376499, 23.079340>,  <17.311939, 18.581907, 23.006664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412567, 18.376499, 23.079340>,  <17.580280, 18.034153, 23.200466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.412567, 18.376499, 23.079340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516169, -0.499128, -0.696018,
		-0.746840, -0.135526, 0.651047,
		-0.419284, 0.855864, -0.302815,
		17.286781, 18.633259, 22.988495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.877497, 18.033855, 23.259256>,  <17.580280, 18.034153, 23.200466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.877497, 18.033855, 23.259256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932144, 18.318720, 22.983818>,  <16.964931, 18.489639, 22.818556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932144, 18.318720, 22.983818>,  <16.877497, 18.033855, 23.259256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932144, 18.318720, 22.983818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629081, -0.474593, -0.615645,
		-0.765240, 0.517290, 0.383169,
		0.136618, 0.712161, -0.688594,
		16.973129, 18.532368, 22.777239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.182993, 18.312523, 23.082117>,  <16.877497, 18.033855, 23.259256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.182993, 18.312523, 23.082117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.436415, 18.381367, 22.780392>,  <16.588469, 18.422672, 22.599356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.436415, 18.381367, 22.780392>,  <16.182993, 18.312523, 23.082117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.436415, 18.381367, 22.780392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495367, -0.658679, -0.566351,
		-0.594324, 0.732476, -0.332051,
		0.633554, 0.172109, -0.754313,
		16.626480, 18.432999, 22.554098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.829929, 18.122679, 22.476362>,  <16.182993, 18.312523, 23.082117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.829929, 18.122679, 22.476362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202507, 18.156990, 22.334911>,  <16.426054, 18.177576, 22.250040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202507, 18.156990, 22.334911>,  <15.829929, 18.122679, 22.476362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202507, 18.156990, 22.334911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248987, -0.558460, -0.791282,
		-0.265360, 0.825085, -0.498818,
		0.931445, 0.085776, -0.353628,
		16.481941, 18.182722, 22.228823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746181, 18.387564, 21.869408>,  <15.829929, 18.122679, 22.476362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746181, 18.387564, 21.869408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.105215, 18.211227, 21.869972>,  <16.320635, 18.105425, 21.870312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.105215, 18.211227, 21.869972>,  <15.746181, 18.387564, 21.869408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105215, 18.211227, 21.869972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278508, -0.569539, -0.773343,
		0.341725, 0.693747, -0.633987,
		0.897584, -0.440841, 0.001411,
		16.374491, 18.078976, 21.870396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.078779, 18.442375, 21.133251>,  <15.746181, 18.387564, 21.869408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.078779, 18.442375, 21.133251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252148, 18.124434, 21.303123>,  <16.356169, 17.933668, 21.405046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252148, 18.124434, 21.303123>,  <16.078779, 18.442375, 21.133251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.252148, 18.124434, 21.303123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066013, -0.497982, -0.864671,
		0.898771, 0.346731, -0.268306,
		0.433420, -0.794853, 0.424683,
		16.382174, 17.885977, 21.430529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525581, 18.194771, 20.742146>,  <16.078779, 18.442375, 21.133251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525581, 18.194771, 20.742146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511421, 17.854582, 20.952078>,  <16.502924, 17.650469, 21.078037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511421, 17.854582, 20.952078>,  <16.525581, 18.194771, 20.742146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511421, 17.854582, 20.952078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035306, -0.523767, -0.851129,
		0.998749, -0.048662, -0.011484,
		-0.035402, -0.850470, 0.524830,
		16.500801, 17.599442, 21.109528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.137026, 17.673714, 20.602247>,  <16.525581, 18.194771, 20.742146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.137026, 17.673714, 20.602247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833212, 17.461525, 20.752823>,  <16.650923, 17.334211, 20.843168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833212, 17.461525, 20.752823>,  <17.137026, 17.673714, 20.602247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.833212, 17.461525, 20.752823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082455, -0.495532, -0.864667,
		0.645221, -0.687783, 0.332633,
		-0.759534, -0.530474, 0.376439,
		16.605352, 17.302383, 20.865755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336931, 16.981583, 20.471258>,  <17.137026, 17.673714, 20.602247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.336931, 16.981583, 20.471258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946491, 16.949984, 20.552240>,  <16.712227, 16.931025, 20.600830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946491, 16.949984, 20.552240>,  <17.336931, 16.981583, 20.471258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946491, 16.949984, 20.552240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101341, -0.658646, -0.745597,
		0.192249, -0.748295, 0.634898,
		-0.976100, -0.078999, 0.202457,
		16.653662, 16.926285, 20.612978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178692, 16.335020, 20.623940>,  <17.336931, 16.981583, 20.471258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.178692, 16.335020, 20.623940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.814236, 16.464994, 20.522552>,  <16.595562, 16.542978, 20.461721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.814236, 16.464994, 20.522552>,  <17.178692, 16.335020, 20.623940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814236, 16.464994, 20.522552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098431, -0.768850, -0.631808,
		-0.400173, -0.550715, 0.732512,
		-0.911138, 0.324934, -0.253465,
		16.540894, 16.562475, 20.446512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.724705, 15.730597, 20.575092>,  <17.178692, 16.335020, 20.623940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.724705, 15.730597, 20.575092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538132, 16.004969, 20.351685>,  <16.426188, 16.169592, 20.217640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538132, 16.004969, 20.351685>,  <16.724705, 15.730597, 20.575092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538132, 16.004969, 20.351685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142919, -0.681553, -0.717676,
		-0.872934, -0.254925, 0.415931,
		-0.466433, 0.685929, -0.558518,
		16.398201, 16.210747, 20.184130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.299805, 15.330962, 20.208870>,  <16.724705, 15.730597, 20.575092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.299805, 15.330962, 20.208870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.285385, 15.666678, 19.991875>,  <16.276733, 15.868108, 19.861677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.285385, 15.666678, 19.991875>,  <16.299805, 15.330962, 20.208870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285385, 15.666678, 19.991875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026757, -0.543455, -0.839011,
		-0.998992, -0.015729, 0.042047,
		-0.036048, 0.839291, -0.542487,
		16.274570, 15.918466, 19.829128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.789170, 15.196784, 19.726509>,  <16.299805, 15.330962, 20.208870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.789170, 15.196784, 19.726509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981116, 15.518965, 19.587381>,  <16.096283, 15.712274, 19.503904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981116, 15.518965, 19.587381>,  <15.789170, 15.196784, 19.726509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981116, 15.518965, 19.587381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100563, -0.343337, -0.933813,
		-0.871560, 0.483081, -0.083757,
		0.479864, 0.805452, -0.347819,
		16.125076, 15.760600, 19.483036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.479993, 15.349566, 19.121529>,  <15.789170, 15.196784, 19.726509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.479993, 15.349566, 19.121529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830252, 15.539474, 19.086128>,  <16.040407, 15.653419, 19.064888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830252, 15.539474, 19.086128>,  <15.479993, 15.349566, 19.121529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.830252, 15.539474, 19.086128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134706, -0.416081, -0.899294,
		-0.463784, 0.775543, -0.428295,
		0.875648, 0.474772, -0.088502,
		16.092945, 15.681906, 19.059578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.578886, 15.633047, 18.430248>,  <15.479993, 15.349566, 19.121529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.578886, 15.633047, 18.430248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941040, 15.552598, 18.579823>,  <16.158333, 15.504329, 18.669567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941040, 15.552598, 18.579823>,  <15.578886, 15.633047, 18.430248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941040, 15.552598, 18.579823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240729, -0.482307, -0.842276,
		0.349753, 0.852601, -0.388258,
		0.905385, -0.201123, 0.373934,
		16.212656, 15.492261, 18.692003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.082909, 15.584949, 17.913918>,  <15.578886, 15.633047, 18.430248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.082909, 15.584949, 17.913918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.341318, 15.421984, 18.172117>,  <16.496363, 15.324204, 18.327038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.341318, 15.421984, 18.172117>,  <16.082909, 15.584949, 17.913918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.341318, 15.421984, 18.172117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464263, -0.461534, -0.755940,
		0.605901, 0.788036, -0.109013,
		0.646021, -0.407414, 0.645500,
		16.535124, 15.299760, 18.365767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.802877, 15.715654, 17.505110>,  <16.082909, 15.584949, 17.913918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.802877, 15.715654, 17.505110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833717, 15.428517, 17.781879>,  <16.852221, 15.256235, 17.947941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833717, 15.428517, 17.781879>,  <16.802877, 15.715654, 17.505110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.833717, 15.428517, 17.781879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630816, -0.502302, -0.591408,
		0.772093, 0.482072, 0.414100,
		0.077098, -0.717843, 0.691923,
		16.856846, 15.213164, 17.989456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518755, 15.556569, 17.588558>,  <16.802877, 15.715654, 17.505110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518755, 15.556569, 17.588558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.310022, 15.232836, 17.696388>,  <17.184782, 15.038596, 17.761087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.310022, 15.232836, 17.696388>,  <17.518755, 15.556569, 17.588558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.310022, 15.232836, 17.696388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652108, -0.582201, -0.485590,
		0.549952, -0.077603, 0.831583,
		-0.521832, -0.809333, 0.269577,
		17.153473, 14.990036, 17.777262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040115, 15.126842, 17.756374>,  <17.518755, 15.556569, 17.588558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040115, 15.126842, 17.756374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.712120, 14.900780, 17.720102>,  <17.515324, 14.765142, 17.698339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.712120, 14.900780, 17.720102>,  <18.040115, 15.126842, 17.756374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.712120, 14.900780, 17.720102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500736, -0.631542, -0.591961,
		0.277281, -0.530807, 0.800849,
		-0.819987, -0.565154, -0.090680,
		17.466124, 14.731234, 17.692898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.302811, 14.367674, 17.858232>,  <18.040115, 15.126842, 17.756374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.302811, 14.367674, 17.858232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954750, 14.349259, 17.661980>,  <17.745914, 14.338211, 17.544228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954750, 14.349259, 17.661980>,  <18.302811, 14.367674, 17.858232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.954750, 14.349259, 17.661980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386959, -0.680311, -0.622446,
		-0.305128, -0.731476, 0.609787,
		-0.870149, -0.046037, -0.490633,
		17.693705, 14.335448, 17.514790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.325293, 13.752770, 17.595842>,  <18.302811, 14.367674, 17.858232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.325293, 13.752770, 17.595842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038944, 13.944216, 17.392488>,  <17.867134, 14.059083, 17.270475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038944, 13.944216, 17.392488>,  <18.325293, 13.752770, 17.595842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038944, 13.944216, 17.392488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135988, -0.618593, -0.773854,
		-0.684862, -0.623114, 0.377747,
		-0.715871, 0.478614, -0.508387,
		17.824183, 14.087800, 17.239973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.127806, 13.230777, 17.316767>,  <18.325293, 13.752770, 17.595842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.127806, 13.230777, 17.316767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981655, 13.532509, 17.098598>,  <17.893965, 13.713549, 16.967697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981655, 13.532509, 17.098598>,  <18.127806, 13.230777, 17.316767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981655, 13.532509, 17.098598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184531, -0.515608, -0.836718,
		-0.912385, -0.406365, 0.049194,
		-0.365378, 0.754331, -0.545420,
		17.872042, 13.758808, 16.934973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715788, 12.895198, 16.714882>,  <18.127806, 13.230777, 17.316767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.715788, 12.895198, 16.714882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.791399, 13.276314, 16.619835>,  <17.836765, 13.504983, 16.562807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.791399, 13.276314, 16.619835>,  <17.715788, 12.895198, 16.714882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.791399, 13.276314, 16.619835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129769, -0.264093, -0.955727,
		-0.973360, 0.149823, -0.173563,
		0.189027, 0.952790, -0.237615,
		17.848106, 13.562151, 16.548550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330648, 13.109222, 16.110174>,  <17.715788, 12.895198, 16.714882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.330648, 13.109222, 16.110174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.664316, 13.328145, 16.137362>,  <17.864517, 13.459498, 16.153675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.664316, 13.328145, 16.137362>,  <17.330648, 13.109222, 16.110174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664316, 13.328145, 16.137362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213843, -0.207372, -0.954603,
		-0.508366, 0.810834, -0.290021,
		0.834168, 0.547307, 0.067970,
		17.914566, 13.492337, 16.157753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.303471, 13.412534, 15.518187>,  <17.330648, 13.109222, 16.110174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.303471, 13.412534, 15.518187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686647, 13.478188, 15.612339>,  <17.916553, 13.517580, 15.668831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686647, 13.478188, 15.612339>,  <17.303471, 13.412534, 15.518187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.686647, 13.478188, 15.612339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252976, -0.095853, -0.962713,
		-0.135451, 0.981770, -0.133344,
		0.957944, 0.164134, 0.235381,
		17.974031, 13.527428, 15.682953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.605633, 13.877351, 15.014277>,  <17.303471, 13.412534, 15.518187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.605633, 13.877351, 15.014277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.921309, 13.698215, 15.182381>,  <18.110714, 13.590733, 15.283242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.921309, 13.698215, 15.182381>,  <17.605633, 13.877351, 15.014277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.921309, 13.698215, 15.182381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402742, -0.139228, -0.904663,
		0.463657, 0.883206, 0.070487,
		0.789190, -0.447842, 0.420258,
		18.158066, 13.563862, 15.308458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.200937, 14.142264, 14.610303>,  <17.605633, 13.877351, 15.014277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.200937, 14.142264, 14.610303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383150, 13.838322, 14.795823>,  <18.492477, 13.655956, 14.907135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383150, 13.838322, 14.795823>,  <18.200937, 14.142264, 14.610303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.383150, 13.838322, 14.795823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400787, -0.290157, -0.869010,
		0.794897, 0.581746, 0.172365,
		0.455530, -0.759856, 0.463802,
		18.519810, 13.610365, 14.934963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.927557, 14.183010, 14.505192>,  <18.200937, 14.142264, 14.610303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.927557, 14.183010, 14.505192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.859114, 13.796860, 14.583954>,  <18.818048, 13.565169, 14.631211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.859114, 13.796860, 14.583954>,  <18.927557, 14.183010, 14.505192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.859114, 13.796860, 14.583954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487533, -0.256629, -0.834538,
		0.856174, -0.046797, 0.514564,
		-0.171106, -0.965376, 0.196904,
		18.807781, 13.507247, 14.643025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.609430, 13.732218, 14.401852>,  <18.927557, 14.183010, 14.505192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.609430, 13.732218, 14.401852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.316286, 13.461133, 14.377789>,  <19.140400, 13.298482, 14.363351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.316286, 13.461133, 14.377789>,  <19.609430, 13.732218, 14.401852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.316286, 13.461133, 14.377789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441840, -0.406824, -0.799545,
		0.517389, -0.612536, 0.597586,
		-0.732862, -0.677713, -0.060157,
		19.096428, 13.257819, 14.359741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.921316, 13.360124, 14.051317>,  <19.609430, 13.732218, 14.401852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.921316, 13.360124, 14.051317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.549196, 13.215130, 14.028888>,  <19.325924, 13.128134, 14.015429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.549196, 13.215130, 14.028888>,  <19.921316, 13.360124, 14.051317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.549196, 13.215130, 14.028888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249182, -0.512389, -0.821806,
		0.269160, -0.778500, 0.567001,
		-0.930302, -0.362484, -0.056074,
		19.270105, 13.106385, 14.012066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.947149, 12.658217, 14.077434>,  <19.921316, 13.360124, 14.051317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.947149, 12.658217, 14.077434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.603920, 12.754226, 13.895840>,  <19.397982, 12.811831, 13.786883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.603920, 12.754226, 13.895840>,  <19.947149, 12.658217, 14.077434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.603920, 12.754226, 13.895840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320706, -0.439987, -0.838784,
		-0.401074, -0.865333, 0.300564,
		-0.858072, 0.240022, -0.453984,
		19.346498, 12.826232, 13.759645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.591263, 12.044259, 13.804051>,  <19.947149, 12.658217, 14.077434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.591263, 12.044259, 13.804051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.555859, 12.389999, 13.606036>,  <19.534616, 12.597444, 13.487227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.555859, 12.389999, 13.606036>,  <19.591263, 12.044259, 13.804051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.555859, 12.389999, 13.606036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529080, -0.380286, -0.758589,
		-0.843943, -0.329059, -0.423651,
		-0.088512, 0.864351, -0.495038,
		19.529305, 12.649304, 13.457524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.296892, 11.905770, 13.087847>,  <19.591263, 12.044259, 13.804051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.296892, 11.905770, 13.087847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518822, 12.238068, 13.069792>,  <19.651979, 12.437446, 13.058959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518822, 12.238068, 13.069792>,  <19.296892, 11.905770, 13.087847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518822, 12.238068, 13.069792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426951, -0.330871, -0.841568,
		-0.714062, 0.447650, -0.538261,
		0.554824, 0.830743, -0.045138,
		19.685268, 12.487290, 13.056251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.131666, 12.171813, 12.440195>,  <19.296892, 11.905770, 13.087847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.131666, 12.171813, 12.440195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.480692, 12.309982, 12.578361>,  <19.690107, 12.392884, 12.661260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.480692, 12.309982, 12.578361>,  <19.131666, 12.171813, 12.440195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480692, 12.309982, 12.578361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478274, -0.460209, -0.747972,
		-0.099405, 0.817857, -0.566770,
		0.872567, 0.345424, 0.345413,
		19.742462, 12.413610, 12.681984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.457064, 12.362535, 11.852161>,  <19.131666, 12.171813, 12.440195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.457064, 12.362535, 11.852161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.693764, 12.239021, 12.150015>,  <19.835785, 12.164912, 12.328727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.693764, 12.239021, 12.150015>,  <19.457064, 12.362535, 11.852161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.693764, 12.239021, 12.150015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395827, -0.693396, -0.602098,
		0.702247, 0.651039, -0.288092,
		0.591752, -0.308787, 0.744635,
		19.871290, 12.146385, 12.373405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.307089, 12.409419, 11.697824>,  <19.457064, 12.362535, 11.852161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.307089, 12.409419, 11.697824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.173288, 12.110724, 11.927778>,  <20.093008, 11.931507, 12.065751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.173288, 12.110724, 11.927778>,  <20.307089, 12.409419, 11.697824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.173288, 12.110724, 11.927778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574095, -0.645233, -0.504073,
		0.747345, 0.161426, 0.644529,
		-0.334501, -0.746737, 0.574885,
		20.072939, 11.886703, 12.100244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.848324, 12.113493, 12.096025>,  <20.307089, 12.409419, 11.697824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.848324, 12.113493, 12.096025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.545530, 11.865582, 12.013226>,  <20.363853, 11.716834, 11.963546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.545530, 11.865582, 12.013226>,  <20.848324, 12.113493, 12.096025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.545530, 11.865582, 12.013226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634971, -0.622943, -0.456895,
		0.154226, -0.477300, 0.865101,
		-0.756985, -0.619779, -0.206998,
		20.318436, 11.679647, 11.951126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.844625, 11.474257, 12.520128>,  <20.848324, 12.113493, 12.096025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.844625, 11.474257, 12.520128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.710894, 11.417005, 12.147519>,  <20.630653, 11.382653, 11.923953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.710894, 11.417005, 12.147519>,  <20.844625, 11.474257, 12.520128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.710894, 11.417005, 12.147519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825864, -0.520689, -0.216405,
		-0.454060, -0.841663, 0.292288,
		-0.334332, -0.143130, -0.931524,
		20.610594, 11.374065, 11.868062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.212267, 10.841560, 12.270421>,  <20.844625, 11.474257, 12.520128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.212267, 10.841560, 12.270421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.043678, 11.009987, 11.949157>,  <20.942526, 11.111043, 11.756398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.043678, 11.009987, 11.949157>,  <21.212267, 10.841560, 12.270421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.043678, 11.009987, 11.949157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817846, -0.206137, -0.537247,
		-0.391777, -0.883295, -0.257486,
		-0.421471, 0.421066, -0.803160,
		20.917236, 11.136307, 11.708209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.874054, 10.491553, 12.296024>,  <21.212267, 10.841560, 12.270421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.874054, 10.491553, 12.296024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.232399, 10.656945, 12.361099>,  <22.447405, 10.756180, 12.400145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.232399, 10.656945, 12.361099>,  <21.874054, 10.491553, 12.296024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.232399, 10.656945, 12.361099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153676, 0.631869, -0.759687,
		-0.416913, 0.655573, 0.629609,
		0.895861, 0.413479, 0.162688,
		22.501158, 10.780989, 12.409905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.951221, 11.214005, 12.309345>,  <21.874054, 10.491553, 12.296024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.951221, 11.214005, 12.309345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.307558, 11.102134, 12.166134>,  <22.521360, 11.035011, 12.080207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.307558, 11.102134, 12.166134>,  <21.951221, 11.214005, 12.309345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.307558, 11.102134, 12.166134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218086, 0.428075, -0.877035,
		0.398549, 0.859380, 0.320353,
		0.890841, -0.279677, -0.358027,
		22.574810, 11.018230, 12.058725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.321047, 11.844459, 12.171467>,  <21.951221, 11.214005, 12.309345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.321047, 11.844459, 12.171467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445301, 11.538441, 11.945826>,  <22.519854, 11.354830, 11.810441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445301, 11.538441, 11.945826>,  <22.321047, 11.844459, 12.171467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.445301, 11.538441, 11.945826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155180, 0.544683, -0.824160,
		0.937777, 0.343550, 0.050477,
		0.310635, -0.765045, -0.564103,
		22.538492, 11.308928, 11.776595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.528536, 12.237743, 11.722013>,  <22.321047, 11.844459, 12.171467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.528536, 12.237743, 11.722013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.537615, 11.861635, 11.586143>,  <22.543062, 11.635970, 11.504622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.537615, 11.861635, 11.586143>,  <22.528536, 12.237743, 11.722013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.537615, 11.861635, 11.586143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037793, 0.340323, -0.939549,
		0.999028, 0.008490, 0.043261,
		0.022699, -0.940270, -0.339672,
		22.544424, 11.579555, 11.484242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.877705, 12.259240, 11.178505>,  <22.528536, 12.237743, 11.722013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.877705, 12.259240, 11.178505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687954, 11.916488, 11.097788>,  <22.574102, 11.710836, 11.049357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687954, 11.916488, 11.097788>,  <22.877705, 12.259240, 11.178505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.687954, 11.916488, 11.097788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018518, 0.238889, -0.970870,
		0.880127, -0.456822, -0.129191,
		-0.474377, -0.856881, -0.201794,
		22.545641, 11.659424, 11.037250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.303312, 11.953080, 10.583685>,  <22.877705, 12.259240, 11.178505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.303312, 11.953080, 10.583685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.943485, 11.778493, 10.590263>,  <22.727589, 11.673740, 10.594211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.943485, 11.778493, 10.590263>,  <23.303312, 11.953080, 10.583685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.943485, 11.778493, 10.590263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097767, 0.164516, -0.981517,
		0.425696, -0.884550, -0.190666,
		-0.899569, -0.436469, 0.016446,
		22.673615, 11.647552, 10.595198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.337393, 11.680700, 9.959612>,  <23.303312, 11.953080, 10.583685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.337393, 11.680700, 9.959612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.954258, 11.695692, 10.073557>,  <22.724377, 11.704687, 10.141924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.954258, 11.695692, 10.073557>,  <23.337393, 11.680700, 9.959612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954258, 11.695692, 10.073557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255464, 0.342639, -0.904067,
		-0.131490, -0.938719, -0.318617,
		-0.957835, 0.037480, 0.284863,
		22.666908, 11.706936, 10.159016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.988548, 11.399821, 9.285416>,  <23.337393, 11.680700, 9.959612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.988548, 11.399821, 9.285416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.699062, 11.579839, 9.494680>,  <22.525372, 11.687849, 9.620239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.699062, 11.579839, 9.494680>,  <22.988548, 11.399821, 9.285416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.699062, 11.579839, 9.494680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414734, 0.322281, -0.850959,
		-0.551573, -0.832824, -0.046591,
		-0.723714, 0.450043, 0.523162,
		22.481947, 11.714851, 9.651628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.410210, 11.374624, 8.782331>,  <22.988548, 11.399821, 9.285416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.410210, 11.374624, 8.782331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.287188, 11.644349, 9.050871>,  <22.213373, 11.806185, 9.211995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.287188, 11.644349, 9.050871>,  <22.410210, 11.374624, 8.782331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.287188, 11.644349, 9.050871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449867, 0.518669, -0.727050,
		-0.838468, -0.525628, 0.143831,
		-0.307557, 0.674313, 0.671350,
		22.194920, 11.846643, 9.252275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.677259, 11.584056, 8.614736>,  <22.410210, 11.374624, 8.782331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.677259, 11.584056, 8.614736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.838833, 11.889928, 8.815575>,  <21.935778, 12.073451, 8.936078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.838833, 11.889928, 8.815575>,  <21.677259, 11.584056, 8.614736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.838833, 11.889928, 8.815575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409460, 0.641950, -0.648261,
		-0.818034, 0.056266, 0.572412,
		0.403935, 0.764679, 0.502098,
		21.960012, 12.119331, 8.966204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.200142, 11.992461, 8.793219>,  <21.677259, 11.584056, 8.614736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.200142, 11.992461, 8.793219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.494505, 12.261373, 8.825429>,  <21.671124, 12.422719, 8.844755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.494505, 12.261373, 8.825429>,  <21.200142, 11.992461, 8.793219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.494505, 12.261373, 8.825429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498993, 0.618883, -0.606622,
		-0.457654, 0.406236, 0.790902,
		0.735907, 0.672277, 0.080525,
		21.715277, 12.463056, 8.849586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.846668, 12.576976, 8.790838>,  <21.200142, 11.992461, 8.793219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.846668, 12.576976, 8.790838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213430, 12.708111, 8.699793>,  <21.433487, 12.786792, 8.645165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213430, 12.708111, 8.699793>,  <20.846668, 12.576976, 8.790838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.213430, 12.708111, 8.699793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398975, 0.767449, -0.501837,
		0.010161, 0.550949, 0.834477,
		0.916905, 0.327837, -0.227613,
		21.488503, 12.806462, 8.631509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865379, 13.268595, 8.889416>,  <20.846668, 12.576976, 8.790838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.865379, 13.268595, 8.889416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.177567, 13.233912, 8.641754>,  <21.364878, 13.213101, 8.493157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.177567, 13.233912, 8.641754>,  <20.865379, 13.268595, 8.889416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.177567, 13.233912, 8.641754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424301, 0.653886, -0.626420,
		0.459173, 0.751608, 0.473546,
		0.780467, -0.086709, -0.619155,
		21.411707, 13.207899, 8.456008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.980307, 13.885280, 8.677914>,  <20.865379, 13.268595, 8.889416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.980307, 13.885280, 8.677914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.166710, 13.687483, 8.384434>,  <21.278551, 13.568805, 8.208345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.166710, 13.687483, 8.384434>,  <20.980307, 13.885280, 8.677914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.166710, 13.687483, 8.384434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379559, 0.637339, -0.670623,
		0.799233, 0.590997, 0.109315,
		0.466007, -0.494492, -0.733700,
		21.306511, 13.539135, 8.164324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.364973, 14.407866, 8.278723>,  <20.980307, 13.885280, 8.677914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.364973, 14.407866, 8.278723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.364237, 14.091000, 8.034601>,  <21.363796, 13.900880, 7.888128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.364237, 14.091000, 8.034601>,  <21.364973, 14.407866, 8.278723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.364237, 14.091000, 8.034601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253918, 0.590672, -0.765919,
		0.967224, 0.153558, -0.202231,
		-0.001839, -0.792165, -0.610304,
		21.363686, 13.853350, 7.851510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.758051, 14.604261, 7.803317>,  <21.364973, 14.407866, 8.278723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.758051, 14.604261, 7.803317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.534384, 14.314987, 7.641166>,  <21.400183, 14.141422, 7.543875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.534384, 14.314987, 7.641166>,  <21.758051, 14.604261, 7.803317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.534384, 14.314987, 7.641166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087135, 0.537521, -0.838737,
		0.824462, -0.433673, -0.363580,
		-0.559170, -0.723187, -0.405377,
		21.366632, 14.098031, 7.519553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.081617, 14.319176, 7.163478>,  <21.758051, 14.604261, 7.803317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.081617, 14.319176, 7.163478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686560, 14.257461, 7.152516>,  <21.449524, 14.220431, 7.145939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686560, 14.257461, 7.152516>,  <22.081617, 14.319176, 7.163478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686560, 14.257461, 7.152516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049026, 0.470334, -0.881126,
		0.148837, -0.868897, -0.472087,
		-0.987646, -0.154288, -0.027405,
		21.390266, 14.211174, 7.144294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.946974, 13.949718, 6.495507>,  <22.081617, 14.319176, 7.163478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.946974, 13.949718, 6.495507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599674, 14.104171, 6.620114>,  <21.391294, 14.196843, 6.694879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599674, 14.104171, 6.620114>,  <21.946974, 13.949718, 6.495507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.599674, 14.104171, 6.620114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149513, 0.395064, -0.906405,
		-0.473063, -0.833562, -0.285282,
		-0.868249, 0.386133, 0.311519,
		21.339199, 14.220011, 6.713570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.602341, 13.887948, 5.917091>,  <21.946974, 13.949718, 6.495507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.602341, 13.887948, 5.917091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.376158, 14.131395, 6.139744>,  <21.240448, 14.277464, 6.273336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.376158, 14.131395, 6.139744>,  <21.602341, 13.887948, 5.917091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.376158, 14.131395, 6.139744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178198, 0.568796, -0.802943,
		-0.805296, -0.553222, -0.213176,
		-0.565459, 0.608619, 0.556632,
		21.206520, 14.313981, 6.306734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127151, 13.956227, 5.555788>,  <21.602341, 13.887948, 5.917091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127151, 13.956227, 5.555788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.063393, 14.269855, 5.795729>,  <21.025137, 14.458033, 5.939693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.063393, 14.269855, 5.795729>,  <21.127151, 13.956227, 5.555788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.063393, 14.269855, 5.795729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274259, 0.548533, -0.789869,
		-0.948353, -0.290419, 0.127603,
		-0.159399, 0.784072, 0.599853,
		21.015574, 14.505077, 5.975685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.428732, 14.288095, 5.373378>,  <21.127151, 13.956227, 5.555788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.428732, 14.288095, 5.373378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.676764, 14.556175, 5.536512>,  <20.825583, 14.717024, 5.634393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.676764, 14.556175, 5.536512>,  <20.428732, 14.288095, 5.373378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.676764, 14.556175, 5.536512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155027, 0.614263, -0.773723,
		-0.769069, 0.416544, 0.484792,
		0.620080, 0.670202, 0.407836,
		20.862787, 14.757236, 5.658863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.189966, 15.026533, 5.267678>,  <20.428732, 14.288095, 5.373378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.189966, 15.026533, 5.267678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.580551, 15.078535, 5.336523>,  <20.814901, 15.109736, 5.377830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.580551, 15.078535, 5.336523>,  <20.189966, 15.026533, 5.267678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.580551, 15.078535, 5.336523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026127, 0.720779, -0.692672,
		-0.214106, 0.680864, 0.700416,
		0.976461, 0.130005, 0.172112,
		20.873489, 15.117537, 5.388157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.554199, 15.465667, 5.388237>,  <20.189966, 15.026533, 5.267678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.554199, 15.465667, 5.388237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.456379, 15.853377, 5.377678>,  <19.397686, 16.086004, 5.371343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.456379, 15.853377, 5.377678>,  <19.554199, 15.465667, 5.388237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.456379, 15.853377, 5.377678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591526, -0.170704, -0.788008,
		-0.768304, -0.177095, 0.615099,
		-0.244552, 0.969277, -0.026396,
		19.383013, 16.144161, 5.369760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742935, 15.489307, 5.368148>,  <19.554199, 15.465667, 5.388237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742935, 15.489307, 5.368148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.940849, 15.791474, 5.196321>,  <19.059599, 15.972775, 5.093224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.940849, 15.791474, 5.196321>,  <18.742935, 15.489307, 5.368148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.940849, 15.791474, 5.196321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542122, -0.118019, -0.831971,
		-0.679183, 0.644527, 0.351135,
		0.494787, 0.755419, -0.429568,
		19.089285, 16.018101, 5.067450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.513435, 16.105944, 5.630323>,  <18.742935, 15.489307, 5.368148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.513435, 16.105944, 5.630323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.413717, 16.221371, 6.000097>,  <18.353888, 16.290627, 6.221962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.413717, 16.221371, 6.000097>,  <18.513435, 16.105944, 5.630323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.413717, 16.221371, 6.000097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953195, -0.095528, 0.286868,
		0.171090, 0.952683, -0.251245,
		-0.249294, 0.288566, 0.924436,
		18.338930, 16.307941, 6.277428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090076, 16.191984, 6.014973>,  <18.513435, 16.105944, 5.630323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.090076, 16.191984, 6.014973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.874693, 16.264488, 6.344142>,  <18.745462, 16.307991, 6.541645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.874693, 16.264488, 6.344142>,  <19.090076, 16.191984, 6.014973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.874693, 16.264488, 6.344142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835376, 0.242877, 0.493111,
		-0.110489, 0.952972, -0.282199,
		-0.538461, 0.181259, 0.822925,
		18.713154, 16.318867, 6.591020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.147024, 16.868353, 6.216484>,  <19.090076, 16.191984, 6.014973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.147024, 16.868353, 6.216484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.102604, 16.603033, 6.512511>,  <19.075953, 16.443842, 6.690127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.102604, 16.603033, 6.512511>,  <19.147024, 16.868353, 6.216484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.102604, 16.603033, 6.512511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816601, 0.363521, 0.448346,
		-0.566419, 0.654130, 0.501283,
		-0.111050, -0.663300, 0.740068,
		19.069288, 16.404043, 6.734531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.568029, 17.150055, 6.809942>,  <19.147024, 16.868353, 6.216484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.568029, 17.150055, 6.809942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.511246, 16.773645, 6.932791>,  <19.477175, 16.547800, 7.006501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.511246, 16.773645, 6.932791>,  <19.568029, 17.150055, 6.809942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.511246, 16.773645, 6.932791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916005, -0.007279, 0.401100,
		-0.375209, 0.338266, 0.863015,
		-0.141961, -0.941022, 0.307122,
		19.468658, 16.491339, 7.024928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542013, 17.111412, 7.523165>,  <19.568029, 17.150055, 6.809942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542013, 17.111412, 7.523165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.698944, 16.773846, 7.376805>,  <19.793102, 16.571306, 7.288989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.698944, 16.773846, 7.376805>,  <19.542013, 17.111412, 7.523165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.698944, 16.773846, 7.376805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694571, 0.011011, 0.719340,
		-0.603034, -0.536360, 0.590480,
		0.392328, -0.843917, -0.365900,
		19.816643, 16.520670, 7.267035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.703583, 16.699726, 8.129678>,  <19.542013, 17.111412, 7.523165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.703583, 16.699726, 8.129678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.896103, 16.569605, 7.804095>,  <20.011614, 16.491531, 7.608745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.896103, 16.569605, 7.804095>,  <19.703583, 16.699726, 8.129678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.896103, 16.569605, 7.804095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795210, -0.228618, 0.561583,
		-0.368771, -0.917557, 0.148653,
		0.481299, -0.325306, -0.813958,
		20.040493, 16.472013, 7.559907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.934855, 16.060165, 8.236607>,  <19.703583, 16.699726, 8.129678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.934855, 16.060165, 8.236607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.174196, 16.217735, 7.957523>,  <20.317801, 16.312277, 7.790073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.174196, 16.217735, 7.957523>,  <19.934855, 16.060165, 8.236607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.174196, 16.217735, 7.957523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774570, -0.061624, 0.629479,
		0.204972, -0.917075, -0.341995,
		0.598354, 0.393925, -0.697707,
		20.353703, 16.335913, 7.748211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.456341, 15.563713, 8.071364>,  <19.934855, 16.060165, 8.236607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.456341, 15.563713, 8.071364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.589355, 15.929567, 7.979400>,  <20.669165, 16.149080, 7.924221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.589355, 15.929567, 7.979400>,  <20.456341, 15.563713, 8.071364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.589355, 15.929567, 7.979400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770454, -0.122876, 0.625541,
		0.543892, -0.385152, -0.745546,
		0.332539, 0.914636, -0.229911,
		20.689117, 16.203959, 7.910427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.154100, 15.435352, 8.036633>,  <20.456341, 15.563713, 8.071364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.154100, 15.435352, 8.036633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.126684, 15.832606, 8.074553>,  <21.110233, 16.070959, 8.097305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.126684, 15.832606, 8.074553>,  <21.154100, 15.435352, 8.036633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.126684, 15.832606, 8.074553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847360, 0.007798, 0.530961,
		0.526576, 0.116724, -0.842077,
		-0.068542, 0.993134, 0.094801,
		21.106121, 16.130547, 8.102994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.839458, 15.666074, 8.006916>,  <21.154100, 15.435352, 8.036633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.839458, 15.666074, 8.006916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.652422, 15.974672, 8.179496>,  <21.540199, 16.159832, 8.283044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.652422, 15.974672, 8.179496>,  <21.839458, 15.666074, 8.006916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.652422, 15.974672, 8.179496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720467, 0.049841, 0.691696,
		0.512137, 0.634278, -0.579143,
		-0.467593, 0.771497, 0.431451,
		21.512144, 16.206121, 8.308931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.275871, 16.262074, 8.081195>,  <21.839458, 15.666074, 8.006916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.275871, 16.262074, 8.081195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.012360, 16.311304, 8.378075>,  <21.854252, 16.340843, 8.556203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.012360, 16.311304, 8.378075>,  <22.275871, 16.262074, 8.081195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.012360, 16.311304, 8.378075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747274, -0.007193, 0.664478,
		0.087121, 0.992371, -0.087234,
		-0.658781, 0.123078, 0.742199,
		21.814726, 16.348227, 8.600735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.502775, 16.753874, 8.550864>,  <22.275871, 16.262074, 8.081195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.502775, 16.753874, 8.550864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.230108, 16.573801, 8.781573>,  <22.066507, 16.465757, 8.919998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.230108, 16.573801, 8.781573>,  <22.502775, 16.753874, 8.550864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.230108, 16.573801, 8.781573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578538, 0.150941, 0.801567,
		-0.447909, 0.880087, 0.157555,
		-0.681668, -0.450181, 0.576772,
		22.025608, 16.438747, 8.954605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.669786, 17.050497, 9.253399>,  <22.502775, 16.753874, 8.550864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.669786, 17.050497, 9.253399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430202, 16.740864, 9.335416>,  <22.286451, 16.555084, 9.384625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430202, 16.740864, 9.335416>,  <22.669786, 17.050497, 9.253399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.430202, 16.740864, 9.335416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393194, -0.061234, 0.917414,
		-0.697598, 0.630118, 0.341041,
		-0.598962, -0.774082, 0.205042,
		22.250513, 16.508638, 9.396929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.383619, 17.125048, 9.894603>,  <22.669786, 17.050497, 9.253399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.383619, 17.125048, 9.894603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.339466, 16.731403, 9.838980>,  <22.312975, 16.495216, 9.805606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.339466, 16.731403, 9.838980>,  <22.383619, 17.125048, 9.894603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.339466, 16.731403, 9.838980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417825, -0.172897, 0.891924,
		-0.901797, 0.040350, 0.430272,
		-0.110381, -0.984113, -0.139059,
		22.306353, 16.436169, 9.797262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.986557, 16.731596, 10.503498>,  <22.383619, 17.125048, 9.894603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.986557, 16.731596, 10.503498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.199755, 16.434916, 10.340625>,  <22.327673, 16.256907, 10.242901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.199755, 16.434916, 10.340625>,  <21.986557, 16.731596, 10.503498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.199755, 16.434916, 10.340625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141273, -0.396470, 0.907113,
		-0.834242, -0.541009, -0.106534,
		0.532994, -0.741701, -0.407183,
		22.359653, 16.212406, 10.218470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.901625, 16.163292, 10.893101>,  <21.986557, 16.731596, 10.503498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.901625, 16.163292, 10.893101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.241045, 16.061798, 10.707377>,  <22.444696, 16.000902, 10.595943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.241045, 16.061798, 10.707377>,  <21.901625, 16.163292, 10.893101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.241045, 16.061798, 10.707377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305225, -0.482062, 0.821252,
		-0.432204, -0.838592, -0.331608,
		0.848550, -0.253733, -0.464308,
		22.495609, 15.985678, 10.568085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.880133, 15.435661, 10.800285>,  <21.901625, 16.163292, 10.893101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.880133, 15.435661, 10.800285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.260303, 15.559142, 10.785363>,  <22.488405, 15.633231, 10.776410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.260303, 15.559142, 10.785363>,  <21.880133, 15.435661, 10.800285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.260303, 15.559142, 10.785363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256733, -0.711361, 0.654258,
		0.175434, -0.631402, -0.755350,
		0.950427, 0.308702, -0.037304,
		22.545431, 15.651752, 10.774172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.173567, 14.819093, 10.726772>,  <21.880133, 15.435661, 10.800285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.173567, 14.819093, 10.726772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.465046, 15.069878, 10.836986>,  <22.639933, 15.220348, 10.903113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.465046, 15.069878, 10.836986>,  <22.173567, 14.819093, 10.726772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.465046, 15.069878, 10.836986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409846, -0.721573, 0.557995,
		0.548660, -0.293682, -0.782767,
		0.728696, 0.626963, 0.275533,
		22.683655, 15.257967, 10.919645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.766142, 14.431208, 10.814230>,  <22.173567, 14.819093, 10.726772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.766142, 14.431208, 10.814230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.870052, 14.760012, 11.016937>,  <22.932398, 14.957294, 11.138562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.870052, 14.760012, 11.016937>,  <22.766142, 14.431208, 10.814230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.870052, 14.760012, 11.016937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549641, -0.557348, 0.622301,
		0.793985, 0.116882, -0.596596,
		0.259776, 0.822011, 0.506769,
		22.947985, 15.006615, 11.168968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.501011, 14.320938, 10.918575>,  <22.766142, 14.431208, 10.814230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.501011, 14.320938, 10.918575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.349091, 14.592076, 11.170377>,  <23.257938, 14.754760, 11.321458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.349091, 14.592076, 11.170377>,  <23.501011, 14.320938, 10.918575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.349091, 14.592076, 11.170377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393421, -0.497529, 0.773100,
		0.837240, 0.541284, -0.077717,
		-0.379801, 0.677846, 0.629504,
		23.235151, 14.795430, 11.359228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.137638, 14.396539, 11.363417>,  <23.501011, 14.320938, 10.918575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.137638, 14.396539, 11.363417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.819099, 14.554451, 11.546710>,  <23.627975, 14.649199, 11.656686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.819099, 14.554451, 11.546710>,  <24.137638, 14.396539, 11.363417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.819099, 14.554451, 11.546710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391896, -0.240289, 0.888076,
		0.460704, 0.886797, 0.036640,
		-0.796348, 0.394781, 0.458234,
		23.580194, 14.672885, 11.684180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.455620, 14.693494, 11.960720>,  <24.137638, 14.396539, 11.363417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.455620, 14.693494, 11.960720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.066563, 14.681406, 12.052856>,  <23.833128, 14.674153, 12.108138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.066563, 14.681406, 12.052856>,  <24.455620, 14.693494, 11.960720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.066563, 14.681406, 12.052856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229741, -0.272318, 0.934378,
		0.034489, 0.961733, 0.271810,
		-0.972641, -0.030220, 0.230341,
		23.774771, 14.672340, 12.121959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.316414, 15.091609, 12.546140>,  <24.455620, 14.693494, 11.960720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.316414, 15.091609, 12.546140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.049112, 14.795094, 12.521058>,  <23.888731, 14.617186, 12.506009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.049112, 14.795094, 12.521058>,  <24.316414, 15.091609, 12.546140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.049112, 14.795094, 12.521058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111666, -0.183281, 0.976698,
		-0.735506, 0.645679, 0.205255,
		-0.668253, -0.741287, -0.062704,
		23.848637, 14.572708, 12.502247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752693, 15.438313, 13.113334>,  <24.316414, 15.091609, 12.546140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752693, 15.438313, 13.113334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879623, 15.699300, 12.838061>,  <24.955782, 15.855892, 12.672898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879623, 15.699300, 12.838061>,  <24.752693, 15.438313, 13.113334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.879623, 15.699300, 12.838061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778991, -0.593194, -0.203211,
		-0.540813, -0.471602, -0.696501,
		0.317326, 0.652466, -0.688180,
		24.974821, 15.895040, 12.631607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346237, 15.068850, 13.632501>,  <24.752693, 15.438313, 13.113334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346237, 15.068850, 13.632501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373812, 14.764622, 13.890735>,  <25.390356, 14.582085, 14.045675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373812, 14.764622, 13.890735>,  <25.346237, 15.068850, 13.632501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373812, 14.764622, 13.890735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735367, 0.476043, 0.482306,
		-0.674154, 0.441494, 0.592114,
		0.068936, -0.760570, 0.645586,
		25.394493, 14.536450, 14.084411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203793, 15.198967, 14.365910>,  <25.346237, 15.068850, 13.632501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.203793, 15.198967, 14.365910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468767, 14.900083, 14.344540>,  <25.627752, 14.720752, 14.331717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468767, 14.900083, 14.344540>,  <25.203793, 15.198967, 14.365910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468767, 14.900083, 14.344540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630663, 0.517780, 0.578074,
		-0.404280, -0.416630, 0.814234,
		0.662437, -0.747211, -0.053425,
		25.667498, 14.675920, 14.328512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765375, 15.391184, 14.850163>,  <25.203793, 15.198967, 14.365910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765375, 15.391184, 14.850163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922709, 15.073439, 14.665003>,  <26.017109, 14.882792, 14.553906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922709, 15.073439, 14.665003>,  <25.765375, 15.391184, 14.850163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922709, 15.073439, 14.665003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891038, 0.205276, 0.404863,
		-0.226586, -0.571708, 0.788549,
		0.393333, -0.794362, -0.462901,
		26.040709, 14.835130, 14.526133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708769, 14.735747, 15.236898>,  <25.765375, 15.391184, 14.850163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708769, 14.735747, 15.236898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035391, 14.866003, 15.046237>,  <26.231363, 14.944157, 14.931840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035391, 14.866003, 15.046237>,  <25.708769, 14.735747, 15.236898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035391, 14.866003, 15.046237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390940, 0.295591, 0.871660,
		0.424742, -0.898100, 0.114060,
		0.816553, 0.325640, -0.476653,
		26.280357, 14.963695, 14.903241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348467, 14.342026, 15.456763>,  <25.708769, 14.735747, 15.236898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348467, 14.342026, 15.456763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375792, 14.718698, 15.324962>,  <26.392185, 14.944700, 15.245881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375792, 14.718698, 15.324962>,  <26.348467, 14.342026, 15.456763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375792, 14.718698, 15.324962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253178, 0.303102, 0.918711,
		0.965005, -0.146180, -0.217707,
		0.068310, 0.941680, -0.329504,
		26.396284, 15.001202, 15.226110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933302, 14.527591, 15.892127>,  <26.348467, 14.342026, 15.456763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933302, 14.527591, 15.892127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746399, 14.856853, 15.763080>,  <26.634258, 15.054411, 15.685651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746399, 14.856853, 15.763080>,  <26.933302, 14.527591, 15.892127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746399, 14.856853, 15.763080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332752, 0.501805, 0.798416,
		0.819114, 0.265713, -0.508379,
		-0.467256, 0.823158, -0.322619,
		26.606222, 15.103801, 15.666294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905560, 14.722170, 15.156864>,  <26.933302, 14.527591, 15.892127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905560, 14.722170, 15.156864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781155, 14.912642, 14.827860>,  <26.706511, 15.026924, 14.630457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781155, 14.912642, 14.827860>,  <26.905560, 14.722170, 15.156864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781155, 14.912642, 14.827860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624760, 0.549733, 0.554498,
		0.716201, 0.686329, 0.126523,
		-0.311015, 0.476179, -0.822510,
		26.687851, 15.055495, 14.581107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<15.123114, 20.524246, 19.626328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.833407, 20.284365, 19.762442>,  <14.659584, 20.140434, 19.844110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.833407, 20.284365, 19.762442>,  <15.123114, 20.524246, 19.626328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.833407, 20.284365, 19.762442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052080, -0.444519, -0.894254,
		0.687552, -0.665399, 0.290717,
		-0.724265, -0.599706, 0.340284,
		14.616128, 20.104452, 19.864527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.302514, 19.913240, 19.389250>,  <15.123114, 20.524246, 19.626328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.302514, 19.913240, 19.389250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.914546, 19.865953, 19.474367>,  <14.681766, 19.837582, 19.525438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.914546, 19.865953, 19.474367>,  <15.302514, 19.913240, 19.389250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.914546, 19.865953, 19.474367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134923, -0.466529, -0.874154,
		0.202614, -0.876570, 0.436546,
		-0.969919, -0.118216, 0.212794,
		14.623570, 19.830488, 19.538206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.204736, 19.195894, 19.117718>,  <15.302514, 19.913240, 19.389250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.204736, 19.195894, 19.117718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.839471, 19.356209, 19.147404>,  <14.620312, 19.452396, 19.165215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.839471, 19.356209, 19.147404>,  <15.204736, 19.195894, 19.117718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.839471, 19.356209, 19.147404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296784, -0.528984, -0.795044,
		-0.279384, -0.748029, 0.601995,
		-0.913161, 0.400785, 0.074213,
		14.565522, 19.476444, 19.169668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.714468, 18.619116, 19.055691>,  <15.204736, 19.195894, 19.117718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.714468, 18.619116, 19.055691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.492641, 18.944431, 18.985245>,  <14.359546, 19.139620, 18.942978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.492641, 18.944431, 18.985245>,  <14.714468, 18.619116, 19.055691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.492641, 18.944431, 18.985245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396084, -0.444112, -0.803668,
		-0.731829, -0.375931, 0.568421,
		-0.554567, 0.813290, -0.176114,
		14.326271, 19.188417, 18.932411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024169, 18.372484, 19.066479>,  <14.714468, 18.619116, 19.055691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024169, 18.372484, 19.066479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.007842, 18.711102, 18.854177>,  <13.998046, 18.914272, 18.726797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.007842, 18.711102, 18.854177>,  <14.024169, 18.372484, 19.066479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007842, 18.711102, 18.854177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437661, -0.492671, -0.752149,
		-0.898213, 0.201588, 0.390610,
		-0.040818, 0.846544, -0.530751,
		13.995597, 18.965065, 18.694952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.392910, 18.366520, 18.678263>,  <14.024169, 18.372484, 19.066479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.392910, 18.366520, 18.678263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.602282, 18.641745, 18.477228>,  <13.727904, 18.806879, 18.356607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.602282, 18.641745, 18.477228>,  <13.392910, 18.366520, 18.678263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.602282, 18.641745, 18.477228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295454, -0.406687, -0.864473,
		-0.799205, 0.600983, -0.009582,
		0.523430, 0.688060, -0.502589,
		13.759311, 18.848162, 18.326452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.873616, 18.580547, 18.080183>,  <13.392910, 18.366520, 18.678263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.873616, 18.580547, 18.080183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.256812, 18.650475, 17.989237>,  <13.486730, 18.692430, 17.934669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.256812, 18.650475, 17.989237>,  <12.873616, 18.580547, 18.080183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.256812, 18.650475, 17.989237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110333, -0.507114, -0.854788,
		-0.264732, 0.843963, -0.466522,
		0.957989, 0.174817, -0.227366,
		13.544209, 18.702919, 17.921026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.981120, 18.718084, 17.357792>,  <12.873616, 18.580547, 18.080183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.981120, 18.718084, 17.357792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.345774, 18.606033, 17.478094>,  <13.564566, 18.538803, 17.550276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.345774, 18.606033, 17.478094>,  <12.981120, 18.718084, 17.357792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.345774, 18.606033, 17.478094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090690, -0.576618, -0.811965,
		0.400872, 0.767490, -0.500260,
		0.911634, -0.280126, 0.300754,
		13.619264, 18.521996, 17.568319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.312496, 18.730883, 16.816555>,  <12.981120, 18.718084, 17.357792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.312496, 18.730883, 16.816555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.527680, 18.485678, 17.048008>,  <13.656791, 18.338554, 17.186880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.527680, 18.485678, 17.048008>,  <13.312496, 18.730883, 16.816555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.527680, 18.485678, 17.048008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137168, -0.613616, -0.777599,
		0.831735, 0.497687, -0.246015,
		0.537960, -0.613011, 0.578633,
		13.689069, 18.301775, 17.221598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.878430, 18.539558, 16.387165>,  <13.312496, 18.730883, 16.816555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.878430, 18.539558, 16.387165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.895059, 18.278261, 16.689568>,  <13.905036, 18.121483, 16.871010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.895059, 18.278261, 16.689568>,  <13.878430, 18.539558, 16.387165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.895059, 18.278261, 16.689568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093594, -0.750788, -0.653879,
		0.994742, 0.097940, 0.029928,
		0.041571, -0.653242, 0.756007,
		13.907530, 18.082289, 16.916370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527270, 18.090223, 16.290697>,  <13.878430, 18.539558, 16.387165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527270, 18.090223, 16.290697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.257635, 17.895348, 16.512777>,  <14.095854, 17.778421, 16.646027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.257635, 17.895348, 16.512777>,  <14.527270, 18.090223, 16.290697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.257635, 17.895348, 16.512777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098965, -0.804435, -0.585738,
		0.731991, -0.339894, 0.590475,
		-0.674088, -0.487191, 0.555202,
		14.055408, 17.749189, 16.679338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892415, 17.527308, 16.594046>,  <14.527270, 18.090223, 16.290697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892415, 17.527308, 16.594046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.508534, 17.417334, 16.617308>,  <14.278206, 17.351349, 16.631266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.508534, 17.417334, 16.617308>,  <14.892415, 17.527308, 16.594046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.508534, 17.417334, 16.617308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187235, -0.779905, -0.597237,
		0.209557, -0.562281, 0.799954,
		-0.959703, -0.274935, 0.058156,
		14.220624, 17.334854, 16.634754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.978351, 16.847780, 16.686361>,  <14.892415, 17.527308, 16.594046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.978351, 16.847780, 16.686361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.611788, 16.915873, 16.541464>,  <14.391850, 16.956728, 16.454525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.611788, 16.915873, 16.541464>,  <14.978351, 16.847780, 16.686361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611788, 16.915873, 16.541464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174224, -0.645144, -0.743932,
		-0.360341, -0.744856, 0.561556,
		-0.916406, 0.170232, -0.362244,
		14.336865, 16.966942, 16.432791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.690549, 16.168905, 16.555838>,  <14.978351, 16.847780, 16.686361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.690549, 16.168905, 16.555838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.474935, 16.420765, 16.332058>,  <14.345566, 16.571880, 16.197790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.474935, 16.420765, 16.332058>,  <14.690549, 16.168905, 16.555838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.474935, 16.420765, 16.332058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072284, -0.627172, -0.775519,
		-0.839176, -0.458471, 0.292554,
		-0.539035, 0.629650, -0.559448,
		14.313224, 16.609659, 16.164223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.271389, 15.762897, 16.373589>,  <14.690549, 16.168905, 16.555838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.271389, 15.762897, 16.373589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.197732, 16.055922, 16.111460>,  <14.153538, 16.231735, 15.954183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.197732, 16.055922, 16.111460>,  <14.271389, 15.762897, 16.373589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.197732, 16.055922, 16.111460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047428, -0.672570, -0.738513,
		-0.981755, -0.104911, 0.158593,
		-0.184143, 0.732560, -0.655322,
		14.142489, 16.275690, 15.914863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.681005, 15.519615, 15.937654>,  <14.271389, 15.762897, 16.373589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.681005, 15.519615, 15.937654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.892109, 15.782412, 15.722310>,  <14.018771, 15.940089, 15.593103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.892109, 15.782412, 15.722310>,  <13.681005, 15.519615, 15.937654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.892109, 15.782412, 15.722310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127762, -0.565206, -0.814997,
		-0.839731, 0.498904, -0.214354,
		0.527759, 0.656991, -0.538361,
		14.050437, 15.979509, 15.560802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457102, 15.324740, 15.364951>,  <13.681005, 15.519615, 15.937654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457102, 15.324740, 15.364951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.778193, 15.544732, 15.272732>,  <13.970847, 15.676727, 15.217401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.778193, 15.544732, 15.272732>,  <13.457102, 15.324740, 15.364951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.778193, 15.544732, 15.272732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119065, -0.526626, -0.841718,
		-0.584339, 0.648220, -0.488220,
		0.802727, 0.549979, -0.230548,
		14.019011, 15.709725, 15.203568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387856, 15.660052, 14.681393>,  <13.457102, 15.324740, 15.364951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.387856, 15.660052, 14.681393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.777066, 15.630073, 14.768667>,  <14.010592, 15.612085, 14.821033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.777066, 15.630073, 14.768667>,  <13.387856, 15.660052, 14.681393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.777066, 15.630073, 14.768667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151445, -0.505934, -0.849173,
		0.174032, 0.859310, -0.480936,
		0.973025, -0.074948, 0.218187,
		14.068974, 15.607588, 14.834124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.740948, 15.764448, 14.072040>,  <13.387856, 15.660052, 14.681393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.740948, 15.764448, 14.072040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.004186, 15.565305, 14.297977>,  <14.162128, 15.445819, 14.433540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.004186, 15.565305, 14.297977>,  <13.740948, 15.764448, 14.072040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.004186, 15.565305, 14.297977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230597, -0.580870, -0.780651,
		0.716754, 0.643993, -0.267462,
		0.658094, -0.497859, 0.564843,
		14.201614, 15.415947, 14.467430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.342257, 15.534211, 13.607547>,  <13.740948, 15.764448, 14.072040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.342257, 15.534211, 13.607547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.351495, 15.304276, 13.934723>,  <14.357038, 15.166314, 14.131028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.351495, 15.304276, 13.934723>,  <14.342257, 15.534211, 13.607547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.351495, 15.304276, 13.934723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272729, -0.783503, -0.558338,
		0.961814, 0.235970, 0.138682,
		0.023094, -0.574840, 0.817940,
		14.358423, 15.131824, 14.180105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.915687, 15.085669, 13.518804>,  <14.342257, 15.534211, 13.607547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.915687, 15.085669, 13.518804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.689135, 14.906199, 13.795326>,  <14.553204, 14.798516, 13.961240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.689135, 14.906199, 13.795326>,  <14.915687, 15.085669, 13.518804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.689135, 14.906199, 13.795326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272544, -0.893591, -0.356672,
		0.777775, -0.013600, 0.628395,
		-0.566379, -0.448676, 0.691306,
		14.519221, 14.771596, 14.002718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.332676, 14.607652, 13.886987>,  <14.915687, 15.085669, 13.518804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.332676, 14.607652, 13.886987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.956718, 14.480656, 13.937263>,  <14.731144, 14.404458, 13.967429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.956718, 14.480656, 13.937263>,  <15.332676, 14.607652, 13.886987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.956718, 14.480656, 13.937263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219526, -0.843773, -0.489750,
		0.261546, -0.432721, 0.862755,
		-0.939895, -0.317489, 0.125692,
		14.674750, 14.385409, 13.974971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141043, 14.447245, 13.858497>,  <15.332676, 14.607652, 13.886987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.141043, 14.447245, 13.858497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.509441, 14.421670, 13.704782>,  <16.730480, 14.406325, 13.612554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.509441, 14.421670, 13.704782>,  <16.141043, 14.447245, 13.858497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.509441, 14.421670, 13.704782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341515, 0.607114, 0.717482,
		0.187432, -0.792039, 0.580985,
		0.920998, -0.063936, -0.384286,
		16.785740, 14.402490, 13.589497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565060, 14.240869, 14.387508>,  <16.141043, 14.447245, 13.858497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.565060, 14.240869, 14.387508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.826162, 14.439877, 14.158989>,  <16.982824, 14.559281, 14.021877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.826162, 14.439877, 14.158989>,  <16.565060, 14.240869, 14.387508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.826162, 14.439877, 14.158989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076464, 0.707003, 0.703065,
		0.753701, -0.502613, 0.423457,
		0.652755, 0.497521, -0.571301,
		17.021990, 14.589132, 13.987599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055616, 14.528130, 14.876610>,  <16.565060, 14.240869, 14.387508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.055616, 14.528130, 14.876610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.129278, 14.749002, 14.551358>,  <17.173475, 14.881526, 14.356207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.129278, 14.749002, 14.551358>,  <17.055616, 14.528130, 14.876610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.129278, 14.749002, 14.551358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200808, 0.788693, 0.581067,
		0.962166, -0.270290, 0.034360,
		0.184156, 0.552183, -0.813130,
		17.184525, 14.914658, 14.307419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773382, 14.711062, 14.834310>,  <17.055616, 14.528130, 14.876610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773382, 14.711062, 14.834310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.526777, 14.979733, 14.669986>,  <17.378815, 15.140935, 14.571391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.526777, 14.979733, 14.669986>,  <17.773382, 14.711062, 14.834310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.526777, 14.979733, 14.669986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288817, 0.678321, 0.675622,
		0.732459, 0.297881, -0.612185,
		-0.616512, 0.671675, -0.410810,
		17.341824, 15.181235, 14.546742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.121094, 15.276736, 14.829624>,  <17.773382, 14.711062, 14.834310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.121094, 15.276736, 14.829624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.754488, 15.435055, 14.806486>,  <17.534525, 15.530046, 14.792603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.754488, 15.435055, 14.806486>,  <18.121094, 15.276736, 14.829624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.754488, 15.435055, 14.806486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288470, 0.754199, 0.589889,
		0.277103, 0.523955, -0.805410,
		-0.916515, 0.395797, -0.057846,
		17.479534, 15.553794, 14.789132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277472, 15.877574, 15.155044>,  <18.121094, 15.276736, 14.829624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277472, 15.877574, 15.155044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.881159, 15.897084, 15.104486>,  <17.643372, 15.908791, 15.074150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.881159, 15.897084, 15.104486>,  <18.277472, 15.877574, 15.155044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.881159, 15.897084, 15.104486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032386, 0.820628, 0.570544,
		0.131553, 0.569376, -0.811482,
		-0.990780, 0.048776, -0.126396,
		17.583925, 15.911717, 15.066566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.160753, 16.568607, 14.900359>,  <18.277472, 15.877574, 15.155044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.160753, 16.568607, 14.900359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.827291, 16.424643, 15.067921>,  <17.627214, 16.338263, 15.168458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.827291, 16.424643, 15.067921>,  <18.160753, 16.568607, 14.900359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.827291, 16.424643, 15.067921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027112, 0.784249, 0.619854,
		-0.551619, 0.505388, -0.663551,
		-0.833656, -0.359913, 0.418904,
		17.577194, 16.316669, 15.193592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855143, 17.107058, 15.055014>,  <18.160753, 16.568607, 14.900359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.855143, 17.107058, 15.055014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.657837, 16.830353, 15.265974>,  <17.539454, 16.664330, 15.392550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.657837, 16.830353, 15.265974>,  <17.855143, 17.107058, 15.055014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.657837, 16.830353, 15.265974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197353, 0.679479, 0.706654,
		-0.847196, 0.244484, -0.471685,
		-0.493265, -0.691763, 0.527402,
		17.509857, 16.622824, 15.424194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297449, 17.430454, 15.276695>,  <17.855143, 17.107058, 15.055014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297449, 17.430454, 15.276695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.320435, 17.126324, 15.535494>,  <17.334225, 16.943846, 15.690773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.320435, 17.126324, 15.535494>,  <17.297449, 17.430454, 15.276695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.320435, 17.126324, 15.535494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021724, 0.648866, 0.760593,
		-0.998111, -0.029650, 0.053802,
		0.057462, -0.760325, 0.646996,
		17.337673, 16.898226, 15.729592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.728386, 17.479111, 15.724253>,  <17.297449, 17.430454, 15.276695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.728386, 17.479111, 15.724253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.006424, 17.271711, 15.923452>,  <17.173246, 17.147272, 16.042973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.006424, 17.271711, 15.923452>,  <16.728386, 17.479111, 15.724253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.006424, 17.271711, 15.923452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005146, 0.689102, 0.724647,
		-0.718899, -0.506262, 0.476323,
		0.695096, -0.518497, 0.497999,
		17.214952, 17.116163, 16.072853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432537, 17.590168, 16.435568>,  <16.728386, 17.479111, 15.724253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432537, 17.590168, 16.435568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.819483, 17.488886, 16.431767>,  <17.051651, 17.428116, 16.429485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.819483, 17.488886, 16.431767>,  <16.432537, 17.590168, 16.435568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.819483, 17.488886, 16.431767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188418, 0.693750, 0.695133,
		-0.169417, -0.674239, 0.718818,
		0.967366, -0.253205, -0.009505,
		17.109694, 17.412924, 16.428915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.629005, 17.480574, 17.142492>,  <16.432537, 17.590168, 16.435568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.629005, 17.480574, 17.142492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.000071, 17.535875, 17.003738>,  <17.222710, 17.569056, 16.920486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.000071, 17.535875, 17.003738>,  <16.629005, 17.480574, 17.142492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000071, 17.535875, 17.003738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190631, 0.623442, 0.758275,
		0.321095, -0.769550, 0.551988,
		0.927663, 0.138252, -0.346884,
		17.278370, 17.577351, 16.899673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.265955, 17.304913, 17.670893>,  <16.629005, 17.480574, 17.142492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.265955, 17.304913, 17.670893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.293535, 17.587759, 17.389400>,  <17.310083, 17.757467, 17.220505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.293535, 17.587759, 17.389400>,  <17.265955, 17.304913, 17.670893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293535, 17.587759, 17.389400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024720, 0.703980, 0.709789,
		0.997314, -0.066337, 0.031060,
		0.068951, 0.707115, -0.703729,
		17.314220, 17.799894, 17.178282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.596313, 17.925613, 17.959763>,  <17.265955, 17.304913, 17.670893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.596313, 17.925613, 17.959763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.461887, 18.091291, 17.621412>,  <17.381231, 18.190699, 17.418402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.461887, 18.091291, 17.621412>,  <17.596313, 17.925613, 17.959763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.461887, 18.091291, 17.621412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020355, 0.894706, 0.446191,
		0.941619, 0.167166, -0.292247,
		-0.336064, 0.414193, -0.845875,
		17.361069, 18.215549, 17.367649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028793, 18.554588, 17.782150>,  <17.596313, 17.925613, 17.959763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028793, 18.554588, 17.782150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.669918, 18.614439, 17.615936>,  <17.454594, 18.650349, 17.516209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.669918, 18.614439, 17.615936>,  <18.028793, 18.554588, 17.782150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.669918, 18.614439, 17.615936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026554, 0.920885, 0.388929,
		0.440852, 0.359976, -0.822233,
		-0.897187, 0.149627, -0.415533,
		17.400763, 18.659327, 17.491276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159094, 19.177433, 17.576662>,  <18.028793, 18.554588, 17.782150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.159094, 19.177433, 17.576662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.764853, 19.123606, 17.535719>,  <17.528307, 19.091311, 17.511152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.764853, 19.123606, 17.535719>,  <18.159094, 19.177433, 17.576662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.764853, 19.123606, 17.535719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158816, 0.944521, 0.287501,
		0.057992, 0.299618, -0.952295,
		-0.985604, -0.134567, -0.102359,
		17.469172, 19.083235, 17.505011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838850, 19.852043, 17.420626>,  <18.159094, 19.177433, 17.576662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838850, 19.852043, 17.420626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.508018, 19.660587, 17.538506>,  <17.309521, 19.545713, 17.609234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.508018, 19.660587, 17.538506>,  <17.838850, 19.852043, 17.420626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.508018, 19.660587, 17.538506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275642, 0.802300, 0.529468,
		-0.489862, 0.356679, -0.795497,
		-0.827077, -0.478638, 0.294701,
		17.259895, 19.516996, 17.626915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.226000, 20.361805, 17.424164>,  <17.838850, 19.852043, 17.420626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.226000, 20.361805, 17.424164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.137434, 20.050634, 17.659384>,  <17.084293, 19.863932, 17.800516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.137434, 20.050634, 17.659384>,  <17.226000, 20.361805, 17.424164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.137434, 20.050634, 17.659384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305395, 0.628001, 0.715785,
		-0.926126, -0.021101, -0.376625,
		-0.221417, -0.777926, 0.588052,
		17.071009, 19.817257, 17.835800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.432655, 20.458450, 17.675060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.620102, 20.212149, 17.928436>,  <16.732571, 20.064367, 18.080462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.620102, 20.212149, 17.928436>,  <16.432655, 20.458450, 17.675060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.620102, 20.212149, 17.928436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278430, 0.577548, 0.767408,
		-0.838376, -0.535989, 0.099205,
		0.468618, -0.615755, 0.633438,
		16.760687, 20.027422, 18.118467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.956120, 20.285715, 18.220060>,  <16.432655, 20.458450, 17.675060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.956120, 20.285715, 18.220060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.326286, 20.230042, 18.361048>,  <16.548386, 20.196638, 18.445641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.326286, 20.230042, 18.361048>,  <15.956120, 20.285715, 18.220060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.326286, 20.230042, 18.361048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233365, 0.523519, 0.819432,
		-0.298575, -0.840569, 0.451993,
		0.925416, -0.139182, 0.352469,
		16.603910, 20.188286, 18.466789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871039, 20.297930, 18.932936>,  <15.956120, 20.285715, 18.220060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871039, 20.297930, 18.932936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.263260, 20.361780, 18.887264>,  <16.498592, 20.400091, 18.859861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.263260, 20.361780, 18.887264>,  <15.871039, 20.297930, 18.932936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263260, 20.361780, 18.887264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072720, 0.244863, 0.966827,
		0.182285, -0.956328, 0.228494,
		0.980553, 0.159622, -0.114179,
		16.557426, 20.409668, 18.853010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097454, 20.019764, 19.486454>,  <15.871039, 20.297930, 18.932936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.097454, 20.019764, 19.486454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.408911, 20.251156, 19.389229>,  <16.595785, 20.389990, 19.330893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.408911, 20.251156, 19.389229>,  <16.097454, 20.019764, 19.486454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.408911, 20.251156, 19.389229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074570, 0.299317, 0.951235,
		0.623022, -0.758797, 0.189924,
		0.778642, 0.578478, -0.243064,
		16.642504, 20.424700, 19.316309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663473, 19.977808, 20.061197>,  <16.097454, 20.019764, 19.486454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.663473, 19.977808, 20.061197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.740156, 20.326696, 19.881207>,  <16.786167, 20.536030, 19.773212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.740156, 20.326696, 19.881207>,  <16.663473, 19.977808, 20.061197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.740156, 20.326696, 19.881207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109717, 0.436560, 0.892960,
		0.975300, -0.220558, -0.012005,
		0.191709, 0.872221, -0.449976,
		16.797668, 20.588362, 19.746214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155958, 20.230898, 20.444614>,  <16.663473, 19.977808, 20.061197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155958, 20.230898, 20.444614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.027418, 20.545088, 20.233042>,  <16.950294, 20.733601, 20.106098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.027418, 20.545088, 20.233042>,  <17.155958, 20.230898, 20.444614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027418, 20.545088, 20.233042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059884, 0.574294, 0.816456,
		0.945065, 0.230693, -0.231586,
		-0.321349, 0.785473, -0.528931,
		16.931013, 20.780729, 20.074362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.745716, 20.706490, 20.457851>,  <17.155958, 20.230898, 20.444614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.745716, 20.706490, 20.457851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.409582, 20.914145, 20.395452>,  <17.207903, 21.038738, 20.358013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.409582, 20.914145, 20.395452>,  <17.745716, 20.706490, 20.457851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.409582, 20.914145, 20.395452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153156, 0.503440, 0.850348,
		0.519985, 0.690683, -0.502566,
		-0.840333, 0.519139, -0.155998,
		17.157482, 21.069887, 20.348654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.941769, 21.312553, 20.615210>,  <17.745716, 20.706490, 20.457851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.941769, 21.312553, 20.615210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.544626, 21.358486, 20.628164>,  <17.306341, 21.386045, 20.635937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.544626, 21.358486, 20.628164>,  <17.941769, 21.312553, 20.615210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.544626, 21.358486, 20.628164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102772, 0.685210, 0.721059,
		0.060611, 0.719236, -0.692117,
		-0.992857, 0.114834, 0.032386,
		17.246769, 21.392937, 20.637880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692263, 22.022306, 20.593040>,  <17.941769, 21.312553, 20.615210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692263, 22.022306, 20.593040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.393770, 21.838236, 20.785448>,  <17.214674, 21.727795, 20.900892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.393770, 21.838236, 20.785448>,  <17.692263, 22.022306, 20.593040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.393770, 21.838236, 20.785448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000278, 0.722373, 0.691504,
		-0.665687, 0.516155, -0.538929,
		-0.746231, -0.460176, 0.481017,
		17.169901, 21.700184, 20.929754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.195623, 22.542454, 20.723867>,  <17.692263, 22.022306, 20.593040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.195623, 22.542454, 20.723867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.125843, 22.259378, 20.997728>,  <17.083975, 22.089533, 21.162045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.125843, 22.259378, 20.997728>,  <17.195623, 22.542454, 20.723867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.125843, 22.259378, 20.997728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197114, 0.656140, 0.728441,
		-0.964734, 0.262033, 0.025030,
		-0.174452, -0.707686, 0.684651,
		17.073507, 22.047073, 21.203123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.855188, 22.891012, 21.210705>,  <17.195623, 22.542454, 20.723867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.855188, 22.891012, 21.210705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.986061, 22.557669, 21.388905>,  <17.064585, 22.357662, 21.495825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.986061, 22.557669, 21.388905>,  <16.855188, 22.891012, 21.210705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.986061, 22.557669, 21.388905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200893, 0.522010, 0.828944,
		-0.923360, -0.181717, 0.338208,
		0.327181, -0.833357, 0.445497,
		17.084215, 22.307661, 21.522554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579563, 22.911285, 21.875895>,  <16.855188, 22.891012, 21.210705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.579563, 22.911285, 21.875895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.886692, 22.658588, 21.918518>,  <17.070969, 22.506971, 21.944092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.886692, 22.658588, 21.918518>,  <16.579563, 22.911285, 21.875895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886692, 22.658588, 21.918518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143486, 0.331670, 0.932420,
		-0.624391, -0.700641, 0.345309,
		0.767820, -0.631742, 0.106560,
		17.117039, 22.469067, 21.950485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.541010, 22.492579, 22.535849>,  <16.579563, 22.911285, 21.875895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.541010, 22.492579, 22.535849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.923100, 22.510571, 22.418867>,  <17.152353, 22.521366, 22.348679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.923100, 22.510571, 22.418867>,  <16.541010, 22.492579, 22.535849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.923100, 22.510571, 22.418867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269559, 0.275307, 0.922791,
		0.122021, -0.960303, 0.250855,
		0.955222, 0.044980, -0.292451,
		17.209665, 22.524065, 22.331131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803123, 22.484995, 23.104801>,  <16.541010, 22.492579, 22.535849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803123, 22.484995, 23.104801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.133640, 22.563808, 22.893740>,  <17.331951, 22.611095, 22.767103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.133640, 22.563808, 22.893740>,  <16.803123, 22.484995, 23.104801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133640, 22.563808, 22.893740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450322, 0.331580, 0.829014,
		0.338318, -0.922619, 0.185244,
		0.826287, 0.197051, -0.527655,
		17.381529, 22.622919, 22.735443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324907, 22.093983, 23.378504>,  <16.803123, 22.484995, 23.104801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324907, 22.093983, 23.378504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.546507, 22.366356, 23.186916>,  <17.679466, 22.529779, 23.071964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.546507, 22.366356, 23.186916>,  <17.324907, 22.093983, 23.378504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.546507, 22.366356, 23.186916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486677, 0.201889, 0.849934,
		0.675448, -0.703967, -0.219548,
		0.554001, 0.680934, -0.478970,
		17.712708, 22.570637, 23.043226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968306, 21.972784, 23.627335>,  <17.324907, 22.093983, 23.378504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.968306, 21.972784, 23.627335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.981873, 22.348433, 23.490570>,  <17.990013, 22.573822, 23.408512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.981873, 22.348433, 23.490570>,  <17.968306, 21.972784, 23.627335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981873, 22.348433, 23.490570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524180, 0.274561, 0.806134,
		0.850932, -0.206564, -0.482956,
		0.033918, 0.939121, -0.341909,
		17.992048, 22.630169, 23.387997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587368, 22.209101, 23.905069>,  <17.968306, 21.972784, 23.627335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587368, 22.209101, 23.905069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.388636, 22.542524, 23.808456>,  <18.269396, 22.742579, 23.750488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.388636, 22.542524, 23.808456>,  <18.587368, 22.209101, 23.905069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.388636, 22.542524, 23.808456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238499, 0.398737, 0.885510,
		0.834433, 0.382342, -0.396907,
		-0.496829, 0.833561, -0.241531,
		18.239588, 22.792593, 23.735996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.074976, 22.803488, 24.028763>,  <18.587368, 22.209101, 23.905069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.074976, 22.803488, 24.028763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.703569, 22.951918, 24.033873>,  <18.480726, 23.040976, 24.036938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.703569, 22.951918, 24.033873>,  <19.074976, 22.803488, 24.028763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.703569, 22.951918, 24.033873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121106, 0.270151, 0.955171,
		0.350990, 0.888438, -0.295778,
		-0.928515, 0.371076, 0.012775,
		18.425014, 23.063240, 24.037704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.117123, 23.472538, 24.323296>,  <19.074976, 22.803488, 24.028763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.117123, 23.472538, 24.323296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.740284, 23.346733, 24.369833>,  <18.514181, 23.271250, 24.397755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.740284, 23.346733, 24.369833>,  <19.117123, 23.472538, 24.323296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.740284, 23.346733, 24.369833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008419, 0.324644, 0.945799,
		-0.335236, 0.892013, -0.303198,
		-0.942096, -0.314514, 0.116342,
		18.457655, 23.252378, 24.404736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.746004, 24.022640, 24.599300>,  <19.117123, 23.472538, 24.323296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.746004, 24.022640, 24.599300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.487591, 23.735806, 24.703936>,  <18.332542, 23.563705, 24.766716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.487591, 23.735806, 24.703936>,  <18.746004, 24.022640, 24.599300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487591, 23.735806, 24.703936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004459, 0.339152, 0.940721,
		-0.763296, 0.608904, -0.215906,
		-0.646034, -0.717085, 0.261589,
		18.293781, 23.520679, 24.782412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.102049, 24.290348, 24.829126>,  <18.746004, 24.022640, 24.599300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.102049, 24.290348, 24.829126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.151695, 23.934454, 25.004837>,  <18.181484, 23.720917, 25.110264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.151695, 23.934454, 25.004837>,  <18.102049, 24.290348, 24.829126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.151695, 23.934454, 25.004837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063794, 0.434630, 0.898347,
		-0.990215, -0.139524, -0.002814,
		0.124117, -0.889736, 0.439278,
		18.188931, 23.667534, 25.136620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651739, 24.397545, 25.519684>,  <18.102049, 24.290348, 24.829126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.651739, 24.397545, 25.519684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.895994, 24.084600, 25.568724>,  <18.042547, 23.896833, 25.598148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.895994, 24.084600, 25.568724>,  <17.651739, 24.397545, 25.519684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.895994, 24.084600, 25.568724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047300, 0.190574, 0.980533,
		-0.790496, -0.592951, 0.153377,
		0.610637, -0.782362, 0.122601,
		18.079185, 23.849892, 25.605503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.492168, 24.079947, 26.148262>,  <17.651739, 24.397545, 25.519684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.492168, 24.079947, 26.148262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.861820, 23.940851, 26.084938>,  <18.083611, 23.857393, 26.046944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.861820, 23.940851, 26.084938>,  <17.492168, 24.079947, 26.148262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.861820, 23.940851, 26.084938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194392, 0.071208, 0.978336,
		-0.328933, -0.934883, 0.133403,
		0.924129, -0.347740, -0.158311,
		18.139059, 23.836529, 26.037445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.650623, 23.508675, 26.724169>,  <17.492168, 24.079947, 26.148262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.650623, 23.508675, 26.724169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.000526, 23.630108, 26.573101>,  <18.210468, 23.702967, 26.482460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.000526, 23.630108, 26.573101>,  <17.650623, 23.508675, 26.724169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.000526, 23.630108, 26.573101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382700, 0.045230, 0.922765,
		0.297217, -0.951731, -0.076615,
		0.874758, 0.303582, -0.377671,
		18.262955, 23.721182, 26.459799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917442, 23.649734, 26.443810>,  <17.650623, 23.508675, 26.724169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917442, 23.649734, 26.443810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.662285, 23.476295, 26.698395>,  <16.509192, 23.372232, 26.851147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.662285, 23.476295, 26.698395>,  <16.917442, 23.649734, 26.443810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.662285, 23.476295, 26.698395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244853, -0.669371, -0.701420,
		0.730165, -0.603270, 0.320818,
		-0.637892, -0.433599, 0.636464,
		16.470917, 23.346216, 26.889334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025639, 22.888613, 26.418373>,  <16.917442, 23.649734, 26.443810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.025639, 22.888613, 26.418373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.655504, 22.934072, 26.563061>,  <16.433424, 22.961348, 26.649874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.655504, 22.934072, 26.563061>,  <17.025639, 22.888613, 26.418373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.655504, 22.934072, 26.563061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338503, -0.677389, -0.653116,
		0.170798, -0.726793, 0.665282,
		-0.925334, 0.113649, 0.361719,
		16.377903, 22.968166, 26.671576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712597, 22.233030, 26.528582>,  <17.025639, 22.888613, 26.418373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.712597, 22.233030, 26.528582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.395302, 22.472136, 26.482187>,  <16.204924, 22.615599, 26.454351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.395302, 22.472136, 26.482187>,  <16.712597, 22.233030, 26.528582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.395302, 22.472136, 26.482187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386509, -0.641482, -0.662655,
		-0.470511, -0.480816, 0.739889,
		-0.793240, 0.597760, -0.115985,
		16.157330, 22.651464, 26.447392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.197830, 21.757847, 26.506891>,  <16.712597, 22.233030, 26.528582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.197830, 21.757847, 26.506891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.007263, 22.084368, 26.376247>,  <15.892922, 22.280281, 26.297861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.007263, 22.084368, 26.376247>,  <16.197830, 21.757847, 26.506891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007263, 22.084368, 26.376247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578433, -0.570769, -0.582785,
		-0.662149, -0.088727, 0.744101,
		-0.476419, 0.816303, -0.326612,
		15.864338, 22.329258, 26.278263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.567425, 21.572184, 26.496489>,  <16.197830, 21.757847, 26.506891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.567425, 21.572184, 26.496489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.634410, 21.872465, 26.240864>,  <15.674601, 22.052633, 26.087488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.634410, 21.872465, 26.240864>,  <15.567425, 21.572184, 26.496489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.634410, 21.872465, 26.240864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388897, -0.545353, -0.742529,
		-0.905933, 0.372876, 0.200619,
		0.167463, 0.750702, -0.639064,
		15.684649, 22.097675, 26.049145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.976715, 21.501066, 25.974813>,  <15.567425, 21.572184, 26.496489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.976715, 21.501066, 25.974813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.201406, 21.773268, 25.786612>,  <15.336220, 21.936588, 25.673691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.201406, 21.773268, 25.786612>,  <14.976715, 21.501066, 25.974813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.201406, 21.773268, 25.786612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332747, -0.334852, -0.881563,
		-0.757457, 0.651758, 0.038340,
		0.561727, 0.680504, -0.470507,
		15.369924, 21.977419, 25.645460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495736, 21.721880, 25.463503>,  <14.976715, 21.501066, 25.974813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495736, 21.721880, 25.463503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.874011, 21.800728, 25.360106>,  <15.100976, 21.848036, 25.298067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.874011, 21.800728, 25.360106>,  <14.495736, 21.721880, 25.463503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.874011, 21.800728, 25.360106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202390, -0.265245, -0.942700,
		-0.254389, 0.943816, -0.210944,
		0.945687, 0.197120, -0.258494,
		15.157717, 21.859863, 25.282557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.551318, 22.005442, 24.845522>,  <14.495736, 21.721880, 25.463503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.551318, 22.005442, 24.845522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.923347, 21.858959, 24.833805>,  <15.146565, 21.771070, 24.826775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.923347, 21.858959, 24.833805>,  <14.551318, 22.005442, 24.845522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.923347, 21.858959, 24.833805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145045, -0.292789, -0.945112,
		0.337528, 0.883272, -0.325432,
		0.930074, -0.366204, -0.029290,
		15.202370, 21.749098, 24.825018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887968, 22.274588, 24.291706>,  <14.551318, 22.005442, 24.845522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887968, 22.274588, 24.291706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.106624, 21.948549, 24.368441>,  <15.237817, 21.752926, 24.414482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.106624, 21.948549, 24.368441>,  <14.887968, 22.274588, 24.291706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.106624, 21.948549, 24.368441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033647, -0.250289, -0.967586,
		0.836691, 0.522467, -0.164244,
		0.546640, -0.815097, 0.191836,
		15.270616, 21.704020, 24.425991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400294, 22.302761, 23.818851>,  <14.887968, 22.274588, 24.291706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400294, 22.302761, 23.818851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.345803, 21.923191, 23.932684>,  <15.313108, 21.695450, 24.000982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.345803, 21.923191, 23.932684>,  <15.400294, 22.302761, 23.818851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.345803, 21.923191, 23.932684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020433, -0.284505, -0.958457,
		0.990467, -0.136382, 0.019368,
		-0.136227, -0.948924, 0.284580,
		15.304935, 21.638514, 24.018059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.835068, 21.929501, 23.357174>,  <15.400294, 22.302761, 23.818851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.835068, 21.929501, 23.357174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.585780, 21.654381, 23.506052>,  <15.436208, 21.489309, 23.595379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.585780, 21.654381, 23.506052>,  <15.835068, 21.929501, 23.357174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.585780, 21.654381, 23.506052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137943, -0.371780, -0.918015,
		0.769785, -0.623466, 0.136823,
		-0.623220, -0.687801, 0.372193,
		15.398814, 21.448040, 23.617710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.090626, 21.285192, 23.212269>,  <15.835068, 21.929501, 23.357174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.090626, 21.285192, 23.212269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.717783, 21.150766, 23.266287>,  <15.494077, 21.070110, 23.298698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.717783, 21.150766, 23.266287>,  <16.090626, 21.285192, 23.212269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.717783, 21.150766, 23.266287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016558, -0.412015, -0.911026,
		0.361804, -0.846938, 0.389607,
		-0.932107, -0.336064, 0.135045,
		15.438150, 21.049948, 23.306801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.077301, 20.590244, 22.998877>,  <16.090626, 21.285192, 23.212269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.077301, 20.590244, 22.998877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.705071, 20.735771, 22.982521>,  <15.481734, 20.823088, 22.972708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.705071, 20.735771, 22.982521>,  <16.077301, 20.590244, 22.998877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.705071, 20.735771, 22.982521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068942, -0.283826, -0.956394,
		-0.359560, -0.887175, 0.289202,
		-0.930572, 0.363819, -0.040889,
		15.425900, 20.844915, 22.970255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.682532, 20.002638, 22.697325>,  <16.077301, 20.590244, 22.998877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.682532, 20.002638, 22.697325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.458368, 20.329952, 22.646175>,  <15.323870, 20.526340, 22.615486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.458368, 20.329952, 22.646175>,  <15.682532, 20.002638, 22.697325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.458368, 20.329952, 22.646175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292142, -0.339776, -0.893983,
		-0.774981, -0.463639, 0.429469,
		-0.560409, 0.818286, -0.127871,
		15.290246, 20.575438, 22.607815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.131378, 19.654284, 22.306690>,  <15.682532, 20.002638, 22.697325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.131378, 19.654284, 22.306690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.093653, 20.050974, 22.271843>,  <15.071017, 20.288988, 22.250935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.093653, 20.050974, 22.271843>,  <15.131378, 19.654284, 22.306690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.093653, 20.050974, 22.271843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517884, -0.123608, -0.846473,
		-0.850236, -0.034717, 0.525256,
		-0.094313, 0.991724, -0.087117,
		15.065359, 20.348492, 22.245708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.484839, 19.774288, 22.092665>,  <15.131378, 19.654284, 22.306690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.484839, 19.774288, 22.092665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.647290, 20.118988, 21.971041>,  <14.744761, 20.325808, 21.898067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.647290, 20.118988, 21.971041>,  <14.484839, 19.774288, 22.092665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.647290, 20.118988, 21.971041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283922, -0.197274, -0.938334,
		-0.868591, 0.467411, 0.164551,
		0.406127, 0.861748, -0.304058,
		14.769128, 20.377512, 21.879824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.019770, 20.104923, 21.730377>,  <14.484839, 19.774288, 22.092665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.019770, 20.104923, 21.730377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.380610, 20.212542, 21.595421>,  <14.597114, 20.277113, 21.514446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.380610, 20.212542, 21.595421>,  <14.019770, 20.104923, 21.730377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.380610, 20.212542, 21.595421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342140, -0.030545, -0.939152,
		-0.262979, 0.962643, 0.064496,
		0.902099, 0.269044, -0.337391,
		14.651239, 20.293255, 21.494204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.877697, 20.667568, 21.193918>,  <14.019770, 20.104923, 21.730377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.877697, 20.667568, 21.193918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.246634, 20.551569, 21.091793>,  <14.467997, 20.481970, 21.030518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.246634, 20.551569, 21.091793>,  <13.877697, 20.667568, 21.193918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.246634, 20.551569, 21.091793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307211, -0.149700, -0.939793,
		0.234316, 0.945247, -0.227165,
		0.922343, -0.289996, -0.255314,
		14.523337, 20.464571, 21.015200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.109746, 21.091228, 20.552385>,  <13.877697, 20.667568, 21.193918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.109746, 21.091228, 20.552385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.334073, 20.761639, 20.584753>,  <14.468670, 20.563885, 20.604174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.334073, 20.761639, 20.584753>,  <14.109746, 21.091228, 20.552385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.334073, 20.761639, 20.584753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221237, -0.243324, -0.944377,
		0.797833, 0.511721, -0.318754,
		0.560818, -0.823975, 0.080920,
		14.502318, 20.514446, 20.609030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.564634, 20.992386, 19.963448>,  <14.109746, 21.091228, 20.552385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.564634, 20.992386, 19.963448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.518038, 20.617197, 20.094070>,  <14.490080, 20.392084, 20.172445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.518038, 20.617197, 20.094070>,  <14.564634, 20.992386, 19.963448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.518038, 20.617197, 20.094070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095570, -0.337858, -0.936332,
		0.988583, -0.077866, 0.129000,
		-0.116492, -0.937971, 0.326559,
		14.483090, 20.335806, 20.192038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.110544, 17.354034, 2.140072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.330566, 17.161371, 2.412966>,  <21.462580, 17.045773, 2.576701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.330566, 17.161371, 2.412966>,  <21.110544, 17.354034, 2.140072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.330566, 17.161371, 2.412966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755680, -0.634821, 0.161087,
		0.355507, -0.604157, -0.713168,
		0.550056, -0.481660, 0.682233,
		21.495583, 17.016872, 2.617635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.149300, 16.549896, 2.087996>,  <21.110544, 17.354034, 2.140072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.149300, 16.549896, 2.087996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.253267, 16.629601, 2.465935>,  <21.315647, 16.677423, 2.692699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.253267, 16.629601, 2.465935>,  <21.149300, 16.549896, 2.087996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.253267, 16.629601, 2.465935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450620, -0.840373, 0.301187,
		0.854040, -0.504052, -0.128639,
		0.259919, 0.199259, 0.944848,
		21.331244, 16.689379, 2.749390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.260466, 15.912807, 2.380628>,  <21.149300, 16.549896, 2.087996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.260466, 15.912807, 2.380628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.259796, 16.141466, 2.708827>,  <21.259394, 16.278662, 2.905747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.259796, 16.141466, 2.708827>,  <21.260466, 15.912807, 2.380628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.259796, 16.141466, 2.708827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359119, -0.766108, 0.533021,
		0.933290, -0.293764, 0.206572,
		-0.001674, 0.571648, 0.820498,
		21.259295, 16.312960, 2.954977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.682163, 15.647470, 2.951286>,  <21.260466, 15.912807, 2.380628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.682163, 15.647470, 2.951286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.342747, 15.838099, 3.043244>,  <21.139097, 15.952477, 3.098419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.342747, 15.838099, 3.043244>,  <21.682163, 15.647470, 2.951286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342747, 15.838099, 3.043244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354865, -0.834848, 0.420831,
		0.392485, 0.275511, 0.877524,
		-0.848543, 0.476573, 0.229896,
		21.088184, 15.981071, 3.112213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.020224, 15.343990, 3.660463>,  <21.682163, 15.647470, 2.951286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.020224, 15.343990, 3.660463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.114344, 15.690947, 3.835856>,  <22.170816, 15.899120, 3.941092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.114344, 15.690947, 3.835856>,  <22.020224, 15.343990, 3.660463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.114344, 15.690947, 3.835856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369498, -0.337442, 0.865797,
		0.898946, -0.365742, 0.241098,
		0.235302, 0.867390, 0.438483,
		22.184935, 15.951163, 3.967401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.460629, 15.203460, 4.210075>,  <22.020224, 15.343990, 3.660463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.460629, 15.203460, 4.210075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.226242, 15.524695, 4.253332>,  <22.085611, 15.717437, 4.279286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.226242, 15.524695, 4.253332>,  <22.460629, 15.203460, 4.210075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.226242, 15.524695, 4.253332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337745, -0.363352, 0.868276,
		0.736596, 0.472255, 0.484151,
		-0.585965, 0.803088, 0.108142,
		22.050453, 15.765622, 4.285775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.753361, 15.144879, 4.599237>,  <22.460629, 15.203460, 4.210075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.753361, 15.144879, 4.599237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.563326, 15.430080, 4.805507>,  <21.449305, 15.601201, 4.929268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.563326, 15.430080, 4.805507>,  <21.753361, 15.144879, 4.599237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.563326, 15.430080, 4.805507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191208, -0.488381, 0.851424,
		0.858914, 0.503100, 0.095691,
		-0.475086, 0.713003, 0.515674,
		21.420801, 15.643981, 4.960209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.155947, 15.253250, 5.233201>,  <21.753361, 15.144879, 4.599237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.155947, 15.253250, 5.233201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.779116, 15.374434, 5.290764>,  <21.553017, 15.447144, 5.325302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.779116, 15.374434, 5.290764>,  <22.155947, 15.253250, 5.233201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.779116, 15.374434, 5.290764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006924, -0.411404, 0.911427,
		0.335329, 0.859629, 0.385476,
		-0.942076, 0.302959, 0.143908,
		21.496492, 15.465322, 5.333936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.039757, 15.516075, 5.889382>,  <22.155947, 15.253250, 5.233201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.039757, 15.516075, 5.889382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.669065, 15.423302, 5.771139>,  <21.446651, 15.367638, 5.700193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.669065, 15.423302, 5.771139>,  <22.039757, 15.516075, 5.889382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.669065, 15.423302, 5.771139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143242, -0.509245, 0.848617,
		-0.347359, 0.828780, 0.438709,
		-0.926727, -0.231933, -0.295607,
		21.391047, 15.353722, 5.682457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.703770, 15.455211, 6.464437>,  <22.039757, 15.516075, 5.889382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.703770, 15.455211, 6.464437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.444807, 15.286078, 6.210798>,  <21.289431, 15.184599, 6.058614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.444807, 15.286078, 6.210798>,  <21.703770, 15.455211, 6.464437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.444807, 15.286078, 6.210798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231533, -0.683556, 0.692202,
		-0.726126, 0.594950, 0.344638,
		-0.647405, -0.422831, -0.634098,
		21.250586, 15.159229, 6.020568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.093851, 15.562611, 6.765104>,  <21.703770, 15.455211, 6.464437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.093851, 15.562611, 6.765104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.045315, 15.240627, 6.532787>,  <21.016193, 15.047438, 6.393397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.045315, 15.240627, 6.532787>,  <21.093851, 15.562611, 6.765104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.045315, 15.240627, 6.532787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212249, -0.550541, 0.807375,
		-0.969653, 0.221240, -0.104048,
		-0.121341, -0.804958, -0.580791,
		21.008913, 14.999140, 6.358550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.607832, 15.222743, 7.072266>,  <21.093851, 15.562611, 6.765104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.607832, 15.222743, 7.072266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.756077, 14.948956, 6.821139>,  <20.845024, 14.784685, 6.670464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.756077, 14.948956, 6.821139>,  <20.607832, 15.222743, 7.072266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756077, 14.948956, 6.821139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147117, -0.710680, 0.687961,
		-0.917062, -0.162604, -0.364083,
		0.370612, -0.684466, -0.627817,
		20.867260, 14.743617, 6.632794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.179070, 14.585320, 7.207612>,  <20.607832, 15.222743, 7.072266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.179070, 14.585320, 7.207612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.538034, 14.495259, 7.055846>,  <20.753414, 14.441222, 6.964787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.538034, 14.495259, 7.055846>,  <20.179070, 14.585320, 7.207612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.538034, 14.495259, 7.055846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097494, -0.737513, 0.668258,
		-0.430283, -0.636695, -0.639903,
		0.897414, -0.225153, -0.379413,
		20.807259, 14.427713, 6.942022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.136322, 13.842398, 7.025203>,  <20.179070, 14.585320, 7.207612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.136322, 13.842398, 7.025203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.517843, 13.959255, 7.053241>,  <20.746756, 14.029369, 7.070064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.517843, 13.959255, 7.053241>,  <20.136322, 13.842398, 7.025203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.517843, 13.959255, 7.053241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181343, -0.745842, 0.640964,
		0.239533, -0.598641, -0.764364,
		0.953802, 0.292144, 0.070095,
		20.803984, 14.046899, 7.074270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.582472, 13.211928, 7.024527>,  <20.136322, 13.842398, 7.025203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.582472, 13.211928, 7.024527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.840437, 13.477893, 7.175248>,  <20.995216, 13.637471, 7.265680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.840437, 13.477893, 7.175248>,  <20.582472, 13.211928, 7.024527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.840437, 13.477893, 7.175248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250013, -0.649453, 0.718126,
		0.722205, -0.368923, -0.585078,
		0.644914, 0.664911, 0.376802,
		21.033911, 13.677366, 7.288288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.204916, 12.877904, 7.081165>,  <20.582472, 13.211928, 7.024527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.204916, 12.877904, 7.081165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.250374, 13.187909, 7.329823>,  <21.277649, 13.373912, 7.479017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.250374, 13.187909, 7.329823>,  <21.204916, 12.877904, 7.081165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.250374, 13.187909, 7.329823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314932, -0.621531, 0.717299,
		0.942286, 0.114258, -0.314710,
		0.113645, 0.775012, 0.621643,
		21.284468, 13.420413, 7.516315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.898947, 12.745947, 7.315739>,  <21.204916, 12.877904, 7.081165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.898947, 12.745947, 7.315739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.726599, 12.996964, 7.575137>,  <21.623190, 13.147573, 7.730776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.726599, 12.996964, 7.575137>,  <21.898947, 12.745947, 7.315739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.726599, 12.996964, 7.575137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423081, -0.494275, 0.759404,
		0.797092, 0.601569, -0.052534,
		-0.430868, 0.627540, 0.648495,
		21.597338, 13.185225, 7.769686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.462997, 13.043415, 7.731190>,  <21.898947, 12.745947, 7.315739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.462997, 13.043415, 7.731190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.126192, 13.070802, 7.945229>,  <21.924109, 13.087234, 8.073652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.126192, 13.070802, 7.945229>,  <22.462997, 13.043415, 7.731190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.126192, 13.070802, 7.945229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431708, -0.509283, 0.744486,
		0.323488, 0.857871, 0.399265,
		-0.842011, 0.068466, 0.535097,
		21.873589, 13.091342, 8.105759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.752085, 13.009356, 8.396888>,  <22.462997, 13.043415, 7.731190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.752085, 13.009356, 8.396888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.360369, 12.974448, 8.469966>,  <22.125340, 12.953504, 8.513813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.360369, 12.974448, 8.469966>,  <22.752085, 13.009356, 8.396888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.360369, 12.974448, 8.469966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197007, -0.618888, 0.760372,
		0.046711, 0.780616, 0.623263,
		-0.979289, -0.087269, 0.182696,
		22.066582, 12.948268, 8.524775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.745523, 13.154548, 9.042976>,  <22.752085, 13.009356, 8.396888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.745523, 13.154548, 9.042976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.402525, 12.954062, 8.996527>,  <22.196726, 12.833772, 8.968657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.402525, 12.954062, 8.996527>,  <22.745523, 13.154548, 9.042976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402525, 12.954062, 8.996527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203032, -0.537052, 0.818751,
		-0.472734, 0.678499, 0.562282,
		-0.857497, -0.501213, -0.116125,
		22.145275, 12.803699, 8.961689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.570406, 13.015664, 9.711987>,  <22.745523, 13.154548, 9.042976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.570406, 13.015664, 9.711987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.358540, 12.741135, 9.512622>,  <22.231421, 12.576417, 9.393003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.358540, 12.741135, 9.512622>,  <22.570406, 13.015664, 9.711987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.358540, 12.741135, 9.512622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157820, -0.657089, 0.737107,
		-0.833395, 0.311760, 0.456353,
		-0.529665, -0.686323, -0.498413,
		22.199640, 12.535238, 9.363098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.956844, 12.821054, 10.092399>,  <22.570406, 13.015664, 9.711987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.956844, 12.821054, 10.092399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.031912, 12.519260, 9.840833>,  <22.076952, 12.338184, 9.689894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.031912, 12.519260, 9.840833>,  <21.956844, 12.821054, 10.092399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.031912, 12.519260, 9.840833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117822, -0.618375, 0.777000,
		-0.975141, -0.219917, -0.027153,
		0.187667, -0.754485, -0.628914,
		22.088211, 12.292914, 9.652159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.476912, 12.285065, 10.224844>,  <21.956844, 12.821054, 10.092399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.476912, 12.285065, 10.224844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.802912, 12.125259, 10.056956>,  <21.998512, 12.029376, 9.956223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.802912, 12.125259, 10.056956>,  <21.476912, 12.285065, 10.224844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.802912, 12.125259, 10.056956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069854, -0.651307, 0.755592,
		-0.575235, -0.645127, -0.502907,
		0.815000, -0.399513, -0.419720,
		22.047413, 12.005405, 9.931041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.365509, 11.635281, 10.243539>,  <21.476912, 12.285065, 10.224844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.365509, 11.635281, 10.243539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.764460, 11.664183, 10.241941>,  <22.003830, 11.681524, 10.240983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.764460, 11.664183, 10.241941>,  <21.365509, 11.635281, 10.243539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.764460, 11.664183, 10.241941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050220, -0.651367, 0.757099,
		0.052104, -0.755314, -0.653288,
		0.997378, 0.072256, -0.003993,
		22.063673, 11.685860, 10.240744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.544439, 10.967266, 10.551380>,  <21.365509, 11.635281, 10.243539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.544439, 10.967266, 10.551380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.888887, 11.170622, 10.552607>,  <22.095556, 11.292635, 10.553343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.888887, 11.170622, 10.552607>,  <21.544439, 10.967266, 10.551380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.888887, 11.170622, 10.552607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291177, -0.498129, 0.816752,
		0.416755, -0.702430, -0.576981,
		0.861122, 0.508389, 0.003066,
		22.147224, 11.323138, 10.553527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.950674, 10.492785, 10.794091>,  <21.544439, 10.967266, 10.551380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.950674, 10.492785, 10.794091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.133961, 10.838706, 10.876214>,  <22.243933, 11.046259, 10.925488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.133961, 10.838706, 10.876214>,  <21.950674, 10.492785, 10.794091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.133961, 10.838706, 10.876214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327716, -0.379086, 0.865388,
		0.826221, -0.329252, -0.457113,
		0.458216, 0.864804, 0.205308,
		22.271425, 11.098147, 10.937806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.679476, 10.372263, 10.917548>,  <21.950674, 10.492785, 10.794091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.679476, 10.372263, 10.917548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.611471, 10.728907, 11.085419>,  <22.570669, 10.942893, 11.186141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.611471, 10.728907, 11.085419>,  <22.679476, 10.372263, 10.917548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.611471, 10.728907, 11.085419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389115, -0.330532, 0.859848,
		0.905365, 0.309485, -0.290745,
		-0.170010, 0.891610, 0.419677,
		22.560469, 10.996389, 11.211322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.379963, 10.537037, 11.166090>,  <22.679476, 10.372263, 10.917548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.379963, 10.537037, 11.166090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.098505, 10.756541, 11.346642>,  <22.929630, 10.888244, 11.454974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.098505, 10.756541, 11.346642>,  <23.379963, 10.537037, 11.166090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.098505, 10.756541, 11.346642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417346, -0.194944, 0.887592,
		0.575069, 0.812932, -0.091851,
		-0.703646, 0.548760, 0.451381,
		22.887411, 10.921169, 11.482057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.777412, 10.849409, 11.630433>,  <23.379963, 10.537037, 11.166090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.777412, 10.849409, 11.630433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.402464, 10.894864, 11.762140>,  <23.177494, 10.922137, 11.841165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.402464, 10.894864, 11.762140>,  <23.777412, 10.849409, 11.630433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.402464, 10.894864, 11.762140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284969, -0.293415, 0.912524,
		0.200308, 0.949207, 0.242657,
		-0.937374, 0.113637, 0.329268,
		23.121252, 10.928955, 11.860921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.793362, 11.467682, 12.229923>,  <23.777412, 10.849409, 11.630433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.793362, 11.467682, 12.229923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.501661, 11.195190, 12.255599>,  <23.326641, 11.031695, 12.271005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.501661, 11.195190, 12.255599>,  <23.793362, 11.467682, 12.229923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.501661, 11.195190, 12.255599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362894, -0.305525, 0.880320,
		-0.580088, 0.665268, 0.470018,
		-0.729250, -0.681229, 0.064190,
		23.282887, 10.990822, 12.274857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.832464, 12.189239, 12.350857>,  <23.793362, 11.467682, 12.229923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.832464, 12.189239, 12.350857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.870562, 12.545410, 12.528874>,  <23.893419, 12.759113, 12.635685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.870562, 12.545410, 12.528874>,  <23.832464, 12.189239, 12.350857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.870562, 12.545410, 12.528874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425505, 0.367760, -0.826861,
		-0.899930, 0.268120, -0.343856,
		0.095241, 0.890430, 0.445044,
		23.899134, 12.812539, 12.662388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.542421, 12.660272, 11.857659>,  <23.832464, 12.189239, 12.350857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.542421, 12.660272, 11.857659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.821295, 12.824343, 12.092840>,  <23.988619, 12.922786, 12.233949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.821295, 12.824343, 12.092840>,  <23.542421, 12.660272, 11.857659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.821295, 12.824343, 12.092840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407494, 0.448020, -0.795755,
		-0.589816, 0.794375, 0.145207,
		0.697184, 0.410178, 0.587953,
		24.030451, 12.947396, 12.269226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.629107, 13.280441, 11.805471>,  <23.542421, 12.660272, 11.857659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.629107, 13.280441, 11.805471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.993851, 13.215283, 11.956192>,  <24.212696, 13.176188, 12.046624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.993851, 13.215283, 11.956192>,  <23.629107, 13.280441, 11.805471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.993851, 13.215283, 11.956192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386011, 0.652566, -0.652038,
		-0.139675, 0.740016, 0.657927,
		0.911859, -0.162894, 0.376801,
		24.267408, 13.166415, 12.069232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.015919, 12.988034, 11.476672>,  <23.629107, 13.280441, 11.805471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.015919, 12.988034, 11.476672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.720139, 13.186649, 11.658515>,  <22.542671, 13.305819, 11.767620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.720139, 13.186649, 11.658515>,  <23.015919, 12.988034, 11.476672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.720139, 13.186649, 11.658515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299538, -0.847417, 0.438361,
		0.602904, 0.187974, 0.775353,
		-0.739448, 0.496538, 0.454606,
		22.498304, 13.335610, 11.794897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.021210, 13.028529, 12.355094>,  <23.015919, 12.988034, 11.476672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.021210, 13.028529, 12.355094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.685064, 13.011449, 12.138959>,  <22.483377, 13.001201, 12.009278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.685064, 13.011449, 12.138959>,  <23.021210, 13.028529, 12.355094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.685064, 13.011449, 12.138959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256144, -0.847268, 0.465325,
		-0.477679, 0.529446, 0.701077,
		-0.840365, -0.042700, -0.540337,
		22.432955, 12.998639, 11.976858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.803017, 13.777551, 12.490032>,  <23.021210, 13.028529, 12.355094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.803017, 13.777551, 12.490032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.126154, 14.013178, 12.497888>,  <23.320036, 14.154554, 12.502601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.126154, 14.013178, 12.497888>,  <22.803017, 13.777551, 12.490032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.126154, 14.013178, 12.497888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325536, 0.473721, -0.818300,
		-0.491337, 0.654667, 0.574455,
		0.807845, 0.589067, 0.019639,
		23.368507, 14.189898, 12.503779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.574009, 14.495883, 12.413514>,  <22.803017, 13.777551, 12.490032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.574009, 14.495883, 12.413514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.958273, 14.582887, 12.344439>,  <23.188831, 14.635089, 12.302994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.958273, 14.582887, 12.344439>,  <22.574009, 14.495883, 12.413514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.958273, 14.582887, 12.344439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277650, 0.737696, -0.615398,
		-0.006463, 0.639135, 0.769067,
		0.960661, 0.217508, -0.172688,
		23.246471, 14.648139, 12.292632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.591537, 15.171297, 12.455063>,  <22.574009, 14.495883, 12.413514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.591537, 15.171297, 12.455063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.881899, 15.019392, 12.225683>,  <23.056116, 14.928248, 12.088056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.881899, 15.019392, 12.225683>,  <22.591537, 15.171297, 12.455063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.881899, 15.019392, 12.225683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197853, 0.683211, -0.702906,
		0.658725, 0.623701, 0.420808,
		0.725903, -0.379764, -0.573449,
		23.099670, 14.905463, 12.053648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.864363, 15.785474, 12.255976>,  <22.591537, 15.171297, 12.455063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.864363, 15.785474, 12.255976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.010935, 15.509940, 12.005781>,  <23.098879, 15.344620, 11.855664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.010935, 15.509940, 12.005781>,  <22.864363, 15.785474, 12.255976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.010935, 15.509940, 12.005781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205637, 0.595666, -0.776463,
		0.907436, 0.413145, 0.076621,
		0.366432, -0.688835, -0.625487,
		23.120865, 15.303289, 11.818135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.076412, 16.151384, 11.712603>,  <22.864363, 15.785474, 12.255976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.076412, 16.151384, 11.712603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.068287, 15.783566, 11.555621>,  <23.063412, 15.562875, 11.461432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.068287, 15.783566, 11.555621>,  <23.076412, 16.151384, 11.712603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.068287, 15.783566, 11.555621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258336, 0.384033, -0.886443,
		0.965842, 0.083380, -0.245352,
		-0.020311, -0.919547, -0.392455,
		23.062193, 15.507702, 11.437884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.572729, 16.175518, 11.201200>,  <23.076412, 16.151384, 11.712603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.572729, 16.175518, 11.201200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.313513, 15.881950, 11.119805>,  <23.157984, 15.705810, 11.070969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.313513, 15.881950, 11.119805>,  <23.572729, 16.175518, 11.201200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.313513, 15.881950, 11.119805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076679, 0.328695, -0.941318,
		0.757737, -0.594408, -0.269284,
		-0.648039, -0.733920, -0.203486,
		23.119101, 15.661775, 11.058760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.816181, 15.970451, 10.653077>,  <23.572729, 16.175518, 11.201200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.816181, 15.970451, 10.653077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.433678, 15.854257, 10.666870>,  <23.204176, 15.784540, 10.675146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.433678, 15.854257, 10.666870>,  <23.816181, 15.970451, 10.653077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.433678, 15.854257, 10.666870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100616, 0.215933, -0.971210,
		0.274679, -0.932196, -0.235715,
		-0.956257, -0.290488, 0.034481,
		23.146801, 15.767111, 10.677215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.632700, 15.736383, 9.974352>,  <23.816181, 15.970451, 10.653077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.632700, 15.736383, 9.974352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.277769, 15.787438, 10.151603>,  <23.064812, 15.818071, 10.257954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.277769, 15.787438, 10.151603>,  <23.632700, 15.736383, 9.974352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.277769, 15.787438, 10.151603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396916, 0.277797, -0.874806,
		-0.234759, -0.952122, -0.195835,
		-0.887325, 0.127639, 0.443128,
		23.011572, 15.825729, 10.284541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.081467, 15.403385, 9.539135>,  <23.632700, 15.736383, 9.974352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.081467, 15.403385, 9.539135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.868597, 15.651447, 9.769682>,  <22.740875, 15.800284, 9.908010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.868597, 15.651447, 9.769682>,  <23.081467, 15.403385, 9.539135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.868597, 15.651447, 9.769682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532123, 0.284500, -0.797437,
		-0.658512, -0.731071, 0.178596,
		-0.532172, 0.620156, 0.576366,
		22.708944, 15.837494, 9.942592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.372267, 15.139417, 9.580292>,  <23.081467, 15.403385, 9.539135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.372267, 15.139417, 9.580292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.359982, 15.533711, 9.646478>,  <22.352612, 15.770288, 9.686190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.359982, 15.533711, 9.646478>,  <22.372267, 15.139417, 9.580292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.359982, 15.533711, 9.646478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618911, 0.111235, -0.777544,
		-0.784860, -0.126288, 0.606668,
		-0.030712, 0.985737, 0.165465,
		22.350767, 15.829432, 9.696117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.679491, 15.369752, 9.587668>,  <22.372267, 15.139417, 9.580292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.679491, 15.369752, 9.587668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.877558, 15.708195, 9.508762>,  <21.996397, 15.911261, 9.461419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.877558, 15.708195, 9.508762>,  <21.679491, 15.369752, 9.587668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.877558, 15.708195, 9.508762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655278, 0.214631, -0.724254,
		-0.570457, 0.487889, 0.660714,
		0.495165, 0.846108, -0.197265,
		22.026108, 15.962027, 9.449583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.188589, 15.886994, 9.719313>,  <21.679491, 15.369752, 9.587668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.188589, 15.886994, 9.719313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.463589, 16.046663, 9.476659>,  <21.628588, 16.142466, 9.331066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.463589, 16.046663, 9.476659>,  <21.188589, 15.886994, 9.719313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.463589, 16.046663, 9.476659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700766, 0.145593, -0.698377,
		-0.190451, 0.905243, 0.379821,
		0.687500, 0.399173, -0.606634,
		21.669838, 16.166414, 9.294668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.972836, 16.560591, 9.525796>,  <21.188589, 15.886994, 9.719313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.972836, 16.560591, 9.525796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.220224, 16.440496, 9.235320>,  <21.368658, 16.368441, 9.061034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.220224, 16.440496, 9.235320>,  <20.972836, 16.560591, 9.525796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.220224, 16.440496, 9.235320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672358, 0.276139, -0.686791,
		0.406729, 0.913020, -0.031082,
		0.618471, -0.300236, -0.726190,
		21.405766, 16.350426, 9.017463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.949842, 17.185715, 8.989062>,  <20.972836, 16.560591, 9.525796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.949842, 17.185715, 8.989062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.118614, 16.890491, 8.778444>,  <21.219877, 16.713358, 8.652074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.118614, 16.890491, 8.778444>,  <20.949842, 17.185715, 8.989062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.118614, 16.890491, 8.778444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542980, 0.259388, -0.798680,
		0.726051, 0.622889, -0.291307,
		0.421927, -0.738056, -0.526545,
		21.245192, 16.669075, 8.620481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026291, 17.410486, 8.283156>,  <20.949842, 17.185715, 8.989062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026291, 17.410486, 8.283156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.065702, 17.017521, 8.219717>,  <21.089350, 16.781742, 8.181653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.065702, 17.017521, 8.219717>,  <21.026291, 17.410486, 8.283156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.065702, 17.017521, 8.219717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546519, 0.079769, -0.833639,
		0.831631, 0.168814, -0.529048,
		0.098528, -0.982415, -0.158598,
		21.095261, 16.722797, 8.172137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.237158, 17.359743, 7.574167>,  <21.026291, 17.410486, 8.283156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.237158, 17.359743, 7.574167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.069744, 17.009998, 7.672410>,  <20.969296, 16.800152, 7.731355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.069744, 17.009998, 7.672410>,  <21.237158, 17.359743, 7.574167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.069744, 17.009998, 7.672410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633435, 0.087236, -0.768863,
		0.650838, -0.477370, -0.590362,
		-0.418533, -0.874362, 0.245606,
		20.944185, 16.747690, 7.746091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.247246, 16.855373, 6.969570>,  <21.237158, 17.359743, 7.574167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.247246, 16.855373, 6.969570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.955517, 16.721329, 7.208161>,  <20.780479, 16.640902, 7.351316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.955517, 16.721329, 7.208161>,  <21.247246, 16.855373, 6.969570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.955517, 16.721329, 7.208161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641991, 0.033830, -0.765966,
		0.236505, -0.941571, -0.239811,
		-0.729324, -0.335112, 0.596479,
		20.736719, 16.620796, 7.387105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.386194, 17.763165, 16.258223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041559, 17.702480, 16.451986>,  <17.834778, 17.666069, 16.568245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041559, 17.702480, 16.451986>,  <18.386194, 17.763165, 16.258223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041559, 17.702480, 16.451986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169674, -0.813332, -0.556509,
		0.478415, -0.561672, 0.675013,
		-0.861585, -0.151710, 0.484412,
		17.783083, 17.656967, 16.597309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413692, 17.091557, 16.567450>,  <18.386194, 17.763165, 16.258223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.413692, 17.091557, 16.567450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028351, 17.189589, 16.523844>,  <17.797146, 17.248407, 16.497681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028351, 17.189589, 16.523844>,  <18.413692, 17.091557, 16.567450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028351, 17.189589, 16.523844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181318, -0.894493, -0.408665,
		-0.197667, -0.373923, 0.906151,
		-0.963355, 0.245081, -0.109013,
		17.739344, 17.263113, 16.491140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016930, 16.462631, 16.828821>,  <18.413692, 17.091557, 16.567450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016930, 16.462631, 16.828821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768419, 16.657990, 16.583714>,  <17.619312, 16.775204, 16.436649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768419, 16.657990, 16.583714>,  <18.016930, 16.462631, 16.828821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.768419, 16.657990, 16.583714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151420, -0.842089, -0.517646,
		-0.768821, -0.228817, 0.597125,
		-0.621279, 0.488394, -0.612768,
		17.582035, 16.804508, 16.399883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.492668, 15.960940, 16.658890>,  <18.016930, 16.462631, 16.828821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.492668, 15.960940, 16.658890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.427420, 16.241859, 16.381714>,  <17.388271, 16.410412, 16.215408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.427420, 16.241859, 16.381714>,  <17.492668, 15.960940, 16.658890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.427420, 16.241859, 16.381714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198802, -0.711340, -0.674147,
		-0.966369, 0.027792, 0.255652,
		-0.163120, 0.702299, -0.692942,
		17.378483, 16.452549, 16.173832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.905073, 15.768905, 16.268980>,  <17.492668, 15.960940, 16.658890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.905073, 15.768905, 16.268980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.080639, 16.031242, 16.023306>,  <17.185978, 16.188644, 15.875901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.080639, 16.031242, 16.023306>,  <16.905073, 15.768905, 16.268980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.080639, 16.031242, 16.023306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155310, -0.617882, -0.770779,
		-0.885004, 0.433695, -0.169338,
		0.438914, 0.655843, -0.614186,
		17.212313, 16.227995, 15.839050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456953, 15.810829, 15.697580>,  <16.905073, 15.768905, 16.268980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456953, 15.810829, 15.697580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792641, 15.969666, 15.548968>,  <16.994053, 16.064968, 15.459802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792641, 15.969666, 15.548968>,  <16.456953, 15.810829, 15.697580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.792641, 15.969666, 15.548968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129396, -0.517771, -0.845677,
		-0.528177, 0.757781, -0.383140,
		0.839217, 0.397090, -0.371529,
		17.044405, 16.088793, 15.437510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290308, 16.030962, 15.078259>,  <16.456953, 15.810829, 15.697580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290308, 16.030962, 15.078259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688850, 15.997903, 15.069820>,  <16.927977, 15.978067, 15.064757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688850, 15.997903, 15.069820>,  <16.290308, 16.030962, 15.078259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688850, 15.997903, 15.069820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057330, -0.465719, -0.883074,
		0.063157, 0.881065, -0.468759,
		0.996356, -0.082647, -0.021098,
		16.987757, 15.973109, 15.063491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.327250, 15.994986, 14.455571>,  <16.290308, 16.030962, 15.078259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.327250, 15.994986, 14.455571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693224, 15.873806, 14.562242>,  <16.912807, 15.801098, 14.626244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693224, 15.873806, 14.562242>,  <16.327250, 15.994986, 14.455571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.693224, 15.873806, 14.562242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064907, -0.541696, -0.838065,
		0.398349, 0.784084, -0.475953,
		0.914935, -0.302950, 0.266676,
		16.967705, 15.782921, 14.642244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817146, 16.110493, 13.828497>,  <16.327250, 15.994986, 14.455571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817146, 16.110493, 13.828497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968628, 15.822287, 14.060855>,  <17.059517, 15.649363, 14.200270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968628, 15.822287, 14.060855>,  <16.817146, 16.110493, 13.828497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968628, 15.822287, 14.060855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098401, -0.592741, -0.799360,
		0.920272, 0.359883, -0.153574,
		0.378705, -0.720516, 0.580895,
		17.082239, 15.606132, 14.235124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207077, 15.802532, 13.399223>,  <16.817146, 16.110493, 13.828497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207077, 15.802532, 13.399223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207619, 15.518214, 13.680582>,  <17.207943, 15.347623, 13.849398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207619, 15.518214, 13.680582>,  <17.207077, 15.802532, 13.399223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.207619, 15.518214, 13.680582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069889, -0.701610, -0.709125,
		0.997554, 0.050119, 0.048727,
		0.001353, -0.710796, 0.703397,
		17.208025, 15.304976, 13.891601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.704218, 15.224117, 13.083242>,  <17.207077, 15.802532, 13.399223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.704218, 15.224117, 13.083242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.481419, 15.022958, 13.347619>,  <17.347738, 14.902262, 13.506245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.481419, 15.022958, 13.347619>,  <17.704218, 15.224117, 13.083242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481419, 15.022958, 13.347619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056045, -0.771248, -0.634063,
		0.828619, -0.390216, 0.401400,
		-0.557001, -0.502900, 0.660940,
		17.314318, 14.872087, 13.545901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.987751, 14.505115, 13.135455>,  <17.704218, 15.224117, 13.083242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.987751, 14.505115, 13.135455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622673, 14.458460, 13.292114>,  <17.403627, 14.430468, 13.386109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622673, 14.458460, 13.292114>,  <17.987751, 14.505115, 13.135455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.622673, 14.458460, 13.292114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157304, -0.784273, -0.600143,
		0.377157, -0.609354, 0.697453,
		-0.912693, -0.116636, 0.391647,
		17.348866, 14.423469, 13.409609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.877609, 13.788182, 13.444370>,  <17.987751, 14.505115, 13.135455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.877609, 13.788182, 13.444370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546270, 13.957811, 13.297945>,  <17.347467, 14.059588, 13.210090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546270, 13.957811, 13.297945>,  <17.877609, 13.788182, 13.444370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.546270, 13.957811, 13.297945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144857, -0.793351, -0.591279,
		-0.541161, -0.436759, 0.718601,
		-0.828349, 0.424071, -0.366063,
		17.297766, 14.085032, 13.188126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.422981, 13.295332, 13.407258>,  <17.877609, 13.788182, 13.444370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.422981, 13.295332, 13.407258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334282, 13.593642, 13.155974>,  <17.281061, 13.772628, 13.005204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334282, 13.593642, 13.155974>,  <17.422981, 13.295332, 13.407258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.334282, 13.593642, 13.155974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184969, -0.664723, -0.723830,
		-0.957400, -0.044310, 0.285347,
		-0.221750, 0.745775, -0.628209,
		17.267757, 13.817375, 12.967511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.198208, 13.097720, 13.240402>,  <17.422981, 13.295332, 13.407258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.198208, 13.097720, 13.240402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.551939, 12.989531, 13.392616>,  <18.764177, 12.924617, 13.483945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.551939, 12.989531, 13.392616>,  <18.198208, 13.097720, 13.240402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.551939, 12.989531, 13.392616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324062, 0.231125, 0.917369,
		-0.336076, -0.934572, 0.116740,
		0.884328, -0.270474, 0.380535,
		18.817238, 12.908388, 13.506777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042616, 12.791464, 13.844602>,  <18.198208, 13.097720, 13.240402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042616, 12.791464, 13.844602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433624, 12.856553, 13.898232>,  <18.668228, 12.895606, 13.930411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433624, 12.856553, 13.898232>,  <18.042616, 12.791464, 13.844602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.433624, 12.856553, 13.898232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149386, 0.085757, 0.985053,
		0.148797, -0.982937, 0.108138,
		0.977519, 0.162727, 0.134077,
		18.726881, 12.905370, 13.938456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.307058, 12.266029, 14.347237>,  <18.042616, 12.791464, 13.844602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.307058, 12.266029, 14.347237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520971, 12.603906, 14.356239>,  <18.649319, 12.806631, 14.361641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520971, 12.603906, 14.356239>,  <18.307058, 12.266029, 14.347237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520971, 12.603906, 14.356239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174054, 0.084051, 0.981142,
		0.826871, -0.528613, 0.191971,
		0.534780, 0.844691, 0.022508,
		18.681406, 12.857313, 14.362991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.680496, 12.256566, 14.927845>,  <18.307058, 12.266029, 14.347237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.680496, 12.256566, 14.927845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691570, 12.647795, 14.845275>,  <18.698214, 12.882532, 14.795732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691570, 12.647795, 14.845275>,  <18.680496, 12.256566, 14.927845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691570, 12.647795, 14.845275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265928, 0.206269, 0.941666,
		0.963595, 0.028826, 0.265807,
		0.027684, 0.978071, -0.206425,
		18.699875, 12.941216, 14.783347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.983971, 12.588912, 15.516541>,  <18.680496, 12.256566, 14.927845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.983971, 12.588912, 15.516541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.822269, 12.906572, 15.335034>,  <18.725248, 13.097169, 15.226130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.822269, 12.906572, 15.335034>,  <18.983971, 12.588912, 15.516541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822269, 12.906572, 15.335034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156668, 0.428658, 0.889780,
		0.901130, 0.430787, -0.048868,
		-0.404253, 0.794151, -0.453767,
		18.700994, 13.144817, 15.198904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.244600, 13.133517, 15.800691>,  <18.983971, 12.588912, 15.516541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.244600, 13.133517, 15.800691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.895555, 13.263395, 15.654749>,  <18.686129, 13.341322, 15.567183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.895555, 13.263395, 15.654749>,  <19.244600, 13.133517, 15.800691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.895555, 13.263395, 15.654749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182916, 0.475396, 0.860547,
		0.452866, 0.817662, -0.355444,
		-0.872613, 0.324696, -0.364854,
		18.633772, 13.360805, 15.545293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.242208, 13.734869, 16.030338>,  <19.244600, 13.133517, 15.800691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.242208, 13.734869, 16.030338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.859621, 13.669551, 15.933587>,  <18.630070, 13.630361, 15.875536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.859621, 13.669551, 15.933587>,  <19.242208, 13.734869, 16.030338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.859621, 13.669551, 15.933587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290971, 0.469680, 0.833508,
		-0.022501, 0.867603, -0.496748,
		-0.956467, -0.163294, -0.241879,
		18.572681, 13.620563, 15.861023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837044, 14.348018, 16.260799>,  <19.242208, 13.734869, 16.030338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.837044, 14.348018, 16.260799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568533, 14.051790, 16.248501>,  <18.407427, 13.874054, 16.241121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568533, 14.051790, 16.248501>,  <18.837044, 14.348018, 16.260799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.568533, 14.051790, 16.248501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458154, 0.381965, 0.802619,
		-0.582651, 0.552866, -0.595699,
		-0.671277, -0.740569, -0.030745,
		18.367149, 13.829619, 16.239277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177387, 14.757124, 16.169882>,  <18.837044, 14.348018, 16.260799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177387, 14.757124, 16.169882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063292, 14.394326, 16.293816>,  <17.994833, 14.176647, 16.368176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063292, 14.394326, 16.293816>,  <18.177387, 14.757124, 16.169882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.063292, 14.394326, 16.293816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459458, 0.413097, 0.786289,
		-0.841152, 0.081925, -0.534558,
		-0.285241, -0.906995, 0.309836,
		17.977718, 14.122228, 16.386766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.472746, 14.781704, 16.270105>,  <18.177387, 14.757124, 16.169882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.472746, 14.781704, 16.270105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622276, 14.477354, 16.482265>,  <17.711994, 14.294744, 16.609562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622276, 14.477354, 16.482265>,  <17.472746, 14.781704, 16.270105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.622276, 14.477354, 16.482265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566379, 0.265587, 0.780178,
		-0.734486, -0.592057, -0.331661,
		0.373825, -0.760876, 0.530399,
		17.734425, 14.249091, 16.641384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902653, 14.511645, 16.458069>,  <17.472746, 14.781704, 16.270105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902653, 14.511645, 16.458069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.201582, 14.401610, 16.700006>,  <17.380939, 14.335589, 16.845169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.201582, 14.401610, 16.700006>,  <16.902653, 14.511645, 16.458069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.201582, 14.401610, 16.700006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524012, 0.315709, 0.791037,
		-0.408560, -0.908105, 0.091787,
		0.747322, -0.275088, 0.604843,
		17.425779, 14.319084, 16.881460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532898, 14.198041, 16.993544>,  <16.902653, 14.511645, 16.458069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532898, 14.198041, 16.993544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898382, 14.272624, 17.137970>,  <17.117672, 14.317373, 17.224625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898382, 14.272624, 17.137970>,  <16.532898, 14.198041, 16.993544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898382, 14.272624, 17.137970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400533, 0.263226, 0.877659,
		0.068603, -0.946545, 0.315194,
		0.913710, 0.186456, 0.361064,
		17.172495, 14.328561, 17.246288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504889, 13.880657, 17.656698>,  <16.532898, 14.198041, 16.993544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.504889, 13.880657, 17.656698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.802208, 14.148005, 17.667965>,  <16.980600, 14.308413, 17.674725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.802208, 14.148005, 17.667965>,  <16.504889, 13.880657, 17.656698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802208, 14.148005, 17.667965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318919, 0.317033, 0.893186,
		0.588047, -0.672886, 0.448805,
		0.743298, 0.668368, 0.028166,
		17.025198, 14.348515, 17.676414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.742842, 13.874640, 18.313339>,  <16.504889, 13.880657, 17.656698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.742842, 13.874640, 18.313339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849878, 14.218772, 18.139799>,  <16.914101, 14.425251, 18.035675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849878, 14.218772, 18.139799>,  <16.742842, 13.874640, 18.313339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.849878, 14.218772, 18.139799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318070, 0.503901, 0.803066,
		0.909520, -0.076900, 0.408486,
		0.267593, 0.860331, -0.433848,
		16.930157, 14.476871, 18.009645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338152, 13.210473, 18.351768>,  <16.742842, 13.874640, 18.313339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.338152, 13.210473, 18.351768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045454, 13.193363, 18.623863>,  <15.869835, 13.183098, 18.787119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045454, 13.193363, 18.623863>,  <16.338152, 13.210473, 18.351768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045454, 13.193363, 18.623863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603490, -0.423196, -0.675800,
		0.316780, -0.905028, 0.283857,
		-0.731745, -0.042775, 0.680235,
		15.825931, 13.180531, 18.827934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127312, 12.506702, 18.422937>,  <16.338152, 13.210473, 18.351768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127312, 12.506702, 18.422937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.814554, 12.727011, 18.539755>,  <15.626900, 12.859196, 18.609846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.814554, 12.727011, 18.539755>,  <16.127312, 12.506702, 18.422937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.814554, 12.727011, 18.539755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508425, -0.292289, -0.809982,
		-0.360757, -0.781802, 0.508567,
		-0.781894, 0.550775, 0.292042,
		15.579986, 12.892242, 18.627369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.752743, 12.008044, 18.583908>,  <16.127312, 12.506702, 18.422937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.752743, 12.008044, 18.583908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.510493, 12.320522, 18.523306>,  <15.365144, 12.508009, 18.486944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.510493, 12.320522, 18.523306>,  <15.752743, 12.008044, 18.583908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.510493, 12.320522, 18.523306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480912, -0.511005, -0.712459,
		-0.633991, -0.358620, 0.685162,
		-0.605623, 0.781195, -0.151508,
		15.328806, 12.554881, 18.477854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.140467, 11.712899, 18.423191>,  <15.752743, 12.008044, 18.583908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.140467, 11.712899, 18.423191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069103, 12.086253, 18.298634>,  <15.026285, 12.310266, 18.223900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069103, 12.086253, 18.298634>,  <15.140467, 11.712899, 18.423191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.069103, 12.086253, 18.298634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655308, -0.348784, -0.670016,
		-0.733991, 0.084521, 0.673880,
		-0.178408, 0.933384, -0.311392,
		15.015581, 12.366268, 18.205215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.388131, 11.794852, 18.464828>,  <15.140467, 11.712899, 18.423191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.388131, 11.794852, 18.464828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.555907, 12.053953, 18.210432>,  <14.656573, 12.209414, 18.057795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.555907, 12.053953, 18.210432>,  <14.388131, 11.794852, 18.464828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555907, 12.053953, 18.210432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645291, -0.280016, -0.710768,
		-0.638489, 0.708525, 0.300539,
		0.419441, 0.647753, -0.635992,
		14.681740, 12.248279, 18.019634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.843998, 12.202386, 18.324532>,  <14.388131, 11.794852, 18.464828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.843998, 12.202386, 18.324532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.114043, 12.240824, 18.031960>,  <14.276071, 12.263886, 17.856417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.114043, 12.240824, 18.031960>,  <13.843998, 12.202386, 18.324532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.114043, 12.240824, 18.031960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663877, -0.353223, -0.659167,
		-0.321700, 0.930591, -0.174671,
		0.675113, 0.096094, -0.731429,
		14.316577, 12.269652, 17.812531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.471141, 12.569239, 17.747427>,  <13.843998, 12.202386, 18.324532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.471141, 12.569239, 17.747427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794637, 12.396825, 17.587353>,  <13.988734, 12.293377, 17.491308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794637, 12.396825, 17.587353>,  <13.471141, 12.569239, 17.747427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.794637, 12.396825, 17.587353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560813, -0.360036, -0.745562,
		0.177281, 0.827396, -0.532905,
		0.808740, -0.431034, -0.400187,
		14.037259, 12.267514, 17.467297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.420483, 12.675250, 16.992119>,  <13.471141, 12.569239, 17.747427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.420483, 12.675250, 16.992119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.683187, 12.376616, 17.034590>,  <13.840811, 12.197435, 17.060072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.683187, 12.376616, 17.034590>,  <13.420483, 12.675250, 16.992119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.683187, 12.376616, 17.034590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404067, -0.467286, -0.786367,
		0.636705, 0.473554, -0.608567,
		0.656762, -0.746586, 0.106175,
		13.880217, 12.152639, 17.066442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.590788, 12.498089, 16.367933>,  <13.420483, 12.675250, 16.992119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.590788, 12.498089, 16.367933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.693541, 12.168820, 16.570478>,  <13.755192, 11.971259, 16.692005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.693541, 12.168820, 16.570478>,  <13.590788, 12.498089, 16.367933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693541, 12.168820, 16.570478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294061, -0.565676, -0.770415,
		0.920620, 0.049004, -0.387373,
		0.256881, -0.823170, 0.506363,
		13.770605, 11.921869, 16.722387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724948, 12.150285, 15.883906>,  <13.590788, 12.498089, 16.367933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.724948, 12.150285, 15.883906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.649273, 11.897093, 16.184185>,  <13.603868, 11.745178, 16.364353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.649273, 11.897093, 16.184185>,  <13.724948, 12.150285, 15.883906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.649273, 11.897093, 16.184185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526774, -0.579759, -0.621602,
		0.828684, -0.513047, -0.223754,
		-0.189187, -0.632979, 0.750697,
		13.592517, 11.707199, 16.409393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.723788, 11.493773, 15.612464>,  <13.724948, 12.150285, 15.883906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.723788, 11.493773, 15.612464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.540759, 11.433719, 15.963026>,  <13.430942, 11.397686, 16.173363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.540759, 11.433719, 15.963026>,  <13.723788, 11.493773, 15.612464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.540759, 11.433719, 15.963026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629223, -0.641744, -0.438455,
		0.628256, -0.752079, 0.199175,
		-0.457572, -0.150136, 0.876406,
		13.403487, 11.388678, 16.225948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.541183, 10.754985, 15.660559>,  <13.723788, 11.493773, 15.612464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.541183, 10.754985, 15.660559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.296336, 10.956915, 15.904021>,  <13.149427, 11.078074, 16.050098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.296336, 10.956915, 15.904021>,  <13.541183, 10.754985, 15.660559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296336, 10.956915, 15.904021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770427, -0.554173, -0.315174,
		0.178193, -0.661848, 0.728151,
		-0.612119, 0.504826, 0.608656,
		13.112700, 11.108363, 16.086618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<16.778112, 16.595989, 23.457390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.092218, 16.348404, 23.463642>,  <17.280682, 16.199852, 23.467394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.092218, 16.348404, 23.463642>,  <16.778112, 16.595989, 23.457390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.092218, 16.348404, 23.463642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329992, -0.439750, -0.835300,
		0.523894, 0.650773, -0.549573,
		0.785265, -0.618963, 0.015633,
		17.327797, 16.162716, 23.468332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.914522, 16.464090, 22.786474>,  <16.778112, 16.595989, 23.457390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.914522, 16.464090, 22.786474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.151735, 16.190672, 22.956688>,  <17.294064, 16.026621, 23.058815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.151735, 16.190672, 22.956688>,  <16.914522, 16.464090, 22.786474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151735, 16.190672, 22.956688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104140, -0.589170, -0.801270,
		0.798417, 0.430863, -0.420580,
		0.593031, -0.683547, 0.425533,
		17.329645, 15.985608, 23.084349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218473, 16.113441, 22.171404>,  <16.914522, 16.464090, 22.786474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.218473, 16.113441, 22.171404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.282267, 15.852432, 22.467722>,  <17.320541, 15.695827, 22.645514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.282267, 15.852432, 22.467722>,  <17.218473, 16.113441, 22.171404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.282267, 15.852432, 22.467722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046148, -0.754507, -0.654667,
		0.986122, 0.070221, -0.150442,
		0.159481, -0.652524, 0.740796,
		17.330111, 15.656675, 22.689960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.679016, 15.604751, 21.908247>,  <17.218473, 16.113441, 22.171404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.679016, 15.604751, 21.908247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.489733, 15.436663, 22.217955>,  <17.376163, 15.335810, 22.403778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.489733, 15.436663, 22.217955>,  <17.679016, 15.604751, 21.908247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.489733, 15.436663, 22.217955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247257, -0.780217, -0.574565,
		0.845541, -0.463331, 0.265301,
		-0.473207, -0.420221, 0.774268,
		17.347771, 15.310596, 22.450235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873726, 14.935101, 21.949261>,  <17.679016, 15.604751, 21.908247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.873726, 14.935101, 21.949261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.522959, 14.921429, 22.141031>,  <17.312498, 14.913225, 22.256094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.522959, 14.921429, 22.141031>,  <17.873726, 14.935101, 21.949261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.522959, 14.921429, 22.141031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286188, -0.764243, -0.577953,
		0.386153, -0.644022, 0.660394,
		-0.876916, -0.034181, 0.479426,
		17.259884, 14.911175, 22.284859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684010, 14.190589, 22.002943>,  <17.873726, 14.935101, 21.949261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684010, 14.190589, 22.002943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.332352, 14.369614, 22.068420>,  <17.121357, 14.477029, 22.107706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.332352, 14.369614, 22.068420>,  <17.684010, 14.190589, 22.002943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.332352, 14.369614, 22.068420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459674, -0.705783, -0.539045,
		-0.125726, -0.549143, 0.826218,
		-0.879143, 0.447562, 0.163692,
		17.068609, 14.503882, 22.117527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216206, 13.672026, 22.206942>,  <17.684010, 14.190589, 22.002943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.216206, 13.672026, 22.206942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.016687, 13.974275, 22.037123>,  <16.896976, 14.155623, 21.935232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.016687, 13.974275, 22.037123>,  <17.216206, 13.672026, 22.206942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.016687, 13.974275, 22.037123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384592, -0.631927, -0.672872,
		-0.776720, -0.172346, 0.605807,
		-0.498793, 0.755622, -0.424548,
		16.867050, 14.200961, 21.909758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782942, 13.292331, 21.906404>,  <17.216206, 13.672026, 22.206942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.782942, 13.292331, 21.906404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.685995, 13.636573, 21.727243>,  <16.627827, 13.843118, 21.619747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.685995, 13.636573, 21.727243>,  <16.782942, 13.292331, 21.906404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.685995, 13.636573, 21.727243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406268, -0.509269, -0.758678,
		-0.881024, -0.001912, 0.473067,
		-0.242369, 0.860605, -0.447902,
		16.613285, 13.894754, 21.592873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.046629, 13.261029, 21.772980>,  <16.782942, 13.292331, 21.906404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.046629, 13.261029, 21.772980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.215830, 13.524992, 21.524595>,  <16.317350, 13.683370, 21.375565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.215830, 13.524992, 21.524595>,  <16.046629, 13.261029, 21.772980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215830, 13.524992, 21.524595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446567, -0.444468, -0.776547,
		-0.788446, 0.605781, 0.106682,
		0.423001, 0.659907, -0.620961,
		16.342730, 13.722964, 21.338306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495715, 13.492504, 21.405882>,  <16.046629, 13.261029, 21.772980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495715, 13.492504, 21.405882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.819613, 13.599354, 21.196901>,  <16.013952, 13.663464, 21.071512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.819613, 13.599354, 21.196901>,  <15.495715, 13.492504, 21.405882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.819613, 13.599354, 21.196901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480620, -0.208857, -0.851694,
		-0.336626, 0.940757, -0.040736,
		0.809745, 0.267123, -0.522453,
		16.062536, 13.679491, 21.040165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.262364, 13.748228, 20.810806>,  <15.495715, 13.492504, 21.405882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.262364, 13.748228, 20.810806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.641522, 13.656381, 20.722469>,  <15.869017, 13.601273, 20.669466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.641522, 13.656381, 20.722469>,  <15.262364, 13.748228, 20.810806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.641522, 13.656381, 20.722469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273972, -0.233736, -0.932902,
		0.162593, 0.944798, -0.284466,
		0.947894, -0.229619, -0.220844,
		15.925891, 13.587495, 20.656216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423487, 14.066212, 20.141083>,  <15.262364, 13.748228, 20.810806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.423487, 14.066212, 20.141083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.729994, 13.809207, 20.139786>,  <15.913898, 13.655005, 20.139008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.729994, 13.809207, 20.139786>,  <15.423487, 14.066212, 20.141083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729994, 13.809207, 20.139786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161098, -0.187238, -0.969015,
		0.621996, 0.743048, -0.246982,
		0.766269, -0.642512, -0.003243,
		15.959874, 13.616453, 20.138813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.881095, 14.461074, 19.674091>,  <15.423487, 14.066212, 20.141083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.881095, 14.461074, 19.674091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.906568, 14.065042, 19.724195>,  <15.921851, 13.827424, 19.754257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.906568, 14.065042, 19.724195>,  <15.881095, 14.461074, 19.674091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.906568, 14.065042, 19.724195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172042, -0.134526, -0.975861,
		0.983029, 0.040594, -0.178901,
		0.063681, -0.990078, 0.125259,
		15.925672, 13.768019, 19.761774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443735, 14.202938, 19.327404>,  <15.881095, 14.461074, 19.674091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443735, 14.202938, 19.327404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.151545, 13.930347, 19.345282>,  <15.976231, 13.766793, 19.356009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.151545, 13.930347, 19.345282>,  <16.443735, 14.202938, 19.327404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.151545, 13.930347, 19.345282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118254, 0.061756, -0.991061,
		0.672624, -0.729230, -0.125698,
		-0.730474, -0.681476, 0.044696,
		15.932403, 13.725904, 19.358690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031353, 14.236826, 18.848984>,  <16.443735, 14.202938, 19.327404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031353, 14.236826, 18.848984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.984894, 14.538487, 18.590446>,  <16.957018, 14.719484, 18.435324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.984894, 14.538487, 18.590446>,  <17.031353, 14.236826, 18.848984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.984894, 14.538487, 18.590446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449730, 0.540287, 0.711220,
		0.885581, 0.373287, 0.276412,
		-0.116148, 0.754153, -0.646346,
		16.950050, 14.764733, 18.396544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.346567, 14.760766, 19.184048>,  <17.031353, 14.236826, 18.848984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.346567, 14.760766, 19.184048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.098358, 14.928242, 18.918823>,  <16.949432, 15.028728, 18.759687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.098358, 14.928242, 18.918823>,  <17.346567, 14.760766, 19.184048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098358, 14.928242, 18.918823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379951, 0.579142, 0.721271,
		0.685997, 0.699495, -0.200288,
		-0.620520, 0.418690, -0.663063,
		16.912203, 15.053849, 18.719904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.428104, 15.511373, 19.136158>,  <17.346567, 14.760766, 19.184048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.428104, 15.511373, 19.136158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.061428, 15.538318, 18.978605>,  <16.841423, 15.554484, 18.884073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.061428, 15.538318, 18.978605>,  <17.428104, 15.511373, 19.136158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061428, 15.538318, 18.978605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231289, 0.714354, 0.660457,
		0.325860, 0.696535, -0.639261,
		-0.916690, 0.067362, -0.393880,
		16.786421, 15.558526, 18.860441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294424, 16.154169, 18.921005>,  <17.428104, 15.511373, 19.136158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.294424, 16.154169, 18.921005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.916521, 16.026955, 18.952719>,  <16.689779, 15.950626, 18.971746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.916521, 16.026955, 18.952719>,  <17.294424, 16.154169, 18.921005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.916521, 16.026955, 18.952719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177341, 0.699409, 0.692371,
		-0.275649, 0.640063, -0.717173,
		-0.944758, -0.318035, 0.079282,
		16.633093, 15.931544, 18.976503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872339, 16.741165, 18.898344>,  <17.294424, 16.154169, 18.921005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872339, 16.741165, 18.898344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.635664, 16.469833, 19.072596>,  <16.493658, 16.307035, 19.177147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.635664, 16.469833, 19.072596>,  <16.872339, 16.741165, 18.898344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635664, 16.469833, 19.072596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331978, 0.697448, 0.635104,
		-0.734638, 0.231165, -0.637863,
		-0.591690, -0.678328, 0.435630,
		16.458157, 16.266335, 19.203285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193398, 17.044672, 19.105984>,  <16.872339, 16.741165, 18.898344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193398, 17.044672, 19.105984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.220692, 16.716648, 19.333261>,  <16.237068, 16.519835, 19.469629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.220692, 16.716648, 19.333261>,  <16.193398, 17.044672, 19.105984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.220692, 16.716648, 19.333261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287265, 0.529254, 0.798354,
		-0.955418, -0.217697, -0.199462,
		0.068233, -0.820060, 0.568195,
		16.241161, 16.470631, 19.503719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577559, 17.029673, 19.589985>,  <16.193398, 17.044672, 19.105984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577559, 17.029673, 19.589985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.840335, 16.781345, 19.761106>,  <15.998000, 16.632349, 19.863779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.840335, 16.781345, 19.761106>,  <15.577559, 17.029673, 19.589985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840335, 16.781345, 19.761106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224768, 0.380350, 0.897114,
		-0.719662, -0.685504, 0.110326,
		0.656937, -0.620820, 0.427803,
		16.037416, 16.595098, 19.889448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.276397, 16.874489, 20.221474>,  <15.577559, 17.029673, 19.589985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.276397, 16.874489, 20.221474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.659536, 16.780619, 20.287750>,  <15.889420, 16.724297, 20.327517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.659536, 16.780619, 20.287750>,  <15.276397, 16.874489, 20.221474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.659536, 16.780619, 20.287750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063431, 0.389768, 0.918726,
		-0.280183, -0.890510, 0.358453,
		0.957849, -0.234675, 0.165692,
		15.946891, 16.710217, 20.337458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.410364, 16.565954, 20.862169>,  <15.276397, 16.874489, 20.221474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.410364, 16.565954, 20.862169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.773124, 16.716862, 20.787119>,  <15.990780, 16.807405, 20.742088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.773124, 16.716862, 20.787119>,  <15.410364, 16.565954, 20.862169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.773124, 16.716862, 20.787119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056411, 0.332572, 0.941389,
		0.417557, -0.864328, 0.280327,
		0.906898, 0.377270, -0.187625,
		16.045193, 16.830042, 20.730831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707953, 16.637537, 21.498470>,  <15.410364, 16.565954, 20.862169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.707953, 16.637537, 21.498470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.976732, 16.846106, 21.288097>,  <16.138000, 16.971247, 21.161873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.976732, 16.846106, 21.288097>,  <15.707953, 16.637537, 21.498470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976732, 16.846106, 21.288097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131725, 0.614678, 0.777701,
		0.728791, -0.591852, 0.344346,
		0.671946, 0.521423, -0.525934,
		16.178316, 17.002533, 21.130318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.395002, 16.603098, 21.873409>,  <15.707953, 16.637537, 21.498470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.395002, 16.603098, 21.873409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.400782, 16.929749, 21.642614>,  <16.404249, 17.125738, 21.504137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.400782, 16.929749, 21.642614>,  <16.395002, 16.603098, 21.873409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.400782, 16.929749, 21.642614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373016, 0.530987, 0.760863,
		0.927713, -0.226216, -0.296944,
		0.014446, 0.816626, -0.576986,
		16.405115, 17.174736, 21.469519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.995129, 16.946436, 22.089325>,  <16.395002, 16.603098, 21.873409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.995129, 16.946436, 22.089325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.813471, 17.238400, 21.884979>,  <16.704475, 17.413578, 21.762371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.813471, 17.238400, 21.884979>,  <16.995129, 16.946436, 22.089325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.813471, 17.238400, 21.884979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412116, 0.680483, 0.605891,
		0.789881, 0.064627, -0.609845,
		-0.454146, 0.729909, -0.510866,
		16.677227, 17.457373, 21.731720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.551643, 17.461626, 21.975828>,  <16.995129, 16.946436, 22.089325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.551643, 17.461626, 21.975828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.197027, 17.642176, 21.935225>,  <16.984257, 17.750505, 21.910862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.197027, 17.642176, 21.935225>,  <17.551643, 17.461626, 21.975828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.197027, 17.642176, 21.935225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350529, 0.798526, 0.489373,
		0.301948, 0.398268, -0.866147,
		-0.886542, 0.451374, -0.101509,
		16.931065, 17.777588, 21.904772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698584, 18.148766, 21.826359>,  <17.551643, 17.461626, 21.975828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698584, 18.148766, 21.826359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.325130, 18.153633, 21.969570>,  <17.101059, 18.156553, 22.055496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.325130, 18.153633, 21.969570>,  <17.698584, 18.148766, 21.826359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.325130, 18.153633, 21.969570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254287, 0.726474, 0.638415,
		-0.252331, 0.687086, -0.681353,
		-0.933631, 0.012167, 0.358029,
		17.045040, 18.157284, 22.076979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.821644, 18.949694, 23.649385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.115395, 18.679689, 23.620955>,  <13.291645, 18.517687, 23.603897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.115395, 18.679689, 23.620955>,  <12.821644, 18.949694, 23.649385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.115395, 18.679689, 23.620955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261033, -0.184213, -0.947590,
		0.626539, 0.714442, -0.311481,
		0.734377, -0.675010, -0.071076,
		13.335708, 18.477186, 23.599632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.157541, 19.060694, 23.033186>,  <12.821644, 18.949694, 23.649385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.157541, 19.060694, 23.033186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.256847, 18.685301, 23.129198>,  <13.316431, 18.460066, 23.186806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.256847, 18.685301, 23.129198>,  <13.157541, 19.060694, 23.033186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.256847, 18.685301, 23.129198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124564, -0.276660, -0.952860,
		0.960650, 0.206664, -0.185586,
		0.248267, -0.938482, 0.240031,
		13.331327, 18.403755, 23.201208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.721009, 18.807507, 22.457615>,  <13.157541, 19.060694, 23.033186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.721009, 18.807507, 22.457615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.583198, 18.476582, 22.635088>,  <13.500510, 18.278027, 22.741571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.583198, 18.476582, 22.635088>,  <13.721009, 18.807507, 22.457615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.583198, 18.476582, 22.635088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001793, -0.473197, -0.880955,
		0.938774, -0.302720, 0.164514,
		-0.344530, -0.827312, 0.443682,
		13.479838, 18.228388, 22.768192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.212983, 18.322140, 22.322300>,  <13.721009, 18.807507, 22.457615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.212983, 18.322140, 22.322300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.854008, 18.153702, 22.374884>,  <13.638622, 18.052639, 22.406435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.854008, 18.153702, 22.374884>,  <14.212983, 18.322140, 22.322300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.854008, 18.153702, 22.374884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047954, -0.389361, -0.919836,
		0.438526, -0.819192, 0.369621,
		-0.897438, -0.421097, 0.131461,
		13.584776, 18.027372, 22.414322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.372303, 17.670782, 22.102766>,  <14.212983, 18.322140, 22.322300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.372303, 17.670782, 22.102766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.974045, 17.708063, 22.102123>,  <13.735090, 17.730433, 22.101738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.974045, 17.708063, 22.102123>,  <14.372303, 17.670782, 22.102766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.974045, 17.708063, 22.102123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025458, -0.288464, -0.957152,
		-0.089675, -0.952943, 0.289581,
		-0.995645, 0.093204, -0.001608,
		13.675351, 17.736025, 22.101641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.097057, 17.079641, 21.676868>,  <14.372303, 17.670782, 22.102766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.097057, 17.079641, 21.676868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.768426, 17.305944, 21.704945>,  <13.571247, 17.441727, 21.721790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.768426, 17.305944, 21.704945>,  <14.097057, 17.079641, 21.676868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.768426, 17.305944, 21.704945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382806, -0.456237, -0.803310,
		-0.422451, -0.686855, 0.591410,
		-0.821581, 0.565754, 0.070194,
		13.521953, 17.475672, 21.726002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.489796, 16.704340, 21.545439>,  <14.097057, 17.079641, 21.676868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.489796, 16.704340, 21.545439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.391003, 17.074757, 21.431284>,  <13.331727, 17.297007, 21.362791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.391003, 17.074757, 21.431284>,  <13.489796, 16.704340, 21.545439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.391003, 17.074757, 21.431284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338463, -0.358401, -0.870053,
		-0.907988, -0.118296, 0.401950,
		-0.246984, 0.926042, -0.285385,
		13.316908, 17.352570, 21.345669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.824812, 16.688261, 21.380770>,  <13.489796, 16.704340, 21.545439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.824812, 16.688261, 21.380770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.977578, 16.998915, 21.180378>,  <13.069238, 17.185307, 21.060143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.977578, 16.998915, 21.180378>,  <12.824812, 16.688261, 21.380770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.977578, 16.998915, 21.180378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385007, -0.359096, -0.850188,
		-0.840185, 0.517580, 0.161865,
		0.381916, 0.776634, -0.500979,
		13.092153, 17.231905, 21.030085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.490324, 16.594181, 20.801207>,  <12.824812, 16.688261, 21.380770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.490324, 16.594181, 20.801207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.710870, 16.913378, 20.703875>,  <12.843197, 17.104895, 20.645475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.710870, 16.913378, 20.703875>,  <12.490324, 16.594181, 20.801207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.710870, 16.913378, 20.703875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359024, -0.036317, -0.932621,
		-0.753060, 0.601575, 0.266474,
		0.551364, 0.797990, -0.243329,
		12.876279, 17.152775, 20.630877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.057737, 17.124456, 20.452595>,  <12.490324, 16.594181, 20.801207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.057737, 17.124456, 20.452595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.432682, 17.189098, 20.329153>,  <12.657649, 17.227882, 20.255089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.432682, 17.189098, 20.329153>,  <12.057737, 17.124456, 20.452595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.432682, 17.189098, 20.329153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323217, 0.073027, -0.943503,
		-0.129937, 0.984150, 0.120686,
		0.937362, 0.161604, -0.308605,
		12.713891, 17.237579, 20.236572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.994443, 17.699123, 19.897547>,  <12.057737, 17.124456, 20.452595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.994443, 17.699123, 19.897547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.345852, 17.515440, 19.844896>,  <12.556698, 17.405230, 19.813307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.345852, 17.515440, 19.844896>,  <11.994443, 17.699123, 19.897547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.345852, 17.515440, 19.844896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205199, -0.113940, -0.972065,
		0.431383, 0.880991, -0.194328,
		0.878523, -0.459208, -0.131627,
		12.609408, 17.377678, 19.805408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.309540, 18.003040, 19.232588>,  <11.994443, 17.699123, 19.897547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.309540, 18.003040, 19.232588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.453859, 17.643078, 19.330564>,  <12.540451, 17.427101, 19.389351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.453859, 17.643078, 19.330564>,  <12.309540, 18.003040, 19.232588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.453859, 17.643078, 19.330564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000886, -0.262963, -0.964805,
		0.932644, 0.347883, -0.095674,
		0.360798, -0.899904, 0.244943,
		12.562099, 17.373106, 19.404047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.815001, 17.876520, 18.782330>,  <12.309540, 18.003040, 19.232588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.815001, 17.876520, 18.782330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.761605, 17.505199, 18.921144>,  <12.729568, 17.282408, 19.004433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.761605, 17.505199, 18.921144>,  <12.815001, 17.876520, 18.782330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.761605, 17.505199, 18.921144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136224, -0.364035, -0.921369,
		0.981643, -0.075719, 0.175053,
		-0.133491, -0.928302, 0.347038,
		12.721558, 17.226709, 19.025255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.186487, 17.439457, 18.398981>,  <12.815001, 17.876520, 18.782330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.186487, 17.439457, 18.398981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.913467, 17.193911, 18.557623>,  <12.749656, 17.046583, 18.652807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.913467, 17.193911, 18.557623>,  <13.186487, 17.439457, 18.398981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.913467, 17.193911, 18.557623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079927, -0.476717, -0.875416,
		0.726455, -0.629215, 0.276319,
		-0.682550, -0.613865, 0.396604,
		12.708702, 17.009750, 18.676603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.770087, 17.244394, 17.939041>,  <13.186487, 17.439457, 18.398981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.770087, 17.244394, 17.939041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.827344, 17.483679, 17.623661>,  <13.861698, 17.627249, 17.434433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.827344, 17.483679, 17.623661>,  <13.770087, 17.244394, 17.939041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.827344, 17.483679, 17.623661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125560, 0.779242, 0.614017,
		0.981705, -0.186890, 0.036431,
		0.143142, 0.598209, -0.788451,
		13.870287, 17.663141, 17.387125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.484303, 17.582458, 18.068172>,  <13.770087, 17.244394, 17.939041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.484303, 17.582458, 18.068172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.255134, 17.788355, 17.813049>,  <14.117632, 17.911894, 17.659975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.255134, 17.788355, 17.813049>,  <14.484303, 17.582458, 18.068172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.255134, 17.788355, 17.813049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231024, 0.848054, 0.476899,
		0.786375, 0.125879, -0.604788,
		-0.572925, 0.514742, -0.637807,
		14.083257, 17.942778, 17.621708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.828239, 18.216330, 17.781549>,  <14.484303, 17.582458, 18.068172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.828239, 18.216330, 17.781549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.443021, 18.308475, 17.725731>,  <14.211889, 18.363764, 17.692240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.443021, 18.308475, 17.725731>,  <14.828239, 18.216330, 17.781549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.443021, 18.308475, 17.725731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169729, 0.921369, 0.349674,
		0.209126, 0.313068, -0.926421,
		-0.963046, 0.230366, -0.139545,
		14.154107, 18.377584, 17.683867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.817122, 18.912582, 17.528887>,  <14.828239, 18.216330, 17.781549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.817122, 18.912582, 17.528887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.456730, 18.843174, 17.687946>,  <14.240495, 18.801529, 17.783382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.456730, 18.843174, 17.687946>,  <14.817122, 18.912582, 17.528887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.456730, 18.843174, 17.687946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066716, 0.850225, 0.522175,
		-0.428700, 0.496999, -0.754459,
		-0.900980, -0.173522, 0.397649,
		14.186436, 18.791117, 17.807241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.558598, 19.621389, 17.711737>,  <14.817122, 18.912582, 17.528887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.558598, 19.621389, 17.711737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.304573, 19.384157, 17.909708>,  <14.152159, 19.241817, 18.028490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.304573, 19.384157, 17.909708>,  <14.558598, 19.621389, 17.711737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.304573, 19.384157, 17.909708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121405, 0.556122, 0.822186,
		-0.762862, 0.582225, -0.281169,
		-0.635061, -0.593079, 0.494929,
		14.114055, 19.206234, 18.058187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.923337, 20.059891, 17.981558>,  <14.558598, 19.621389, 17.711737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.923337, 20.059891, 17.981558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.974081, 19.730047, 18.202076>,  <14.004527, 19.532141, 18.334387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.974081, 19.730047, 18.202076>,  <13.923337, 20.059891, 17.981558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.974081, 19.730047, 18.202076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130698, 0.564837, 0.814786,
		-0.983272, -0.031309, 0.179430,
		0.126859, -0.824608, 0.551297,
		14.012138, 19.482664, 18.367466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.583161, 20.247940, 18.592934>,  <13.923337, 20.059891, 17.981558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.583161, 20.247940, 18.592934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.805755, 19.927896, 18.682510>,  <13.939311, 19.735870, 18.736256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.805755, 19.927896, 18.682510>,  <13.583161, 20.247940, 18.592934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.805755, 19.927896, 18.682510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268793, 0.428401, 0.862683,
		-0.786178, -0.419876, 0.453462,
		0.556484, -0.800110, 0.223940,
		13.972700, 19.687864, 18.749693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.390348, 19.944305, 19.328831>,  <13.583161, 20.247940, 18.592934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.390348, 19.944305, 19.328831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.762176, 19.804508, 19.281914>,  <13.985271, 19.720629, 19.253763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.762176, 19.804508, 19.281914>,  <13.390348, 19.944305, 19.328831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762176, 19.804508, 19.281914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203360, 0.220750, 0.953894,
		-0.307489, -0.910562, 0.276275,
		0.929567, -0.349495, -0.117294,
		14.041046, 19.699659, 19.246725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.451659, 19.509626, 19.913046>,  <13.390348, 19.944305, 19.328831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.451659, 19.509626, 19.913046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.805510, 19.635612, 19.775505>,  <14.017819, 19.711205, 19.692980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.805510, 19.635612, 19.775505>,  <13.451659, 19.509626, 19.913046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.805510, 19.635612, 19.775505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317838, 0.132288, 0.938871,
		0.341202, -0.939838, 0.016916,
		0.884624, 0.314968, -0.343853,
		14.070897, 19.730103, 19.672350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874265, 19.200508, 20.447428>,  <13.451659, 19.509626, 19.913046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.874265, 19.200508, 20.447428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.063345, 19.499155, 20.260187>,  <14.176793, 19.678343, 20.147842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.063345, 19.499155, 20.260187>,  <13.874265, 19.200508, 20.447428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063345, 19.499155, 20.260187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338117, 0.336873, 0.878746,
		0.813775, -0.573657, -0.093204,
		0.472701, 0.746615, -0.468102,
		14.205155, 19.723139, 20.119757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.514636, 19.167429, 20.686611>,  <13.874265, 19.200508, 20.447428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.514636, 19.167429, 20.686611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.476259, 19.542459, 20.552900>,  <14.453234, 19.767479, 20.472673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.476259, 19.542459, 20.552900>,  <14.514636, 19.167429, 20.686611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.476259, 19.542459, 20.552900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328465, 0.346837, 0.878530,
		0.939631, -0.025511, -0.341237,
		-0.095941, 0.937578, -0.334278,
		14.447477, 19.823732, 20.452618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189744, 19.392309, 20.858643>,  <14.514636, 19.167429, 20.686611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.189744, 19.392309, 20.858643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.976773, 19.720551, 20.775572>,  <14.848991, 19.917496, 20.725729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.976773, 19.720551, 20.775572>,  <15.189744, 19.392309, 20.858643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976773, 19.720551, 20.775572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341895, 0.432915, 0.834082,
		0.774358, 0.373084, -0.511057,
		-0.532426, 0.820605, -0.207675,
		14.817045, 19.966732, 20.713270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.685862, 19.914412, 20.783522>,  <15.189744, 19.392309, 20.858643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.685862, 19.914412, 20.783522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.332412, 20.080435, 20.870180>,  <15.120342, 20.180048, 20.922174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.332412, 20.080435, 20.870180>,  <15.685862, 19.914412, 20.783522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.332412, 20.080435, 20.870180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428412, 0.530113, 0.731740,
		0.188868, 0.739397, -0.646237,
		-0.883625, 0.415057, 0.216645,
		15.067325, 20.204952, 20.935173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724394, 20.685751, 20.925173>,  <15.685862, 19.914412, 20.783522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724394, 20.685751, 20.925173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.386350, 20.570196, 21.105099>,  <15.183523, 20.500864, 21.213055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.386350, 20.570196, 21.105099>,  <15.724394, 20.685751, 20.925173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.386350, 20.570196, 21.105099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203203, 0.604674, 0.770116,
		-0.494468, 0.742236, -0.452313,
		-0.845110, -0.288886, 0.449816,
		15.132816, 20.483530, 21.240044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891418, 21.421118, 20.842949>,  <15.724394, 20.685751, 20.925173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891418, 21.421118, 20.842949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.286686, 21.405401, 20.783648>,  <16.523846, 21.395971, 20.748068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.286686, 21.405401, 20.783648>,  <15.891418, 21.421118, 20.842949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.286686, 21.405401, 20.783648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151572, -0.397756, -0.904885,
		-0.023414, 0.916650, -0.399005,
		0.988169, -0.039291, -0.148252,
		16.583138, 21.393614, 20.739172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.008057, 21.713598, 20.079725>,  <15.891418, 21.421118, 20.842949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.008057, 21.713598, 20.079725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.359251, 21.533131, 20.143709>,  <16.569967, 21.424850, 20.182098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.359251, 21.533131, 20.143709>,  <16.008057, 21.713598, 20.079725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.359251, 21.533131, 20.143709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045594, -0.411460, -0.910287,
		0.476510, 0.791925, -0.381827,
		0.877986, -0.451170, 0.159958,
		16.622646, 21.397779, 20.191696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423889, 21.840452, 19.548702>,  <16.008057, 21.713598, 20.079725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423889, 21.840452, 19.548702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.610622, 21.511744, 19.679399>,  <16.722662, 21.314518, 19.757818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.610622, 21.511744, 19.679399>,  <16.423889, 21.840452, 19.548702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.610622, 21.511744, 19.679399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095116, -0.320675, -0.942401,
		0.879216, 0.471022, -0.071538,
		0.466832, -0.821770, 0.326745,
		16.750671, 21.265213, 19.777422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.966759, 21.652035, 19.083689>,  <16.423889, 21.840452, 19.548702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.966759, 21.652035, 19.083689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.898567, 21.318350, 19.293461>,  <16.857653, 21.118139, 19.419323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.898567, 21.318350, 19.293461>,  <16.966759, 21.652035, 19.083689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898567, 21.318350, 19.293461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016881, -0.534614, -0.844928,
		0.985217, -0.135188, 0.105222,
		-0.170477, -0.834214, 0.524428,
		16.847424, 21.068087, 19.450788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628363, 21.235430, 18.968990>,  <16.966759, 21.652035, 19.083689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.628363, 21.235430, 18.968990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.322655, 21.001600, 19.077923>,  <17.139229, 20.861303, 19.143282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.322655, 21.001600, 19.077923>,  <17.628363, 21.235430, 18.968990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322655, 21.001600, 19.077923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232267, -0.643460, -0.729391,
		0.601617, -0.494199, 0.627555,
		-0.764271, -0.584574, 0.272330,
		17.093374, 20.826227, 19.159622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848457, 20.590025, 18.843048>,  <17.628363, 21.235430, 18.968990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.848457, 20.590025, 18.843048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.453102, 20.530054, 18.852949>,  <17.215889, 20.494072, 18.858891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.453102, 20.530054, 18.852949>,  <17.848457, 20.590025, 18.843048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.453102, 20.530054, 18.852949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085872, -0.685473, -0.723017,
		0.125367, -0.712495, 0.690387,
		-0.988387, -0.149928, 0.024752,
		17.156586, 20.485075, 18.860374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.762245, 19.841650, 18.967125>,  <17.848457, 20.590025, 18.843048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.762245, 19.841650, 18.967125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.415033, 19.950150, 18.800776>,  <17.206707, 20.015249, 18.700966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.415033, 19.950150, 18.800776>,  <17.762245, 19.841650, 18.967125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415033, 19.950150, 18.800776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022895, -0.814828, -0.579251,
		-0.495987, -0.512328, 0.701083,
		-0.868028, 0.271249, -0.415873,
		17.154625, 20.031525, 18.676014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.332029, 19.235229, 18.966208>,  <17.762245, 19.841650, 18.967125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.332029, 19.235229, 18.966208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.156809, 19.479074, 18.701939>,  <17.051676, 19.625381, 18.543377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.156809, 19.479074, 18.701939>,  <17.332029, 19.235229, 18.966208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156809, 19.479074, 18.701939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024882, -0.742877, -0.668966,
		-0.898605, -0.276603, 0.340588,
		-0.438053, 0.609610, -0.660670,
		17.025393, 19.661957, 18.503738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791677, 18.854683, 18.682325>,  <17.332029, 19.235229, 18.966208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.791677, 18.854683, 18.682325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.886570, 19.158262, 18.439768>,  <16.943506, 19.340410, 18.294233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.886570, 19.158262, 18.439768>,  <16.791677, 18.854683, 18.682325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886570, 19.158262, 18.439768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214873, -0.567759, -0.794657,
		-0.947391, 0.318816, 0.028387,
		0.237233, 0.758950, -0.606395,
		16.957739, 19.385948, 18.257849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318272, 18.808962, 18.137161>,  <16.791677, 18.854683, 18.682325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318272, 18.808962, 18.137161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.595337, 19.045301, 17.971695>,  <16.761576, 19.187105, 17.872416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.595337, 19.045301, 17.971695>,  <16.318272, 18.808962, 18.137161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595337, 19.045301, 17.971695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167291, -0.689497, -0.704704,
		-0.701594, 0.418919, -0.576432,
		0.692662, 0.590848, -0.413665,
		16.803135, 19.222555, 17.847595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189625, 18.967966, 17.389904>,  <16.318272, 18.808962, 18.137161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.189625, 18.967966, 17.389904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.586271, 19.003084, 17.427832>,  <16.824259, 19.024155, 17.450588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.586271, 19.003084, 17.427832>,  <16.189625, 18.967966, 17.389904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586271, 19.003084, 17.427832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129222, -0.673375, -0.727921,
		-0.000060, 0.734070, -0.679074,
		0.991616, 0.087795, 0.094817,
		16.883757, 19.029423, 17.456276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314264, 18.808825, 16.759096>,  <16.189625, 18.967966, 17.389904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.314264, 18.808825, 16.759096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.649614, 18.784430, 16.975763>,  <16.850824, 18.769793, 17.105764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.649614, 18.784430, 16.975763>,  <16.314264, 18.808825, 16.759096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.649614, 18.784430, 16.975763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350560, -0.700632, -0.621469,
		0.417411, 0.710912, -0.566014,
		0.838377, -0.060986, 0.541669,
		16.901127, 18.766134, 17.138264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.824184, 18.743792, 16.284256>,  <16.314264, 18.808825, 16.759096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.824184, 18.743792, 16.284256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.979862, 18.587795, 16.618067>,  <17.073269, 18.494198, 16.818354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.979862, 18.587795, 16.618067>,  <16.824184, 18.743792, 16.284256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979862, 18.587795, 16.618067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430517, -0.723914, -0.539077,
		0.814360, 0.569084, -0.113848,
		0.389196, -0.389989, 0.834527,
		17.096621, 18.470798, 16.868425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545424, 18.645947, 16.214241>,  <16.824184, 18.743792, 16.284256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545424, 18.645947, 16.214241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.450451, 18.390751, 16.507252>,  <17.393467, 18.237633, 16.683058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.450451, 18.390751, 16.507252>,  <17.545424, 18.645947, 16.214241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.450451, 18.390751, 16.507252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282503, -0.766846, -0.576315,
		0.929419, 0.070107, 0.362306,
		-0.237429, -0.637991, 0.732526,
		17.379223, 18.199354, 16.727009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<2.291205, 16.178877, 3.000834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.428081, 16.257030, 3.368472>,  <2.510206, 16.303923, 3.589054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.428081, 16.257030, 3.368472>,  <2.291205, 16.178877, 3.000834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.428081, 16.257030, 3.368472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729089, -0.672240, -0.128542,
		0.592736, 0.714086, -0.372485,
		0.342189, 0.195383, 0.919093,
		2.530738, 16.315645, 3.644200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.936177, 16.444183, 3.021697>,  <2.291205, 16.178877, 3.000834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.936177, 16.444183, 3.021697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.877127, 16.234274, 3.357034>,  <2.841697, 16.108328, 3.558237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.877127, 16.234274, 3.357034>,  <2.936177, 16.444183, 3.021697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.877127, 16.234274, 3.357034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732414, -0.627634, -0.263905,
		0.664663, 0.575055, 0.477006,
		-0.147625, -0.524773, 0.838344,
		2.832840, 16.076841, 3.608537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.482291, 16.455683, 3.594473>,  <2.936177, 16.444183, 3.021697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.482291, 16.455683, 3.594473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.303599, 16.103142, 3.532952>,  <3.196384, 15.891618, 3.496040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.303599, 16.103142, 3.532952>,  <3.482291, 16.455683, 3.594473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.303599, 16.103142, 3.532952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860995, -0.376793, -0.341636,
		0.243150, -0.285041, 0.927162,
		-0.446729, -0.881351, -0.153801,
		3.169581, 15.838737, 3.486812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.052692, 15.920780, 3.827977>,  <3.482291, 16.455683, 3.594473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.052692, 15.920780, 3.827977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.800639, 15.751771, 3.567391>,  <3.649408, 15.650365, 3.411039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.800639, 15.751771, 3.567391>,  <4.052692, 15.920780, 3.827977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.800639, 15.751771, 3.567391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759155, -0.511514, -0.402538,
		-0.163152, -0.748215, 0.643083,
		-0.630131, -0.422525, -0.651466,
		3.611600, 15.625013, 3.371951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.807959, 15.706798, 4.195089>,  <4.052692, 15.920780, 3.827977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.807959, 15.706798, 4.195089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.607412, 15.373770, 4.289288>,  <4.487083, 15.173953, 4.345808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.607412, 15.373770, 4.289288>,  <4.807959, 15.706798, 4.195089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.607412, 15.373770, 4.289288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031997, 0.289833, 0.956542,
		-0.864642, 0.472044, -0.171952,
		-0.501368, -0.832569, 0.235497,
		4.457002, 15.123999, 4.359937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.012862, 15.797119, 4.920943>,  <4.807959, 15.706798, 4.195089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.012862, 15.797119, 4.920943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.255547, 16.059444, 5.100635>,  <5.401157, 16.216839, 5.208450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.255547, 16.059444, 5.100635>,  <5.012862, 15.797119, 4.920943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.255547, 16.059444, 5.100635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549623, -0.754361, 0.358963,
		0.574295, 0.029121, -0.818130,
		0.606712, 0.655814, 0.449231,
		5.437560, 16.256189, 5.235404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.729194, 15.709632, 4.810010>,  <5.012862, 15.797119, 4.920943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.729194, 15.709632, 4.810010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.726658, 15.905118, 5.158978>,  <5.725137, 16.022409, 5.368359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.726658, 15.905118, 5.158978>,  <5.729194, 15.709632, 4.810010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.726658, 15.905118, 5.158978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553196, -0.725065, 0.410189,
		0.833027, 0.485219, -0.265760,
		-0.006338, 0.488716, 0.872420,
		5.724757, 16.051733, 5.420704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.441411, 15.863899, 5.148414>,  <5.729194, 15.709632, 4.810010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.441411, 15.863899, 5.148414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.185673, 15.836297, 5.454741>,  <6.032229, 15.819736, 5.638536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.185673, 15.836297, 5.454741>,  <6.441411, 15.863899, 5.148414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.185673, 15.836297, 5.454741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496468, -0.797581, 0.342613,
		0.587158, 0.599252, 0.544190,
		-0.639347, -0.069005, 0.765816,
		5.993869, 15.815596, 5.684485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.652036, 16.159931, 5.874127>,  <6.441411, 15.863899, 5.148414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.652036, 16.159931, 5.874127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.429728, 15.829732, 5.834794>,  <6.296342, 15.631612, 5.811194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.429728, 15.829732, 5.834794>,  <6.652036, 16.159931, 5.874127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.429728, 15.829732, 5.834794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764895, -0.554100, 0.328496,
		-0.325659, 0.107354, 0.939373,
		-0.555772, -0.825499, -0.098333,
		6.262996, 15.582083, 5.805294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.572156, 16.669777, 5.381441>,  <6.652036, 16.159931, 5.874127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.572156, 16.669777, 5.381441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.444932, 17.044853, 5.437396>,  <6.368597, 17.269899, 5.470969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.444932, 17.044853, 5.437396>,  <6.572156, 16.669777, 5.381441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.444932, 17.044853, 5.437396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124388, -0.105000, 0.986662,
		0.939875, 0.331220, -0.083241,
		-0.318062, 0.937693, 0.139887,
		6.349513, 17.326160, 5.479362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.029531, 17.177122, 5.755778>,  <6.572156, 16.669777, 5.381441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.029531, 17.177122, 5.755778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.636075, 17.236523, 5.796579>,  <6.400002, 17.272163, 5.821059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.636075, 17.236523, 5.796579>,  <7.029531, 17.177122, 5.755778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.636075, 17.236523, 5.796579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065221, -0.234247, 0.969987,
		0.167938, 0.960768, 0.220729,
		-0.983638, 0.148501, 0.102001,
		6.340984, 17.281073, 5.827179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.927747, 17.568598, 6.437110>,  <7.029531, 17.177122, 5.755778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.927747, 17.568598, 6.437110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.589463, 17.380739, 6.335757>,  <6.386492, 17.268024, 6.274945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.589463, 17.380739, 6.335757>,  <6.927747, 17.568598, 6.437110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.589463, 17.380739, 6.335757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104755, -0.319473, 0.941787,
		-0.523258, 0.823023, 0.220984,
		-0.845711, -0.469649, -0.253383,
		6.335750, 17.239845, 6.259742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.543087, 17.619591, 7.047232>,  <6.927747, 17.568598, 6.437110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.543087, 17.619591, 7.047232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.362403, 17.331812, 6.836194>,  <6.253994, 17.159145, 6.709571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.362403, 17.331812, 6.836194>,  <6.543087, 17.619591, 7.047232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.362403, 17.331812, 6.836194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194655, -0.497643, 0.845258,
		-0.870671, 0.484509, 0.084746,
		-0.451709, -0.719446, -0.527596,
		6.226891, 17.115978, 6.677915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.936042, 17.645069, 7.398340>,  <6.543087, 17.619591, 7.047232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.936042, 17.645069, 7.398340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.974213, 17.303148, 7.194299>,  <5.997116, 17.097996, 7.071874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.974213, 17.303148, 7.194299>,  <5.936042, 17.645069, 7.398340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.974213, 17.303148, 7.194299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169071, -0.518913, 0.837940,
		-0.980973, 0.006281, -0.194041,
		0.095427, -0.854804, -0.510102,
		6.002841, 17.046707, 7.041268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.365558, 17.226303, 7.508227>,  <5.936042, 17.645069, 7.398340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.365558, 17.226303, 7.508227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.640189, 16.954327, 7.405238>,  <5.804967, 16.791142, 7.343444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.640189, 16.954327, 7.405238>,  <5.365558, 17.226303, 7.508227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.640189, 16.954327, 7.405238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148402, -0.477735, 0.865879,
		-0.711751, -0.556282, -0.428907,
		0.686577, -0.679941, -0.257475,
		5.846162, 16.750345, 7.327995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.027091, 16.559484, 7.600244>,  <5.365558, 17.226303, 7.508227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.027091, 16.559484, 7.600244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.424829, 16.519365, 7.614174>,  <5.663473, 16.495293, 7.622532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.424829, 16.519365, 7.614174>,  <5.027091, 16.559484, 7.600244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.424829, 16.519365, 7.614174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070988, -0.384118, 0.920551,
		-0.078954, -0.917820, -0.389067,
		0.994348, -0.100300, 0.034827,
		5.723134, 16.489275, 7.624622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.158063, 15.931701, 7.801689>,  <5.027091, 16.559484, 7.600244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.158063, 15.931701, 7.801689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.515167, 16.091274, 7.885434>,  <5.729430, 16.187019, 7.935680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.515167, 16.091274, 7.885434>,  <5.158063, 15.931701, 7.801689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.515167, 16.091274, 7.885434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147878, -0.179482, 0.972583,
		0.425574, -0.899243, -0.101241,
		0.892759, 0.398935, 0.209361,
		5.782995, 16.210955, 7.948242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.312641, 15.525743, 8.355919>,  <5.158063, 15.931701, 7.801689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.312641, 15.525743, 8.355919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.560451, 15.836811, 8.398652>,  <5.709137, 16.023453, 8.424293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.560451, 15.836811, 8.398652>,  <5.312641, 15.525743, 8.355919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.560451, 15.836811, 8.398652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015331, -0.124085, 0.992153,
		0.784827, -0.616302, -0.064951,
		0.619526, 0.777672, 0.106834,
		5.746309, 16.070112, 8.430702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.852273, 15.356970, 8.778824>,  <5.312641, 15.525743, 8.355919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.852273, 15.356970, 8.778824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.809160, 15.753336, 8.810993>,  <5.783292, 15.991156, 8.830295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.809160, 15.753336, 8.810993>,  <5.852273, 15.356970, 8.778824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.809160, 15.753336, 8.810993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109502, -0.068571, 0.991619,
		0.988126, 0.115686, -0.101116,
		-0.107783, 0.990916, 0.080424,
		5.776825, 16.050611, 8.835120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.335005, 15.529295, 9.169134>,  <5.852273, 15.356970, 8.778824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.335005, 15.529295, 9.169134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.065669, 15.822093, 9.210694>,  <5.904068, 15.997772, 9.235630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.065669, 15.822093, 9.210694>,  <6.335005, 15.529295, 9.169134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.065669, 15.822093, 9.210694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085880, -0.062143, 0.994366,
		0.734328, 0.678470, -0.021020,
		-0.673341, 0.731995, 0.103901,
		5.863667, 16.041691, 9.241864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.665751, 16.104042, 9.656496>,  <6.335005, 15.529295, 9.169134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.665751, 16.104042, 9.656496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.277965, 16.200539, 9.674096>,  <6.045292, 16.258436, 9.684656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.277965, 16.200539, 9.674096>,  <6.665751, 16.104042, 9.656496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.277965, 16.200539, 9.674096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048633, 0.013283, 0.998728,
		0.240350, 0.970374, -0.024609,
		-0.969467, 0.241242, 0.044000,
		5.987124, 16.272911, 9.687296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.523811, 16.723017, 10.139427>,  <6.665751, 16.104042, 9.656496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.523811, 16.723017, 10.139427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.160699, 16.556526, 10.118688>,  <5.942831, 16.456633, 10.106244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.160699, 16.556526, 10.118688>,  <6.523811, 16.723017, 10.139427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.160699, 16.556526, 10.118688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098072, 0.090435, 0.991062,
		-0.407817, 0.904753, -0.122915,
		-0.907782, -0.416226, -0.051850,
		5.888364, 16.431658, 10.103132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.211535, 17.175327, 10.502709>,  <6.523811, 16.723017, 10.139427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.211535, 17.175327, 10.502709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.021953, 16.823118, 10.505466>,  <5.908205, 16.611794, 10.507120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.021953, 16.823118, 10.505466>,  <6.211535, 17.175327, 10.502709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.021953, 16.823118, 10.505466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091725, -0.041585, 0.994916,
		-0.875760, 0.472175, 0.100475,
		-0.473953, -0.880523, 0.006892,
		5.879767, 16.558962, 10.507534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.960097, 17.169323, 11.133772>,  <6.211535, 17.175327, 10.502709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.960097, 17.169323, 11.133772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.904902, 16.782507, 11.048171>,  <5.871785, 16.550417, 10.996811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.904902, 16.782507, 11.048171>,  <5.960097, 17.169323, 11.133772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.904902, 16.782507, 11.048171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038587, -0.210656, 0.976799,
		-0.989682, 0.143045, -0.008247,
		-0.137989, -0.967038, -0.214002,
		5.863505, 16.492395, 10.983971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.397774, 16.966866, 11.651206>,  <5.960097, 17.169323, 11.133772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.397774, 16.966866, 11.651206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.543072, 16.614653, 11.529409>,  <5.630251, 16.403324, 11.456331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.543072, 16.614653, 11.529409>,  <5.397774, 16.966866, 11.651206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.543072, 16.614653, 11.529409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125945, -0.370222, 0.920366,
		-0.923141, -0.295970, -0.245381,
		0.363246, -0.880532, -0.304491,
		5.652046, 16.350492, 11.438062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.023461, 16.428080, 12.050131>,  <5.397774, 16.966866, 11.651206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.023461, 16.428080, 12.050131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.347907, 16.233891, 11.919648>,  <5.542574, 16.117376, 11.841359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.347907, 16.233891, 11.919648>,  <5.023461, 16.428080, 12.050131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.347907, 16.233891, 11.919648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159184, -0.353438, 0.921814,
		-0.562810, -0.799623, -0.209399,
		0.811114, -0.485473, -0.326206,
		5.591241, 16.088249, 11.821787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.893589, 15.787524, 12.249010>,  <5.023461, 16.428080, 12.050131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.893589, 15.787524, 12.249010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.287102, 15.834709, 12.194960>,  <5.523209, 15.863020, 12.162529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.287102, 15.834709, 12.194960>,  <4.893589, 15.787524, 12.249010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.287102, 15.834709, 12.194960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175912, -0.487255, 0.855358,
		0.035060, -0.865255, -0.500104,
		0.983781, 0.117963, -0.135126,
		5.582236, 15.870098, 12.154422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.242076, 15.140849, 12.428144>,  <4.893589, 15.787524, 12.249010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.242076, 15.140849, 12.428144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.544376, 15.402342, 12.443513>,  <5.725757, 15.559237, 12.452734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.544376, 15.402342, 12.443513>,  <5.242076, 15.140849, 12.428144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.544376, 15.402342, 12.443513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322768, -0.422906, 0.846742,
		0.569790, -0.627524, -0.530615,
		0.755751, 0.653731, 0.038423,
		5.771102, 15.598461, 12.455040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.706105, 14.758630, 12.702318>,  <5.242076, 15.140849, 12.428144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.706105, 14.758630, 12.702318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.815773, 15.134014, 12.786342>,  <5.881574, 15.359244, 12.836756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.815773, 15.134014, 12.786342>,  <5.706105, 14.758630, 12.702318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.815773, 15.134014, 12.786342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351332, -0.301074, 0.886521,
		0.895208, -0.169256, -0.412256,
		0.274169, 0.938460, 0.210059,
		5.898024, 15.415552, 12.849360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.297568, 14.741914, 13.134955>,  <5.706105, 14.758630, 12.702318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.297568, 14.741914, 13.134955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.206897, 15.126947, 13.194353>,  <6.152494, 15.357967, 13.229992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.206897, 15.126947, 13.194353>,  <6.297568, 14.741914, 13.134955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.206897, 15.126947, 13.194353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387096, -0.050866, 0.920635,
		0.893742, 0.266169, -0.361082,
		-0.226678, 0.962584, 0.148493,
		6.138894, 15.415723, 13.238901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.849497, 14.940363, 13.572609>,  <6.297568, 14.741914, 13.134955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.849497, 14.940363, 13.572609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.561676, 15.215142, 13.613288>,  <6.388983, 15.380010, 13.637695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.561676, 15.215142, 13.613288>,  <6.849497, 14.940363, 13.572609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.561676, 15.215142, 13.613288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054911, -0.089704, 0.994454,
		0.692262, 0.721148, 0.026826,
		-0.719554, 0.686949, 0.101697,
		6.345809, 15.421227, 13.643797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.535342, 14.948734, 14.025617>,  <6.849497, 14.940363, 13.572609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.535342, 14.948734, 14.025617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.807648, 14.657205, 13.996302>,  <7.971032, 14.482286, 13.978713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.807648, 14.657205, 13.996302>,  <7.535342, 14.948734, 14.025617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.807648, 14.657205, 13.996302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369835, 0.428351, -0.824462,
		0.632281, 0.534162, 0.561152,
		0.680766, -0.728825, -0.073287,
		8.011878, 14.438557, 13.974316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.323805, 15.102901, 14.109305>,  <7.535342, 14.948734, 14.025617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.323805, 15.102901, 14.109305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.190266, 14.823471, 13.856153>,  <8.110142, 14.655813, 13.704263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.190266, 14.823471, 13.856153>,  <8.323805, 15.102901, 14.109305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.190266, 14.823471, 13.856153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401352, 0.502157, -0.765999,
		0.852914, -0.509735, 0.112731,
		-0.333848, -0.698577, -0.632880,
		8.090111, 14.613898, 13.666289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.916410, 14.959310, 13.693316>,  <8.323805, 15.102901, 14.109305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.916410, 14.959310, 13.693316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.594096, 14.820911, 13.501067>,  <8.400708, 14.737873, 13.385717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.594096, 14.820911, 13.501067>,  <8.916410, 14.959310, 13.693316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.594096, 14.820911, 13.501067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319897, 0.428683, -0.844924,
		0.498375, -0.834576, -0.234743,
		-0.805784, -0.345996, -0.480623,
		8.352361, 14.717113, 13.356880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.173857, 14.560736, 13.128490>,  <8.916410, 14.959310, 13.693316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.173857, 14.560736, 13.128490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.800146, 14.680210, 13.050606>,  <8.575919, 14.751895, 13.003875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.800146, 14.680210, 13.050606>,  <9.173857, 14.560736, 13.128490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.800146, 14.680210, 13.050606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307564, 0.398885, -0.863884,
		-0.180362, -0.866993, -0.464534,
		-0.934277, 0.298686, -0.194712,
		8.519863, 14.769815, 12.992192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.933293, 14.219024, 12.545470>,  <9.173857, 14.560736, 13.128490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.933293, 14.219024, 12.545470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.724411, 14.558925, 12.574376>,  <8.599082, 14.762865, 12.591720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.724411, 14.558925, 12.574376>,  <8.933293, 14.219024, 12.545470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.724411, 14.558925, 12.574376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415077, 0.327272, -0.848884,
		-0.744991, -0.413296, -0.523616,
		-0.522206, 0.849752, 0.072265,
		8.567749, 14.813850, 12.596056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.053150, 14.403466, 11.886309>,  <8.933293, 14.219024, 12.545470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.053150, 14.403466, 11.886309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.846611, 14.713110, 12.032808>,  <8.722688, 14.898896, 12.120708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.846611, 14.713110, 12.032808>,  <9.053150, 14.403466, 11.886309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.846611, 14.713110, 12.032808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208155, 0.528295, -0.823150,
		-0.830697, -0.348795, -0.433919,
		-0.516347, 0.774110, 0.366250,
		8.691707, 14.945343, 12.142683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.641557, 14.635777, 11.293095>,  <9.053150, 14.403466, 11.886309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.641557, 14.635777, 11.293095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.684772, 14.936357, 11.553448>,  <8.710702, 15.116706, 11.709660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.684772, 14.936357, 11.553448>,  <8.641557, 14.635777, 11.293095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.684772, 14.936357, 11.553448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200731, 0.624740, -0.754590,
		-0.973671, 0.212179, -0.083342,
		0.108041, 0.751452, 0.650882,
		8.717185, 15.161793, 11.748713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.156834, 15.127048, 11.102529>,  <8.641557, 14.635777, 11.293095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.156834, 15.127048, 11.102529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.455435, 15.325588, 11.279782>,  <8.634596, 15.444713, 11.386134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.455435, 15.325588, 11.279782>,  <8.156834, 15.127048, 11.102529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.455435, 15.325588, 11.279782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113103, 0.561636, -0.819617,
		-0.655698, 0.661967, 0.363124,
		0.746503, 0.496351, 0.443134,
		8.679386, 15.474494, 11.412723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.037536, 15.858603, 11.081912>,  <8.156834, 15.127048, 11.102529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.037536, 15.858603, 11.081912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.433588, 15.849175, 11.137170>,  <8.671220, 15.843518, 11.170324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.433588, 15.849175, 11.137170>,  <8.037536, 15.858603, 11.081912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.433588, 15.849175, 11.137170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128013, 0.553248, -0.823122,
		-0.057026, 0.832683, 0.550806,
		0.990132, -0.023571, 0.138144,
		8.730627, 15.842104, 11.178613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.203379, 16.565544, 11.191071>,  <8.037536, 15.858603, 11.081912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.203379, 16.565544, 11.191071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.533283, 16.381071, 11.060179>,  <8.731226, 16.270388, 10.981644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.533283, 16.381071, 11.060179>,  <8.203379, 16.565544, 11.191071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.533283, 16.381071, 11.060179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074696, 0.662454, -0.745370,
		0.560525, 0.590310, 0.580815,
		0.824762, -0.461183, -0.327228,
		8.780712, 16.242716, 10.962010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.633699, 17.136007, 11.197509>,  <8.203379, 16.565544, 11.191071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.633699, 17.136007, 11.197509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.780929, 16.846481, 10.964060>,  <8.869266, 16.672766, 10.823991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.780929, 16.846481, 10.964060>,  <8.633699, 17.136007, 11.197509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.780929, 16.846481, 10.964060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203965, 0.675253, -0.708824,
		0.907150, 0.141861, 0.396175,
		0.368072, -0.723816, -0.583621,
		8.891351, 16.629337, 10.788974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.354008, 17.396412, 11.074939>,  <8.633699, 17.136007, 11.197509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.354008, 17.396412, 11.074939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.275103, 17.123037, 10.793798>,  <9.227759, 16.959013, 10.625114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.275103, 17.123037, 10.793798>,  <9.354008, 17.396412, 11.074939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.275103, 17.123037, 10.793798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009053, 0.718178, -0.695800,
		0.980309, -0.130892, -0.147857,
		-0.197263, -0.683438, -0.702851,
		9.215923, 16.918005, 10.582943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.789988, 17.650808, 10.499461>,  <9.354008, 17.396412, 11.074939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.789988, 17.650808, 10.499461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.546514, 17.403076, 10.301096>,  <9.400429, 17.254436, 10.182077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.546514, 17.403076, 10.301096>,  <9.789988, 17.650808, 10.499461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.546514, 17.403076, 10.301096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122447, 0.690877, -0.712527,
		0.783906, -0.372982, -0.496362,
		-0.608685, -0.619333, -0.495913,
		9.363908, 17.217276, 10.152323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.982936, 17.662399, 9.857277>,  <9.789988, 17.650808, 10.499461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.982936, 17.662399, 9.857277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.593326, 17.573734, 9.838764>,  <9.359560, 17.520536, 9.827657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.593326, 17.573734, 9.838764>,  <9.982936, 17.662399, 9.857277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.593326, 17.573734, 9.838764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071521, 0.495078, -0.865900,
		0.214849, -0.840098, -0.498072,
		-0.974025, -0.221660, -0.046282,
		9.301118, 17.507236, 9.824880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.840115, 17.483185, 9.083140>,  <9.982936, 17.662399, 9.857277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.840115, 17.483185, 9.083140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.483573, 17.563644, 9.245635>,  <9.269649, 17.611919, 9.343132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.483573, 17.563644, 9.245635>,  <9.840115, 17.483185, 9.083140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.483573, 17.563644, 9.245635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288884, 0.438552, -0.851010,
		-0.349336, -0.875906, -0.332796,
		-0.891353, 0.201149, 0.406237,
		9.216167, 17.623989, 9.367506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.420744, 17.382849, 8.573847>,  <9.840115, 17.483185, 9.083140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.420744, 17.382849, 8.573847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.166855, 17.586401, 8.806456>,  <9.014522, 17.708532, 8.946021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.166855, 17.586401, 8.806456>,  <9.420744, 17.382849, 8.573847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.166855, 17.586401, 8.806456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375924, 0.454148, -0.807732,
		-0.675136, -0.731293, -0.096957,
		-0.634722, 0.508881, 0.581523,
		8.976439, 17.739065, 8.980912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.757133, 17.408981, 8.284028>,  <9.420744, 17.382849, 8.573847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.757133, 17.408981, 8.284028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.726817, 17.715197, 8.539594>,  <8.708628, 17.898926, 8.692933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.726817, 17.715197, 8.539594>,  <8.757133, 17.408981, 8.284028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.726817, 17.715197, 8.539594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409206, 0.560434, -0.720044,
		-0.909289, -0.316019, 0.270787,
		-0.075790, 0.765536, 0.638914,
		8.704081, 17.944857, 8.731268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.033434, 17.657230, 8.262635>,  <8.757133, 17.408981, 8.284028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.033434, 17.657230, 8.262635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.260483, 17.965750, 8.377806>,  <8.396712, 18.150862, 8.446908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.260483, 17.965750, 8.377806>,  <8.033434, 17.657230, 8.262635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.260483, 17.965750, 8.377806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460418, 0.587317, -0.665638,
		-0.682510, 0.245265, 0.688495,
		0.567623, 0.771300, 0.287926,
		8.430770, 18.197140, 8.464184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.594195, 18.241117, 8.190818>,  <8.033434, 17.657230, 8.262635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.594195, 18.241117, 8.190818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.966007, 18.388277, 8.180831>,  <8.189095, 18.476572, 8.174839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.966007, 18.388277, 8.180831>,  <7.594195, 18.241117, 8.190818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.966007, 18.388277, 8.180831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302685, 0.722586, -0.621491,
		-0.210604, 0.585252, 0.783023,
		0.929531, 0.367898, -0.024967,
		8.244866, 18.498646, 8.173341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.611652, 19.030931, 8.330851>,  <7.594195, 18.241117, 8.190818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.611652, 19.030931, 8.330851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.944906, 18.968153, 8.118717>,  <8.144858, 18.930487, 7.991437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.944906, 18.968153, 8.118717>,  <7.611652, 19.030931, 8.330851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.944906, 18.968153, 8.118717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258577, 0.737102, -0.624354,
		0.488900, 0.657304, 0.573523,
		0.833136, -0.156947, -0.530333,
		8.194847, 18.921068, 7.959618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.844611, 19.636814, 8.177876>,  <7.611652, 19.030931, 8.330851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.844611, 19.636814, 8.177876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.056255, 19.429956, 7.908773>,  <8.183242, 19.305841, 7.747311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.056255, 19.429956, 7.908773>,  <7.844611, 19.636814, 8.177876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.056255, 19.429956, 7.908773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189455, 0.700821, -0.687718,
		0.827132, 0.491337, 0.272837,
		0.529112, -0.517143, -0.672758,
		8.214989, 19.274813, 7.706945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.432400, 18.766954, 21.610533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.167458, 18.688166, 21.899666>,  <17.008492, 18.640892, 22.073145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.167458, 18.688166, 21.899666>,  <17.432400, 18.766954, 21.610533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.167458, 18.688166, 21.899666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439602, 0.679083, 0.587874,
		-0.606659, 0.707140, -0.363205,
		-0.662355, -0.196973, 0.722833,
		16.968752, 18.629074, 22.116516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211430, 19.437727, 21.897516>,  <17.432400, 18.766954, 21.610533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.211430, 19.437727, 21.897516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.131737, 19.144289, 22.157406>,  <17.083921, 18.968225, 22.313339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.131737, 19.144289, 22.157406>,  <17.211430, 19.437727, 21.897516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131737, 19.144289, 22.157406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393968, 0.547115, 0.738549,
		-0.897271, 0.403113, 0.180011,
		-0.199232, -0.733597, 0.649724,
		17.071966, 18.924210, 22.352324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.797646, 19.728554, 22.542341>,  <17.211430, 19.437727, 21.897516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.797646, 19.728554, 22.542341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.947163, 19.397793, 22.710396>,  <17.036873, 19.199337, 22.811228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.947163, 19.397793, 22.710396>,  <16.797646, 19.728554, 22.542341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.947163, 19.397793, 22.710396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230142, 0.521493, 0.821633,
		-0.898506, -0.210430, 0.385235,
		0.373793, -0.826901, 0.420136,
		17.059301, 19.149723, 22.836437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.559948, 19.706335, 23.257065>,  <16.797646, 19.728554, 22.542341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.559948, 19.706335, 23.257065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.851765, 19.432915, 23.247881>,  <17.026854, 19.268862, 23.242371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.851765, 19.432915, 23.247881>,  <16.559948, 19.706335, 23.257065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.851765, 19.432915, 23.247881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437131, 0.440195, 0.784312,
		-0.526011, -0.582224, 0.619942,
		0.729540, -0.683552, -0.022961,
		17.070627, 19.227850, 23.240993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.633574, 19.437420, 23.943066>,  <16.559948, 19.706335, 23.257065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.633574, 19.437420, 23.943066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.984394, 19.392160, 23.756313>,  <17.194887, 19.365005, 23.644262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.984394, 19.392160, 23.756313>,  <16.633574, 19.437420, 23.943066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.984394, 19.392160, 23.756313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450555, 0.530937, 0.717708,
		0.166679, -0.839823, 0.516638,
		0.877051, -0.113147, -0.466883,
		17.247509, 19.358215, 23.616249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.100964, 19.633350, 24.411221>,  <16.633574, 19.437420, 23.943066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.100964, 19.633350, 24.411221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.369480, 19.617413, 24.115171>,  <17.530590, 19.607849, 23.937542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.369480, 19.617413, 24.115171>,  <17.100964, 19.633350, 24.411221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.369480, 19.617413, 24.115171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631574, 0.553368, 0.543045,
		0.387923, -0.831983, 0.396635,
		0.671290, -0.039845, -0.740124,
		17.570868, 19.605459, 23.893135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.719769, 19.447897, 24.748751>,  <17.100964, 19.633350, 24.411221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.719769, 19.447897, 24.748751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.784279, 19.653996, 24.412058>,  <17.822985, 19.777655, 24.210043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.784279, 19.653996, 24.412058>,  <17.719769, 19.447897, 24.748751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.784279, 19.653996, 24.412058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728198, 0.513540, 0.453877,
		0.666121, -0.686147, -0.292380,
		0.161277, 0.515248, -0.841730,
		17.832663, 19.808569, 24.159538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390797, 19.294588, 24.489969>,  <17.719769, 19.447897, 24.748751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390797, 19.294588, 24.489969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.298611, 19.657867, 24.350220>,  <18.243299, 19.875835, 24.266371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.298611, 19.657867, 24.350220>,  <18.390797, 19.294588, 24.489969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.298611, 19.657867, 24.350220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736007, 0.397557, 0.547943,
		0.636537, -0.130859, -0.760064,
		-0.230465, 0.908198, -0.349373,
		18.229471, 19.930326, 24.245407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967419, 19.562212, 24.511642>,  <18.390797, 19.294588, 24.489969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967419, 19.562212, 24.511642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.755840, 19.894606, 24.442728>,  <18.628893, 20.094042, 24.401379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.755840, 19.894606, 24.442728>,  <18.967419, 19.562212, 24.511642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.755840, 19.894606, 24.442728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681593, 0.536925, 0.497134,
		0.505615, 0.145528, -0.850397,
		-0.528946, 0.830984, -0.172287,
		18.597157, 20.143900, 24.391043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476486, 20.071102, 24.276293>,  <18.967419, 19.562212, 24.511642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476486, 20.071102, 24.276293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.151688, 20.279882, 24.380775>,  <18.956808, 20.405151, 24.443466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.151688, 20.279882, 24.380775>,  <19.476486, 20.071102, 24.276293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.151688, 20.279882, 24.380775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554318, 0.549515, 0.625112,
		0.182740, 0.652381, -0.735531,
		-0.811996, 0.521951, 0.261208,
		18.908089, 20.436468, 24.459137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.709234, 20.704536, 24.235628>,  <19.476486, 20.071102, 24.276293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.709234, 20.704536, 24.235628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.369982, 20.748369, 24.442961>,  <19.166430, 20.774670, 24.567360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.369982, 20.748369, 24.442961>,  <19.709234, 20.704536, 24.235628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369982, 20.748369, 24.442961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429373, 0.715297, 0.551351,
		-0.310342, 0.690175, -0.653717,
		-0.848131, 0.109581, 0.518330,
		19.115543, 20.781244, 24.598459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476154, 21.470625, 24.349360>,  <19.709234, 20.704536, 24.235628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476154, 21.470625, 24.349360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.284689, 21.296764, 24.654505>,  <19.169809, 21.192448, 24.837591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.284689, 21.296764, 24.654505>,  <19.476154, 21.470625, 24.349360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.284689, 21.296764, 24.654505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458096, 0.617592, 0.639318,
		-0.749020, 0.655482, -0.096505,
		-0.478662, -0.434653, 0.762862,
		19.141090, 21.166368, 24.883364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.366011, 22.037886, 24.770243>,  <19.476154, 21.470625, 24.349360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.366011, 22.037886, 24.770243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.333004, 21.746590, 25.042377>,  <19.313200, 21.571812, 25.205658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.333004, 21.746590, 25.042377>,  <19.366011, 22.037886, 24.770243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.333004, 21.746590, 25.042377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417430, 0.594641, 0.687135,
		-0.904955, 0.340694, 0.254920,
		-0.082516, -0.728238, 0.680339,
		19.308249, 21.528118, 25.246479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161457, 22.362093, 25.291302>,  <19.366011, 22.037886, 24.770243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161457, 22.362093, 25.291302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.363293, 22.041265, 25.419098>,  <19.484394, 21.848768, 25.495775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.363293, 22.041265, 25.419098>,  <19.161457, 22.362093, 25.291302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.363293, 22.041265, 25.419098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463364, 0.563831, 0.683658,
		-0.728481, -0.196924, 0.656152,
		0.504588, -0.802069, 0.319493,
		19.514669, 21.800644, 25.514946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.801857, 22.791142, 25.809801>,  <19.161457, 22.362093, 25.291302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.801857, 22.791142, 25.809801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.526585, 23.077578, 25.763117>,  <18.361422, 23.249439, 25.735107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.526585, 23.077578, 25.763117>,  <18.801857, 22.791142, 25.809801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.526585, 23.077578, 25.763117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186978, -0.330466, -0.925112,
		-0.701033, -0.614822, 0.361313,
		-0.688181, 0.716091, -0.116710,
		18.320131, 23.292404, 25.728104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166744, 22.462408, 25.564955>,  <18.801857, 22.791142, 25.809801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166744, 22.462408, 25.564955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.179703, 22.846443, 25.453831>,  <18.187477, 23.076864, 25.387156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.179703, 22.846443, 25.453831>,  <18.166744, 22.462408, 25.564955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.179703, 22.846443, 25.453831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286819, -0.257335, -0.922775,
		-0.957437, 0.109576, 0.267035,
		0.032397, 0.960089, -0.277810,
		18.189423, 23.134470, 25.370487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.557875, 22.536562, 25.167192>,  <18.166744, 22.462408, 25.564955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.557875, 22.536562, 25.167192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.800840, 22.836533, 25.062384>,  <17.946621, 23.016516, 24.999498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.800840, 22.836533, 25.062384>,  <17.557875, 22.536562, 25.167192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.800840, 22.836533, 25.062384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188985, -0.183955, -0.964596,
		-0.771577, 0.635429, 0.029988,
		0.607415, 0.749927, -0.262022,
		17.983065, 23.061510, 24.983778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.180952, 23.039225, 24.660992>,  <17.557875, 22.536562, 25.167192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.180952, 23.039225, 24.660992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.572334, 23.056906, 24.580320>,  <17.807163, 23.067514, 24.531918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.572334, 23.056906, 24.580320>,  <17.180952, 23.039225, 24.660992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.572334, 23.056906, 24.580320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203885, 0.052963, -0.977561,
		-0.032531, 0.997618, 0.060835,
		0.978454, 0.044205, -0.201676,
		17.865871, 23.070168, 24.519817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.215717, 23.457134, 24.068687>,  <17.180952, 23.039225, 24.660992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.215717, 23.457134, 24.068687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.594263, 23.328762, 24.053730>,  <17.821390, 23.251740, 24.044756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.594263, 23.328762, 24.053730>,  <17.215717, 23.457134, 24.068687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.594263, 23.328762, 24.053730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025111, 0.042330, -0.998788,
		0.322123, 0.946157, 0.032001,
		0.946365, -0.320929, -0.037395,
		17.878172, 23.232483, 24.042511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.477081, 23.789755, 23.431000>,  <17.215717, 23.457134, 24.068687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.477081, 23.789755, 23.431000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.697144, 23.470142, 23.528055>,  <17.829182, 23.278374, 23.586288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.697144, 23.470142, 23.528055>,  <17.477081, 23.789755, 23.431000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697144, 23.470142, 23.528055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052877, -0.256650, -0.965057,
		0.833386, 0.543762, -0.098947,
		0.550156, -0.799033, 0.242641,
		17.862190, 23.230433, 23.600847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.000822, 23.864416, 23.045485>,  <17.477081, 23.789755, 23.431000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.000822, 23.864416, 23.045485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.972267, 23.478586, 23.147068>,  <17.955135, 23.247087, 23.208019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.972267, 23.478586, 23.147068>,  <18.000822, 23.864416, 23.045485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972267, 23.478586, 23.147068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110242, -0.245420, -0.963128,
		0.991338, -0.096750, -0.088817,
		-0.071386, -0.964577, 0.253960,
		17.950851, 23.189213, 23.223255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.252607, 23.565130, 22.467211>,  <18.000822, 23.864416, 23.045485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.252607, 23.565130, 22.467211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.077879, 23.256006, 22.651363>,  <17.973042, 23.070532, 22.761854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.077879, 23.256006, 22.651363>,  <18.252607, 23.565130, 22.467211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.077879, 23.256006, 22.651363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305286, -0.354056, -0.883994,
		0.846161, -0.526694, -0.081270,
		-0.436820, -0.772811, 0.460381,
		17.946833, 23.024162, 22.789478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.471703, 22.907852, 22.138275>,  <18.252607, 23.565130, 22.467211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.471703, 22.907852, 22.138275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.134569, 22.787224, 22.316572>,  <17.932289, 22.714848, 22.423550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.134569, 22.787224, 22.316572>,  <18.471703, 22.907852, 22.138275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.134569, 22.787224, 22.316572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317853, -0.389416, -0.864479,
		0.434279, -0.870294, 0.232359,
		-0.842835, -0.301569, 0.445741,
		17.881718, 22.696753, 22.450294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.404818, 22.243322, 21.961365>,  <18.471703, 22.907852, 22.138275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.404818, 22.243322, 21.961365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.035725, 22.344278, 22.077890>,  <17.814268, 22.404852, 22.147806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.035725, 22.344278, 22.077890>,  <18.404818, 22.243322, 21.961365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035725, 22.344278, 22.077890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385098, -0.635522, -0.669187,
		0.016240, -0.729665, 0.683612,
		-0.922733, 0.252390, 0.291313,
		17.758905, 22.419994, 22.165285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.111708, 21.637680, 21.864294>,  <18.404818, 22.243322, 21.961365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.111708, 21.637680, 21.864294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.801298, 21.886013, 21.908752>,  <17.615053, 22.035013, 21.935429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.801298, 21.886013, 21.908752>,  <18.111708, 21.637680, 21.864294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.801298, 21.886013, 21.908752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455952, -0.430467, -0.778978,
		-0.435787, -0.655169, 0.617125,
		-0.776014, 0.620847, 0.111133,
		17.568491, 22.072264, 21.942097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.483147, 21.217995, 22.064257>,  <18.111708, 21.637680, 21.864294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.483147, 21.217995, 22.064257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.331846, 21.557528, 21.916523>,  <17.241066, 21.761248, 21.827883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.331846, 21.557528, 21.916523>,  <17.483147, 21.217995, 22.064257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.331846, 21.557528, 21.916523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546952, -0.526818, -0.650621,
		-0.746840, -0.044090, 0.663540,
		-0.378250, 0.848834, -0.369334,
		17.218370, 21.812178, 21.805723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768381, 21.046238, 22.029783>,  <17.483147, 21.217995, 22.064257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.768381, 21.046238, 22.029783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.873957, 21.337614, 21.776894>,  <16.937302, 21.512440, 21.625160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.873957, 21.337614, 21.776894>,  <16.768381, 21.046238, 22.029783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.873957, 21.337614, 21.776894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368460, -0.529613, -0.764034,
		-0.891389, 0.434607, 0.128617,
		0.263937, 0.728442, -0.632226,
		16.953138, 21.556147, 21.587225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196226, 21.196484, 21.527727>,  <16.768381, 21.046238, 22.029783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196226, 21.196484, 21.527727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.535912, 21.308411, 21.348600>,  <16.739723, 21.375566, 21.241123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.535912, 21.308411, 21.348600>,  <16.196226, 21.196484, 21.527727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535912, 21.308411, 21.348600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306020, -0.430339, -0.849211,
		-0.430339, 0.858201, -0.279819,
		0.849211, 0.279819, -0.447818,
		16.790674, 21.392357, 21.214254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.491691, 21.314995, 21.430553>,  <16.196226, 21.196484, 21.527727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.491691, 21.314995, 21.430553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.270247, 21.009161, 21.562571>,  <15.137382, 20.825661, 21.641781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.270247, 21.009161, 21.562571>,  <15.491691, 21.314995, 21.430553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.270247, 21.009161, 21.562571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062509, 0.357046, 0.931993,
		-0.830427, 0.536590, -0.149871,
		-0.553609, -0.764584, 0.330042,
		15.104165, 20.779785, 21.661583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921560, 21.585377, 21.886204>,  <15.491691, 21.314995, 21.430553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921560, 21.585377, 21.886204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.968170, 21.205927, 22.003870>,  <14.996136, 20.978256, 22.074471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.968170, 21.205927, 22.003870>,  <14.921560, 21.585377, 21.886204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.968170, 21.205927, 22.003870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002909, 0.296509, 0.955026,
		-0.993184, -0.110429, 0.037310,
		0.116525, -0.948625, 0.294166,
		15.003128, 20.921339, 22.092119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453562, 21.474276, 22.297022>,  <14.921560, 21.585377, 21.886204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.453562, 21.474276, 22.297022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.721645, 21.197018, 22.403130>,  <14.882496, 21.030663, 22.466795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.721645, 21.197018, 22.403130>,  <14.453562, 21.474276, 22.297022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.721645, 21.197018, 22.403130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185754, 0.189384, 0.964173,
		-0.718550, -0.695472, -0.001828,
		0.670209, -0.693146, 0.265269,
		14.922709, 20.989075, 22.482710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.135775, 21.144255, 23.033138>,  <14.453562, 21.474276, 22.297022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.135775, 21.144255, 23.033138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.524245, 21.057880, 22.992762>,  <14.757327, 21.006056, 22.968536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.524245, 21.057880, 22.992762>,  <14.135775, 21.144255, 23.033138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.524245, 21.057880, 22.992762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100395, -0.013517, 0.994856,
		-0.216192, -0.976313, 0.008552,
		0.971175, -0.215939, -0.100940,
		14.815598, 20.993099, 22.962481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.242460, 20.766609, 23.564955>,  <14.135775, 21.144255, 23.033138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.242460, 20.766609, 23.564955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.623324, 20.851662, 23.477156>,  <14.851843, 20.902693, 23.424477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.623324, 20.851662, 23.477156>,  <14.242460, 20.766609, 23.564955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.623324, 20.851662, 23.477156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219718, 0.022902, 0.975294,
		0.212405, -0.976864, -0.024913,
		0.952160, 0.212632, -0.219500,
		14.908973, 20.915451, 23.411306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.712424, 20.414297, 24.054214>,  <14.242460, 20.766609, 23.564955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.712424, 20.414297, 24.054214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.930139, 20.723114, 23.922939>,  <15.060767, 20.908403, 23.844175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.930139, 20.723114, 23.922939>,  <14.712424, 20.414297, 24.054214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.930139, 20.723114, 23.922939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254662, 0.220690, 0.941511,
		0.799313, -0.596027, -0.076491,
		0.544285, 0.772042, -0.328186,
		15.093424, 20.954727, 23.824484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.312268, 20.421442, 24.484259>,  <14.712424, 20.414297, 24.054214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.312268, 20.421442, 24.484259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.294263, 20.793575, 24.338682>,  <15.283460, 21.016855, 24.251337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.294263, 20.793575, 24.338682>,  <15.312268, 20.421442, 24.484259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.294263, 20.793575, 24.338682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378949, 0.352983, 0.855453,
		0.924322, -0.099409, -0.368438,
		-0.045013, 0.930333, -0.363941,
		15.280759, 21.072676, 24.229500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.591825, 19.897911, 24.772732>,  <15.312268, 20.421442, 24.484259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.591825, 19.897911, 24.772732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.360028, 19.800472, 25.083820>,  <15.220950, 19.742010, 25.270473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.360028, 19.800472, 25.083820>,  <15.591825, 19.897911, 24.772732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.360028, 19.800472, 25.083820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581503, -0.545019, -0.603994,
		0.571003, -0.802257, 0.174183,
		-0.579491, -0.243595, 0.777722,
		15.186181, 19.727394, 25.317137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.655127, 19.182571, 24.823067>,  <15.591825, 19.897911, 24.772732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.655127, 19.182571, 24.823067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.317588, 19.296152, 25.005184>,  <15.115065, 19.364302, 25.114454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.317588, 19.296152, 25.005184>,  <15.655127, 19.182571, 24.823067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.317588, 19.296152, 25.005184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517284, -0.656008, -0.549609,
		0.142614, -0.699303, 0.700455,
		-0.843847, 0.283952, 0.455295,
		15.064434, 19.381338, 25.141773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246742, 18.543207, 24.895376>,  <15.655127, 19.182571, 24.823067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246742, 18.543207, 24.895376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.964100, 18.822330, 24.942324>,  <14.794515, 18.989803, 24.970491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.964100, 18.822330, 24.942324>,  <15.246742, 18.543207, 24.895376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.964100, 18.822330, 24.942324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608527, -0.514601, -0.604054,
		-0.361115, -0.498250, 0.788253,
		-0.706605, 0.697806, 0.117369,
		14.752118, 19.031673, 24.977533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668302, 18.160444, 25.103249>,  <15.246742, 18.543207, 24.895376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668302, 18.160444, 25.103249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.547608, 18.503368, 24.936405>,  <14.475192, 18.709122, 24.836300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.547608, 18.503368, 24.936405>,  <14.668302, 18.160444, 25.103249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547608, 18.503368, 24.936405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701757, -0.495861, -0.511527,
		-0.645364, 0.138364, 0.751240,
		-0.301734, 0.857308, -0.417108,
		14.457088, 18.760561, 24.811274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.899445, 18.220205, 25.197851>,  <14.668302, 18.160444, 25.103249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.899445, 18.220205, 25.197851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.980004, 18.459190, 24.887375>,  <14.028340, 18.602581, 24.701088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.980004, 18.459190, 24.887375>,  <13.899445, 18.220205, 25.197851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.980004, 18.459190, 24.887375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780293, -0.381150, -0.495850,
		-0.592098, 0.705522, 0.389434,
		0.201400, 0.597464, -0.776192,
		14.040424, 18.638430, 24.654518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.264132, 18.343990, 24.863972>,  <13.899445, 18.220205, 25.197851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.264132, 18.343990, 24.863972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.535905, 18.451208, 24.590761>,  <13.698968, 18.515539, 24.426834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.535905, 18.451208, 24.590761>,  <13.264132, 18.343990, 24.863972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.535905, 18.451208, 24.590761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543692, -0.441191, -0.713967,
		-0.492720, 0.856448, -0.154026,
		0.679431, 0.268043, -0.683028,
		13.739734, 18.531622, 24.385853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.863124, 18.448261, 24.361170>,  <13.264132, 18.343990, 24.863972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.863124, 18.448261, 24.361170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.224159, 18.379728, 24.203194>,  <13.440781, 18.338608, 24.108408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.224159, 18.379728, 24.203194>,  <12.863124, 18.448261, 24.361170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.224159, 18.379728, 24.203194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427189, -0.242834, -0.870943,
		0.053316, 0.954818, -0.292371,
		0.902589, -0.171333, -0.394941,
		13.494936, 18.328329, 24.084711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<21.557203, 17.637182, 24.623505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.363758, 17.516655, 24.294792>,  <21.247690, 17.444338, 24.097565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.363758, 17.516655, 24.294792>,  <21.557203, 17.637182, 24.623505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.363758, 17.516655, 24.294792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827810, -0.462457, -0.317593,
		-0.284341, -0.833870, 0.473086,
		-0.483613, -0.301320, -0.821781,
		21.218674, 17.426258, 24.048258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.609205, 18.154745, 24.157150>,  <21.557203, 17.637182, 24.623505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.609205, 18.154745, 24.157150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.621834, 18.423801, 24.452868>,  <21.629410, 18.585236, 24.630299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.621834, 18.423801, 24.452868>,  <21.609205, 18.154745, 24.157150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.621834, 18.423801, 24.452868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991638, 0.071521, -0.107419,
		-0.125130, 0.736503, -0.664760,
		0.031570, 0.672643, 0.739293,
		21.631306, 18.625595, 24.674656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.014965, 18.012468, 23.643991>,  <21.609205, 18.154745, 24.157150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.014965, 18.012468, 23.643991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.622137, 17.970482, 23.706629>,  <20.386440, 17.945290, 23.744211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.622137, 17.970482, 23.706629>,  <21.014965, 18.012468, 23.643991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.622137, 17.970482, 23.706629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095134, 0.441185, 0.892359,
		-0.162754, 0.891256, -0.423288,
		-0.982069, -0.104967, 0.156593,
		20.327517, 17.938992, 23.753607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.580290, 18.629049, 23.845945>,  <21.014965, 18.012468, 23.643991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.580290, 18.629049, 23.845945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.460506, 18.294767, 24.030087>,  <20.388638, 18.094198, 24.140572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.460506, 18.294767, 24.030087>,  <20.580290, 18.629049, 23.845945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.460506, 18.294767, 24.030087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050840, 0.467835, 0.882352,
		-0.952754, 0.287631, -0.097610,
		-0.299457, -0.835703, 0.460355,
		20.370670, 18.044056, 24.168194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.966719, 18.758953, 24.425388>,  <20.580290, 18.629049, 23.845945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.966719, 18.758953, 24.425388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.197596, 18.445200, 24.516247>,  <20.336123, 18.256948, 24.570763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.197596, 18.445200, 24.516247>,  <19.966719, 18.758953, 24.425388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.197596, 18.445200, 24.516247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195596, 0.137269, 0.971030,
		-0.792838, -0.604900, -0.074191,
		0.577192, -0.784381, 0.227149,
		20.370752, 18.209887, 24.584391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.619093, 18.177588, 24.714783>,  <19.966719, 18.758953, 24.425388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.619093, 18.177588, 24.714783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.989754, 18.272940, 24.831049>,  <20.212151, 18.330151, 24.900808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.989754, 18.272940, 24.831049>,  <19.619093, 18.177588, 24.714783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989754, 18.272940, 24.831049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305310, 0.026151, 0.951894,
		0.219315, -0.970819, 0.097014,
		0.926654, 0.238384, 0.290666,
		20.267750, 18.344454, 24.918249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.289103, 17.531744, 24.730705>,  <19.619093, 18.177588, 24.714783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.289103, 17.531744, 24.730705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.929604, 17.561495, 24.903551>,  <18.713905, 17.579346, 25.007259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.929604, 17.561495, 24.903551>,  <19.289103, 17.531744, 24.730705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.929604, 17.561495, 24.903551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237451, -0.911048, -0.337059,
		0.368608, -0.405537, 0.836462,
		-0.898746, 0.074376, 0.432115,
		18.659979, 17.583807, 25.033186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.082001, 16.794827, 25.112900>,  <19.289103, 17.531744, 24.730705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.082001, 16.794827, 25.112900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.756752, 16.998146, 24.999435>,  <18.561604, 17.120138, 24.931356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.756752, 16.998146, 24.999435>,  <19.082001, 16.794827, 25.112900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.756752, 16.998146, 24.999435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338611, -0.809418, -0.479775,
		-0.473470, -0.294065, 0.830272,
		-0.813123, 0.508299, -0.283661,
		18.512815, 17.150637, 24.914337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.570314, 16.304382, 25.137993>,  <19.082001, 16.794827, 25.112900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.570314, 16.304382, 25.137993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.387053, 16.589781, 24.925949>,  <18.277096, 16.761019, 24.798721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.387053, 16.589781, 24.925949>,  <18.570314, 16.304382, 25.137993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.387053, 16.589781, 24.925949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405285, -0.698468, -0.589819,
		-0.791100, -0.055382, 0.609175,
		-0.458155, 0.713495, -0.530113,
		18.249605, 16.803829, 24.766916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.942530, 15.988464, 24.964956>,  <18.570314, 16.304382, 25.137993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.942530, 15.988464, 24.964956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.994379, 16.288004, 24.704979>,  <18.025488, 16.467728, 24.548992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.994379, 16.288004, 24.704979>,  <17.942530, 15.988464, 24.964956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994379, 16.288004, 24.704979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511515, -0.511022, -0.690803,
		-0.849441, 0.421999, 0.316807,
		0.129623, 0.748848, -0.649942,
		18.033266, 16.512659, 24.509996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262619, 16.137777, 24.779245>,  <17.942530, 15.988464, 24.964956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262619, 16.137777, 24.779245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.495378, 16.297894, 24.496075>,  <17.635035, 16.393963, 24.326172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.495378, 16.297894, 24.496075>,  <17.262619, 16.137777, 24.779245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.495378, 16.297894, 24.496075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459705, -0.556173, -0.692346,
		-0.670871, 0.728312, -0.139620,
		0.581897, 0.400290, -0.707929,
		17.669949, 16.417980, 24.283695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782087, 16.411963, 24.218943>,  <17.262619, 16.137777, 24.779245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.782087, 16.411963, 24.218943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.140398, 16.373463, 24.045359>,  <17.355385, 16.350363, 23.941208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.140398, 16.373463, 24.045359>,  <16.782087, 16.411963, 24.218943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.140398, 16.373463, 24.045359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432331, -0.415589, -0.800235,
		-0.103329, 0.904446, -0.413885,
		0.895775, -0.096248, -0.433962,
		17.409130, 16.344589, 23.915171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389004, 16.153013, 24.756315>,  <16.782087, 16.411963, 24.218943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389004, 16.153013, 24.756315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.161264, 16.054739, 25.070126>,  <16.024622, 15.995775, 25.258411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.161264, 16.054739, 25.070126>,  <16.389004, 16.153013, 24.756315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.161264, 16.054739, 25.070126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548400, 0.597443, 0.585080,
		-0.612455, 0.763349, -0.205419,
		-0.569347, -0.245684, 0.784528,
		15.990460, 15.981034, 25.305485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.420753, 16.689131, 25.162464>,  <16.389004, 16.153013, 24.756315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.420753, 16.689131, 25.162464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.263695, 16.442633, 25.435541>,  <16.169460, 16.294733, 25.599388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.263695, 16.442633, 25.435541>,  <16.420753, 16.689131, 25.162464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263695, 16.442633, 25.435541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340400, 0.592212, 0.730351,
		-0.854375, 0.519159, -0.022760,
		-0.392647, -0.616246, 0.682693,
		16.145901, 16.257759, 25.640348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.059250, 17.121401, 25.683683>,  <16.420753, 16.689131, 25.162464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.059250, 17.121401, 25.683683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.128506, 16.764793, 25.851120>,  <16.170059, 16.550829, 25.951582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.128506, 16.764793, 25.851120>,  <16.059250, 17.121401, 25.683683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.128506, 16.764793, 25.851120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274920, 0.451863, 0.848669,
		-0.945750, -0.031858, 0.323330,
		0.173137, -0.891518, 0.418591,
		16.180447, 16.497337, 25.976698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.766130, 17.156914, 26.400251>,  <16.059250, 17.121401, 25.683683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.766130, 17.156914, 26.400251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.046291, 16.871489, 26.406786>,  <16.214388, 16.700233, 26.410707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.046291, 16.871489, 26.406786>,  <15.766130, 17.156914, 26.400251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046291, 16.871489, 26.406786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329503, 0.343561, 0.879428,
		-0.633139, -0.610570, 0.475752,
		0.700402, -0.713562, 0.016337,
		16.256413, 16.657421, 26.411688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.790894, 16.905579, 27.068058>,  <15.766130, 17.156914, 26.400251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.790894, 16.905579, 27.068058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.143555, 16.787634, 26.920683>,  <16.355150, 16.716867, 26.832258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.143555, 16.787634, 26.920683>,  <15.790894, 16.905579, 27.068058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143555, 16.787634, 26.920683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459997, 0.362738, 0.810447,
		-0.105323, -0.884012, 0.455444,
		0.881652, -0.294862, -0.368438,
		16.408051, 16.699175, 26.810152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081320, 16.490263, 27.531528>,  <15.790894, 16.905579, 27.068058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.081320, 16.490263, 27.531528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.385803, 16.636980, 27.317604>,  <16.568493, 16.725010, 27.189249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.385803, 16.636980, 27.317604>,  <16.081320, 16.490263, 27.531528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.385803, 16.636980, 27.317604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395761, 0.390569, 0.831161,
		0.513744, -0.844346, 0.152144,
		0.761210, 0.366791, -0.534812,
		16.614166, 16.747017, 27.157160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.644524, 16.352856, 27.967434>,  <16.081320, 16.490263, 27.531528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.644524, 16.352856, 27.967434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.769880, 16.629309, 27.706936>,  <16.845095, 16.795181, 27.550636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.769880, 16.629309, 27.706936>,  <16.644524, 16.352856, 27.967434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.769880, 16.629309, 27.706936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497533, 0.464636, 0.732512,
		0.808856, -0.553580, -0.198248,
		0.313391, 0.691132, -0.651247,
		16.863897, 16.836649, 27.511562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274317, 16.583353, 28.223854>,  <16.644524, 16.352856, 27.967434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.274317, 16.583353, 28.223854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.166601, 16.864767, 27.960789>,  <17.101973, 17.033615, 27.802948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.166601, 16.864767, 27.960789>,  <17.274317, 16.583353, 28.223854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166601, 16.864767, 27.960789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530810, 0.678226, 0.508183,
		0.803570, -0.212248, -0.556081,
		-0.269288, 0.703534, -0.657666,
		17.085815, 17.075827, 27.763489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.849218, 16.944382, 28.033062>,  <17.274317, 16.583353, 28.223854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.849218, 16.944382, 28.033062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.553181, 17.198139, 27.943790>,  <17.375559, 17.350393, 27.890228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.553181, 17.198139, 27.943790>,  <17.849218, 16.944382, 28.033062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553181, 17.198139, 27.943790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512599, 0.746963, 0.423424,
		0.435322, 0.198972, -0.878012,
		-0.740092, 0.634394, -0.223177,
		17.331154, 17.388458, 27.876837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.216429, 17.461109, 27.914557>,  <17.849218, 16.944382, 28.033062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.216429, 17.461109, 27.914557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.863310, 17.644262, 27.956537>,  <17.651438, 17.754154, 27.981726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.863310, 17.644262, 27.956537>,  <18.216429, 17.461109, 27.914557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.863310, 17.644262, 27.956537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452293, 0.768150, 0.453185,
		0.126888, 0.447538, -0.885217,
		-0.882797, 0.457881, 0.104950,
		17.598471, 17.781626, 27.988022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.248686, 18.145996, 27.696533>,  <18.216429, 17.461109, 27.914557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.248686, 18.145996, 27.696533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.941324, 18.168388, 27.951540>,  <17.756908, 18.181824, 28.104544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.941324, 18.168388, 27.951540>,  <18.248686, 18.145996, 27.696533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.941324, 18.168388, 27.951540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334781, 0.884153, 0.325875,
		-0.545418, 0.463831, -0.698127,
		-0.768402, 0.055982, 0.637515,
		17.710804, 18.185183, 28.142794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.025093, 18.775625, 27.583549>,  <18.248686, 18.145996, 27.696533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.025093, 18.775625, 27.583549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.881966, 18.689144, 27.946917>,  <17.796089, 18.637255, 28.164936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.881966, 18.689144, 27.946917>,  <18.025093, 18.775625, 27.583549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.881966, 18.689144, 27.946917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303276, 0.893183, 0.332037,
		-0.883169, 0.394311, -0.254030,
		-0.357821, -0.216203, 0.908416,
		17.774620, 18.624283, 28.219442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668779, 19.383343, 27.789772>,  <18.025093, 18.775625, 27.583549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.668779, 19.383343, 27.789772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.675385, 19.171669, 28.129110>,  <17.679348, 19.044664, 28.332714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.675385, 19.171669, 28.129110>,  <17.668779, 19.383343, 27.789772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675385, 19.171669, 28.129110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015705, 0.848495, 0.528970,
		-0.999740, 0.004590, 0.022320,
		0.016511, -0.529183, 0.848347,
		17.680338, 19.012915, 28.383614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.182697, 19.727495, 28.139902>,  <17.668779, 19.383343, 27.789772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.182697, 19.727495, 28.139902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.446327, 19.565029, 28.393089>,  <17.604506, 19.467548, 28.545002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.446327, 19.565029, 28.393089>,  <17.182697, 19.727495, 28.139902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446327, 19.565029, 28.393089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040659, 0.821154, 0.569257,
		-0.750977, -0.400919, 0.524688,
		0.659075, -0.406166, 0.632969,
		17.644051, 19.443180, 28.582979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565054, 19.382748, 27.969934>,  <17.182697, 19.727495, 28.139902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.565054, 19.382748, 27.969934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.475019, 19.772135, 27.953461>,  <16.421000, 20.005768, 27.943577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.475019, 19.772135, 27.953461>,  <16.565054, 19.382748, 27.969934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475019, 19.772135, 27.953461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435405, -0.138309, -0.889547,
		-0.871642, -0.182293, 0.454984,
		-0.225086, 0.973468, -0.041185,
		16.407494, 20.064175, 27.941105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.821652, 19.489927, 27.860018>,  <16.565054, 19.382748, 27.969934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.821652, 19.489927, 27.860018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.988436, 19.823685, 27.715832>,  <16.088507, 20.023939, 27.629320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.988436, 19.823685, 27.715832>,  <15.821652, 19.489927, 27.860018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.988436, 19.823685, 27.715832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423974, -0.172254, -0.889143,
		-0.803985, 0.523565, 0.281938,
		0.416959, 0.834391, -0.360467,
		16.113523, 20.074001, 27.607691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279187, 19.952354, 27.664207>,  <15.821652, 19.489927, 27.860018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279187, 19.952354, 27.664207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.610870, 20.067705, 27.472687>,  <15.809880, 20.136915, 27.357775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.610870, 20.067705, 27.472687>,  <15.279187, 19.952354, 27.664207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.610870, 20.067705, 27.472687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471280, -0.099846, -0.876314,
		-0.300517, 0.952296, 0.053114,
		0.829207, 0.288379, -0.478804,
		15.859632, 20.154219, 27.329046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038204, 20.362143, 27.124182>,  <15.279187, 19.952354, 27.664207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.038204, 20.362143, 27.124182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.403093, 20.236738, 27.018684>,  <15.622027, 20.161495, 26.955385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.403093, 20.236738, 27.018684>,  <15.038204, 20.362143, 27.124182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403093, 20.236738, 27.018684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300629, -0.074879, -0.950797,
		0.278334, 0.946628, -0.162556,
		0.912224, -0.313509, -0.263743,
		15.676761, 20.142685, 26.939562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341701, 20.824722, 26.691982>,  <15.038204, 20.362143, 27.124182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.341701, 20.824722, 26.691982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.506330, 20.466825, 26.622646>,  <15.605106, 20.252087, 26.581045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.506330, 20.466825, 26.622646>,  <15.341701, 20.824722, 26.691982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.506330, 20.466825, 26.622646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317497, 0.037519, -0.947517,
		0.854286, 0.445006, -0.268636,
		0.411572, -0.894741, -0.173340,
		15.629801, 20.198402, 26.570644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.534402, 20.872730, 25.927790>,  <15.341701, 20.824722, 26.691982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.534402, 20.872730, 25.927790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.538463, 20.478651, 25.996241>,  <15.540899, 20.242205, 26.037312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.538463, 20.478651, 25.996241>,  <15.534402, 20.872730, 25.927790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538463, 20.478651, 25.996241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466326, -0.156052, -0.870740,
		0.884555, -0.070962, -0.461007,
		0.010152, -0.985196, 0.171128,
		15.541508, 20.183092, 26.047579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541918, 20.514027, 25.193926>,  <15.534402, 20.872730, 25.927790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.541918, 20.514027, 25.193926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.447920, 20.220518, 25.448910>,  <15.391521, 20.044413, 25.601900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.447920, 20.220518, 25.448910>,  <15.541918, 20.514027, 25.193926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.447920, 20.220518, 25.448910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660440, -0.360644, -0.658601,
		0.713160, -0.575771, -0.399863,
		-0.234995, -0.733773, 0.637459,
		15.377421, 20.000385, 25.640148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.998473, 20.704603, 24.648371>,  <15.541918, 20.514027, 25.193926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.998473, 20.704603, 24.648371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.748889, 21.014349, 24.606356>,  <15.599138, 21.200197, 24.581146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.748889, 21.014349, 24.606356>,  <15.998473, 20.704603, 24.648371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.748889, 21.014349, 24.606356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355180, 0.400751, 0.844539,
		0.696075, 0.489651, -0.525091,
		-0.623960, 0.774365, -0.105038,
		15.561701, 21.246658, 24.574844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.316422, 21.233389, 24.985531>,  <15.998473, 20.704603, 24.648371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.316422, 21.233389, 24.985531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.975291, 21.427919, 24.909454>,  <15.770613, 21.544638, 24.863808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.975291, 21.427919, 24.909454>,  <16.316422, 21.233389, 24.985531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.975291, 21.427919, 24.909454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194815, 0.634235, 0.748193,
		0.484492, 0.601027, -0.635636,
		-0.852827, 0.486325, -0.190193,
		15.719443, 21.573816, 24.852396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444017, 21.982098, 24.860144>,  <16.316422, 21.233389, 24.985531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.444017, 21.982098, 24.860144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.067745, 21.941656, 24.989697>,  <15.841982, 21.917391, 25.067429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.067745, 21.941656, 24.989697>,  <16.444017, 21.982098, 24.860144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.067745, 21.941656, 24.989697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210370, 0.575146, 0.790539,
		-0.266206, 0.811779, -0.519759,
		-0.940680, -0.101104, 0.323881,
		15.785542, 21.911325, 25.086861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.205978, 22.724882, 24.958733>,  <16.444017, 21.982098, 24.860144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.205978, 22.724882, 24.958733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.958121, 22.495499, 25.173090>,  <15.809406, 22.357868, 25.301704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.958121, 22.495499, 25.173090>,  <16.205978, 22.724882, 24.958733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.958121, 22.495499, 25.173090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199443, 0.545318, 0.814156,
		-0.759120, 0.611368, -0.223530,
		-0.619644, -0.573461, 0.535895,
		15.772228, 22.323460, 25.333858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.738852, 23.121466, 25.203606>,  <16.205978, 22.724882, 24.958733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.738852, 23.121466, 25.203606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.697235, 22.825125, 25.469030>,  <15.672265, 22.647320, 25.628284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.697235, 22.825125, 25.469030>,  <15.738852, 23.121466, 25.203606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.697235, 22.825125, 25.469030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203588, 0.637189, 0.743332,
		-0.973513, 0.212429, 0.084536,
		-0.104040, -0.740854, 0.663560,
		15.666023, 22.602869, 25.668098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.291843, 23.377123, 25.723967>,  <15.738852, 23.121466, 25.203606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.291843, 23.377123, 25.723967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.495867, 23.070395, 25.879826>,  <15.618280, 22.886358, 25.973341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.495867, 23.070395, 25.879826>,  <15.291843, 23.377123, 25.723967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.495867, 23.070395, 25.879826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291623, 0.580345, 0.760366,
		-0.809195, -0.274200, 0.519632,
		0.510058, -0.766821, 0.389649,
		15.648884, 22.840349, 25.996721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.152386, 23.429649, 26.455235>,  <15.291843, 23.377123, 25.723967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.152386, 23.429649, 26.455235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.465183, 23.181627, 26.429892>,  <15.652862, 23.032814, 26.414686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.465183, 23.181627, 26.429892>,  <15.152386, 23.429649, 26.455235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.465183, 23.181627, 26.429892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360630, 0.367206, 0.857383,
		-0.508362, -0.693317, 0.510764,
		0.781994, -0.620058, -0.063357,
		15.699781, 22.995609, 26.410885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219349, 23.189198, 27.195562>,  <15.152386, 23.429649, 26.455235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219349, 23.189198, 27.195562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.575729, 23.093460, 27.041201>,  <15.789557, 23.036018, 26.948584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.575729, 23.093460, 27.041201>,  <15.219349, 23.189198, 27.195562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575729, 23.093460, 27.041201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452681, 0.401025, 0.796404,
		-0.035856, -0.884248, 0.465639,
		0.890951, -0.239342, -0.385904,
		15.843015, 23.021658, 26.925430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.697094, 22.880936, 27.744795>,  <15.219349, 23.189198, 27.195562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.697094, 22.880936, 27.744795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.950049, 23.008528, 27.462423>,  <16.101822, 23.085083, 27.292999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.950049, 23.008528, 27.462423>,  <15.697094, 22.880936, 27.744795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950049, 23.008528, 27.462423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348407, 0.696797, 0.626966,
		0.691884, -0.642435, 0.329505,
		0.632383, 0.318986, -0.705932,
		16.139765, 23.104221, 27.250645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.504192, 13.922673, 14.395170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873311, 14.029564, 14.284148>,  <14.094782, 14.093699, 14.217535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873311, 14.029564, 14.284148>,  <13.504192, 13.922673, 14.395170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.873311, 14.029564, 14.284148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022344, 0.756290, 0.653855,
		0.384639, -0.597173, 0.703873,
		0.922797, 0.267225, -0.277556,
		14.150150, 14.109732, 14.200881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.913198, 14.085457, 14.973597>,  <13.504192, 13.922673, 14.395170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.913198, 14.085457, 14.973597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.103447, 14.295262, 14.691131>,  <14.217597, 14.421145, 14.521651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.103447, 14.295262, 14.691131>,  <13.913198, 14.085457, 14.973597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.103447, 14.295262, 14.691131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050887, 0.785029, 0.617365,
		0.878176, -0.329567, 0.346688,
		0.475624, 0.524513, -0.706165,
		14.246134, 14.452617, 14.479281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.537631, 14.343902, 15.185068>,  <13.913198, 14.085457, 14.973597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.537631, 14.343902, 15.185068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.450369, 14.592755, 14.884307>,  <14.398011, 14.742067, 14.703851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.450369, 14.592755, 14.884307>,  <14.537631, 14.343902, 15.185068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.450369, 14.592755, 14.884307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370159, 0.765637, 0.526101,
		0.902990, -0.163551, -0.397317,
		-0.218156, 0.622135, -0.751902,
		14.384922, 14.779396, 14.658736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.061773, 14.879758, 15.263099>,  <14.537631, 14.343902, 15.185068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.061773, 14.879758, 15.263099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.793334, 15.033253, 15.009367>,  <14.632271, 15.125350, 14.857128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.793334, 15.033253, 15.009367>,  <15.061773, 14.879758, 15.263099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.793334, 15.033253, 15.009367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030499, 0.869185, 0.493545,
		0.740741, 0.311870, -0.595012,
		-0.671098, 0.383737, -0.634330,
		14.592005, 15.148374, 14.819068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342052, 15.542240, 15.247595>,  <15.061773, 14.879758, 15.263099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342052, 15.542240, 15.247595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965690, 15.561365, 15.113486>,  <14.739872, 15.572841, 15.033021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965690, 15.561365, 15.113486>,  <15.342052, 15.542240, 15.247595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.965690, 15.561365, 15.113486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157514, 0.814606, 0.558218,
		0.299804, 0.578041, -0.758938,
		-0.940908, 0.047813, -0.335272,
		14.683417, 15.575709, 15.012905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159041, 16.333122, 15.112268>,  <15.342052, 15.542240, 15.247595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.159041, 16.333122, 15.112268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801506, 16.153938, 15.120115>,  <14.586985, 16.046429, 15.124824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801506, 16.153938, 15.120115>,  <15.159041, 16.333122, 15.112268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801506, 16.153938, 15.120115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413381, 0.840212, 0.350942,
		-0.173690, 0.305576, -0.936192,
		-0.893839, -0.447959, 0.019617,
		14.533355, 16.019550, 15.126000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.629035, 16.812164, 14.775425>,  <15.159041, 16.333122, 15.112268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.629035, 16.812164, 14.775425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.457528, 16.554113, 15.028399>,  <14.354624, 16.399282, 15.180182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.457528, 16.554113, 15.028399>,  <14.629035, 16.812164, 14.775425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.457528, 16.554113, 15.028399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342077, 0.763857, 0.547271,
		-0.836147, 0.018311, -0.548199,
		-0.428767, -0.645125, 0.632434,
		14.328898, 16.360577, 15.218128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.146574, 17.221302, 15.030905>,  <14.629035, 16.812164, 14.775425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.146574, 17.221302, 15.030905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.139341, 16.919703, 15.293556>,  <14.135002, 16.738743, 15.451147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.139341, 16.919703, 15.293556>,  <14.146574, 17.221302, 15.030905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.139341, 16.919703, 15.293556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218051, 0.643902, 0.733378,
		-0.975770, -0.129918, -0.176053,
		-0.018082, -0.753997, 0.656629,
		14.133917, 16.693504, 15.490545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.517057, 17.312214, 15.439515>,  <14.146574, 17.221302, 15.030905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.517057, 17.312214, 15.439515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.762099, 17.089966, 15.664371>,  <13.909124, 16.956617, 15.799286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.762099, 17.089966, 15.664371>,  <13.517057, 17.312214, 15.439515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762099, 17.089966, 15.664371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167503, 0.603804, 0.779336,
		-0.772436, -0.571585, 0.276826,
		0.612605, -0.555618, 0.562142,
		13.945881, 16.923281, 15.833014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.086103, 17.042652, 15.946497>,  <13.517057, 17.312214, 15.439515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.086103, 17.042652, 15.946497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.461525, 17.016497, 16.082048>,  <13.686778, 17.000803, 16.163380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.461525, 17.016497, 16.082048>,  <13.086103, 17.042652, 15.946497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.461525, 17.016497, 16.082048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226928, 0.622878, 0.748684,
		-0.260036, -0.779582, 0.569766,
		0.938555, -0.065389, 0.338879,
		13.743092, 16.996880, 16.183712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.084404, 16.828007, 16.687761>,  <13.086103, 17.042652, 15.946497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.084404, 16.828007, 16.687761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.428281, 17.026272, 16.638374>,  <13.634607, 17.145231, 16.608742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.428281, 17.026272, 16.638374>,  <13.084404, 16.828007, 16.687761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.428281, 17.026272, 16.638374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243867, 0.610644, 0.753420,
		0.448839, -0.617601, 0.645843,
		0.859693, 0.495664, -0.123469,
		13.686189, 17.174971, 16.601334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.207008, 17.010786, 17.357660>,  <13.084404, 16.828007, 16.687761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.207008, 17.010786, 17.357660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.488795, 17.232187, 17.179958>,  <13.657867, 17.365028, 17.073338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.488795, 17.232187, 17.179958>,  <13.207008, 17.010786, 17.357660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.488795, 17.232187, 17.179958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047966, 0.587382, 0.807887,
		0.708115, -0.590438, 0.387241,
		0.704466, 0.553503, -0.444255,
		13.700135, 17.398237, 17.046682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.216107, 16.803205, 18.086300>,  <13.207008, 17.010786, 17.357660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.216107, 16.803205, 18.086300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.855139, 16.752354, 18.250969>,  <12.638557, 16.721842, 18.349770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.855139, 16.752354, 18.250969>,  <13.216107, 16.803205, 18.086300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.855139, 16.752354, 18.250969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289058, -0.529891, -0.797283,
		0.319500, -0.838483, 0.441437,
		-0.902422, -0.127131, 0.411670,
		12.584413, 16.714214, 18.374470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.067946, 16.059294, 18.078896>,  <13.216107, 16.803205, 18.086300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.067946, 16.059294, 18.078896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.705452, 16.219816, 18.132097>,  <12.487955, 16.316130, 18.164019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.705452, 16.219816, 18.132097>,  <13.067946, 16.059294, 18.078896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.705452, 16.219816, 18.132097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393397, -0.685226, -0.612948,
		-0.154842, -0.607798, 0.778849,
		-0.906235, 0.401307, 0.133004,
		12.433581, 16.340208, 18.171999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.580721, 15.463580, 18.382557>,  <13.067946, 16.059294, 18.078896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.580721, 15.463580, 18.382557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.351065, 15.738432, 18.204472>,  <12.213271, 15.903343, 18.097620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.351065, 15.738432, 18.204472>,  <12.580721, 15.463580, 18.382557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.351065, 15.738432, 18.204472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333842, -0.692979, -0.639007,
		-0.747606, -0.218246, 0.627259,
		-0.574138, 0.687131, -0.445216,
		12.178823, 15.944571, 18.070908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.983511, 15.115438, 18.242203>,  <12.580721, 15.463580, 18.382557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.983511, 15.115438, 18.242203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.941510, 15.450365, 18.027586>,  <11.916310, 15.651320, 17.898815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.941510, 15.450365, 18.027586>,  <11.983511, 15.115438, 18.242203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.941510, 15.450365, 18.027586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518014, -0.506600, -0.689215,
		-0.848903, 0.205568, 0.486935,
		-0.105001, 0.837316, -0.536542,
		11.910009, 15.701560, 17.866623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.244654, 15.277590, 18.150394>,  <11.983511, 15.115438, 18.242203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.244654, 15.277590, 18.150394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.459435, 15.426135, 17.847404>,  <11.588305, 15.515262, 17.665609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.459435, 15.426135, 17.847404>,  <11.244654, 15.277590, 18.150394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.459435, 15.426135, 17.847404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573281, -0.498091, -0.650579,
		-0.618893, 0.783578, -0.054557,
		0.536954, 0.371362, -0.757476,
		11.620522, 15.537544, 17.620161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.695549, 15.442528, 17.732353>,  <11.244654, 15.277590, 18.150394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.695549, 15.442528, 17.732353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.025396, 15.452010, 17.506275>,  <11.223305, 15.457700, 17.370628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.025396, 15.452010, 17.506275>,  <10.695549, 15.442528, 17.732353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.025396, 15.452010, 17.506275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357730, -0.752125, -0.553477,
		-0.438217, 0.658594, -0.611735,
		0.824618, 0.023707, -0.565193,
		11.272781, 15.459122, 17.336718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.464647, 15.442728, 17.037729>,  <10.695549, 15.442528, 17.732353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.464647, 15.442728, 17.037729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.844433, 15.326813, 16.989496>,  <11.072305, 15.257264, 16.960556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.844433, 15.326813, 16.989496>,  <10.464647, 15.442728, 17.037729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.844433, 15.326813, 16.989496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306382, -0.772244, -0.556570,
		0.068168, 0.565387, -0.822004,
		0.949465, -0.289788, -0.120582,
		11.129272, 15.239877, 16.953321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.626761, 15.305925, 16.292789>,  <10.464647, 15.442728, 17.037729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.626761, 15.305925, 16.292789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885792, 15.087175, 16.505043>,  <11.041210, 14.955925, 16.632395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885792, 15.087175, 16.505043>,  <10.626761, 15.305925, 16.292789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.885792, 15.087175, 16.505043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228763, -0.803773, -0.549197,
		0.726852, 0.234257, -0.645608,
		0.647575, -0.546876, 0.530635,
		11.080064, 14.923113, 16.664234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.178944, 15.041447, 15.833511>,  <10.626761, 15.305925, 16.292789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.178944, 15.041447, 15.833511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.166188, 14.804790, 16.155739>,  <11.158535, 14.662795, 16.349075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.166188, 14.804790, 16.155739>,  <11.178944, 15.041447, 15.833511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.166188, 14.804790, 16.155739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198703, -0.786139, -0.585237,
		0.979541, -0.178732, -0.092493,
		-0.031888, -0.591642, 0.805570,
		11.156622, 14.627296, 16.397409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.502676, 14.528269, 15.577181>,  <11.178944, 15.041447, 15.833511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.502676, 14.528269, 15.577181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.343156, 14.383739, 15.914322>,  <11.247444, 14.297020, 16.116608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.343156, 14.383739, 15.914322>,  <11.502676, 14.528269, 15.577181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.343156, 14.383739, 15.914322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118732, -0.891023, -0.438155,
		0.909319, -0.274810, 0.312439,
		-0.398800, -0.361326, 0.842853,
		11.223516, 14.275341, 16.167177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.675308, 13.850312, 15.600626>,  <11.502676, 14.528269, 15.577181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.675308, 13.850312, 15.600626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.370698, 13.839088, 15.859637>,  <11.187932, 13.832355, 16.015043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.370698, 13.839088, 15.859637>,  <11.675308, 13.850312, 15.600626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.370698, 13.839088, 15.859637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286301, -0.881743, -0.374914,
		0.581473, -0.470894, 0.663437,
		-0.761526, -0.028060, 0.647527,
		11.142241, 13.830670, 16.053896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699374, 13.144578, 15.898810>,  <11.675308, 13.850312, 15.600626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699374, 13.144578, 15.898810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.329596, 13.282669, 15.963575>,  <11.107728, 13.365523, 16.002434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.329596, 13.282669, 15.963575>,  <11.699374, 13.144578, 15.898810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.329596, 13.282669, 15.963575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380234, -0.802734, -0.459392,
		-0.028622, -0.486248, 0.873352,
		-0.924447, 0.345228, 0.161912,
		11.052261, 13.386237, 16.012148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.281238, 12.559738, 16.142069>,  <11.699374, 13.144578, 15.898810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.281238, 12.559738, 16.142069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026747, 12.837009, 16.006588>,  <10.874052, 13.003372, 15.925300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026747, 12.837009, 16.006588>,  <11.281238, 12.559738, 16.142069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.026747, 12.837009, 16.006588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511976, -0.707763, -0.486777,
		-0.577144, -0.136293, 0.805189,
		-0.636227, 0.693177, -0.338702,
		10.835878, 13.044963, 15.904977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.611409, 12.179451, 16.205040>,  <11.281238, 12.559738, 16.142069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.611409, 12.179451, 16.205040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.532766, 12.489414, 15.964752>,  <10.485580, 12.675392, 15.820580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.532766, 12.489414, 15.964752>,  <10.611409, 12.179451, 16.205040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.532766, 12.489414, 15.964752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596530, -0.580775, -0.553942,
		-0.778137, 0.249439, 0.576440,
		-0.196608, 0.774907, -0.600720,
		10.473783, 12.721887, 15.784536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.376446, 11.751045, 16.722015>,  <10.611409, 12.179451, 16.205040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.376446, 11.751045, 16.722015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.481553, 11.391798, 16.863062>,  <10.544618, 11.176250, 16.947689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.481553, 11.391798, 16.863062>,  <10.376446, 11.751045, 16.722015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.481553, 11.391798, 16.863062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140589, 0.397198, 0.906901,
		-0.954562, -0.188729, 0.230636,
		0.262767, -0.898117, 0.352616,
		10.560383, 11.122363, 16.968847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.898019, 11.352989, 17.301508>,  <10.376446, 11.751045, 16.722015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.898019, 11.352989, 17.301508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.269030, 11.211139, 17.348724>,  <10.491636, 11.126029, 17.377054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.269030, 11.211139, 17.348724>,  <9.898019, 11.352989, 17.301508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.269030, 11.211139, 17.348724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028771, 0.382635, 0.923451,
		-0.372647, -0.853130, 0.365107,
		0.927527, -0.354625, 0.118043,
		10.547288, 11.104752, 17.384138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.919945, 11.010544, 17.988716>,  <9.898019, 11.352989, 17.301508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.919945, 11.010544, 17.988716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.298226, 11.093266, 17.888416>,  <10.525195, 11.142899, 17.828236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.298226, 11.093266, 17.888416>,  <9.919945, 11.010544, 17.988716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.298226, 11.093266, 17.888416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193669, 0.261029, 0.945704,
		0.261029, -0.942919, 0.206805,
		-0.945704, -0.206805, 0.250750,
		10.581938, 11.155307, 17.813190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.441305, 10.682980, 18.497910>,  <9.919945, 11.010544, 17.988716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.441305, 10.682980, 18.497910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.589006, 11.017078, 18.334930>,  <10.677628, 11.217538, 18.237143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.589006, 11.017078, 18.334930>,  <10.441305, 10.682980, 18.497910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.589006, 11.017078, 18.334930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238750, 0.338456, 0.910190,
		0.898137, -0.433368, -0.074440,
		0.369253, 0.835248, -0.407447,
		10.699782, 11.267653, 18.212696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.078424, 10.753727, 18.785789>,  <10.441305, 10.682980, 18.497910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.078424, 10.753727, 18.785789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016637, 11.126140, 18.653536>,  <10.979565, 11.349587, 18.574183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016637, 11.126140, 18.653536>,  <11.078424, 10.753727, 18.785789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.016637, 11.126140, 18.653536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270732, 0.361730, 0.892107,
		0.950181, 0.048290, -0.307936,
		-0.154469, 0.931031, -0.330636,
		10.970296, 11.405449, 18.554346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.636714, 11.160900, 18.954428>,  <11.078424, 10.753727, 18.785789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.636714, 11.160900, 18.954428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.352522, 11.437688, 18.903208>,  <11.182007, 11.603760, 18.872477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.352522, 11.437688, 18.903208>,  <11.636714, 11.160900, 18.954428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.352522, 11.437688, 18.903208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291147, 0.454697, 0.841715,
		0.640664, 0.560741, -0.524518,
		-0.710481, 0.691968, -0.128050,
		11.139378, 11.645278, 18.864792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.990486, 11.757351, 19.129087>,  <11.636714, 11.160900, 18.954428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.990486, 11.757351, 19.129087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606910, 11.865265, 19.164072>,  <11.376764, 11.930014, 19.185062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606910, 11.865265, 19.164072>,  <11.990486, 11.757351, 19.129087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.606910, 11.865265, 19.164072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231993, 0.568797, 0.789081,
		0.163135, 0.776972, -0.608030,
		-0.958940, 0.269785, 0.087461,
		11.319227, 11.946200, 19.190310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.013659, 12.471821, 19.157238>,  <11.990486, 11.757351, 19.129087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.013659, 12.471821, 19.157238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.655432, 12.369269, 19.302691>,  <11.440495, 12.307738, 19.389961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.655432, 12.369269, 19.302691>,  <12.013659, 12.471821, 19.157238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.655432, 12.369269, 19.302691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061030, 0.738776, 0.671182,
		-0.440717, 0.623282, -0.645978,
		-0.895569, -0.256378, 0.363630,
		11.386761, 12.292356, 19.411779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.625136, 13.025486, 19.218895>,  <12.013659, 12.471821, 19.157238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.625136, 13.025486, 19.218895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.465095, 12.782680, 19.493544>,  <11.369069, 12.636996, 19.658333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.465095, 12.782680, 19.493544>,  <11.625136, 13.025486, 19.218895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.465095, 12.782680, 19.493544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139189, 0.700263, 0.700184,
		-0.905838, 0.375718, -0.195689,
		-0.400106, -0.607015, 0.686621,
		11.345063, 12.600575, 19.699530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.030188, 13.339142, 19.606201>,  <11.625136, 13.025486, 19.218895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.030188, 13.339142, 19.606201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.158901, 13.059781, 19.861916>,  <11.236130, 12.892164, 20.015345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.158901, 13.059781, 19.861916>,  <11.030188, 13.339142, 19.606201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.158901, 13.059781, 19.861916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049737, 0.661799, 0.748029,
		-0.945506, -0.272501, 0.178220,
		0.321785, -0.698402, 0.639288,
		11.255437, 12.850261, 20.053701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.776911, 13.498912, 20.270699>,  <11.030188, 13.339142, 19.606201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.776911, 13.498912, 20.270699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.082136, 13.251775, 20.346596>,  <11.265271, 13.103493, 20.392134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.082136, 13.251775, 20.346596>,  <10.776911, 13.498912, 20.270699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.082136, 13.251775, 20.346596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377609, 0.664429, 0.644938,
		-0.524543, -0.420480, 0.740305,
		0.763064, -0.617844, 0.189745,
		11.311055, 13.066422, 20.403519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.903708, 13.598658, 20.986191>,  <10.776911, 13.498912, 20.270699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.903708, 13.598658, 20.986191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.234746, 13.413034, 20.859869>,  <11.433370, 13.301661, 20.784075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.234746, 13.413034, 20.859869>,  <10.903708, 13.598658, 20.986191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.234746, 13.413034, 20.859869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549940, 0.557590, 0.621820,
		-0.112470, -0.688291, 0.716663,
		0.827597, -0.464058, -0.315806,
		11.483026, 13.273817, 20.765127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.084787, 13.449916, 21.579077>,  <10.903708, 13.598658, 20.986191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.084787, 13.449916, 21.579077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.407619, 13.413288, 21.345758>,  <11.601318, 13.391312, 21.205767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.407619, 13.413288, 21.345758>,  <11.084787, 13.449916, 21.579077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.407619, 13.413288, 21.345758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580367, 0.304747, 0.755185,
		0.108605, -0.948021, 0.299100,
		0.807081, -0.091571, -0.583297,
		11.649744, 13.385818, 21.170769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.558108, 13.062070, 21.985493>,  <11.084787, 13.449916, 21.579077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.558108, 13.062070, 21.985493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.758582, 13.275822, 21.713242>,  <11.878866, 13.404073, 21.549891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.758582, 13.275822, 21.713242>,  <11.558108, 13.062070, 21.985493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.758582, 13.275822, 21.713242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574838, 0.382321, 0.723458,
		0.646819, -0.753836, -0.115569,
		0.501184, 0.534380, -0.680627,
		11.908937, 13.436135, 21.509054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.216280, 13.019632, 22.167917>,  <11.558108, 13.062070, 21.985493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.216280, 13.019632, 22.167917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.241559, 13.329445, 21.916168>,  <12.256726, 13.515332, 21.765120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.241559, 13.329445, 21.916168>,  <12.216280, 13.019632, 22.167917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.241559, 13.329445, 21.916168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692962, 0.419771, 0.586170,
		0.718199, -0.473175, -0.510192,
		0.063197, 0.774531, -0.629371,
		12.260518, 13.561804, 21.727356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.950699, 13.092290, 21.985151>,  <12.216280, 13.019632, 22.167917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.950699, 13.092290, 21.985151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792315, 13.452993, 21.915812>,  <12.697286, 13.669415, 21.874207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792315, 13.452993, 21.915812>,  <12.950699, 13.092290, 21.985151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.792315, 13.452993, 21.915812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639422, 0.406252, 0.652762,
		0.659057, 0.147622, -0.737463,
		-0.395958, 0.901758, -0.173351,
		12.673528, 13.723520, 21.863806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.554124, 13.500669, 21.904264>,  <12.950699, 13.092290, 21.985151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.554124, 13.500669, 21.904264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.265326, 13.763037, 21.992346>,  <13.092047, 13.920458, 22.045195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.265326, 13.763037, 21.992346>,  <13.554124, 13.500669, 21.904264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.265326, 13.763037, 21.992346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625791, 0.483300, 0.612215,
		0.295140, 0.579818, -0.759410,
		-0.721996, 0.655921, 0.220204,
		13.048727, 13.959813, 22.058407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.913518, 14.139836, 22.160521>,  <13.554124, 13.500669, 21.904264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.913518, 14.139836, 22.160521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.539911, 14.218796, 22.279613>,  <13.315747, 14.266171, 22.351070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.539911, 14.218796, 22.279613>,  <13.913518, 14.139836, 22.160521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.539911, 14.218796, 22.279613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355822, 0.587964, 0.726422,
		-0.031662, 0.784431, -0.619407,
		-0.934017, 0.197399, 0.297734,
		13.259706, 14.278015, 22.368935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.904714, 14.804070, 22.175556>,  <13.913518, 14.139836, 22.160521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.904714, 14.804070, 22.175556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606729, 14.700775, 22.421595>,  <13.427938, 14.638799, 22.569218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606729, 14.700775, 22.421595>,  <13.904714, 14.804070, 22.175556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.606729, 14.700775, 22.421595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470052, 0.451076, 0.758671,
		-0.473371, 0.854310, -0.214651,
		-0.744964, -0.258236, 0.615096,
		13.383240, 14.623304, 22.606123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.598730, 15.398602, 22.437719>,  <13.904714, 14.804070, 22.175556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.598730, 15.398602, 22.437719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511319, 15.119830, 22.710932>,  <13.458873, 14.952567, 22.874859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511319, 15.119830, 22.710932>,  <13.598730, 15.398602, 22.437719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.511319, 15.119830, 22.710932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473073, 0.536537, 0.698806,
		-0.853492, 0.475833, 0.212451,
		-0.218527, -0.696930, 0.683033,
		13.445761, 14.910751, 22.915842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.347852, 15.800684, 23.033875>,  <13.598730, 15.398602, 22.437719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.347852, 15.800684, 23.033875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463218, 15.452633, 23.193722>,  <13.532437, 15.243802, 23.289631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463218, 15.452633, 23.193722>,  <13.347852, 15.800684, 23.033875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.463218, 15.452633, 23.193722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405186, 0.489055, 0.772431,
		-0.867549, -0.060860, 0.493614,
		0.288414, -0.870127, 0.399619,
		13.549742, 15.191595, 23.313608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.300547, 15.973788, 23.772299>,  <13.347852, 15.800684, 23.033875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.300547, 15.973788, 23.772299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.525873, 15.644703, 23.741789>,  <13.661069, 15.447251, 23.723484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.525873, 15.644703, 23.741789>,  <13.300547, 15.973788, 23.772299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.525873, 15.644703, 23.741789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486640, 0.255762, 0.835324,
		-0.667725, -0.507669, 0.544441,
		0.563315, -0.822714, -0.076273,
		13.694868, 15.397889, 23.718906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.285410, 15.570003, 24.422178>,  <13.300547, 15.973788, 23.772299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.285410, 15.570003, 24.422178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.623508, 15.475770, 24.230320>,  <13.826367, 15.419230, 24.115204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.623508, 15.475770, 24.230320>,  <13.285410, 15.570003, 24.422178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.623508, 15.475770, 24.230320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529002, 0.241880, 0.813419,
		-0.075610, -0.941273, 0.329071,
		0.845245, -0.235582, -0.479647,
		13.877082, 15.405096, 24.086426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718028, 15.124816, 24.865452>,  <13.285410, 15.570003, 24.422178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718028, 15.124816, 24.865452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008364, 15.227949, 24.610367>,  <14.182565, 15.289829, 24.457315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008364, 15.227949, 24.610367>,  <13.718028, 15.124816, 24.865452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.008364, 15.227949, 24.610367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650753, 0.043015, 0.758070,
		0.222888, -0.965231, -0.136565,
		0.725838, 0.257835, -0.637714,
		14.226115, 15.305300, 24.419052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.293005, 14.694966, 24.975660>,  <13.718028, 15.124816, 24.865452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.293005, 14.694966, 24.975660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.445643, 14.988797, 24.751240>,  <14.537227, 15.165096, 24.616587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.445643, 14.988797, 24.751240>,  <14.293005, 14.694966, 24.975660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.445643, 14.988797, 24.751240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796075, 0.047279, 0.603349,
		0.469733, -0.676875, -0.566738,
		0.381597, 0.734578, -0.561051,
		14.560122, 15.209170, 24.582924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.105468, 14.525468, 24.871948>,  <14.293005, 14.694966, 24.975660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.105468, 14.525468, 24.871948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.053606, 14.917076, 24.809074>,  <15.022489, 15.152041, 24.771349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.053606, 14.917076, 24.809074>,  <15.105468, 14.525468, 24.871948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.053606, 14.917076, 24.809074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708082, 0.202389, 0.676504,
		0.694125, -0.023589, -0.719468,
		-0.129654, 0.979021, -0.157187,
		15.014709, 15.210782, 24.761919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.765170, 14.766592, 24.765038>,  <15.105468, 14.525468, 24.871948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.765170, 14.766592, 24.765038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.570465, 15.101633, 24.864222>,  <15.453642, 15.302658, 24.923731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.570465, 15.101633, 24.864222>,  <15.765170, 14.766592, 24.765038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.570465, 15.101633, 24.864222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747255, 0.252258, 0.614797,
		0.452406, 0.484549, -0.748693,
		-0.486763, 0.837603, 0.247959,
		15.424437, 15.352914, 24.938610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230932, 15.379850, 24.678034>,  <15.765170, 14.766592, 24.765038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.230932, 15.379850, 24.678034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.937189, 15.513940, 24.914116>,  <15.760942, 15.594394, 25.055765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.937189, 15.513940, 24.914116>,  <16.230932, 15.379850, 24.678034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.937189, 15.513940, 24.914116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678004, 0.321237, 0.661148,
		0.032036, 0.885682, -0.463186,
		-0.734360, 0.335222, 0.590205,
		15.716881, 15.614507, 25.091177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
