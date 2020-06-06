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
	<23.787516, 34.796665, 35.099861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178011, 34.869896, 35.053486>,  <24.412308, 34.913834, 35.025661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178011, 34.869896, 35.053486>,  <23.787516, 34.796665, 35.099861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178011, 34.869896, 35.053486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208042, 0.941543, -0.264984,
		0.060648, 0.282808, 0.957257,
		0.976238, 0.183079, -0.115939,
		24.470882, 34.924820, 35.018703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.847181, 35.471539, 35.362362>,  <23.787516, 34.796665, 35.099861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.847181, 35.471539, 35.362362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124214, 35.384628, 35.087227>,  <24.290434, 35.332481, 34.922146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124214, 35.384628, 35.087227>,  <23.847181, 35.471539, 35.362362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.124214, 35.384628, 35.087227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108851, 0.911158, -0.397420,
		0.713080, 0.350117, 0.607400,
		0.692581, -0.217276, -0.687839,
		24.331989, 35.319447, 34.880875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.305237, 36.101498, 35.204765>,  <23.847181, 35.471539, 35.362362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.305237, 36.101498, 35.204765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295160, 35.856674, 34.888599>,  <24.289114, 35.709782, 34.698898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295160, 35.856674, 34.888599>,  <24.305237, 36.101498, 35.204765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295160, 35.856674, 34.888599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053450, 0.790359, -0.610308,
		0.998253, 0.026875, -0.052623,
		-0.025190, -0.612054, -0.790415,
		24.287603, 35.673058, 34.651474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.848295, 36.363323, 34.651134>,  <24.305237, 36.101498, 35.204765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.848295, 36.363323, 34.651134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.540752, 36.179932, 34.472851>,  <24.356226, 36.069897, 34.365879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.540752, 36.179932, 34.472851>,  <24.848295, 36.363323, 34.651134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.540752, 36.179932, 34.472851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233075, 0.850044, -0.472337,
		0.595428, -0.259276, -0.760422,
		-0.768857, -0.458478, -0.445710,
		24.310095, 36.042389, 34.339138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842865, 36.442894, 33.854786>,  <24.848295, 36.363323, 34.651134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842865, 36.442894, 33.854786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462664, 36.361919, 33.949074>,  <24.234543, 36.313335, 34.005646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462664, 36.361919, 33.949074>,  <24.842865, 36.442894, 33.854786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.462664, 36.361919, 33.949074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299042, 0.801997, -0.517083,
		-0.084370, -0.561979, -0.822838,
		-0.950503, -0.202437, 0.235720,
		24.177513, 36.301189, 34.019791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551580, 36.226402, 33.616646>,  <24.842865, 36.442894, 33.854786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551580, 36.226402, 33.616646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929623, 36.307957, 33.718784>,  <26.156448, 36.356892, 33.780067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929623, 36.307957, 33.718784>,  <25.551580, 36.226402, 33.616646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929623, 36.307957, 33.718784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303642, -0.259304, -0.916822,
		-0.120718, 0.944029, -0.306979,
		0.945108, 0.203889, 0.255344,
		26.213156, 36.369122, 33.795387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876362, 36.785366, 33.201290>,  <25.551580, 36.226402, 33.616646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876362, 36.785366, 33.201290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174931, 36.562637, 33.347061>,  <26.354073, 36.429001, 33.434525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174931, 36.562637, 33.347061>,  <25.876362, 36.785366, 33.201290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174931, 36.562637, 33.347061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228111, -0.300358, -0.926148,
		0.625156, 0.774426, -0.097177,
		0.746421, -0.556820, 0.364425,
		26.398857, 36.395592, 33.456390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300978, 36.621181, 32.573257>,  <25.876362, 36.785366, 33.201290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300978, 36.621181, 32.573257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474884, 36.365463, 32.826962>,  <26.579227, 36.212032, 32.979183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474884, 36.365463, 32.826962>,  <26.300978, 36.621181, 32.573257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474884, 36.365463, 32.826962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159214, -0.638643, -0.752852,
		0.886356, 0.428298, -0.175877,
		0.434768, -0.639293, 0.634257,
		26.605314, 36.173676, 33.017239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015055, 36.556576, 32.321095>,  <26.300978, 36.621181, 32.573257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015055, 36.556576, 32.321095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902630, 36.241901, 32.540962>,  <26.835175, 36.053097, 32.672882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902630, 36.241901, 32.540962>,  <27.015055, 36.556576, 32.321095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902630, 36.241901, 32.540962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321574, -0.616845, -0.718396,
		0.904209, -0.025156, 0.426349,
		-0.281063, -0.786683, 0.549667,
		26.818312, 36.005898, 32.705864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432047, 36.035900, 32.062019>,  <27.015055, 36.556576, 32.321095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432047, 36.035900, 32.062019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196280, 35.800583, 32.283470>,  <27.054819, 35.659393, 32.416340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196280, 35.800583, 32.283470>,  <27.432047, 36.035900, 32.062019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196280, 35.800583, 32.283470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279362, -0.791481, -0.543613,
		0.757986, -0.165753, 0.630859,
		-0.589418, -0.588289, 0.553626,
		27.019455, 35.624096, 32.449558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808300, 35.450459, 32.232998>,  <27.432047, 36.035900, 32.062019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808300, 35.450459, 32.232998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423008, 35.352165, 32.276459>,  <27.191833, 35.293190, 32.302536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423008, 35.352165, 32.276459>,  <27.808300, 35.450459, 32.232998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423008, 35.352165, 32.276459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143279, -0.811876, -0.565975,
		0.227288, -0.529597, 0.817231,
		-0.963229, -0.245731, 0.108650,
		27.134039, 35.278446, 32.309055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781982, 34.751438, 32.489071>,  <27.808300, 35.450459, 32.232998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781982, 34.751438, 32.489071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422791, 34.817776, 32.326035>,  <27.207275, 34.857578, 32.228214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422791, 34.817776, 32.326035>,  <27.781982, 34.751438, 32.489071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422791, 34.817776, 32.326035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089041, -0.838617, -0.537395,
		-0.430933, -0.518862, 0.738295,
		-0.897980, 0.165843, -0.407587,
		27.153397, 34.867527, 32.203758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567898, 34.080612, 32.342651>,  <27.781982, 34.751438, 32.489071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567898, 34.080612, 32.342651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381042, 34.350037, 32.113533>,  <27.268929, 34.511692, 31.976061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381042, 34.350037, 32.113533>,  <27.567898, 34.080612, 32.342651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381042, 34.350037, 32.113533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000699, -0.647546, -0.762026,
		-0.884183, -0.356373, 0.302024,
		-0.467140, 0.673560, -0.572798,
		27.240900, 34.552105, 31.941694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964661, 33.777920, 32.214603>,  <27.567898, 34.080612, 32.342651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964661, 33.777920, 32.214603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042538, 34.054291, 31.936115>,  <27.089264, 34.220112, 31.769022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042538, 34.054291, 31.936115>,  <26.964661, 33.777920, 32.214603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042538, 34.054291, 31.936115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065805, -0.717403, -0.693544,
		-0.978654, 0.089213, -0.185139,
		0.194692, 0.690923, -0.696219,
		27.100945, 34.261566, 31.727249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689548, 33.444672, 31.653606>,  <26.964661, 33.777920, 32.214603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689548, 33.444672, 31.653606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881298, 33.740307, 31.464315>,  <26.996347, 33.917686, 31.350740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881298, 33.740307, 31.464315>,  <26.689548, 33.444672, 31.653606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881298, 33.740307, 31.464315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112060, -0.586361, -0.802262,
		-0.870426, 0.331554, -0.363909,
		0.479375, 0.739089, -0.473230,
		27.025110, 33.962032, 31.322346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630526, 33.206890, 31.013224>,  <26.689548, 33.444672, 31.653606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630526, 33.206890, 31.013224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925335, 33.476955, 31.000902>,  <27.102221, 33.638996, 30.993509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925335, 33.476955, 31.000902>,  <26.630526, 33.206890, 31.013224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925335, 33.476955, 31.000902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265196, -0.330812, -0.905668,
		-0.621663, 0.659332, -0.422867,
		0.737025, 0.675163, -0.030801,
		27.146442, 33.679504, 30.991661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633999, 33.304619, 30.366035>,  <26.630526, 33.206890, 31.013224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633999, 33.304619, 30.366035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981707, 33.442253, 30.508005>,  <27.190331, 33.524834, 30.593187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981707, 33.442253, 30.508005>,  <26.633999, 33.304619, 30.366035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981707, 33.442253, 30.508005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453973, -0.271493, -0.848646,
		-0.195651, 0.898829, -0.392208,
		0.869269, 0.344090, 0.354926,
		27.242487, 33.545479, 30.614483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974226, 33.762249, 29.798281>,  <26.633999, 33.304619, 30.366035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974226, 33.762249, 29.798281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254932, 33.638226, 30.054838>,  <27.423357, 33.563812, 30.208773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254932, 33.638226, 30.054838>,  <26.974226, 33.762249, 29.798281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254932, 33.638226, 30.054838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470962, -0.473604, -0.744240,
		0.534527, 0.824355, -0.186332,
		0.701766, -0.310062, 0.641394,
		27.465462, 33.545208, 30.247257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625547, 33.941063, 29.464800>,  <26.974226, 33.762249, 29.798281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625547, 33.941063, 29.464800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731255, 33.646923, 29.714417>,  <27.794680, 33.470440, 29.864187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731255, 33.646923, 29.714417>,  <27.625547, 33.941063, 29.464800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731255, 33.646923, 29.714417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391472, -0.509559, -0.766224,
		0.881426, 0.446784, 0.153207,
		0.264268, -0.735346, 0.624042,
		27.810535, 33.426319, 29.901628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179321, 33.819317, 29.217596>,  <27.625547, 33.941063, 29.464800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179321, 33.819317, 29.217596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139484, 33.487186, 29.436918>,  <28.115582, 33.287907, 29.568512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139484, 33.487186, 29.436918>,  <28.179321, 33.819317, 29.217596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139484, 33.487186, 29.436918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487520, -0.521090, -0.700563,
		0.867413, 0.197539, 0.456698,
		-0.099592, -0.830327, 0.548305,
		28.109608, 33.238087, 29.601410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770391, 33.466686, 29.179874>,  <28.179321, 33.819317, 29.217596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770391, 33.466686, 29.179874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512533, 33.186111, 29.301477>,  <28.357819, 33.017769, 29.374439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512533, 33.186111, 29.301477>,  <28.770391, 33.466686, 29.179874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512533, 33.186111, 29.301477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495669, -0.686253, -0.532324,
		0.582018, -0.192472, 0.790069,
		-0.644645, -0.701435, 0.304010,
		28.319139, 32.975681, 29.392681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113161, 32.831097, 29.376665>,  <28.770391, 33.466686, 29.179874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113161, 32.831097, 29.376665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745617, 32.709846, 29.275621>,  <28.525091, 32.637096, 29.214994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745617, 32.709846, 29.275621>,  <29.113161, 32.831097, 29.376665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745617, 32.709846, 29.275621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391728, -0.623843, -0.676291,
		0.047413, -0.720370, 0.691967,
		-0.918858, -0.303128, -0.252611,
		28.469959, 32.618908, 29.199839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168600, 32.032139, 29.347004>,  <29.113161, 32.831097, 29.376665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168600, 32.032139, 29.347004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843002, 32.149757, 29.146622>,  <28.647644, 32.220329, 29.026392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843002, 32.149757, 29.146622>,  <29.168600, 32.032139, 29.347004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843002, 32.149757, 29.146622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327702, -0.479611, -0.813993,
		-0.479611, -0.826748, 0.294042,
		0.813993, -0.294042, 0.500954,
		28.598804, 32.237968, 28.996336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093756, 31.431772, 28.966396>,  <29.168600, 32.032139, 29.347004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093756, 31.431772, 28.966396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849089, 31.689241, 28.782421>,  <28.702288, 31.843723, 28.672035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849089, 31.689241, 28.782421>,  <29.093756, 31.431772, 28.966396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849089, 31.689241, 28.782421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316853, -0.333390, -0.887950,
		-0.724891, -0.688864, -0.000026,
		-0.611668, 0.643675, -0.459940,
		28.665588, 31.882343, 28.644440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606546, 31.018265, 28.545273>,  <29.093756, 31.431772, 28.966396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606546, 31.018265, 28.545273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597122, 31.381025, 28.376997>,  <28.591469, 31.598680, 28.276031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597122, 31.381025, 28.376997>,  <28.606546, 31.018265, 28.545273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597122, 31.381025, 28.376997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197904, -0.408246, -0.891162,
		-0.979938, -0.104251, -0.169861,
		-0.023559, 0.906900, -0.420688,
		28.590054, 31.653095, 28.250792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100363, 31.002377, 28.028898>,  <28.606546, 31.018265, 28.545273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100363, 31.002377, 28.028898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333187, 31.305836, 27.911827>,  <28.472881, 31.487911, 27.841585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333187, 31.305836, 27.911827>,  <28.100363, 31.002377, 28.028898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333187, 31.305836, 27.911827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048054, -0.327212, -0.943728,
		-0.811724, 0.563372, -0.154002,
		0.582061, 0.758646, -0.292678,
		28.507805, 31.533430, 27.824024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893118, 31.240072, 27.344336>,  <28.100363, 31.002377, 28.028898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893118, 31.240072, 27.344336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283869, 31.304161, 27.400965>,  <28.518318, 31.342613, 27.434942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283869, 31.304161, 27.400965>,  <27.893118, 31.240072, 27.344336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283869, 31.304161, 27.400965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201547, -0.469077, -0.859852,
		-0.071357, 0.868502, -0.490522,
		0.976876, 0.160220, 0.141572,
		28.576931, 31.352226, 27.443436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208210, 31.629122, 26.841904>,  <27.893118, 31.240072, 27.344336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208210, 31.629122, 26.841904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468773, 31.368420, 26.997280>,  <28.625111, 31.211998, 27.090506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468773, 31.368420, 26.997280>,  <28.208210, 31.629122, 26.841904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468773, 31.368420, 26.997280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004659, -0.515391, -0.856942,
		0.758715, 0.556408, -0.338765,
		0.651406, -0.651753, 0.388443,
		28.664194, 31.172894, 27.113813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168840, 31.508801, 26.083252>,  <28.208210, 31.629122, 26.841904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168840, 31.508801, 26.083252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375175, 31.849850, 26.049915>,  <28.498976, 32.054478, 26.029913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375175, 31.849850, 26.049915>,  <28.168840, 31.508801, 26.083252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375175, 31.849850, 26.049915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230586, -0.044491, 0.972034,
		0.825072, -0.520627, -0.219553,
		0.515835, 0.852624, -0.083340,
		28.529926, 32.105637, 26.024914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974285, 31.330078, 26.318972>,  <28.168840, 31.508801, 26.083252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974285, 31.330078, 26.318972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855904, 31.708666, 26.370514>,  <28.784874, 31.935820, 26.401440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855904, 31.708666, 26.370514>,  <28.974285, 31.330078, 26.318972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855904, 31.708666, 26.370514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510751, 0.042805, 0.858662,
		0.807183, 0.319939, -0.496080,
		-0.295954, 0.946471, 0.128857,
		28.767117, 31.992607, 26.409172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567068, 31.801441, 26.367989>,  <28.974285, 31.330078, 26.318972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567068, 31.801441, 26.367989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256470, 31.940876, 26.577955>,  <29.070110, 32.024536, 26.703936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256470, 31.940876, 26.577955>,  <29.567068, 31.801441, 26.367989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256470, 31.940876, 26.577955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573735, 0.046685, 0.817709,
		0.260535, 0.936114, -0.236246,
		-0.776498, 0.348585, 0.524919,
		29.023520, 32.045452, 26.735432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811304, 32.319378, 26.767159>,  <29.567068, 31.801441, 26.367989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811304, 32.319378, 26.767159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486242, 32.168571, 26.944902>,  <29.291204, 32.078087, 27.051548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486242, 32.168571, 26.944902>,  <29.811304, 32.319378, 26.767159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486242, 32.168571, 26.944902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519275, -0.122424, 0.845793,
		-0.264474, 0.918082, 0.295261,
		-0.812654, -0.377012, 0.444359,
		29.242447, 32.055470, 27.078211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850197, 32.403534, 27.410534>,  <29.811304, 32.319378, 26.767159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850197, 32.403534, 27.410534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565256, 32.128693, 27.467728>,  <29.394293, 31.963787, 27.502045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565256, 32.128693, 27.467728>,  <29.850197, 32.403534, 27.410534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565256, 32.128693, 27.467728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473162, -0.319717, 0.820914,
		-0.518340, 0.652432, 0.552862,
		-0.712350, -0.687105, 0.142984,
		29.351551, 31.922562, 27.510622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575607, 32.251709, 27.097883>,  <29.850197, 32.403534, 27.410534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575607, 32.251709, 27.097883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708044, 32.608231, 26.973978>,  <30.787506, 32.822144, 26.899635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708044, 32.608231, 26.973978>,  <30.575607, 32.251709, 27.097883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708044, 32.608231, 26.973978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219451, -0.392012, -0.893402,
		-0.917725, 0.227820, -0.325390,
		0.331092, 0.891305, -0.309764,
		30.807371, 32.875622, 26.881048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250578, 32.430939, 27.213453>,  <30.575607, 32.251709, 27.097883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250578, 32.430939, 27.213453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177925, 32.809769, 27.107580>,  <31.134333, 33.037067, 27.044056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177925, 32.809769, 27.107580>,  <31.250578, 32.430939, 27.213453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177925, 32.809769, 27.107580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034486, 0.262860, 0.964217,
		0.982761, 0.184262, -0.015083,
		-0.181633, 0.947076, -0.264683,
		31.123436, 33.093891, 27.028175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447374, 32.833416, 27.753796>,  <31.250578, 32.430939, 27.213453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447374, 32.833416, 27.753796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214197, 33.092449, 27.557501>,  <31.074291, 33.247868, 27.439724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214197, 33.092449, 27.557501>,  <31.447374, 32.833416, 27.753796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214197, 33.092449, 27.557501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049508, 0.574540, 0.816978,
		0.811005, 0.500545, -0.302863,
		-0.582941, 0.647579, -0.490736,
		31.039314, 33.286724, 27.410280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646242, 33.402775, 28.138353>,  <31.447374, 32.833416, 27.753796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646242, 33.402775, 28.138353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311682, 33.491180, 27.937721>,  <31.110945, 33.544224, 27.817341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311682, 33.491180, 27.937721>,  <31.646242, 33.402775, 28.138353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311682, 33.491180, 27.937721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327819, 0.531684, 0.780927,
		0.439278, 0.817597, -0.372249,
		-0.836402, 0.221014, -0.501581,
		31.060760, 33.557484, 27.787247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542805, 34.117451, 28.100498>,  <31.646242, 33.402775, 28.138353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542805, 34.117451, 28.100498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168215, 33.977554, 28.089933>,  <30.943460, 33.893616, 28.083595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168215, 33.977554, 28.089933>,  <31.542805, 34.117451, 28.100498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168215, 33.977554, 28.089933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259877, 0.641348, 0.721898,
		-0.235536, 0.682904, -0.691495,
		-0.936476, -0.349737, -0.026410,
		30.887272, 33.872635, 28.082010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084789, 34.769489, 28.130390>,  <31.542805, 34.117451, 28.100498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084789, 34.769489, 28.130390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846264, 34.454357, 28.192009>,  <30.703148, 34.265278, 28.228981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846264, 34.454357, 28.192009>,  <31.084789, 34.769489, 28.130390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846264, 34.454357, 28.192009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551048, 0.541278, 0.635110,
		-0.583742, 0.293838, -0.756904,
		-0.596315, -0.787831, 0.154048,
		30.667370, 34.218006, 28.238224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525768, 35.044983, 28.086899>,  <31.084789, 34.769489, 28.130390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525768, 35.044983, 28.086899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432257, 34.711979, 28.287807>,  <30.376150, 34.512177, 28.408352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432257, 34.711979, 28.287807>,  <30.525768, 35.044983, 28.086899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432257, 34.711979, 28.287807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739792, 0.487515, 0.463720,
		-0.630916, -0.263168, -0.729855,
		-0.233779, -0.832509, 0.502270,
		30.362123, 34.462227, 28.438488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737309, 34.952618, 28.158304>,  <30.525768, 35.044983, 28.086899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737309, 34.952618, 28.158304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904438, 34.728828, 28.444637>,  <30.004715, 34.594555, 28.616438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904438, 34.728828, 28.444637>,  <29.737309, 34.952618, 28.158304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904438, 34.728828, 28.444637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573818, 0.448359, 0.685351,
		-0.704385, -0.697113, -0.133700,
		0.417822, -0.559470, 0.715833,
		30.029785, 34.560986, 28.659388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188753, 34.954872, 28.619610>,  <29.737309, 34.952618, 28.158304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188753, 34.954872, 28.619610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473961, 34.809601, 28.859510>,  <29.645086, 34.722439, 29.003450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473961, 34.809601, 28.859510>,  <29.188753, 34.954872, 28.619610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473961, 34.809601, 28.859510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424547, 0.457119, 0.781538,
		-0.557998, -0.811875, 0.171747,
		0.713020, -0.363182, 0.599751,
		29.687866, 34.700645, 29.039436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960073, 34.596066, 29.139845>,  <29.188753, 34.954872, 28.619610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960073, 34.596066, 29.139845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309494, 34.667412, 29.320993>,  <29.519146, 34.710220, 29.429682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309494, 34.667412, 29.320993>,  <28.960073, 34.596066, 29.139845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309494, 34.667412, 29.320993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486522, 0.292800, 0.823143,
		0.014221, -0.939390, 0.342555,
		0.873552, 0.178367, 0.452870,
		29.571560, 34.720921, 29.456854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909155, 34.358833, 29.748039>,  <28.960073, 34.596066, 29.139845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909155, 34.358833, 29.748039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209135, 34.619678, 29.792458>,  <29.389122, 34.776184, 29.819109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209135, 34.619678, 29.792458>,  <28.909155, 34.358833, 29.748039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209135, 34.619678, 29.792458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409747, 0.326158, 0.851897,
		0.519313, -0.684378, 0.511802,
		0.749948, 0.652110, 0.111044,
		29.434120, 34.815311, 29.825771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143143, 34.250935, 30.428011>,  <28.909155, 34.358833, 29.748039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143143, 34.250935, 30.428011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303507, 34.611862, 30.364647>,  <29.399725, 34.828419, 30.326628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303507, 34.611862, 30.364647>,  <29.143143, 34.250935, 30.428011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303507, 34.611862, 30.364647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213491, 0.260174, 0.941664,
		0.890895, -0.343702, 0.296943,
		0.400908, 0.902319, -0.158410,
		29.423779, 34.882557, 30.317123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635454, 34.361969, 30.978378>,  <29.143143, 34.250935, 30.428011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635454, 34.361969, 30.978378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512920, 34.713303, 30.831577>,  <29.439400, 34.924103, 30.743496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512920, 34.713303, 30.831577>,  <29.635454, 34.361969, 30.978378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512920, 34.713303, 30.831577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204015, 0.316001, 0.926564,
		0.929805, 0.358713, 0.082391,
		-0.306334, 0.878333, -0.367002,
		29.421021, 34.976803, 30.721478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928576, 34.843826, 31.380060>,  <29.635454, 34.361969, 30.978378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928576, 34.843826, 31.380060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613432, 35.021008, 31.208914>,  <29.424345, 35.127316, 31.106226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613432, 35.021008, 31.208914>,  <29.928576, 34.843826, 31.380060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613432, 35.021008, 31.208914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249958, 0.404959, 0.879505,
		0.562849, 0.799875, -0.208331,
		-0.787859, 0.442954, -0.427866,
		29.377073, 35.153893, 31.080555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987310, 35.382828, 31.727970>,  <29.928576, 34.843826, 31.380060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987310, 35.382828, 31.727970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626537, 35.432178, 31.562418>,  <29.410074, 35.461788, 31.463087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626537, 35.432178, 31.562418>,  <29.987310, 35.382828, 31.727970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626537, 35.432178, 31.562418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400040, 0.122478, 0.908277,
		0.162752, 0.984773, -0.061111,
		-0.901931, 0.123377, -0.413882,
		29.355957, 35.469193, 31.438253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729309, 36.118515, 31.928362>,  <29.987310, 35.382828, 31.727970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729309, 36.118515, 31.928362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422979, 35.881824, 31.827662>,  <29.239182, 35.739811, 31.767242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422979, 35.881824, 31.827662>,  <29.729309, 36.118515, 31.928362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422979, 35.881824, 31.827662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447067, 0.208525, 0.869856,
		-0.462219, 0.778704, -0.424234,
		-0.765823, -0.591724, -0.251749,
		29.193232, 35.704308, 31.752136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165117, 36.471699, 32.208355>,  <29.729309, 36.118515, 31.928362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165117, 36.471699, 32.208355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031336, 36.102737, 32.131088>,  <28.951067, 35.881359, 32.084728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031336, 36.102737, 32.131088>,  <29.165117, 36.471699, 32.208355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031336, 36.102737, 32.131088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592778, 0.046555, 0.804019,
		-0.732636, 0.383413, -0.562351,
		-0.334452, -0.922403, -0.193171,
		28.931000, 35.826015, 32.073135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458912, 36.525349, 32.342922>,  <29.165117, 36.471699, 32.208355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458912, 36.525349, 32.342922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597265, 36.154076, 32.397831>,  <28.680277, 35.931313, 32.430775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597265, 36.154076, 32.397831>,  <28.458912, 36.525349, 32.342922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597265, 36.154076, 32.397831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315874, 0.022573, 0.948533,
		-0.883510, -0.371441, -0.285381,
		0.345882, -0.928182, 0.137272,
		28.701031, 35.875622, 32.439014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054422, 36.222767, 32.878082>,  <28.458912, 36.525349, 32.342922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054422, 36.222767, 32.878082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341671, 35.944424, 32.874382>,  <28.514019, 35.777416, 32.872162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341671, 35.944424, 32.874382>,  <28.054422, 36.222767, 32.878082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341671, 35.944424, 32.874382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046577, -0.061321, 0.997031,
		-0.694360, -0.715556, -0.076447,
		0.718119, -0.695859, -0.009251,
		28.557106, 35.735664, 32.871609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859531, 35.656639, 33.259640>,  <28.054422, 36.222767, 32.878082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859531, 35.656639, 33.259640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257339, 35.629230, 33.291233>,  <28.496023, 35.612785, 33.310188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257339, 35.629230, 33.291233>,  <27.859531, 35.656639, 33.259640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257339, 35.629230, 33.291233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081749, -0.038543, 0.995907,
		-0.065213, -0.996904, -0.043935,
		0.994517, -0.068538, 0.078983,
		28.555695, 35.608673, 33.314926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970533, 35.035400, 33.692570>,  <27.859531, 35.656639, 33.259640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970533, 35.035400, 33.692570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304607, 35.255379, 33.694447>,  <28.505053, 35.387367, 33.695572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304607, 35.255379, 33.694447>,  <27.970533, 35.035400, 33.692570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304607, 35.255379, 33.694447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008358, 0.004153, 0.999956,
		0.549906, -0.835188, 0.008065,
		0.835185, 0.549949, 0.004697,
		28.555162, 35.420364, 33.695854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437672, 34.713356, 34.204643>,  <27.970533, 35.035400, 33.692570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437672, 34.713356, 34.204643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592299, 35.076973, 34.142403>,  <28.685074, 35.295143, 34.105057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592299, 35.076973, 34.142403>,  <28.437672, 34.713356, 34.204643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592299, 35.076973, 34.142403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207545, 0.078645, 0.975059,
		0.898606, -0.409219, -0.158266,
		0.386565, 0.909041, -0.155602,
		28.708267, 35.349686, 34.095722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963194, 34.685410, 34.662998>,  <28.437672, 34.713356, 34.204643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963194, 34.685410, 34.662998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912966, 35.066360, 34.551853>,  <28.882828, 35.294930, 34.485165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912966, 35.066360, 34.551853>,  <28.963194, 34.685410, 34.662998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912966, 35.066360, 34.551853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270556, 0.302340, 0.913997,
		0.954480, 0.039595, -0.295637,
		-0.125572, 0.952378, -0.277865,
		28.875294, 35.352074, 34.468494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442392, 35.004269, 34.968376>,  <28.963194, 34.685410, 34.662998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442392, 35.004269, 34.968376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166346, 35.286831, 34.905479>,  <29.000717, 35.456367, 34.867741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166346, 35.286831, 34.905479>,  <29.442392, 35.004269, 34.968376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166346, 35.286831, 34.905479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234565, 0.423881, 0.874817,
		0.684630, 0.566843, -0.458226,
		-0.690117, 0.706409, -0.157241,
		28.959311, 35.498753, 34.858307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964359, 34.603760, 34.666798>,  <29.442392, 35.004269, 34.968376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964359, 34.603760, 34.666798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925289, 34.424225, 34.311493>,  <29.901848, 34.316505, 34.098312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925289, 34.424225, 34.311493>,  <29.964359, 34.603760, 34.666798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925289, 34.424225, 34.311493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073513, 0.886836, -0.456200,
		0.992500, -0.109858, -0.053627,
		-0.097675, -0.448836, -0.888260,
		29.895987, 34.289574, 34.045013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622816, 33.972424, 35.015381>,  <29.964359, 34.603760, 34.666798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622816, 33.972424, 35.015381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991295, 34.093655, 34.917778>,  <30.212381, 34.166393, 34.859219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991295, 34.093655, 34.917778>,  <29.622816, 33.972424, 35.015381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991295, 34.093655, 34.917778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040241, 0.549529, 0.834505,
		0.387009, -0.778563, 0.494029,
		0.921197, 0.303081, -0.244003,
		30.267654, 34.184578, 34.844578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115128, 33.973755, 35.596428>,  <29.622816, 33.972424, 35.015381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115128, 33.973755, 35.596428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300531, 34.254417, 35.379971>,  <30.411774, 34.422813, 35.250095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300531, 34.254417, 35.379971>,  <30.115128, 33.973755, 35.596428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300531, 34.254417, 35.379971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258387, 0.477141, 0.839984,
		0.847581, -0.529167, 0.039862,
		0.463511, 0.701654, -0.541146,
		30.439585, 34.464912, 35.217628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887819, 34.165314, 35.698700>,  <30.115128, 33.973755, 35.596428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887819, 34.165314, 35.698700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666210, 34.488483, 35.618382>,  <30.533245, 34.682384, 35.570190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666210, 34.488483, 35.618382>,  <30.887819, 34.165314, 35.698700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666210, 34.488483, 35.618382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328686, 0.433883, 0.838875,
		0.764870, 0.398756, -0.505933,
		-0.554022, 0.807923, -0.200798,
		30.500004, 34.730862, 35.558144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327515, 34.767193, 35.932262>,  <30.887819, 34.165314, 35.698700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327515, 34.767193, 35.932262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973549, 34.950207, 35.897415>,  <30.761169, 35.060017, 35.876507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973549, 34.950207, 35.897415>,  <31.327515, 34.767193, 35.932262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973549, 34.950207, 35.897415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219303, 0.574322, 0.788708,
		0.410896, 0.678833, -0.608564,
		-0.884913, 0.457536, -0.087117,
		30.708075, 35.087467, 35.871281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335514, 35.459370, 35.683208>,  <31.327515, 34.767193, 35.932262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335514, 35.459370, 35.683208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013491, 35.408192, 35.914902>,  <30.820276, 35.377487, 36.053917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013491, 35.408192, 35.914902>,  <31.335514, 35.459370, 35.683208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013491, 35.408192, 35.914902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347992, 0.688924, 0.635835,
		-0.480396, 0.713453, -0.510103,
		-0.805060, -0.127941, 0.579232,
		30.771973, 35.369808, 36.088673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987225, 36.106491, 35.937256>,  <31.335514, 35.459370, 35.683208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987225, 36.106491, 35.937256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938053, 35.815517, 36.207287>,  <30.908550, 35.640934, 36.369305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938053, 35.815517, 36.207287>,  <30.987225, 36.106491, 35.937256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938053, 35.815517, 36.207287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396711, 0.587504, 0.705308,
		-0.909675, 0.354515, 0.216358,
		-0.122931, -0.727432, 0.675078,
		30.901175, 35.597286, 36.409809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438572, 36.202503, 36.515789>,  <30.987225, 36.106491, 35.937256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438572, 36.202503, 36.515789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777815, 36.004993, 36.592628>,  <30.981361, 35.886486, 36.638733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777815, 36.004993, 36.592628>,  <30.438572, 36.202503, 36.515789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777815, 36.004993, 36.592628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301525, 0.747945, 0.591321,
		-0.435658, -0.443580, 0.783223,
		0.848106, -0.493775, 0.192098,
		31.032248, 35.856861, 36.650257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560801, 36.525795, 37.166851>,  <30.438572, 36.202503, 36.515789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560801, 36.525795, 37.166851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898230, 36.325073, 37.090351>,  <31.100687, 36.204639, 37.044453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898230, 36.325073, 37.090351>,  <30.560801, 36.525795, 37.166851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898230, 36.325073, 37.090351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432013, 0.422599, 0.796728,
		-0.318982, -0.754719, 0.573280,
		0.843573, -0.501806, -0.191247,
		31.151302, 36.174530, 37.032978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796869, 36.187977, 37.826550>,  <30.560801, 36.525795, 37.166851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796869, 36.187977, 37.826550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119400, 36.231483, 37.593994>,  <31.312918, 36.257587, 37.454460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119400, 36.231483, 37.593994>,  <30.796869, 36.187977, 37.826550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119400, 36.231483, 37.593994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453885, 0.516471, 0.726117,
		0.379242, -0.849369, 0.367079,
		0.806328, 0.108762, -0.581384,
		31.361298, 36.264114, 37.419579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367023, 35.830849, 38.185356>,  <30.796869, 36.187977, 37.826550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367023, 35.830849, 38.185356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553555, 36.072586, 37.926960>,  <31.665474, 36.217628, 37.771923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553555, 36.072586, 37.926960>,  <31.367023, 35.830849, 38.185356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553555, 36.072586, 37.926960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580695, 0.341756, 0.738915,
		0.667332, -0.719701, -0.191570,
		0.466327, 0.604345, -0.645992,
		31.693453, 36.253891, 37.733162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093891, 35.895996, 38.320152>,  <31.367023, 35.830849, 38.185356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093891, 35.895996, 38.320152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066605, 36.218014, 38.084442>,  <32.050232, 36.411224, 37.943016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066605, 36.218014, 38.084442>,  <32.093891, 35.895996, 38.320152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066605, 36.218014, 38.084442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595596, 0.506712, 0.623305,
		0.800383, -0.308450, -0.514049,
		-0.068216, 0.805047, -0.589275,
		32.046139, 36.459526, 37.907658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766582, 36.214039, 38.134819>,  <32.093891, 35.895996, 38.320152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766582, 36.214039, 38.134819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473572, 36.485584, 38.114651>,  <32.297764, 36.648514, 38.102551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473572, 36.485584, 38.114651>,  <32.766582, 36.214039, 38.134819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473572, 36.485584, 38.114651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525361, 0.610880, 0.592301,
		0.432892, 0.407390, -0.804138,
		-0.732530, 0.678865, -0.050418,
		32.253815, 36.689243, 38.099525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133446, 36.787792, 38.107201>,  <32.766582, 36.214039, 38.134819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133446, 36.787792, 38.107201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766666, 36.908909, 38.211140>,  <32.546600, 36.981579, 38.273502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766666, 36.908909, 38.211140>,  <33.133446, 36.787792, 38.107201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766666, 36.908909, 38.211140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396984, 0.626822, 0.670446,
		0.040129, 0.717919, -0.694968,
		-0.916948, 0.302796, 0.259849,
		32.491581, 36.999748, 38.289093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175888, 37.538921, 38.240105>,  <33.133446, 36.787792, 38.107201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175888, 37.538921, 38.240105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839420, 37.437004, 38.430897>,  <32.637539, 37.375854, 38.545372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839420, 37.437004, 38.430897>,  <33.175888, 37.538921, 38.240105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839420, 37.437004, 38.430897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216295, 0.649896, 0.728595,
		-0.495629, 0.716043, -0.491564,
		-0.841171, -0.254790, 0.476984,
		32.587070, 37.360569, 38.573994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018509, 38.123913, 38.560608>,  <33.175888, 37.538921, 38.240105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018509, 38.123913, 38.560608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835205, 37.832764, 38.764648>,  <32.725224, 37.658073, 38.887074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835205, 37.832764, 38.764648>,  <33.018509, 38.123913, 38.560608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835205, 37.832764, 38.764648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176803, 0.487793, 0.854868,
		-0.871057, 0.481938, -0.094846,
		-0.458258, -0.727870, 0.510104,
		32.697727, 37.614403, 38.917679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784016, 38.506824, 39.132938>,  <33.018509, 38.123913, 38.560608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784016, 38.506824, 39.132938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761448, 38.123379, 39.244564>,  <32.747910, 37.893311, 39.311539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761448, 38.123379, 39.244564>,  <32.784016, 38.506824, 39.132938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761448, 38.123379, 39.244564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180090, 0.265157, 0.947238,
		-0.982031, 0.103697, 0.157678,
		-0.056416, -0.958613, 0.279067,
		32.744522, 37.835796, 39.328285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453358, 38.535362, 39.775333>,  <32.784016, 38.506824, 39.132938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453358, 38.535362, 39.775333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625095, 38.174732, 39.754078>,  <32.728138, 37.958355, 39.741325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625095, 38.174732, 39.754078>,  <32.453358, 38.535362, 39.775333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625095, 38.174732, 39.754078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269543, 0.071759, 0.960311,
		-0.861979, -0.426631, 0.273823,
		0.429348, -0.901575, -0.053140,
		32.753899, 37.904259, 39.738136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175735, 38.056900, 40.265923>,  <32.453358, 38.535362, 39.775333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175735, 38.056900, 40.265923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549438, 37.932449, 40.196217>,  <32.773659, 37.857777, 40.154392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549438, 37.932449, 40.196217>,  <32.175735, 38.056900, 40.265923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549438, 37.932449, 40.196217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152076, -0.094415, 0.983849,
		-0.322560, -0.945665, -0.040892,
		0.934253, -0.311131, -0.174268,
		32.829716, 37.839111, 40.143936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322018, 37.655128, 40.860214>,  <32.175735, 38.056900, 40.265923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322018, 37.655128, 40.860214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688343, 37.691067, 40.703648>,  <32.908138, 37.712627, 40.609707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688343, 37.691067, 40.703648>,  <32.322018, 37.655128, 40.860214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688343, 37.691067, 40.703648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396372, -0.045530, 0.916960,
		0.064562, -0.994915, -0.077308,
		0.915817, 0.089843, -0.391417,
		32.963089, 37.718018, 40.586224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644611, 37.036488, 40.960693>,  <32.322018, 37.655128, 40.860214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644611, 37.036488, 40.960693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935528, 37.310936, 40.954002>,  <33.110077, 37.475605, 40.949989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935528, 37.310936, 40.954002>,  <32.644611, 37.036488, 40.960693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935528, 37.310936, 40.954002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262528, -0.255603, 0.930455,
		0.634130, -0.681105, -0.366025,
		0.727295, 0.686122, -0.016723,
		33.153717, 37.516773, 40.948986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286316, 36.663807, 41.142811>,  <32.644611, 37.036488, 40.960693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286316, 36.663807, 41.142811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342697, 37.048992, 41.234753>,  <33.376526, 37.280102, 41.289917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342697, 37.048992, 41.234753>,  <33.286316, 36.663807, 41.142811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342697, 37.048992, 41.234753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272572, -0.260948, 0.926073,
		0.951755, -0.067876, -0.299257,
		0.140949, 0.962964, 0.229858,
		33.384983, 37.337883, 41.303711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697392, 36.573498, 41.664345>,  <33.286316, 36.663807, 41.142811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697392, 36.573498, 41.664345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587906, 36.957226, 41.692013>,  <33.522213, 37.187462, 41.708614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587906, 36.957226, 41.692013>,  <33.697392, 36.573498, 41.664345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587906, 36.957226, 41.692013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120694, -0.037085, 0.991997,
		0.954209, 0.279870, -0.105634,
		-0.273713, 0.959321, 0.069166,
		33.505791, 37.245022, 41.712761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147087, 36.920002, 42.183395>,  <33.697392, 36.573498, 41.664345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147087, 36.920002, 42.183395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816330, 37.144886, 42.178162>,  <33.617878, 37.279816, 42.175022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816330, 37.144886, 42.178162>,  <34.147087, 36.920002, 42.183395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816330, 37.144886, 42.178162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052883, 0.100898, 0.993490,
		0.559873, 0.820814, -0.113164,
		-0.826889, 0.562213, -0.013083,
		33.568264, 37.313549, 42.174236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321499, 37.540421, 42.534679>,  <34.147087, 36.920002, 42.183395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321499, 37.540421, 42.534679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923283, 37.502674, 42.535057>,  <33.684353, 37.480026, 42.535282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923283, 37.502674, 42.535057>,  <34.321499, 37.540421, 42.534679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923283, 37.502674, 42.535057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018640, 0.206383, 0.978294,
		-0.092515, 0.973910, -0.207221,
		-0.995537, -0.094369, 0.000940,
		33.624622, 37.474365, 42.535339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105373, 38.100330, 43.035416>,  <34.321499, 37.540421, 42.534679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105373, 38.100330, 43.035416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789288, 37.855633, 43.020802>,  <33.599636, 37.708813, 43.012032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789288, 37.855633, 43.020802>,  <34.105373, 38.100330, 43.035416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789288, 37.855633, 43.020802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251166, 0.268906, 0.929842,
		-0.559000, 0.743949, -0.366142,
		-0.790212, -0.611744, -0.036537,
		33.552223, 37.672112, 43.009842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644424, 38.461369, 43.474316>,  <34.105373, 38.100330, 43.035416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644424, 38.461369, 43.474316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489468, 38.092670, 43.467152>,  <33.396492, 37.871452, 43.462852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489468, 38.092670, 43.467152>,  <33.644424, 38.461369, 43.474316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489468, 38.092670, 43.467152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328010, 0.119652, 0.937066,
		-0.861589, 0.368887, -0.348692,
		-0.387393, -0.921741, -0.017908,
		33.373249, 37.816147, 43.461781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889729, 38.550396, 43.649078>,  <33.644424, 38.461369, 43.474316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889729, 38.550396, 43.649078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031551, 38.184582, 43.726959>,  <33.116646, 37.965092, 43.773689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031551, 38.184582, 43.726959>,  <32.889729, 38.550396, 43.649078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031551, 38.184582, 43.726959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319998, 0.076974, 0.944286,
		-0.878573, -0.397108, -0.265359,
		0.354558, -0.914538, 0.194701,
		33.137920, 37.910221, 43.785370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454334, 38.278545, 44.119644>,  <32.889729, 38.550396, 43.649078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454334, 38.278545, 44.119644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742710, 38.007393, 44.177235>,  <32.915733, 37.844700, 44.211788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742710, 38.007393, 44.177235>,  <32.454334, 38.278545, 44.119644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742710, 38.007393, 44.177235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171245, 0.027056, 0.984857,
		-0.671512, -0.734673, -0.096578,
		0.720935, -0.677882, 0.143977,
		32.958992, 37.804028, 44.220428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110397, 37.799732, 44.512444>,  <32.454334, 38.278545, 44.119644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110397, 37.799732, 44.512444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501255, 37.744347, 44.576958>,  <32.735771, 37.711113, 44.615665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501255, 37.744347, 44.576958>,  <32.110397, 37.799732, 44.512444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501255, 37.744347, 44.576958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174265, -0.087349, 0.980817,
		-0.121734, -0.986506, -0.109485,
		0.977145, -0.138478, 0.161280,
		32.794399, 37.702808, 44.625343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109451, 37.351849, 44.974945>,  <32.110397, 37.799732, 44.512444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109451, 37.351849, 44.974945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475407, 37.505867, 45.023476>,  <32.694981, 37.598278, 45.052593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475407, 37.505867, 45.023476>,  <32.109451, 37.351849, 44.974945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475407, 37.505867, 45.023476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135827, 0.010580, 0.990676,
		0.380176, -0.922835, 0.061980,
		0.914887, 0.385049, 0.121324,
		32.749874, 37.621384, 45.059872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460888, 36.940395, 45.617043>,  <32.109451, 37.351849, 44.974945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460888, 36.940395, 45.617043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666218, 37.280945, 45.573845>,  <32.789417, 37.485275, 45.547928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666218, 37.280945, 45.573845>,  <32.460888, 36.940395, 45.617043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666218, 37.280945, 45.573845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006379, 0.122051, 0.992503,
		0.858171, -0.510164, 0.057221,
		0.513323, 0.851373, -0.107995,
		32.820213, 37.536358, 45.541447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055180, 36.834492, 45.940212>,  <32.460888, 36.940395, 45.617043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055180, 36.834492, 45.940212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007568, 37.231594, 45.933739>,  <32.979000, 37.469856, 45.929855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007568, 37.231594, 45.933739>,  <33.055180, 36.834492, 45.940212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007568, 37.231594, 45.933739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252758, 0.046062, 0.966432,
		0.960180, 0.110945, -0.256411,
		-0.119032, 0.992759, -0.016185,
		32.971859, 37.529423, 45.928883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703354, 37.202847, 46.172279>,  <33.055180, 36.834492, 45.940212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703354, 37.202847, 46.172279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415154, 37.475288, 46.224400>,  <33.242233, 37.638752, 46.255672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415154, 37.475288, 46.224400>,  <33.703354, 37.202847, 46.172279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415154, 37.475288, 46.224400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338119, 0.180994, 0.923535,
		0.605441, 0.709462, -0.360701,
		-0.720498, 0.681106, 0.130302,
		33.199005, 37.679619, 46.263489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001789, 37.746803, 46.655598>,  <33.703354, 37.202847, 46.172279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001789, 37.746803, 46.655598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620819, 37.867306, 46.674023>,  <33.392235, 37.939610, 46.685078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620819, 37.867306, 46.674023>,  <34.001789, 37.746803, 46.655598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620819, 37.867306, 46.674023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130853, 0.267724, 0.954569,
		0.275239, 0.915187, -0.294408,
		-0.952429, 0.301259, 0.046067,
		33.335091, 37.957684, 46.687843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066914, 38.399918, 46.856762>,  <34.001789, 37.746803, 46.655598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066914, 38.399918, 46.856762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706413, 38.259640, 46.958549>,  <33.490112, 38.175472, 47.019623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706413, 38.259640, 46.958549>,  <34.066914, 38.399918, 46.856762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706413, 38.259640, 46.958549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129679, 0.342053, 0.930690,
		-0.413430, 0.871787, -0.262799,
		-0.901254, -0.350695, 0.254467,
		33.436035, 38.154430, 47.034889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810215, 38.868248, 47.345695>,  <34.066914, 38.399918, 46.856762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810215, 38.868248, 47.345695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552319, 38.571198, 47.418152>,  <33.397579, 38.392967, 47.461628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552319, 38.571198, 47.418152>,  <33.810215, 38.868248, 47.345695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552319, 38.571198, 47.418152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010623, 0.245659, 0.969298,
		-0.764324, 0.623026, -0.166276,
		-0.644745, -0.742624, 0.181144,
		33.358894, 38.348412, 47.472496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468468, 39.136017, 47.892429>,  <33.810215, 38.868248, 47.345695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468468, 39.136017, 47.892429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416698, 38.739418, 47.897804>,  <33.385635, 38.501457, 47.901028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416698, 38.739418, 47.897804>,  <33.468468, 39.136017, 47.892429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416698, 38.739418, 47.897804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129839, -0.003515, 0.991529,
		-0.983052, 0.130073, 0.129190,
		-0.129426, -0.991498, 0.013433,
		33.377872, 38.441967, 47.901833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094227, 39.074833, 48.473629>,  <33.468468, 39.136017, 47.892429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094227, 39.074833, 48.473629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269939, 38.719925, 48.417362>,  <33.375366, 38.506981, 48.383602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269939, 38.719925, 48.417362>,  <33.094227, 39.074833, 48.473629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269939, 38.719925, 48.417362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233226, -0.038577, 0.971657,
		-0.867545, -0.459641, 0.189988,
		0.439284, -0.887266, -0.140668,
		33.401726, 38.453747, 48.375160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962509, 38.790344, 49.128075>,  <33.094227, 39.074833, 48.473629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962509, 38.790344, 49.128075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232285, 38.550018, 48.956417>,  <33.394150, 38.405823, 48.853424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232285, 38.550018, 48.956417>,  <32.962509, 38.790344, 49.128075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232285, 38.550018, 48.956417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371959, -0.225601, 0.900417,
		-0.637797, -0.766895, 0.071325,
		0.674434, -0.600814, -0.429141,
		33.434616, 38.369774, 48.827675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875313, 38.135704, 49.399048>,  <32.962509, 38.790344, 49.128075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875313, 38.135704, 49.399048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258297, 38.138649, 49.283657>,  <33.488087, 38.140415, 49.214424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258297, 38.138649, 49.283657>,  <32.875313, 38.135704, 49.399048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258297, 38.138649, 49.283657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274533, -0.331214, 0.902734,
		-0.088904, -0.943527, -0.319144,
		0.957459, 0.007359, -0.288475,
		33.545536, 38.140858, 49.197113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147392, 37.455933, 49.340134>,  <32.875313, 38.135704, 49.399048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147392, 37.455933, 49.340134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481819, 37.672054, 49.378201>,  <33.682476, 37.801727, 49.401039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481819, 37.672054, 49.378201>,  <33.147392, 37.455933, 49.340134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481819, 37.672054, 49.378201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309182, -0.607325, 0.731822,
		0.453204, -0.582431, -0.674819,
		0.836070, 0.540306, 0.095165,
		33.732639, 37.834145, 49.406750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677853, 36.944557, 49.512955>,  <33.147392, 37.455933, 49.340134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677853, 36.944557, 49.512955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817883, 37.301399, 49.627220>,  <33.901901, 37.515503, 49.695778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817883, 37.301399, 49.627220>,  <33.677853, 36.944557, 49.512955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817883, 37.301399, 49.627220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232555, -0.378184, 0.896044,
		0.907395, -0.247249, -0.339855,
		0.350074, 0.892101, 0.285663,
		33.922905, 37.569031, 49.712917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371384, 36.818878, 49.875893>,  <33.677853, 36.944557, 49.512955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371384, 36.818878, 49.875893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225220, 37.168133, 50.004959>,  <34.137524, 37.377686, 50.082397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225220, 37.168133, 50.004959>,  <34.371384, 36.818878, 49.875893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225220, 37.168133, 50.004959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207574, -0.261472, 0.942627,
		0.907409, 0.411418, -0.085697,
		-0.365406, 0.873137, 0.322662,
		34.115597, 37.430073, 50.101757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711201, 36.880402, 50.533249>,  <34.371384, 36.818878, 49.875893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711201, 36.880402, 50.533249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449593, 37.181580, 50.562485>,  <34.292629, 37.362286, 50.580025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449593, 37.181580, 50.562485>,  <34.711201, 36.880402, 50.533249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449593, 37.181580, 50.562485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024956, -0.075088, 0.996865,
		0.756069, 0.653790, 0.030318,
		-0.654016, 0.752941, 0.073088,
		34.253387, 37.407463, 50.584412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008865, 37.356647, 50.954399>,  <34.711201, 36.880402, 50.533249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008865, 37.356647, 50.954399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610760, 37.393581, 50.966610>,  <34.371899, 37.415741, 50.973938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610760, 37.393581, 50.966610>,  <35.008865, 37.356647, 50.954399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610760, 37.393581, 50.966610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001200, -0.302220, 0.953237,
		0.097244, 0.948755, 0.300677,
		-0.995260, 0.092336, 0.030527,
		34.312183, 37.421284, 50.975769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922714, 37.775375, 51.422005>,  <35.008865, 37.356647, 50.954399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922714, 37.775375, 51.422005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549709, 37.631290, 51.411606>,  <34.325909, 37.544842, 51.405365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549709, 37.631290, 51.411606>,  <34.922714, 37.775375, 51.422005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549709, 37.631290, 51.411606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083168, 0.144137, 0.986057,
		-0.351440, 0.921669, -0.164367,
		-0.932509, -0.360210, -0.025998,
		34.269958, 37.523228, 51.403805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509892, 38.194775, 51.849285>,  <34.922714, 37.775375, 51.422005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509892, 38.194775, 51.849285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305630, 37.853745, 51.804844>,  <34.183075, 37.649124, 51.778179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305630, 37.853745, 51.804844>,  <34.509892, 38.194775, 51.849285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305630, 37.853745, 51.804844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091047, -0.074873, 0.993028,
		-0.854954, 0.517207, -0.039391,
		-0.510651, -0.852579, -0.111103,
		34.152435, 37.597969, 51.771515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884846, 38.222870, 52.262871>,  <34.509892, 38.194775, 51.849285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884846, 38.222870, 52.262871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993099, 37.841438, 52.210041>,  <34.058052, 37.612579, 52.178341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993099, 37.841438, 52.210041>,  <33.884846, 38.222870, 52.262871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993099, 37.841438, 52.210041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070939, -0.156577, 0.985115,
		-0.960066, -0.257232, -0.110021,
		0.270630, -0.953580, -0.132077,
		34.074287, 37.555363, 52.170418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714737, 38.862801, 52.740997>,  <33.884846, 38.222870, 52.262871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714737, 38.862801, 52.740997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442875, 38.720299, 52.997482>,  <33.279758, 38.634796, 53.151371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442875, 38.720299, 52.997482>,  <33.714737, 38.862801, 52.740997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442875, 38.720299, 52.997482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659374, -0.679718, 0.321262,
		0.321390, 0.641144, 0.696881,
		-0.679658, -0.356254, 0.641208,
		33.238979, 38.613422, 53.189846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020504, 38.800354, 53.499847>,  <33.714737, 38.862801, 52.740997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020504, 38.800354, 53.499847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719662, 38.540215, 53.457188>,  <33.539154, 38.384129, 53.431591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719662, 38.540215, 53.457188>,  <34.020504, 38.800354, 53.499847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719662, 38.540215, 53.457188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498311, -0.667090, 0.553784,
		-0.431298, 0.363362, 0.825802,
		-0.752109, -0.650353, -0.106647,
		33.494030, 38.345108, 53.425194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746540, 38.569508, 54.176624>,  <34.020504, 38.800354, 53.499847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746540, 38.569508, 54.176624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680283, 38.287880, 53.900406>,  <33.640530, 38.118904, 53.734676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680283, 38.287880, 53.900406>,  <33.746540, 38.569508, 54.176624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680283, 38.287880, 53.900406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536350, -0.651920, 0.536031,
		-0.827582, -0.281583, 0.485612,
		-0.165643, -0.704068, -0.690544,
		33.630589, 38.076660, 53.693241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262581, 37.991764, 54.408138>,  <33.746540, 38.569508, 54.176624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262581, 37.991764, 54.408138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537525, 37.864014, 54.147209>,  <33.702492, 37.787361, 53.990650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537525, 37.864014, 54.147209>,  <33.262581, 37.991764, 54.408138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537525, 37.864014, 54.147209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416577, -0.562369, 0.714286,
		-0.594978, -0.762717, -0.253503,
		0.687361, -0.319381, -0.652328,
		33.743732, 37.768200, 53.951511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309669, 37.283813, 54.065895>,  <33.262581, 37.991764, 54.408138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309669, 37.283813, 54.065895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691967, 37.389874, 54.116886>,  <33.921345, 37.453510, 54.147480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691967, 37.389874, 54.116886>,  <33.309669, 37.283813, 54.065895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691967, 37.389874, 54.116886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139507, -0.789933, 0.597112,
		0.259020, -0.552903, -0.791964,
		0.955744, 0.265149, 0.127474,
		33.978691, 37.469418, 54.155128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696693, 36.754410, 53.878494>,  <33.309669, 37.283813, 54.065895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696693, 36.754410, 53.878494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912704, 36.967304, 54.139294>,  <34.042309, 37.095043, 54.295773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912704, 36.967304, 54.139294>,  <33.696693, 36.754410, 53.878494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912704, 36.967304, 54.139294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054123, -0.795019, 0.604165,
		0.839908, -0.290975, -0.458136,
		0.540024, 0.532239, 0.651994,
		34.074711, 37.126976, 54.334892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259212, 36.440781, 53.561951>,  <33.696693, 36.754410, 53.878494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259212, 36.440781, 53.561951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226562, 36.392506, 53.957684>,  <34.206970, 36.363541, 54.195122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226562, 36.392506, 53.957684>,  <34.259212, 36.440781, 53.561951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226562, 36.392506, 53.957684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996609, 0.020222, -0.079762,
		-0.010384, -0.992491, -0.121876,
		-0.081628, -0.120634, 0.989336,
		34.202072, 36.356300, 54.254482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976971, 36.635563, 53.441196>,  <34.259212, 36.440781, 53.561951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976971, 36.635563, 53.441196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810699, 36.272221, 53.422829>,  <34.710938, 36.054214, 53.411808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810699, 36.272221, 53.422829>,  <34.976971, 36.635563, 53.441196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810699, 36.272221, 53.422829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172009, -0.028940, -0.984670,
		0.893101, -0.417199, 0.168275,
		-0.415673, -0.908354, -0.045915,
		34.685997, 35.999714, 53.409054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497326, 36.331909, 53.068180>,  <34.976971, 36.635563, 53.441196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497326, 36.331909, 53.068180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127796, 36.179653, 53.051842>,  <34.906078, 36.088299, 53.042038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127796, 36.179653, 53.051842>,  <35.497326, 36.331909, 53.068180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127796, 36.179653, 53.051842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125689, -0.200794, -0.971537,
		0.361601, -0.902661, 0.233339,
		-0.923822, -0.380637, -0.040847,
		34.850651, 36.065460, 53.039589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598434, 35.667667, 52.814594>,  <35.497326, 36.331909, 53.068180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598434, 35.667667, 52.814594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232056, 35.791489, 52.712437>,  <35.012230, 35.865780, 52.651142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232056, 35.791489, 52.712437>,  <35.598434, 35.667667, 52.814594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232056, 35.791489, 52.712437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151397, -0.322829, -0.934270,
		-0.371653, -0.894404, 0.248828,
		-0.915943, 0.309553, -0.255391,
		34.957272, 35.884354, 52.635818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229294, 35.117020, 52.534138>,  <35.598434, 35.667667, 52.814594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229294, 35.117020, 52.534138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055546, 35.445522, 52.386158>,  <34.951298, 35.642624, 52.297371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055546, 35.445522, 52.386158>,  <35.229294, 35.117020, 52.534138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055546, 35.445522, 52.386158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085594, -0.446499, -0.890681,
		-0.896660, -0.355216, 0.264239,
		-0.434367, 0.821255, -0.369954,
		34.925236, 35.691898, 52.275173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595264, 34.923641, 52.263206>,  <35.229294, 35.117020, 52.534138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595264, 34.923641, 52.263206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718048, 35.254250, 52.074471>,  <34.791718, 35.452614, 51.961227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718048, 35.254250, 52.074471>,  <34.595264, 34.923641, 52.263206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718048, 35.254250, 52.074471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009097, -0.493209, -0.869863,
		-0.951678, 0.271307, -0.143878,
		0.306962, 0.826521, -0.471844,
		34.810135, 35.502205, 51.932919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353149, 34.841496, 51.594566>,  <34.595264, 34.923641, 52.263206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353149, 34.841496, 51.594566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550762, 35.173332, 51.490479>,  <34.669331, 35.372433, 51.428028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550762, 35.173332, 51.490479>,  <34.353149, 34.841496, 51.594566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550762, 35.173332, 51.490479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007779, -0.303497, -0.952801,
		-0.869410, 0.468688, -0.156390,
		0.494031, 0.829591, -0.260218,
		34.698971, 35.422211, 51.412415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111938, 35.119682, 51.016361>,  <34.353149, 34.841496, 51.594566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111938, 35.119682, 51.016361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470425, 35.297115, 51.018780>,  <34.685516, 35.403576, 51.020229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470425, 35.297115, 51.018780>,  <34.111938, 35.119682, 51.016361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470425, 35.297115, 51.018780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179833, -0.350806, -0.919019,
		-0.405544, 0.824722, -0.394167,
		0.896211, 0.443587, 0.006045,
		34.739288, 35.430191, 51.020592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096939, 35.701759, 50.550232>,  <34.111938, 35.119682, 51.016361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096939, 35.701759, 50.550232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471161, 35.564251, 50.582645>,  <34.695694, 35.481747, 50.602093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471161, 35.564251, 50.582645>,  <34.096939, 35.701759, 50.550232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471161, 35.564251, 50.582645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039535, -0.126060, -0.991235,
		0.350974, 0.930553, -0.104345,
		0.935550, -0.343773, 0.081033,
		34.751827, 35.461121, 50.606956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457230, 35.935356, 49.947121>,  <34.096939, 35.701759, 50.550232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457230, 35.935356, 49.947121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700974, 35.643719, 50.071766>,  <34.847221, 35.468739, 50.146553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700974, 35.643719, 50.071766>,  <34.457230, 35.935356, 49.947121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700974, 35.643719, 50.071766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133390, -0.293142, -0.946718,
		0.781590, 0.618462, -0.081377,
		0.609364, -0.729090, 0.311613,
		34.883781, 35.424992, 50.165249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925896, 35.967773, 49.467701>,  <34.457230, 35.935356, 49.947121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925896, 35.967773, 49.467701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985855, 35.609058, 49.634220>,  <35.021832, 35.393829, 49.734131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985855, 35.609058, 49.634220>,  <34.925896, 35.967773, 49.467701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985855, 35.609058, 49.634220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223475, -0.379425, -0.897828,
		0.963115, 0.227612, 0.143536,
		0.149895, -0.896789, 0.416295,
		35.030823, 35.340023, 49.759109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651451, 35.588478, 49.225479>,  <34.925896, 35.967773, 49.467701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651451, 35.588478, 49.225479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430943, 35.279465, 49.351524>,  <35.298637, 35.094059, 49.427151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430943, 35.279465, 49.351524>,  <35.651451, 35.588478, 49.225479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430943, 35.279465, 49.351524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183312, -0.480606, -0.857563,
		0.813936, -0.414990, 0.406561,
		-0.551276, -0.772529, 0.315110,
		35.265560, 35.047707, 49.446056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093338, 35.001324, 49.056561>,  <35.651451, 35.588478, 49.225479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093338, 35.001324, 49.056561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710804, 34.892460, 49.099163>,  <35.481281, 34.827141, 49.124725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710804, 34.892460, 49.099163>,  <36.093338, 35.001324, 49.056561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710804, 34.892460, 49.099163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076185, -0.583974, -0.808189,
		0.282154, -0.764789, 0.579212,
		-0.956340, -0.272161, 0.106505,
		35.423901, 34.810810, 49.131115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062115, 34.205559, 48.966064>,  <36.093338, 35.001324, 49.056561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062115, 34.205559, 48.966064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726315, 34.406441, 48.883091>,  <35.524834, 34.526970, 48.833309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726315, 34.406441, 48.883091>,  <36.062115, 34.205559, 48.966064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726315, 34.406441, 48.883091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105172, -0.524724, -0.844750,
		-0.533091, -0.687348, 0.493322,
		-0.839495, 0.502213, -0.207436,
		35.474464, 34.557102, 48.820862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657070, 33.621071, 48.746387>,  <36.062115, 34.205559, 48.966064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657070, 33.621071, 48.746387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455475, 33.930649, 48.593025>,  <35.334518, 34.116398, 48.501007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455475, 33.930649, 48.593025>,  <35.657070, 33.621071, 48.746387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455475, 33.930649, 48.593025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156243, -0.518279, -0.840818,
		-0.849460, -0.363860, 0.382131,
		-0.503990, 0.773947, -0.383406,
		35.304279, 34.162834, 48.478004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132191, 33.376381, 48.292023>,  <35.657070, 33.621071, 48.746387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132191, 33.376381, 48.292023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144997, 33.754948, 48.163475>,  <35.152679, 33.982086, 48.086346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144997, 33.754948, 48.163475>,  <35.132191, 33.376381, 48.292023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144997, 33.754948, 48.163475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199008, -0.309062, -0.929988,
		-0.979475, 0.093726, 0.178450,
		0.032012, 0.946412, -0.321371,
		35.154598, 34.038872, 48.067062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732357, 33.273476, 47.713867>,  <35.132191, 33.376381, 48.292023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732357, 33.273476, 47.713867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897556, 33.632099, 47.649841>,  <34.996677, 33.847271, 47.611427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897556, 33.632099, 47.649841>,  <34.732357, 33.273476, 47.713867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897556, 33.632099, 47.649841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093619, -0.133025, -0.986681,
		-0.905906, 0.422484, 0.028995,
		0.413000, 0.896555, -0.160061,
		35.021458, 33.901066, 47.601822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325062, 33.638565, 47.430702>,  <34.732357, 33.273476, 47.713867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325062, 33.638565, 47.430702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679092, 33.784023, 47.314495>,  <34.891510, 33.871300, 47.244770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679092, 33.784023, 47.314495>,  <34.325062, 33.638565, 47.430702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679092, 33.784023, 47.314495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284392, -0.071583, -0.956032,
		-0.368457, 0.928782, 0.040063,
		0.885077, 0.363650, -0.290513,
		34.944614, 33.893120, 47.227341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113762, 33.929920, 46.885971>,  <34.325062, 33.638565, 47.430702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113762, 33.929920, 46.885971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511158, 33.922253, 46.841057>,  <34.749596, 33.917652, 46.814110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511158, 33.922253, 46.841057>,  <34.113762, 33.929920, 46.885971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511158, 33.922253, 46.841057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113011, -0.042542, -0.992683,
		0.014249, 0.998911, -0.044431,
		0.993492, -0.019166, -0.112282,
		34.809204, 33.916504, 46.807373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366119, 34.440796, 46.436905>,  <34.113762, 33.929920, 46.885971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366119, 34.440796, 46.436905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648849, 34.158451, 46.418335>,  <34.818489, 33.989044, 46.407192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648849, 34.158451, 46.418335>,  <34.366119, 34.440796, 46.436905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648849, 34.158451, 46.418335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100216, -0.034953, -0.994352,
		0.700253, 0.707486, -0.095444,
		0.706826, -0.705862, -0.046425,
		34.860897, 33.946693, 46.404408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654144, 34.648067, 45.833282>,  <34.366119, 34.440796, 46.436905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654144, 34.648067, 45.833282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812809, 34.285931, 45.893974>,  <34.908009, 34.068649, 45.930389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812809, 34.285931, 45.893974>,  <34.654144, 34.648067, 45.833282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812809, 34.285931, 45.893974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139826, -0.103775, -0.984723,
		0.907255, 0.411814, 0.085427,
		0.396657, -0.905340, 0.151733,
		34.931805, 34.014328, 45.939495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250004, 34.567513, 45.330189>,  <34.654144, 34.648067, 45.833282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250004, 34.567513, 45.330189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141708, 34.197235, 45.435863>,  <35.076733, 33.975071, 45.499268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141708, 34.197235, 45.435863>,  <35.250004, 34.567513, 45.330189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141708, 34.197235, 45.435863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022222, -0.268354, -0.963064,
		0.962396, -0.266610, 0.052083,
		-0.270739, -0.925692, 0.264188,
		35.060486, 33.919529, 45.515121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716625, 34.132931, 44.948780>,  <35.250004, 34.567513, 45.330189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716625, 34.132931, 44.948780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393909, 33.922466, 45.056297>,  <35.200279, 33.796188, 45.120808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393909, 33.922466, 45.056297>,  <35.716625, 34.132931, 44.948780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393909, 33.922466, 45.056297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023220, -0.426345, -0.904262,
		0.590383, -0.735791, 0.331754,
		-0.806789, -0.526157, 0.268792,
		35.151871, 33.764618, 45.136936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863972, 33.382839, 44.959961>,  <35.716625, 34.132931, 44.948780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863972, 33.382839, 44.959961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481369, 33.474087, 44.887230>,  <35.251808, 33.528835, 44.843590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481369, 33.474087, 44.887230>,  <35.863972, 33.382839, 44.959961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481369, 33.474087, 44.887230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094635, -0.346950, -0.933097,
		-0.275943, -0.909718, 0.310271,
		-0.956504, 0.228119, -0.181830,
		35.194420, 33.542522, 44.832680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647240, 32.853886, 44.476395>,  <35.863972, 33.382839, 44.959961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647240, 32.853886, 44.476395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367210, 33.134262, 44.421871>,  <35.199192, 33.302486, 44.389156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367210, 33.134262, 44.421871>,  <35.647240, 32.853886, 44.476395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367210, 33.134262, 44.421871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143670, -0.325245, -0.934652,
		-0.699466, -0.634745, 0.328400,
		-0.700076, 0.700939, -0.136304,
		35.157188, 33.344543, 44.380981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168941, 32.528259, 43.999069>,  <35.647240, 32.853886, 44.476395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168941, 32.528259, 43.999069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028370, 32.901791, 43.972355>,  <34.944027, 33.125908, 43.956326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028370, 32.901791, 43.972355>,  <35.168941, 32.528259, 43.999069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028370, 32.901791, 43.972355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282614, -0.173826, -0.943352,
		-0.892540, -0.312645, 0.325001,
		-0.351428, 0.933829, -0.066789,
		34.922943, 33.181938, 43.952320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493015, 32.500984, 43.727188>,  <35.168941, 32.528259, 43.999069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493015, 32.500984, 43.727188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607227, 32.878086, 43.658260>,  <34.675755, 33.104347, 43.616905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607227, 32.878086, 43.658260>,  <34.493015, 32.500984, 43.727188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607227, 32.878086, 43.658260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578144, 0.026037, -0.815519,
		-0.764346, 0.332477, 0.552481,
		0.285527, 0.942752, -0.172319,
		34.692886, 33.160912, 43.606564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867741, 32.759598, 43.444187>,  <34.493015, 32.500984, 43.727188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867741, 32.759598, 43.444187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159534, 33.025513, 43.379807>,  <34.334610, 33.185062, 43.341179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159534, 33.025513, 43.379807>,  <33.867741, 32.759598, 43.444187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159534, 33.025513, 43.379807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427591, 0.259557, -0.865908,
		-0.533867, 0.700492, 0.473601,
		0.729488, 0.664786, -0.160955,
		34.378380, 33.224949, 43.331520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552746, 33.353634, 43.249546>,  <33.867741, 32.759598, 43.444187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552746, 33.353634, 43.249546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926064, 33.346413, 43.106079>,  <34.150055, 33.342079, 43.020000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926064, 33.346413, 43.106079>,  <33.552746, 33.353634, 43.249546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926064, 33.346413, 43.106079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358478, 0.012856, -0.933450,
		0.021463, 0.999755, 0.005527,
		0.933292, -0.018054, -0.358666,
		34.206051, 33.340996, 42.998478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525383, 33.700211, 42.631092>,  <33.552746, 33.353634, 43.249546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525383, 33.700211, 42.631092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883587, 33.525494, 42.596958>,  <34.098507, 33.420666, 42.576477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883587, 33.525494, 42.596958>,  <33.525383, 33.700211, 42.631092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883587, 33.525494, 42.596958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092225, 0.005446, -0.995723,
		0.435387, 0.899547, -0.035406,
		0.895507, -0.436790, -0.085332,
		34.152241, 33.394455, 42.571358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803799, 33.984673, 42.067280>,  <33.525383, 33.700211, 42.631092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803799, 33.984673, 42.067280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028122, 33.655750, 42.105881>,  <34.162716, 33.458397, 42.129040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028122, 33.655750, 42.105881>,  <33.803799, 33.984673, 42.067280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028122, 33.655750, 42.105881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077067, -0.064203, -0.994957,
		0.824352, 0.565416, 0.027367,
		0.560808, -0.822303, 0.096501,
		34.196365, 33.409058, 42.134830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433994, 34.138397, 41.718990>,  <33.803799, 33.984673, 42.067280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433994, 34.138397, 41.718990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366501, 33.745007, 41.745224>,  <34.326004, 33.508972, 41.760963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366501, 33.745007, 41.745224>,  <34.433994, 34.138397, 41.718990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366501, 33.745007, 41.745224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028664, -0.061617, -0.997688,
		0.985244, -0.170227, -0.017793,
		-0.168737, -0.983476, 0.065587,
		34.315880, 33.449963, 41.764900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938789, 33.809677, 41.270412>,  <34.433994, 34.138397, 41.718990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938789, 33.809677, 41.270412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628616, 33.562462, 41.322163>,  <34.442513, 33.414135, 41.353210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628616, 33.562462, 41.322163>,  <34.938789, 33.809677, 41.270412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628616, 33.562462, 41.322163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063300, -0.127771, -0.989782,
		0.628249, -0.775698, 0.059956,
		-0.775433, -0.618034, 0.129374,
		34.395985, 33.377052, 41.360973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950726, 33.533043, 40.609058>,  <34.938789, 33.809677, 41.270412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950726, 33.533043, 40.609058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607792, 33.381344, 40.748287>,  <34.402031, 33.290325, 40.831825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607792, 33.381344, 40.748287>,  <34.950726, 33.533043, 40.609058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607792, 33.381344, 40.748287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315530, -0.147101, -0.937444,
		0.406727, -0.913527, 0.006450,
		-0.857329, -0.379249, 0.348075,
		34.350594, 33.267570, 40.852711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850048, 32.952408, 40.227650>,  <34.950726, 33.533043, 40.609058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850048, 32.952408, 40.227650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492458, 33.060154, 40.370895>,  <34.277905, 33.124802, 40.456844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492458, 33.060154, 40.370895>,  <34.850048, 32.952408, 40.227650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492458, 33.060154, 40.370895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352607, 0.070326, -0.933125,
		-0.276540, -0.960466, 0.032112,
		-0.893977, 0.269369, 0.358114,
		34.224266, 33.140965, 40.478329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273930, 32.453369, 39.982601>,  <34.850048, 32.952408, 40.227650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273930, 32.453369, 39.982601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085827, 32.792713, 40.079872>,  <33.972965, 32.996319, 40.138237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085827, 32.792713, 40.079872>,  <34.273930, 32.453369, 39.982601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085827, 32.792713, 40.079872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548170, -0.064838, -0.833850,
		-0.691641, -0.525428, 0.495538,
		-0.470258, 0.848364, 0.243180,
		33.944748, 33.047222, 40.152824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487061, 32.409416, 39.697960>,  <34.273930, 32.453369, 39.982601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487061, 32.409416, 39.697960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552284, 32.797905, 39.767403>,  <33.591419, 33.030998, 39.809071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552284, 32.797905, 39.767403>,  <33.487061, 32.409416, 39.697960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552284, 32.797905, 39.767403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437115, 0.228867, -0.869799,
		-0.884502, 0.065939, 0.461854,
		0.163057, 0.971222, 0.173611,
		33.601200, 33.089272, 39.819485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881031, 32.796944, 39.501671>,  <33.487061, 32.409416, 39.697960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881031, 32.796944, 39.501671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166428, 33.076111, 39.526459>,  <33.337666, 33.243610, 39.541332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166428, 33.076111, 39.526459>,  <32.881031, 32.796944, 39.501671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166428, 33.076111, 39.526459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288273, 0.373015, -0.881906,
		-0.638611, 0.611371, 0.467335,
		0.713494, 0.697915, 0.061970,
		33.380474, 33.285484, 39.545052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497253, 33.406670, 39.381100>,  <32.881031, 32.796944, 39.501671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497253, 33.406670, 39.381100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876167, 33.467098, 39.268078>,  <33.103516, 33.503357, 39.200264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876167, 33.467098, 39.268078>,  <32.497253, 33.406670, 39.381100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876167, 33.467098, 39.268078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320405, 0.444916, -0.836296,
		-0.000631, 0.882738, 0.469865,
		0.947280, 0.151074, -0.282553,
		33.160351, 33.512421, 39.183311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544777, 34.190258, 39.158894>,  <32.497253, 33.406670, 39.381100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544777, 34.190258, 39.158894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839157, 33.991093, 38.975391>,  <33.015785, 33.871593, 38.865292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839157, 33.991093, 38.975391>,  <32.544777, 34.190258, 39.158894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839157, 33.991093, 38.975391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208621, 0.477849, -0.853309,
		0.644088, 0.723703, 0.247801,
		0.735954, -0.497910, -0.458757,
		33.059944, 33.841721, 38.837765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047352, 34.758205, 38.938408>,  <32.544777, 34.190258, 39.158894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047352, 34.758205, 38.938408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154152, 34.426746, 38.741615>,  <33.218231, 34.227871, 38.623539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154152, 34.426746, 38.741615>,  <33.047352, 34.758205, 38.938408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154152, 34.426746, 38.741615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029732, 0.517359, -0.855252,
		0.963238, 0.213723, 0.162772,
		0.266998, -0.828651, -0.491986,
		33.234253, 34.178150, 38.594021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740585, 34.808247, 38.678902>,  <33.047352, 34.758205, 38.938408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740585, 34.808247, 38.678902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576813, 34.520767, 38.454102>,  <33.478550, 34.348282, 38.319221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576813, 34.520767, 38.454102>,  <33.740585, 34.808247, 38.678902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576813, 34.520767, 38.454102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327793, 0.458982, -0.825765,
		0.851421, -0.522313, 0.047662,
		-0.409432, -0.718697, -0.561997,
		33.453983, 34.305157, 38.285503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216377, 34.332478, 38.259933>,  <33.740585, 34.808247, 38.678902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216377, 34.332478, 38.259933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852020, 34.419693, 38.119804>,  <33.633404, 34.472023, 38.035728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852020, 34.419693, 38.119804>,  <34.216377, 34.332478, 38.259933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852020, 34.419693, 38.119804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411098, 0.406332, -0.816022,
		-0.035578, -0.887329, -0.459762,
		-0.910896, 0.218040, -0.350323,
		33.578751, 34.485104, 38.014706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503815, 34.968769, 38.134315>,  <34.216377, 34.332478, 38.259933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503815, 34.968769, 38.134315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790897, 34.822262, 37.897423>,  <34.963146, 34.734356, 37.755287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790897, 34.822262, 37.897423>,  <34.503815, 34.968769, 38.134315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790897, 34.822262, 37.897423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673624, 0.149712, 0.723752,
		-0.176423, -0.918386, 0.354177,
		0.717709, -0.366269, -0.592234,
		35.006210, 34.712379, 37.719753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891033, 34.438534, 38.603004>,  <34.503815, 34.968769, 38.134315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891033, 34.438534, 38.603004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128811, 34.553379, 38.302551>,  <35.271477, 34.622284, 38.122280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128811, 34.553379, 38.302551>,  <34.891033, 34.438534, 38.603004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128811, 34.553379, 38.302551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767864, 0.074711, 0.636242,
		0.238790, -0.954979, -0.176051,
		0.594445, 0.287112, -0.751134,
		35.307144, 34.639511, 38.077209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594200, 34.135994, 38.672657>,  <34.891033, 34.438534, 38.603004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594200, 34.135994, 38.672657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678062, 34.412849, 38.396400>,  <35.728378, 34.578964, 38.230648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678062, 34.412849, 38.396400>,  <35.594200, 34.135994, 38.672657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678062, 34.412849, 38.396400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873265, 0.185188, 0.450682,
		0.439834, -0.697601, -0.565596,
		0.209654, 0.692141, -0.690642,
		35.740959, 34.620491, 38.189209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248760, 33.924099, 38.277313>,  <35.594200, 34.135994, 38.672657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248760, 33.924099, 38.277313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179752, 34.317242, 38.303299>,  <36.138348, 34.553127, 38.318890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179752, 34.317242, 38.303299>,  <36.248760, 33.924099, 38.277313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179752, 34.317242, 38.303299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824267, 0.107948, 0.555816,
		0.539277, 0.149437, -0.828763,
		-0.172523, 0.982861, 0.064962,
		36.127995, 34.612099, 38.322788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967278, 34.257324, 38.175850>,  <36.248760, 33.924099, 38.277313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967278, 34.257324, 38.175850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726051, 34.523663, 38.351562>,  <36.581318, 34.683464, 38.456989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726051, 34.523663, 38.351562>,  <36.967278, 34.257324, 38.175850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726051, 34.523663, 38.351562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750946, 0.288132, 0.594188,
		0.269067, 0.688208, -0.673775,
		-0.603061, 0.665845, 0.439280,
		36.545132, 34.723415, 38.483345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373074, 34.819893, 38.364132>,  <36.967278, 34.257324, 38.175850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373074, 34.819893, 38.364132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067638, 34.874565, 38.616562>,  <36.884377, 34.907368, 38.768021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067638, 34.874565, 38.616562>,  <37.373074, 34.819893, 38.364132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067638, 34.874565, 38.616562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640182, 0.287779, 0.712286,
		-0.084256, 0.947894, -0.307243,
		-0.763589, 0.136677, 0.631071,
		36.838562, 34.915569, 38.805882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658257, 35.306923, 38.781017>,  <37.373074, 34.819893, 38.364132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658257, 35.306923, 38.781017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328217, 35.196243, 38.978054>,  <37.130192, 35.129833, 39.096275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328217, 35.196243, 38.978054>,  <37.658257, 35.306923, 38.781017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328217, 35.196243, 38.978054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473745, 0.136227, 0.870062,
		-0.307851, 0.951251, 0.018685,
		-0.825102, -0.276701, 0.492588,
		37.080685, 35.113232, 39.125832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559570, 35.836395, 39.386902>,  <37.658257, 35.306923, 38.781017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559570, 35.836395, 39.386902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378944, 35.495235, 39.491707>,  <37.270569, 35.290539, 39.554592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378944, 35.495235, 39.491707>,  <37.559570, 35.836395, 39.386902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378944, 35.495235, 39.491707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361595, 0.093531, 0.927632,
		-0.815685, 0.513625, 0.266170,
		-0.451560, -0.852901, 0.262016,
		37.243477, 35.239365, 39.570312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273735, 35.922115, 40.093208>,  <37.559570, 35.836395, 39.386902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273735, 35.922115, 40.093208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293823, 35.524342, 40.056175>,  <37.305874, 35.285675, 40.033955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293823, 35.524342, 40.056175>,  <37.273735, 35.922115, 40.093208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293823, 35.524342, 40.056175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191864, -0.081367, 0.978042,
		-0.980136, -0.066879, 0.186711,
		0.050219, -0.994438, -0.092582,
		37.308887, 35.226009, 40.028400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868397, 35.508610, 40.665203>,  <37.273735, 35.922115, 40.093208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868397, 35.508610, 40.665203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135254, 35.252811, 40.512386>,  <37.295368, 35.099331, 40.420696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135254, 35.252811, 40.512386>,  <36.868397, 35.508610, 40.665203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135254, 35.252811, 40.512386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128389, -0.406474, 0.904597,
		-0.733779, -0.652549, -0.189073,
		0.667147, -0.639499, -0.382042,
		37.335400, 35.060963, 40.397774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899693, 35.052109, 41.180122>,  <36.868397, 35.508610, 40.665203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899693, 35.052109, 41.180122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204060, 34.937588, 40.947216>,  <37.386681, 34.868877, 40.807472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204060, 34.937588, 40.947216>,  <36.899693, 35.052109, 41.180122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204060, 34.937588, 40.947216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467524, -0.380328, 0.797980,
		-0.449913, -0.879422, -0.155547,
		0.760920, -0.286299, -0.582265,
		37.432335, 34.851700, 40.772537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019226, 34.389622, 41.336922>,  <36.899693, 35.052109, 41.180122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019226, 34.389622, 41.336922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375576, 34.496429, 41.189930>,  <37.589386, 34.560516, 41.101734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375576, 34.496429, 41.189930>,  <37.019226, 34.389622, 41.336922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375576, 34.496429, 41.189930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439324, -0.300805, 0.846470,
		0.115486, -0.915541, -0.385288,
		0.890874, 0.267022, -0.367481,
		37.642838, 34.576534, 41.079685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469307, 33.764103, 41.314537>,  <37.019226, 34.389622, 41.336922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469307, 33.764103, 41.314537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669552, 34.109734, 41.335587>,  <37.789700, 34.317112, 41.348217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669552, 34.109734, 41.335587>,  <37.469307, 33.764103, 41.314537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669552, 34.109734, 41.335587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399544, -0.284556, 0.871431,
		0.767955, -0.415219, -0.487686,
		0.500609, 0.864073, 0.052628,
		37.819733, 34.368954, 41.351376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026821, 33.526123, 41.831146>,  <37.469307, 33.764103, 41.314537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026821, 33.526123, 41.831146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070354, 33.922195, 41.796066>,  <38.096474, 34.159840, 41.775017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070354, 33.922195, 41.796066>,  <38.026821, 33.526123, 41.831146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070354, 33.922195, 41.796066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315332, 0.049277, 0.947701,
		0.942719, -0.130800, -0.306874,
		0.108838, 0.990183, -0.087700,
		38.103004, 34.219250, 41.769756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561069, 33.691319, 42.226894>,  <38.026821, 33.526123, 41.831146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561069, 33.691319, 42.226894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402298, 34.058090, 42.210461>,  <38.307034, 34.278152, 42.200600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402298, 34.058090, 42.210461>,  <38.561069, 33.691319, 42.226894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402298, 34.058090, 42.210461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338947, 0.188029, 0.921824,
		0.852972, 0.351975, -0.385425,
		-0.396930, 0.916929, -0.041083,
		38.283218, 34.333168, 42.198135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985184, 34.115570, 42.645611>,  <38.561069, 33.691319, 42.226894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985184, 34.115570, 42.645611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622982, 34.283554, 42.621307>,  <38.405663, 34.384346, 42.606724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622982, 34.283554, 42.621307>,  <38.985184, 34.115570, 42.645611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622982, 34.283554, 42.621307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014451, 0.173631, 0.984705,
		0.424089, 0.890777, -0.163292,
		-0.905505, 0.419962, -0.060762,
		38.351330, 34.409542, 42.603077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052490, 34.609825, 43.187798>,  <38.985184, 34.115570, 42.645611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052490, 34.609825, 43.187798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663673, 34.603813, 43.094074>,  <38.430382, 34.600204, 43.037838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663673, 34.603813, 43.094074>,  <39.052490, 34.609825, 43.187798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663673, 34.603813, 43.094074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232060, 0.213355, 0.949014,
		0.035725, 0.976859, -0.210879,
		-0.972045, -0.015033, -0.234312,
		38.372059, 34.599304, 43.023781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613705, 35.306419, 43.511292>,  <39.052490, 34.609825, 43.187798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613705, 35.306419, 43.511292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370495, 34.994221, 43.453148>,  <38.224571, 34.806900, 43.418262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370495, 34.994221, 43.453148>,  <38.613705, 35.306419, 43.511292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370495, 34.994221, 43.453148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324621, 0.077325, 0.942678,
		-0.724520, 0.620356, -0.300382,
		-0.608023, -0.780499, -0.145357,
		38.188087, 34.760071, 43.409542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995567, 35.444012, 43.837887>,  <38.613705, 35.306419, 43.511292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995567, 35.444012, 43.837887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950699, 35.046879, 43.821377>,  <37.923779, 34.808598, 43.811470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950699, 35.046879, 43.821377>,  <37.995567, 35.444012, 43.837887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950699, 35.046879, 43.821377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432995, 0.011451, 0.901324,
		-0.894389, 0.118977, -0.431175,
		-0.112174, -0.992831, -0.041275,
		37.917046, 34.749031, 43.808994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310322, 35.193974, 44.077221>,  <37.995567, 35.444012, 43.837887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310322, 35.193974, 44.077221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503059, 34.843781, 44.091900>,  <37.618702, 34.633663, 44.100708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503059, 34.843781, 44.091900>,  <37.310322, 35.193974, 44.077221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503059, 34.843781, 44.091900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234455, -0.088455, 0.968094,
		-0.844307, -0.475079, -0.247884,
		0.481847, -0.875486, 0.036702,
		37.647614, 34.581135, 44.102909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827793, 34.739704, 44.353420>,  <37.310322, 35.193974, 44.077221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827793, 34.739704, 44.353420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189606, 34.598866, 44.449638>,  <37.406693, 34.514362, 44.507370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189606, 34.598866, 44.449638>,  <36.827793, 34.739704, 44.353420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189606, 34.598866, 44.449638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270314, -0.037179, 0.962054,
		-0.329790, -0.935226, -0.128805,
		0.904527, -0.352094, 0.240543,
		37.460964, 34.493237, 44.521801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662006, 34.141502, 44.824570>,  <36.827793, 34.739704, 44.353420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662006, 34.141502, 44.824570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039162, 34.247086, 44.905846>,  <37.265453, 34.310436, 44.954609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039162, 34.247086, 44.905846>,  <36.662006, 34.141502, 44.824570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039162, 34.247086, 44.905846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184662, -0.093468, 0.978347,
		0.277240, -0.959993, -0.039386,
		0.942888, 0.263964, 0.203187,
		37.322029, 34.326275, 44.966801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004459, 33.704975, 45.318047>,  <36.662006, 34.141502, 44.824570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004459, 33.704975, 45.318047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192970, 34.053837, 45.370571>,  <37.306076, 34.263153, 45.402084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192970, 34.053837, 45.370571>,  <37.004459, 33.704975, 45.318047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192970, 34.053837, 45.370571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182884, -0.049011, 0.981912,
		0.862818, -0.486763, 0.136406,
		0.471273, 0.872158, 0.131309,
		37.334351, 34.315483, 45.409966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312134, 33.697002, 46.001862>,  <37.004459, 33.704975, 45.318047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312134, 33.697002, 46.001862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302330, 34.091709, 45.937740>,  <37.296448, 34.328533, 45.899265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302330, 34.091709, 45.937740>,  <37.312134, 33.697002, 46.001862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302330, 34.091709, 45.937740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279752, 0.147179, 0.948724,
		0.959759, 0.068097, 0.272442,
		-0.024507, 0.986763, -0.160307,
		37.294979, 34.387737, 45.889648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764809, 33.898132, 46.382442>,  <37.312134, 33.697002, 46.001862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764809, 33.898132, 46.382442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554268, 34.235722, 46.341148>,  <37.427944, 34.438274, 46.316372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554268, 34.235722, 46.341148>,  <37.764809, 33.898132, 46.382442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554268, 34.235722, 46.341148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132702, 0.201468, 0.970464,
		0.839848, 0.497105, -0.218040,
		-0.526351, 0.843977, -0.103236,
		37.396362, 34.488914, 46.310177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188377, 34.418045, 46.635933>,  <37.764809, 33.898132, 46.382442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188377, 34.418045, 46.635933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813522, 34.556541, 46.653362>,  <37.588612, 34.639637, 46.663818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813522, 34.556541, 46.653362>,  <38.188377, 34.418045, 46.635933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813522, 34.556541, 46.653362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131715, 0.235320, 0.962952,
		0.323157, 0.908154, -0.266131,
		-0.937134, 0.346238, 0.043573,
		37.532383, 34.660412, 46.666435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258587, 35.110134, 46.819683>,  <38.188377, 34.418045, 46.635933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258587, 35.110134, 46.819683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899944, 34.967049, 46.924095>,  <37.684757, 34.881199, 46.986744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899944, 34.967049, 46.924095>,  <38.258587, 35.110134, 46.819683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899944, 34.967049, 46.924095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077353, 0.453884, 0.887697,
		-0.436017, 0.816107, -0.379285,
		-0.896608, -0.357713, 0.261029,
		37.630962, 34.859734, 47.002403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775074, 35.680023, 47.046284>,  <38.258587, 35.110134, 46.819683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775074, 35.680023, 47.046284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602306, 35.350063, 47.192146>,  <37.498646, 35.152088, 47.279663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602306, 35.350063, 47.192146>,  <37.775074, 35.680023, 47.046284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602306, 35.350063, 47.192146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064341, 0.431472, 0.899829,
		-0.899613, 0.365194, -0.239438,
		-0.431923, -0.824903, 0.364661,
		37.472729, 35.102592, 47.301544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304859, 35.886425, 47.497559>,  <37.775074, 35.680023, 47.046284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304859, 35.886425, 47.497559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325649, 35.511993, 47.636726>,  <37.338123, 35.287334, 47.720226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325649, 35.511993, 47.636726>,  <37.304859, 35.886425, 47.497559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325649, 35.511993, 47.636726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150959, 0.351751, 0.923841,
		-0.987173, 0.004505, 0.159593,
		0.051975, -0.936083, 0.347919,
		37.341240, 35.231167, 47.741100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873741, 35.907600, 48.024384>,  <37.304859, 35.886425, 47.497559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873741, 35.907600, 48.024384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136501, 35.612865, 48.088333>,  <37.294155, 35.436024, 48.126705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136501, 35.612865, 48.088333>,  <36.873741, 35.907600, 48.024384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136501, 35.612865, 48.088333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170383, 0.351627, 0.920504,
		-0.734477, -0.577436, 0.356527,
		0.656896, -0.736835, 0.159877,
		37.333569, 35.391815, 48.136295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660336, 35.621712, 48.682678>,  <36.873741, 35.907600, 48.024384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660336, 35.621712, 48.682678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037724, 35.497185, 48.637177>,  <37.264156, 35.422470, 48.609875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037724, 35.497185, 48.637177>,  <36.660336, 35.621712, 48.682678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037724, 35.497185, 48.637177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167412, 0.151392, 0.974194,
		-0.286063, -0.938169, 0.194952,
		0.943473, -0.311318, -0.113753,
		37.320766, 35.403790, 48.603050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796753, 35.114082, 49.131573>,  <36.660336, 35.621712, 48.682678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796753, 35.114082, 49.131573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157406, 35.269459, 49.055500>,  <37.373798, 35.362686, 49.009857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157406, 35.269459, 49.055500>,  <36.796753, 35.114082, 49.131573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157406, 35.269459, 49.055500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129389, 0.177339, 0.975607,
		0.412696, -0.904247, 0.109634,
		0.901632, 0.388444, -0.190186,
		37.427895, 35.385990, 48.998444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022007, 35.040478, 49.755077>,  <36.796753, 35.114082, 49.131573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022007, 35.040478, 49.755077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301720, 35.269520, 49.583904>,  <37.469547, 35.406944, 49.481201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301720, 35.269520, 49.583904>,  <37.022007, 35.040478, 49.755077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301720, 35.269520, 49.583904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185667, 0.432612, 0.882256,
		0.690312, -0.696400, 0.196204,
		0.699283, 0.572603, -0.427936,
		37.511505, 35.441299, 49.455524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694622, 34.959106, 50.147015>,  <37.022007, 35.040478, 49.755077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694622, 34.959106, 50.147015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729218, 35.306206, 49.951244>,  <37.749973, 35.514465, 49.833782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729218, 35.306206, 49.951244>,  <37.694622, 34.959106, 50.147015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729218, 35.306206, 49.951244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359438, 0.431000, 0.827673,
		0.929153, -0.247500, -0.274625,
		0.086485, 0.867746, -0.489426,
		37.755165, 35.566528, 49.804417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468685, 35.200459, 50.320293>,  <37.694622, 34.959106, 50.147015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468685, 35.200459, 50.320293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292465, 35.539513, 50.202011>,  <38.186733, 35.742943, 50.131042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292465, 35.539513, 50.202011>,  <38.468685, 35.200459, 50.320293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292465, 35.539513, 50.202011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560974, 0.517088, 0.646474,
		0.700876, 0.118919, -0.703300,
		-0.440546, 0.847631, -0.295704,
		38.160301, 35.793800, 50.113300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041527, 35.702824, 50.238239>,  <38.468685, 35.200459, 50.320293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041527, 35.702824, 50.238239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702953, 35.908947, 50.291912>,  <38.499809, 36.032623, 50.324116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702953, 35.908947, 50.291912>,  <39.041527, 35.702824, 50.238239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702953, 35.908947, 50.291912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460017, 0.580710, 0.671685,
		0.268207, 0.630262, -0.728585,
		-0.846433, 0.515312, 0.134181,
		38.449024, 36.063541, 50.332165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193001, 36.486713, 50.120209>,  <39.041527, 35.702824, 50.238239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193001, 36.486713, 50.120209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885235, 36.402401, 50.361397>,  <38.700577, 36.351814, 50.506111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885235, 36.402401, 50.361397>,  <39.193001, 36.486713, 50.120209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885235, 36.402401, 50.361397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328479, 0.679029, 0.656521,
		-0.547815, 0.703201, -0.453219,
		-0.769415, -0.210780, 0.602969,
		38.654411, 36.339169, 50.542286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099880, 37.114616, 50.534981>,  <39.193001, 36.486713, 50.120209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099880, 37.114616, 50.534981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902271, 36.834129, 50.740597>,  <38.783707, 36.665836, 50.863968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902271, 36.834129, 50.740597>,  <39.099880, 37.114616, 50.534981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902271, 36.834129, 50.740597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200479, 0.483424, 0.852121,
		-0.846019, 0.524024, -0.098245,
		-0.494025, -0.701214, 0.514041,
		38.754063, 36.623764, 50.894810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609871, 37.729191, 50.751286>,  <39.099880, 37.114616, 50.534981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609871, 37.729191, 50.751286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901951, 37.999451, 50.710667>,  <39.077198, 38.161606, 50.686295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901951, 37.999451, 50.710667>,  <38.609871, 37.729191, 50.751286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901951, 37.999451, 50.710667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133679, -0.004479, -0.991014,
		-0.670032, 0.737211, 0.087050,
		0.730197, 0.675648, -0.101550,
		39.121010, 38.202145, 50.680202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457031, 38.014725, 50.183136>,  <38.609871, 37.729191, 50.751286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457031, 38.014725, 50.183136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811344, 38.196617, 50.220242>,  <39.023933, 38.305752, 50.242504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811344, 38.196617, 50.220242>,  <38.457031, 38.014725, 50.183136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811344, 38.196617, 50.220242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045811, 0.113240, -0.992511,
		-0.461826, 0.883403, 0.079475,
		0.885787, 0.454727, 0.092767,
		39.077080, 38.333035, 50.248070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448357, 38.547264, 49.777557>,  <38.457031, 38.014725, 50.183136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448357, 38.547264, 49.777557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839455, 38.463951, 49.787636>,  <39.074112, 38.413963, 49.793682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839455, 38.463951, 49.787636>,  <38.448357, 38.547264, 49.777557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839455, 38.463951, 49.787636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018622, -0.205790, -0.978419,
		0.208973, 0.956174, -0.205089,
		0.977744, -0.208282, 0.025198,
		39.132778, 38.401466, 49.795197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764820, 38.933788, 49.282818>,  <38.448357, 38.547264, 49.777557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764820, 38.933788, 49.282818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999962, 38.617249, 49.349983>,  <39.141048, 38.427326, 49.390282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999962, 38.617249, 49.349983>,  <38.764820, 38.933788, 49.282818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999962, 38.617249, 49.349983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032387, -0.184372, -0.982323,
		0.808315, 0.582905, -0.082755,
		0.587858, -0.791346, 0.167910,
		39.176319, 38.379845, 49.400356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246914, 39.048397, 48.836296>,  <38.764820, 38.933788, 49.282818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246914, 39.048397, 48.836296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268478, 38.656929, 48.915588>,  <39.281418, 38.422047, 48.963165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268478, 38.656929, 48.915588>,  <39.246914, 39.048397, 48.836296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268478, 38.656929, 48.915588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148298, -0.188471, -0.970817,
		0.987472, 0.081733, 0.134974,
		0.053909, -0.978671, 0.198231,
		39.284653, 38.363327, 48.975060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870197, 38.821392, 48.579082>,  <39.246914, 39.048397, 48.836296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870197, 38.821392, 48.579082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641567, 38.494495, 48.608536>,  <39.504387, 38.298359, 48.626209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641567, 38.494495, 48.608536>,  <39.870197, 38.821392, 48.579082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641567, 38.494495, 48.608536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154105, -0.195057, -0.968609,
		0.805948, -0.542287, 0.237430,
		-0.571577, -0.817238, 0.073636,
		39.470093, 38.249325, 48.630627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252399, 38.414219, 48.262001>,  <39.870197, 38.821392, 48.579082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252399, 38.414219, 48.262001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902931, 38.219955, 48.273598>,  <39.693253, 38.103397, 48.280556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902931, 38.219955, 48.273598>,  <40.252399, 38.414219, 48.262001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902931, 38.219955, 48.273598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180864, -0.379527, -0.907330,
		0.451656, -0.787461, 0.419418,
		-0.873668, -0.485658, 0.028993,
		39.640831, 38.074257, 48.282295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342537, 37.690353, 48.028507>,  <40.252399, 38.414219, 48.262001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342537, 37.690353, 48.028507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961868, 37.786201, 47.951660>,  <39.733467, 37.843708, 47.905552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961868, 37.786201, 47.951660>,  <40.342537, 37.690353, 48.028507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961868, 37.786201, 47.951660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132164, -0.245154, -0.960433,
		-0.277240, -0.939405, 0.201636,
		-0.951667, 0.239622, -0.192122,
		39.676369, 37.858086, 47.894024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046040, 37.087738, 47.807663>,  <40.342537, 37.690353, 48.028507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046040, 37.087738, 47.807663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810272, 37.392204, 47.699425>,  <39.668812, 37.574883, 47.634483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810272, 37.392204, 47.699425>,  <40.046040, 37.087738, 47.807663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810272, 37.392204, 47.699425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050253, -0.299764, -0.952689,
		-0.806263, -0.575130, 0.138436,
		-0.589418, 0.761161, -0.270591,
		39.633446, 37.620552, 47.618248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867752, 36.811954, 47.288605>,  <40.046040, 37.087738, 47.807663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867752, 36.811954, 47.288605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730160, 37.180038, 47.213886>,  <39.647606, 37.400890, 47.169056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730160, 37.180038, 47.213886>,  <39.867752, 36.811954, 47.288605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730160, 37.180038, 47.213886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137065, -0.246011, -0.959527,
		-0.928920, -0.304453, 0.210751,
		-0.343978, 0.920210, -0.186794,
		39.626965, 37.456100, 47.157848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380829, 36.673779, 46.755360>,  <39.867752, 36.811954, 47.288605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380829, 36.673779, 46.755360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469360, 37.063789, 46.762638>,  <39.522480, 37.297798, 46.767006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469360, 37.063789, 46.762638>,  <39.380829, 36.673779, 46.755360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469360, 37.063789, 46.762638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115708, 0.044787, -0.992273,
		-0.968310, 0.217516, 0.122731,
		0.221332, 0.975029, 0.018200,
		39.535759, 37.356297, 46.768097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912170, 37.030724, 46.288380>,  <39.380829, 36.673779, 46.755360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912170, 37.030724, 46.288380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230698, 37.270943, 46.317303>,  <39.421814, 37.415073, 46.334656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230698, 37.270943, 46.317303>,  <38.912170, 37.030724, 46.288380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230698, 37.270943, 46.317303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084819, 0.007496, -0.996368,
		-0.598907, 0.799555, -0.044968,
		0.796314, 0.600546, 0.072307,
		39.469593, 37.451107, 46.338993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732368, 37.672077, 45.836487>,  <38.912170, 37.030724, 46.288380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732368, 37.672077, 45.836487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124928, 37.597565, 45.855095>,  <39.360462, 37.552856, 45.866261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124928, 37.597565, 45.855095>,  <38.732368, 37.672077, 45.836487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124928, 37.597565, 45.855095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052934, 0.029622, -0.998159,
		0.184560, 0.982050, 0.038932,
		0.981395, -0.186281, 0.046516,
		39.419346, 37.541679, 45.869049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042164, 38.275322, 45.489304>,  <38.732368, 37.672077, 45.836487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042164, 38.275322, 45.489304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314507, 37.982712, 45.503757>,  <39.477913, 37.807144, 45.512428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314507, 37.982712, 45.503757>,  <39.042164, 38.275322, 45.489304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314507, 37.982712, 45.503757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097622, 0.041748, -0.994348,
		0.725886, 0.680531, 0.099838,
		0.680852, -0.731529, 0.036131,
		39.518761, 37.763252, 45.514595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490292, 38.498192, 44.996735>,  <39.042164, 38.275322, 45.489304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490292, 38.498192, 44.996735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545769, 38.105534, 45.049095>,  <39.579056, 37.869938, 45.080509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545769, 38.105534, 45.049095>,  <39.490292, 38.498192, 44.996735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545769, 38.105534, 45.049095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033738, -0.136783, -0.990026,
		0.989761, 0.132894, -0.052090,
		0.138694, -0.981646, 0.130899,
		39.587376, 37.811039, 45.088364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038113, 38.300190, 44.696663>,  <39.490292, 38.498192, 44.996735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038113, 38.300190, 44.696663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830479, 37.959286, 44.722630>,  <39.705898, 37.754745, 44.738209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830479, 37.959286, 44.722630>,  <40.038113, 38.300190, 44.696663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830479, 37.959286, 44.722630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227878, -0.211191, -0.950510,
		0.823788, -0.478599, 0.303836,
		-0.519081, -0.852257, 0.064915,
		39.674755, 37.703609, 44.742104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304356, 38.008034, 44.130665>,  <40.038113, 38.300190, 44.696663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304356, 38.008034, 44.130665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980862, 37.782417, 44.197372>,  <39.786766, 37.647049, 44.237396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980862, 37.782417, 44.197372>,  <40.304356, 38.008034, 44.130665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980862, 37.782417, 44.197372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070560, -0.374526, -0.924528,
		0.583929, -0.735928, 0.342690,
		-0.808732, -0.564039, 0.166770,
		39.738243, 37.613205, 44.247402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565067, 37.338924, 43.877289>,  <40.304356, 38.008034, 44.130665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565067, 37.338924, 43.877289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165787, 37.325745, 43.897297>,  <39.926216, 37.317837, 43.909302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165787, 37.325745, 43.897297>,  <40.565067, 37.338924, 43.877289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165787, 37.325745, 43.897297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034767, -0.361337, -0.931787,
		0.048776, -0.931853, 0.359543,
		-0.998205, -0.032949, 0.050023,
		39.866325, 37.315861, 43.912304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381351, 36.694000, 43.574429>,  <40.565067, 37.338924, 43.877289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381351, 36.694000, 43.574429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062408, 36.933109, 43.541248>,  <39.871040, 37.076576, 43.521339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062408, 36.933109, 43.541248>,  <40.381351, 36.694000, 43.574429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062408, 36.933109, 43.541248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248088, -0.449971, -0.857892,
		-0.550155, -0.663468, 0.507090,
		-0.797360, 0.597776, -0.082955,
		39.823200, 37.112442, 43.516361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884296, 36.297905, 43.285400>,  <40.381351, 36.694000, 43.574429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884296, 36.297905, 43.285400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706161, 36.642090, 43.186378>,  <39.599281, 36.848598, 43.126965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706161, 36.642090, 43.186378>,  <39.884296, 36.297905, 43.285400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706161, 36.642090, 43.186378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206378, -0.367691, -0.906759,
		-0.871252, -0.352725, 0.341327,
		-0.445340, 0.860458, -0.247557,
		39.572559, 36.900227, 43.112110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284336, 36.099915, 42.903393>,  <39.884296, 36.297905, 43.285400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284336, 36.099915, 42.903393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387966, 36.474773, 42.809902>,  <39.450146, 36.699688, 42.753807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387966, 36.474773, 42.809902>,  <39.284336, 36.099915, 42.903393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387966, 36.474773, 42.809902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026286, -0.235056, -0.971626,
		-0.965500, 0.257867, -0.036263,
		0.259074, 0.937152, -0.233725,
		39.465687, 36.755920, 42.739784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769939, 36.281681, 42.259727>,  <39.284336, 36.099915, 42.903393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769939, 36.281681, 42.259727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054932, 36.560005, 42.295990>,  <39.225925, 36.727001, 42.317749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054932, 36.560005, 42.295990>,  <38.769939, 36.281681, 42.259727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054932, 36.560005, 42.295990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202533, -0.080225, -0.975984,
		-0.671831, 0.713726, -0.198084,
		0.712477, 0.695815, 0.090655,
		39.268673, 36.768749, 42.323185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531803, 36.891666, 41.987804>,  <38.769939, 36.281681, 42.259727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531803, 36.891666, 41.987804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928890, 36.852406, 41.959854>,  <39.167141, 36.828850, 41.943085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928890, 36.852406, 41.959854>,  <38.531803, 36.891666, 41.987804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928890, 36.852406, 41.959854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070689, -0.004819, -0.997487,
		0.097573, 0.995159, -0.011722,
		0.992715, -0.098157, -0.069877,
		39.226704, 36.822960, 41.938892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693584, 37.191833, 41.342197>,  <38.531803, 36.891666, 41.987804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693584, 37.191833, 41.342197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038723, 37.012131, 41.434856>,  <39.245808, 36.904308, 41.490452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038723, 37.012131, 41.434856>,  <38.693584, 37.191833, 41.342197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038723, 37.012131, 41.434856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173908, -0.166445, -0.970594,
		0.474600, 0.877762, -0.065488,
		0.862851, -0.449255, 0.231645,
		39.297577, 36.877354, 41.504349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158539, 37.516724, 40.969921>,  <38.693584, 37.191833, 41.342197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158539, 37.516724, 40.969921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327290, 37.167809, 41.068817>,  <39.428539, 36.958458, 41.128155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327290, 37.167809, 41.068817>,  <39.158539, 37.516724, 40.969921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327290, 37.167809, 41.068817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342633, -0.099079, -0.934230,
		0.839417, 0.478844, 0.257077,
		0.421879, -0.872291, 0.247237,
		39.453854, 36.906120, 41.142986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926018, 37.457386, 40.677071>,  <39.158539, 37.516724, 40.969921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926018, 37.457386, 40.677071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782238, 37.091587, 40.751362>,  <39.695969, 36.872108, 40.795937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782238, 37.091587, 40.751362>,  <39.926018, 37.457386, 40.677071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782238, 37.091587, 40.751362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335069, -0.312243, -0.888951,
		0.870932, -0.257303, 0.418655,
		-0.359452, -0.914494, 0.185728,
		39.674404, 36.817238, 40.807079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464512, 36.995060, 40.577187>,  <39.926018, 37.457386, 40.677071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464512, 36.995060, 40.577187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133377, 36.773621, 40.540913>,  <39.934696, 36.640759, 40.519150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133377, 36.773621, 40.540913>,  <40.464512, 36.995060, 40.577187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133377, 36.773621, 40.540913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238245, -0.200606, -0.950261,
		0.507870, -0.808262, 0.297960,
		-0.827833, -0.553597, -0.090683,
		39.885029, 36.607540, 40.513706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648293, 36.422714, 40.151390>,  <40.464512, 36.995060, 40.577187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648293, 36.422714, 40.151390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250473, 36.418926, 40.109856>,  <40.011780, 36.416653, 40.084934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250473, 36.418926, 40.109856>,  <40.648293, 36.422714, 40.151390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250473, 36.418926, 40.109856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102272, -0.282480, -0.953806,
		-0.020300, -0.959227, 0.281909,
		-0.994549, -0.009469, -0.103836,
		39.952106, 36.416084, 40.078705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552788, 35.900558, 39.753632>,  <40.648293, 36.422714, 40.151390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552788, 35.900558, 39.753632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202881, 36.093399, 39.734165>,  <39.992939, 36.209103, 39.722485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202881, 36.093399, 39.734165>,  <40.552788, 35.900558, 39.753632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202881, 36.093399, 39.734165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085882, -0.253111, -0.963618,
		-0.476876, -0.838759, 0.262816,
		-0.874765, 0.482098, -0.048668,
		39.940453, 36.238029, 39.719566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995029, 35.384178, 39.500942>,  <40.552788, 35.900558, 39.753632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995029, 35.384178, 39.500942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887726, 35.756397, 39.401253>,  <39.823345, 35.979729, 39.341438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887726, 35.756397, 39.401253>,  <39.995029, 35.384178, 39.500942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887726, 35.756397, 39.401253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148209, -0.295492, -0.943779,
		-0.951878, -0.216237, 0.217184,
		-0.268256, 0.930551, -0.249225,
		39.807247, 36.035564, 39.326485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426785, 35.295467, 39.078346>,  <39.995029, 35.384178, 39.500942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426785, 35.295467, 39.078346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507618, 35.672119, 38.970646>,  <39.556118, 35.898109, 38.906025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507618, 35.672119, 38.970646>,  <39.426785, 35.295467, 39.078346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507618, 35.672119, 38.970646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320716, -0.196141, -0.926645,
		-0.925367, 0.273613, 0.262358,
		0.202083, 0.941629, -0.269254,
		39.568241, 35.954609, 38.889870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924400, 35.441875, 38.458809>,  <39.426785, 35.295467, 39.078346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924400, 35.441875, 38.458809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206070, 35.725437, 38.442802>,  <39.375072, 35.895573, 38.433201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206070, 35.725437, 38.442802>,  <38.924400, 35.441875, 38.458809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206070, 35.725437, 38.442802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190661, 0.134506, -0.972397,
		-0.683950, 0.692365, 0.229876,
		0.704173, 0.708900, -0.040012,
		39.417320, 35.938107, 38.430798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509163, 35.963848, 38.284199>,  <38.924400, 35.441875, 38.458809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509163, 35.963848, 38.284199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879139, 36.088131, 38.196609>,  <39.101124, 36.162701, 38.144058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879139, 36.088131, 38.196609>,  <38.509163, 35.963848, 38.284199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879139, 36.088131, 38.196609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280829, 0.170341, -0.944520,
		-0.256173, 0.935116, 0.244812,
		0.924938, 0.310711, -0.218971,
		39.156620, 36.181343, 38.130917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436932, 36.647350, 37.923477>,  <38.509163, 35.963848, 38.284199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436932, 36.647350, 37.923477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789001, 36.510067, 37.792328>,  <39.000244, 36.427696, 37.713638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789001, 36.510067, 37.792328>,  <38.436932, 36.647350, 37.923477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789001, 36.510067, 37.792328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262210, 0.224220, -0.938601,
		0.395652, 0.912104, 0.107360,
		0.880173, -0.343209, -0.327876,
		39.053055, 36.407104, 37.693966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605804, 37.057594, 37.368999>,  <38.436932, 36.647350, 37.923477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605804, 37.057594, 37.368999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860069, 36.754108, 37.312019>,  <39.012627, 36.572018, 37.277832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860069, 36.754108, 37.312019>,  <38.605804, 37.057594, 37.368999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860069, 36.754108, 37.312019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011675, 0.175055, -0.984490,
		0.771882, 0.627463, 0.102417,
		0.635659, -0.758714, -0.142447,
		39.050766, 36.526493, 37.269283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086090, 37.330368, 36.876041>,  <38.605804, 37.057594, 37.368999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086090, 37.330368, 36.876041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125053, 36.933228, 36.848423>,  <39.148430, 36.694942, 36.831852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125053, 36.933228, 36.848423>,  <39.086090, 37.330368, 36.876041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125053, 36.933228, 36.848423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039325, 0.073157, -0.996545,
		0.994467, 0.094358, 0.046170,
		0.097410, -0.992847, -0.069042,
		39.154278, 36.635372, 36.827709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626690, 37.206150, 36.473682>,  <39.086090, 37.330368, 36.876041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626690, 37.206150, 36.473682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441818, 36.852581, 36.445183>,  <39.330894, 36.640442, 36.428082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441818, 36.852581, 36.445183>,  <39.626690, 37.206150, 36.473682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441818, 36.852581, 36.445183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049866, 0.054314, -0.997278,
		0.885385, -0.464472, 0.018975,
		-0.462177, -0.883921, -0.071251,
		39.303165, 36.587406, 36.423809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983276, 36.789570, 36.020355>,  <39.626690, 37.206150, 36.473682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983276, 36.789570, 36.020355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642052, 36.580875, 36.023811>,  <39.437317, 36.455658, 36.025887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642052, 36.580875, 36.023811>,  <39.983276, 36.789570, 36.020355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642052, 36.580875, 36.023811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041565, -0.084446, -0.995561,
		0.520150, -0.848917, 0.093724,
		-0.853063, -0.521737, 0.008639,
		39.386131, 36.424355, 36.026402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117989, 36.345894, 35.583454>,  <39.983276, 36.789570, 36.020355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117989, 36.345894, 35.583454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719864, 36.356411, 35.620686>,  <39.480988, 36.362720, 35.643024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719864, 36.356411, 35.620686>,  <40.117989, 36.345894, 35.583454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719864, 36.356411, 35.620686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090160, 0.096272, -0.991263,
		-0.035027, -0.995008, -0.093450,
		-0.995311, 0.026295, 0.093082,
		39.421272, 36.364300, 35.648609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885845, 35.834381, 35.187202>,  <40.117989, 36.345894, 35.583454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885845, 35.834381, 35.187202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596077, 36.108795, 35.214233>,  <39.422215, 36.273445, 35.230453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596077, 36.108795, 35.214233>,  <39.885845, 35.834381, 35.187202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596077, 36.108795, 35.214233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088415, 0.004760, -0.996072,
		-0.683663, -0.727552, 0.057208,
		-0.724422, 0.686036, 0.067580,
		39.378750, 36.314606, 35.234509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069733, 35.373600, 34.639778>,  <39.885845, 35.834381, 35.187202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069733, 35.373600, 34.639778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111168, 35.526707, 34.272572>,  <40.136028, 35.618572, 34.052246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111168, 35.526707, 34.272572>,  <40.069733, 35.373600, 34.639778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111168, 35.526707, 34.272572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800149, -0.580307, -0.151672,
		-0.590789, -0.718842, -0.366380,
		0.103585, 0.382765, -0.918020,
		40.142242, 35.641537, 33.997166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238171, 34.832096, 34.258045>,  <40.069733, 35.373600, 34.639778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238171, 34.832096, 34.258045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379940, 35.187469, 34.141380>,  <40.465000, 35.400692, 34.071381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379940, 35.187469, 34.141380>,  <40.238171, 34.832096, 34.258045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379940, 35.187469, 34.141380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878382, -0.423286, -0.221977,
		-0.320670, -0.177521, -0.930407,
		0.354423, 0.888434, -0.291666,
		40.486267, 35.453999, 34.053879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689228, 34.794235, 33.621712>,  <40.238171, 34.832096, 34.258045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689228, 34.794235, 33.621712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818722, 35.134033, 33.788353>,  <40.896420, 35.337910, 33.888340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818722, 35.134033, 33.788353>,  <40.689228, 34.794235, 33.621712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818722, 35.134033, 33.788353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896906, -0.135339, -0.421003,
		-0.301255, 0.509950, -0.805727,
		0.323737, 0.849490, 0.416606,
		40.915844, 35.388882, 33.913334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998852, 35.317478, 33.140003>,  <40.689228, 34.794235, 33.621712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998852, 35.317478, 33.140003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174496, 35.343369, 33.498444>,  <41.279884, 35.358902, 33.713509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174496, 35.343369, 33.498444>,  <40.998852, 35.317478, 33.140003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174496, 35.343369, 33.498444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808629, -0.463140, -0.362797,
		0.391535, 0.883919, -0.255711,
		0.439113, 0.064728, 0.896097,
		41.306229, 35.362785, 33.767273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603497, 35.583164, 33.047382>,  <40.998852, 35.317478, 33.140003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603497, 35.583164, 33.047382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664612, 35.400242, 33.397816>,  <41.701283, 35.290489, 33.608074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664612, 35.400242, 33.397816>,  <41.603497, 35.583164, 33.047382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664612, 35.400242, 33.397816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937182, -0.214260, -0.275286,
		0.313601, 0.863111, 0.395845,
		0.152789, -0.457309, 0.876084,
		41.710449, 35.263050, 33.660641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346775, 35.667076, 33.196445>,  <41.603497, 35.583164, 33.047382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346775, 35.667076, 33.196445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223328, 35.402054, 33.469437>,  <42.149261, 35.243038, 33.633232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223328, 35.402054, 33.469437>,  <42.346775, 35.667076, 33.196445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223328, 35.402054, 33.469437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872048, -0.483615, -0.075159,
		0.379853, 0.571956, 0.727034,
		-0.308617, -0.662558, 0.682475,
		42.130741, 35.203285, 33.674179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566059, 35.306046, 32.560532>,  <42.346775, 35.667076, 33.196445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566059, 35.306046, 32.560532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805920, 34.991711, 32.500019>,  <42.949837, 34.803112, 32.463711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805920, 34.991711, 32.500019>,  <42.566059, 35.306046, 32.560532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805920, 34.991711, 32.500019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203275, -0.332406, 0.920970,
		-0.774015, -0.521509, -0.359067,
		0.599650, -0.785833, -0.151278,
		42.985813, 34.755962, 32.454636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310486, 34.719479, 32.806431>,  <42.566059, 35.306046, 32.560532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310486, 34.719479, 32.806431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695885, 34.612926, 32.817139>,  <42.927124, 34.548996, 32.823563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695885, 34.612926, 32.817139>,  <42.310486, 34.719479, 32.806431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695885, 34.612926, 32.817139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168925, -0.527335, 0.832696,
		-0.207698, -0.806821, -0.553084,
		0.963497, -0.266379, 0.026766,
		42.984932, 34.533012, 32.825169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391113, 33.950504, 32.893028>,  <42.310486, 34.719479, 32.806431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391113, 33.950504, 32.893028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724369, 34.125465, 33.028419>,  <42.924320, 34.230442, 33.109653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724369, 34.125465, 33.028419>,  <42.391113, 33.950504, 32.893028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724369, 34.125465, 33.028419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111624, -0.466422, 0.877491,
		0.541687, -0.768852, -0.339768,
		0.833136, 0.437399, 0.338476,
		42.974308, 34.256683, 33.129963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721680, 33.425133, 33.301624>,  <42.391113, 33.950504, 32.893028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721680, 33.425133, 33.301624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938618, 33.743950, 33.407898>,  <43.068779, 33.935242, 33.471664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938618, 33.743950, 33.407898>,  <42.721680, 33.425133, 33.301624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938618, 33.743950, 33.407898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066635, -0.356047, 0.932089,
		0.837511, -0.487807, -0.246210,
		0.542342, 0.797041, 0.265688,
		43.101322, 33.983063, 33.487606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299511, 33.236416, 33.643520>,  <42.721680, 33.425133, 33.301624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299511, 33.236416, 33.643520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216843, 33.606857, 33.769772>,  <43.167244, 33.829121, 33.845520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216843, 33.606857, 33.769772>,  <43.299511, 33.236416, 33.643520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216843, 33.606857, 33.769772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189067, -0.278709, 0.941581,
		0.959970, 0.254269, -0.117496,
		-0.206668, 0.926104, 0.315626,
		43.154842, 33.884689, 33.864460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710659, 33.297573, 34.155918>,  <43.299511, 33.236416, 33.643520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710659, 33.297573, 34.155918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458454, 33.601444, 34.219593>,  <43.307133, 33.783768, 34.257797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458454, 33.601444, 34.219593>,  <43.710659, 33.297573, 34.155918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458454, 33.601444, 34.219593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063764, -0.153702, 0.986058,
		0.773558, 0.631870, 0.048471,
		-0.630510, 0.759682, 0.159188,
		43.269302, 33.829350, 34.267349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031807, 33.698544, 34.771671>,  <43.710659, 33.297573, 34.155918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031807, 33.698544, 34.771671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645992, 33.801792, 34.749603>,  <43.414505, 33.863739, 34.736362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645992, 33.801792, 34.749603>,  <44.031807, 33.698544, 34.771671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645992, 33.801792, 34.749603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082355, -0.095713, 0.991996,
		0.250770, 0.961361, 0.113576,
		-0.964537, 0.258117, -0.055171,
		43.356632, 33.879227, 34.733051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963818, 34.244179, 35.315887>,  <44.031807, 33.698544, 34.771671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963818, 34.244179, 35.315887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595818, 34.118660, 35.221977>,  <43.375015, 34.043346, 35.165630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595818, 34.118660, 35.221977>,  <43.963818, 34.244179, 35.315887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595818, 34.118660, 35.221977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226533, -0.063042, 0.971961,
		-0.319804, 0.947393, -0.013087,
		-0.920005, -0.313801, -0.234777,
		43.319817, 34.024521, 35.151543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559399, 34.484356, 35.868004>,  <43.963818, 34.244179, 35.315887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559399, 34.484356, 35.868004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332653, 34.190285, 35.719315>,  <43.196606, 34.013840, 35.630100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332653, 34.190285, 35.719315>,  <43.559399, 34.484356, 35.868004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332653, 34.190285, 35.719315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174270, -0.333995, 0.926324,
		-0.805168, 0.589880, 0.061210,
		-0.566864, -0.735180, -0.371721,
		43.162594, 33.969730, 35.607800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900639, 34.549095, 36.191681>,  <43.559399, 34.484356, 35.868004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900639, 34.549095, 36.191681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951504, 34.171680, 36.069328>,  <42.982021, 33.945232, 35.995918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951504, 34.171680, 36.069328>,  <42.900639, 34.549095, 36.191681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951504, 34.171680, 36.069328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222745, -0.327672, 0.918159,
		-0.966548, -0.048623, -0.251837,
		0.127164, -0.943540, -0.305880,
		42.989655, 33.888618, 35.977566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430439, 34.170387, 36.553387>,  <42.900639, 34.549095, 36.191681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430439, 34.170387, 36.553387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681690, 33.886574, 36.425625>,  <42.832439, 33.716286, 36.348969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681690, 33.886574, 36.425625>,  <42.430439, 34.170387, 36.553387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681690, 33.886574, 36.425625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162174, -0.520847, 0.838103,
		-0.761022, -0.474637, -0.442226,
		0.628128, -0.709533, -0.319403,
		42.870129, 33.673714, 36.329803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150703, 33.434082, 36.725178>,  <42.430439, 34.170387, 36.553387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150703, 33.434082, 36.725178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549179, 33.410706, 36.699280>,  <42.788265, 33.396679, 36.683739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549179, 33.410706, 36.699280>,  <42.150703, 33.434082, 36.725178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549179, 33.410706, 36.699280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040958, -0.341961, 0.938821,
		-0.077007, -0.937895, -0.338264,
		0.996189, -0.058441, -0.064747,
		42.848034, 33.393173, 36.679855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365276, 32.724453, 36.953629>,  <42.150703, 33.434082, 36.725178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365276, 32.724453, 36.953629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688766, 32.959229, 36.968925>,  <42.882862, 33.100094, 36.978104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688766, 32.959229, 36.968925>,  <42.365276, 32.724453, 36.953629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688766, 32.959229, 36.968925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203062, -0.339621, 0.918381,
		0.552024, -0.734952, -0.393846,
		0.808724, 0.586943, 0.038238,
		42.931385, 33.135311, 36.980396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834145, 32.295795, 37.302494>,  <42.365276, 32.724453, 36.953629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834145, 32.295795, 37.302494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957909, 32.673080, 37.350857>,  <43.032166, 32.899452, 37.379875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957909, 32.673080, 37.350857>,  <42.834145, 32.295795, 37.302494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957909, 32.673080, 37.350857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313335, -0.221168, 0.923529,
		0.897825, -0.247861, -0.363972,
		0.309405, 0.943212, 0.120906,
		43.050732, 32.956043, 37.387127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590267, 32.269192, 37.510941>,  <42.834145, 32.295795, 37.302494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590267, 32.269192, 37.510941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478096, 32.639050, 37.614010>,  <43.410793, 32.860966, 37.675850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478096, 32.639050, 37.614010>,  <43.590267, 32.269192, 37.510941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478096, 32.639050, 37.614010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349830, -0.151529, 0.924477,
		0.893857, 0.349389, -0.280975,
		-0.280426, 0.924644, 0.257672,
		43.393967, 32.916443, 37.691311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194370, 32.636417, 37.815567>,  <43.590267, 32.269192, 37.510941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194370, 32.636417, 37.815567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863815, 32.823780, 37.940582>,  <43.665482, 32.936195, 38.015591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863815, 32.823780, 37.940582>,  <44.194370, 32.636417, 37.815567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863815, 32.823780, 37.940582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329590, -0.047679, 0.942919,
		0.456568, 0.882228, -0.114980,
		-0.826387, 0.468403, 0.312542,
		43.615898, 32.964302, 38.034344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518456, 33.294037, 38.101601>,  <44.194370, 32.636417, 37.815567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518456, 33.294037, 38.101601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157021, 33.247402, 38.266499>,  <43.940159, 33.219421, 38.365437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157021, 33.247402, 38.266499>,  <44.518456, 33.294037, 38.101601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157021, 33.247402, 38.266499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418531, -0.034770, 0.907537,
		-0.091471, 0.992572, 0.080211,
		-0.903584, -0.116584, 0.412242,
		43.885944, 33.212425, 38.390171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507816, 33.726555, 38.678352>,  <44.518456, 33.294037, 38.101601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507816, 33.726555, 38.678352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245312, 33.428154, 38.723625>,  <44.087811, 33.249115, 38.750790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245312, 33.428154, 38.723625>,  <44.507816, 33.726555, 38.678352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245312, 33.428154, 38.723625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325204, -0.144290, 0.934571,
		-0.680858, 0.650127, 0.337293,
		-0.656258, -0.745999, 0.113183,
		44.048435, 33.204353, 38.757580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240925, 33.765839, 39.366516>,  <44.507816, 33.726555, 38.678352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240925, 33.765839, 39.366516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161766, 33.387886, 39.262184>,  <44.114269, 33.161114, 39.199585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161766, 33.387886, 39.262184>,  <44.240925, 33.765839, 39.366516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161766, 33.387886, 39.262184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361922, -0.317722, 0.876393,
		-0.910960, 0.079037, 0.404851,
		-0.197898, -0.944884, -0.260826,
		44.102398, 33.104420, 39.183937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907787, 33.374050, 39.975040>,  <44.240925, 33.765839, 39.366516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907787, 33.374050, 39.975040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022247, 33.063560, 39.750328>,  <44.090923, 32.877266, 39.615501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022247, 33.063560, 39.750328>,  <43.907787, 33.374050, 39.975040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022247, 33.063560, 39.750328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481150, -0.390617, 0.784801,
		-0.828620, -0.494875, 0.261702,
		0.286153, -0.776220, -0.561782,
		44.108093, 32.830696, 39.581795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918713, 32.914280, 40.447987>,  <43.907787, 33.374050, 39.975040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918713, 32.914280, 40.447987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097954, 32.730309, 40.141350>,  <44.205498, 32.619926, 39.957367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097954, 32.730309, 40.141350>,  <43.918713, 32.914280, 40.447987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097954, 32.730309, 40.141350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670008, -0.394927, 0.628587,
		-0.591854, -0.795298, 0.131187,
		0.448104, -0.459928, -0.766595,
		44.232384, 32.592331, 39.911369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961868, 32.122906, 40.561710>,  <43.918713, 32.914280, 40.447987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961868, 32.122906, 40.561710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248516, 32.274044, 40.327213>,  <44.420506, 32.364727, 40.186516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248516, 32.274044, 40.327213>,  <43.961868, 32.122906, 40.561710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248516, 32.274044, 40.327213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696550, -0.344797, 0.629232,
		0.035616, -0.859272, -0.510278,
		0.716623, 0.377845, -0.586246,
		44.463505, 32.387398, 40.151340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653652, 32.072636, 41.271408>,  <43.961868, 32.122906, 40.561710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653652, 32.072636, 41.271408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466549, 31.737612, 41.384327>,  <43.354286, 31.536596, 41.452080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466549, 31.737612, 41.384327>,  <43.653652, 32.072636, 41.271408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466549, 31.737612, 41.384327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779261, -0.541518, -0.315452,
		0.417081, 0.072430, 0.905978,
		-0.467756, -0.837563, 0.282299,
		43.326221, 31.486343, 41.469017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073616, 31.737446, 41.718060>,  <43.653652, 32.072636, 41.271408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073616, 31.737446, 41.718060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861744, 31.434462, 41.565380>,  <43.734619, 31.252670, 41.473774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861744, 31.434462, 41.565380>,  <44.073616, 31.737446, 41.718060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861744, 31.434462, 41.565380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820583, -0.571509, -0.004584,
		-0.214669, -0.315639, 0.924277,
		-0.529680, -0.757462, -0.381694,
		43.702839, 31.207224, 41.450871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073208, 31.056427, 42.141201>,  <44.073616, 31.737446, 41.718060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073208, 31.056427, 42.141201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035603, 31.000690, 41.746891>,  <44.013039, 30.967249, 41.510307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035603, 31.000690, 41.746891>,  <44.073208, 31.056427, 42.141201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035603, 31.000690, 41.746891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805700, -0.592283, 0.006879,
		-0.584814, -0.793590, 0.167950,
		-0.094015, -0.139341, -0.985771,
		44.007397, 30.958889, 41.451160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050739, 30.360559, 42.065880>,  <44.073208, 31.056427, 42.141201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050739, 30.360559, 42.065880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224957, 30.574865, 41.776535>,  <44.329487, 30.703449, 41.602928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224957, 30.574865, 41.776535>,  <44.050739, 30.360559, 42.065880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224957, 30.574865, 41.776535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840597, -0.529547, 0.113918,
		-0.322022, -0.657674, -0.681005,
		0.435544, 0.535766, -0.723364,
		44.355621, 30.735596, 41.559525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373543, 29.915129, 41.506092>,  <44.050739, 30.360559, 42.065880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373543, 29.915129, 41.506092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580544, 30.254148, 41.553169>,  <44.704742, 30.457560, 41.581413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580544, 30.254148, 41.553169>,  <44.373543, 29.915129, 41.506092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580544, 30.254148, 41.553169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810995, -0.529681, 0.248444,
		0.272907, -0.033124, -0.961470,
		0.517502, 0.847550, 0.117690,
		44.735794, 30.508413, 41.588478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999435, 29.963596, 41.129238>,  <44.373543, 29.915129, 41.506092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999435, 29.963596, 41.129238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053829, 30.165869, 41.470013>,  <45.086464, 30.287231, 41.674477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053829, 30.165869, 41.470013>,  <44.999435, 29.963596, 41.129238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053829, 30.165869, 41.470013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862171, -0.484003, 0.149672,
		0.488026, 0.714162, -0.501800,
		0.135982, 0.505681, 0.851936,
		45.094624, 30.317574, 41.725594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630016, 30.437490, 41.166859>,  <44.999435, 29.963596, 41.129238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630016, 30.437490, 41.166859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518398, 30.274330, 41.514595>,  <45.451427, 30.176434, 41.723236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518398, 30.274330, 41.514595>,  <45.630016, 30.437490, 41.166859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518398, 30.274330, 41.514595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878271, -0.474472, 0.059290,
		0.388292, 0.780059, 0.490649,
		-0.279049, -0.407901, 0.869338,
		45.434685, 30.151960, 41.775398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201126, 30.550560, 41.657131>,  <45.630016, 30.437490, 41.166859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201126, 30.550560, 41.657131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.996578, 30.218227, 41.744972>,  <45.873852, 30.018827, 41.797676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.996578, 30.218227, 41.744972>,  <46.201126, 30.550560, 41.657131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996578, 30.218227, 41.744972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835591, -0.540401, -0.098766,
		0.200731, 0.132993, 0.970577,
		-0.511365, -0.830831, 0.219603,
		45.843170, 29.968979, 41.810852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495735, 30.206907, 41.066383>,  <46.201126, 30.550560, 41.657131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495735, 30.206907, 41.066383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510326, 29.930716, 40.777412>,  <46.519081, 29.765001, 40.604031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510326, 29.930716, 40.777412>,  <46.495735, 30.206907, 41.066383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510326, 29.930716, 40.777412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035964, 0.723351, -0.689543,
		0.998687, -0.000828, 0.051220,
		0.036479, -0.690480, -0.722431,
		46.521271, 29.723572, 40.560684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861916, 30.543789, 40.466080>,  <46.495735, 30.206907, 41.066383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861916, 30.543789, 40.466080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658585, 30.237625, 40.308220>,  <46.536583, 30.053926, 40.213505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658585, 30.237625, 40.308220>,  <46.861916, 30.543789, 40.466080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.658585, 30.237625, 40.308220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123649, 0.518397, -0.846153,
		0.852238, -0.381329, -0.358160,
		-0.508332, -0.765410, -0.394647,
		46.506084, 30.008001, 40.189827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.160793, 30.192595, 39.835514>,  <46.861916, 30.543789, 40.466080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.160793, 30.192595, 39.835514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.770584, 30.107956, 39.811562>,  <46.536461, 30.057173, 39.797192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.770584, 30.107956, 39.811562>,  <47.160793, 30.192595, 39.835514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.770584, 30.107956, 39.811562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033379, 0.411607, -0.910750,
		0.217359, -0.886457, -0.408594,
		-0.975521, -0.211598, -0.059877,
		46.477928, 30.044476, 39.793598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.086536, 29.970560, 39.171219>,  <47.160793, 30.192595, 39.835514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.086536, 29.970560, 39.171219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701630, 30.026182, 39.264774>,  <46.470684, 30.059555, 39.320908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701630, 30.026182, 39.264774>,  <47.086536, 29.970560, 39.171219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701630, 30.026182, 39.264774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196978, 0.237017, -0.951327,
		-0.187721, -0.961502, -0.200684,
		-0.962269, 0.139053, 0.233888,
		46.412949, 30.067898, 39.334942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.738083, 29.701311, 38.588795>,  <47.086536, 29.970560, 39.171219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.738083, 29.701311, 38.588795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503849, 29.964706, 38.777889>,  <46.363308, 30.122744, 38.891346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503849, 29.964706, 38.777889>,  <46.738083, 29.701311, 38.588795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503849, 29.964706, 38.777889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232064, 0.422598, -0.876103,
		-0.776682, -0.622741, -0.094657,
		-0.585587, 0.658487, 0.472740,
		46.328175, 30.162252, 38.919712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.210434, 29.822775, 38.065105>,  <46.738083, 29.701311, 38.588795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.210434, 29.822775, 38.065105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203133, 30.128750, 38.322643>,  <46.198750, 30.312336, 38.477165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203133, 30.128750, 38.322643>,  <46.210434, 29.822775, 38.065105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203133, 30.128750, 38.322643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084494, 0.640468, -0.763323,
		-0.996257, -0.068337, 0.052940,
		-0.018257, 0.764939, 0.643845,
		46.197655, 30.358231, 38.515797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695023, 30.165089, 37.905506>,  <46.210434, 29.822775, 38.065105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695023, 30.165089, 37.905506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907261, 30.419924, 38.129143>,  <46.034603, 30.572824, 38.263325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907261, 30.419924, 38.129143>,  <45.695023, 30.165089, 37.905506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907261, 30.419924, 38.129143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087216, 0.697134, -0.711616,
		-0.843127, 0.328818, 0.425460,
		0.530595, 0.637090, 0.559094,
		46.066441, 30.611052, 38.296871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425621, 30.839357, 37.805313>,  <45.695023, 30.165089, 37.905506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425621, 30.839357, 37.805313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775414, 30.937111, 37.972912>,  <45.985291, 30.995764, 38.073471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775414, 30.937111, 37.972912>,  <45.425621, 30.839357, 37.805313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775414, 30.937111, 37.972912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130461, 0.713477, -0.688426,
		-0.467186, 0.656679, 0.592039,
		0.874481, 0.244385, 0.418997,
		46.037758, 31.010426, 38.098610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415852, 31.567875, 38.127186>,  <45.425621, 30.839357, 37.805313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415852, 31.567875, 38.127186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780727, 31.465149, 37.999462>,  <45.999653, 31.403513, 37.922829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780727, 31.465149, 37.999462>,  <45.415852, 31.567875, 38.127186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.780727, 31.465149, 37.999462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006273, 0.787902, -0.615769,
		0.409722, 0.559694, 0.720326,
		0.912189, -0.256813, -0.319310,
		46.054382, 31.388105, 37.903667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626934, 32.175388, 37.848625>,  <45.415852, 31.567875, 38.127186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626934, 32.175388, 37.848625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927776, 31.942595, 37.724930>,  <46.108284, 31.802919, 37.650711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927776, 31.942595, 37.724930>,  <45.626934, 32.175388, 37.848625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927776, 31.942595, 37.724930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217080, 0.661811, -0.717553,
		0.622260, 0.472550, 0.624091,
		0.752110, -0.581982, -0.309237,
		46.153408, 31.768000, 37.632160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208225, 32.532997, 37.843182>,  <45.626934, 32.175388, 37.848625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208225, 32.532997, 37.843182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.285480, 32.230282, 37.593391>,  <46.331833, 32.048653, 37.443520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.285480, 32.230282, 37.593391>,  <46.208225, 32.532997, 37.843182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.285480, 32.230282, 37.593391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082589, 0.646736, -0.758230,
		0.977689, 0.094871, 0.187413,
		0.193140, -0.756791, -0.624471,
		46.343422, 32.003246, 37.406052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.832508, 32.797855, 37.480270>,  <46.208225, 32.532997, 37.843182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.832508, 32.797855, 37.480270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643036, 32.516766, 37.267933>,  <46.529350, 32.348110, 37.140530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643036, 32.516766, 37.267933>,  <46.832508, 32.797855, 37.480270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643036, 32.516766, 37.267933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084946, 0.563493, -0.821742,
		0.876589, -0.434338, -0.207223,
		-0.473683, -0.702728, -0.530847,
		46.500931, 32.305946, 37.108681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203064, 32.722435, 36.801231>,  <46.832508, 32.797855, 37.480270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203064, 32.722435, 36.801231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852135, 32.536312, 36.754246>,  <46.641579, 32.424637, 36.726055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852135, 32.536312, 36.754246>,  <47.203064, 32.722435, 36.801231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.852135, 32.536312, 36.754246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122860, 0.454369, -0.882300,
		0.463926, -0.759622, -0.455793,
		-0.877313, -0.465321, -0.117466,
		46.588940, 32.396721, 36.719009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242161, 32.481178, 36.064186>,  <47.203064, 32.722435, 36.801231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242161, 32.481178, 36.064186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864330, 32.511612, 36.191929>,  <46.637630, 32.529873, 36.268574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864330, 32.511612, 36.191929>,  <47.242161, 32.481178, 36.064186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.864330, 32.511612, 36.191929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227697, 0.548936, -0.804253,
		-0.236494, -0.832394, -0.501189,
		-0.944576, 0.076082, 0.319354,
		46.580956, 32.534435, 36.287735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.901752, 32.533451, 35.477211>,  <47.242161, 32.481178, 36.064186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.901752, 32.533451, 35.477211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608704, 32.633751, 35.730316>,  <46.432873, 32.693932, 35.882179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608704, 32.633751, 35.730316>,  <46.901752, 32.533451, 35.477211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608704, 32.633751, 35.730316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350386, 0.658068, -0.666465,
		-0.583514, -0.709980, -0.394259,
		-0.732626, 0.250749, 0.632759,
		46.388916, 32.708977, 35.920143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265701, 32.370132, 35.054676>,  <46.901752, 32.533451, 35.477211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265701, 32.370132, 35.054676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142021, 32.616966, 35.344120>,  <46.067814, 32.765064, 35.517784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142021, 32.616966, 35.344120>,  <46.265701, 32.370132, 35.054676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142021, 32.616966, 35.344120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386207, 0.613845, -0.688504,
		-0.869046, -0.492345, 0.048523,
		-0.309196, 0.617082, 0.723607,
		46.049263, 32.802090, 35.561203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470783, 32.413712, 35.123905>,  <46.265701, 32.370132, 35.054676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470783, 32.413712, 35.123905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641785, 32.748772, 35.259895>,  <45.744385, 32.949810, 35.341488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641785, 32.748772, 35.259895>,  <45.470783, 32.413712, 35.123905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641785, 32.748772, 35.259895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448877, 0.523120, -0.724468,
		-0.784700, 0.157104, 0.599637,
		0.427499, 0.837654, 0.339972,
		45.770035, 33.000069, 35.361885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975109, 32.925678, 35.071819>,  <45.470783, 32.413712, 35.123905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975109, 32.925678, 35.071819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316086, 33.134583, 35.081520>,  <45.520672, 33.259926, 35.087341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316086, 33.134583, 35.081520>,  <44.975109, 32.925678, 35.071819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316086, 33.134583, 35.081520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369828, 0.635134, -0.678109,
		-0.369555, 0.569078, 0.734561,
		0.852441, 0.522260, 0.024256,
		45.571819, 33.291260, 35.088799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798679, 33.621716, 35.148647>,  <44.975109, 32.925678, 35.071819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798679, 33.621716, 35.148647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163509, 33.649216, 34.986961>,  <45.382408, 33.665714, 34.889950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163509, 33.649216, 34.986961>,  <44.798679, 33.621716, 35.148647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163509, 33.649216, 34.986961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334739, 0.694164, -0.637249,
		0.236780, 0.716527, 0.656144,
		0.912077, 0.068749, -0.404213,
		45.437134, 33.669842, 34.865696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879963, 34.343842, 35.016792>,  <44.798679, 33.621716, 35.148647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879963, 34.343842, 35.016792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.189060, 34.176342, 34.826000>,  <45.374519, 34.075844, 34.711525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.189060, 34.176342, 34.826000>,  <44.879963, 34.343842, 35.016792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189060, 34.176342, 34.826000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153658, 0.605715, -0.780704,
		0.615834, 0.676579, 0.403721,
		0.772747, -0.418749, -0.476981,
		45.420883, 34.050716, 34.682907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361362, 34.904903, 34.826675>,  <44.879963, 34.343842, 35.016792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361362, 34.904903, 34.826675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482109, 34.613487, 34.580715>,  <45.554558, 34.438637, 34.433140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482109, 34.613487, 34.580715>,  <45.361362, 34.904903, 34.826675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482109, 34.613487, 34.580715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039612, 0.654016, -0.755443,
		0.952526, 0.203687, 0.226286,
		0.301868, -0.728543, -0.614899,
		45.572670, 34.394924, 34.396244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943115, 35.208225, 34.489662>,  <45.361362, 34.904903, 34.826675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943115, 35.208225, 34.489662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805851, 34.905209, 34.267540>,  <45.723492, 34.723396, 34.134266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805851, 34.905209, 34.267540>,  <45.943115, 35.208225, 34.489662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.805851, 34.905209, 34.267540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049416, 0.604948, -0.794730,
		0.937977, -0.245277, -0.245028,
		-0.343158, -0.757546, -0.555307,
		45.702904, 34.677944, 34.100948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.330971, 35.256329, 33.883816>,  <45.943115, 35.208225, 34.489662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.330971, 35.256329, 33.883816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014797, 35.022301, 33.811256>,  <45.825092, 34.881886, 33.767719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014797, 35.022301, 33.811256>,  <46.330971, 35.256329, 33.883816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014797, 35.022301, 33.811256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151307, 0.473452, -0.867726,
		0.593566, -0.658433, -0.462758,
		-0.790433, -0.585072, -0.181399,
		45.777668, 34.846779, 33.756836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.964588, 35.578743, 33.640598>,  <46.330971, 35.256329, 33.883816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.964588, 35.578743, 33.640598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037094, 35.185425, 33.634022>,  <47.080597, 34.949432, 33.630077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037094, 35.185425, 33.634022>,  <46.964588, 35.578743, 33.640598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037094, 35.185425, 33.634022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849665, 0.148173, 0.506077,
		-0.495187, -0.105706, 0.862332,
		0.181269, -0.983296, -0.016441,
		47.091476, 34.890434, 33.629089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920784, 35.317581, 34.296421>,  <46.964588, 35.578743, 33.640598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920784, 35.317581, 34.296421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.160744, 35.085274, 34.076302>,  <47.304718, 34.945889, 33.944229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.160744, 35.085274, 34.076302>,  <46.920784, 35.317581, 34.296421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.160744, 35.085274, 34.076302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778888, 0.266693, 0.567634,
		-0.182900, -0.769147, 0.612340,
		0.599901, -0.580765, -0.550301,
		47.340714, 34.911045, 33.911213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231689, 34.838268, 34.725903>,  <46.920784, 35.317581, 34.296421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231689, 34.838268, 34.725903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446190, 34.981976, 34.420391>,  <47.574890, 35.068199, 34.237083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446190, 34.981976, 34.420391>,  <47.231689, 34.838268, 34.725903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.446190, 34.981976, 34.420391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663142, 0.380492, 0.644569,
		0.522188, -0.852144, -0.034210,
		0.536249, 0.359272, -0.763780,
		47.607063, 35.089756, 34.191257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.946819, 34.659603, 34.758579>,  <47.231689, 34.838268, 34.725903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.946819, 34.659603, 34.758579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.734013, 34.818649, 35.057606>,  <47.606327, 34.914078, 35.237022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.734013, 34.818649, 35.057606>,  <47.946819, 34.659603, 34.758579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.734013, 34.818649, 35.057606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693984, 0.710596, 0.115931,
		-0.485121, 0.580477, -0.653991,
		-0.532018, 0.397618, 0.747567,
		47.574406, 34.937935, 35.281876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.594845, 40.561512, 43.906113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282341, 40.320808, 43.972477>,  <35.094841, 40.176388, 44.012295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282341, 40.320808, 43.972477>,  <35.594845, 40.561512, 43.906113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282341, 40.320808, 43.972477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002561, -0.262699, -0.964875,
		0.624207, -0.754238, 0.203694,
		-0.781255, -0.601759, 0.165909,
		35.047966, 40.140282, 44.022251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755646, 39.783016, 43.651657>,  <35.594845, 40.561512, 43.906113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755646, 39.783016, 43.651657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.356686, 39.809082, 43.663986>,  <35.117310, 39.824722, 43.671383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.356686, 39.809082, 43.663986>,  <35.755646, 39.783016, 43.651657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356686, 39.809082, 43.663986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059420, -0.501010, -0.863399,
		-0.040820, -0.862984, 0.503579,
		-0.997398, 0.065167, 0.030827,
		35.057465, 39.828632, 43.673233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495132, 39.153065, 43.356945>,  <35.755646, 39.783016, 43.651657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495132, 39.153065, 43.356945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181023, 39.400711, 43.359486>,  <34.992558, 39.549301, 43.361012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181023, 39.400711, 43.359486>,  <35.495132, 39.153065, 43.356945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181023, 39.400711, 43.359486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267909, -0.330525, -0.904974,
		-0.558188, -0.712351, 0.425419,
		-0.785272, 0.619120, 0.006350,
		34.945442, 39.586445, 43.361389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174568, 38.827950, 42.906742>,  <35.495132, 39.153065, 43.356945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174568, 38.827950, 42.906742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013729, 39.194099, 42.898586>,  <34.917225, 39.413788, 42.893692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013729, 39.194099, 42.898586>,  <35.174568, 38.827950, 42.906742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013729, 39.194099, 42.898586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296877, -0.151412, -0.942835,
		-0.866131, -0.373056, 0.332635,
		-0.402096, 0.915370, -0.020391,
		34.893101, 39.468712, 42.892467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523319, 38.752266, 42.699154>,  <35.174568, 38.827950, 42.906742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523319, 38.752266, 42.699154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638603, 39.126068, 42.615593>,  <34.707771, 39.350349, 42.565456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638603, 39.126068, 42.615593>,  <34.523319, 38.752266, 42.699154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638603, 39.126068, 42.615593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174523, -0.163242, -0.971027,
		-0.941530, 0.316315, 0.116044,
		0.288207, 0.934503, -0.208902,
		34.725067, 39.406418, 42.552921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029774, 38.893005, 42.206074>,  <34.523319, 38.752266, 42.699154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029774, 38.893005, 42.206074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.313404, 39.171486, 42.161335>,  <34.483582, 39.338573, 42.134491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.313404, 39.171486, 42.161335>,  <34.029774, 38.893005, 42.206074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313404, 39.171486, 42.161335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016552, -0.175008, -0.984428,
		-0.704938, 0.696182, -0.135618,
		0.709076, 0.696205, -0.111847,
		34.526127, 39.380348, 42.127781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794102, 39.338085, 41.673878>,  <34.029774, 38.893005, 42.206074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794102, 39.338085, 41.673878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.190113, 39.394180, 41.679276>,  <34.427719, 39.427837, 41.682514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.190113, 39.394180, 41.679276>,  <33.794102, 39.338085, 41.673878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190113, 39.394180, 41.679276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020286, -0.047134, -0.998683,
		-0.139414, 0.988996, -0.049508,
		0.990026, 0.140235, 0.013492,
		34.487122, 39.436249, 41.683323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991753, 39.831562, 41.040031>,  <33.794102, 39.338085, 41.673878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991753, 39.831562, 41.040031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.340446, 39.658009, 41.131088>,  <34.549664, 39.553875, 41.185722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.340446, 39.658009, 41.131088>,  <33.991753, 39.831562, 41.040031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340446, 39.658009, 41.131088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302530, 0.111172, -0.946634,
		0.385424, 0.894083, 0.228176,
		0.871736, -0.433886, 0.227639,
		34.601967, 39.527843, 41.199379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533688, 40.239471, 40.751202>,  <33.991753, 39.831562, 41.040031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533688, 40.239471, 40.751202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.680347, 39.870529, 40.799908>,  <34.768345, 39.649162, 40.829132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.680347, 39.870529, 40.799908>,  <34.533688, 40.239471, 40.751202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680347, 39.870529, 40.799908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425092, 0.049663, -0.903786,
		0.827564, 0.383139, 0.410295,
		0.366652, -0.922355, 0.121770,
		34.790344, 39.593822, 40.836437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206989, 40.251938, 40.430222>,  <34.533688, 40.239471, 40.751202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206989, 40.251938, 40.430222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125584, 39.861679, 40.462963>,  <35.076740, 39.627525, 40.482609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125584, 39.861679, 40.462963>,  <35.206989, 40.251938, 40.430222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125584, 39.861679, 40.462963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361528, -0.152582, -0.919791,
		0.909878, -0.157602, 0.383776,
		-0.203518, -0.975644, 0.081853,
		35.064529, 39.568985, 40.487518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821854, 39.852276, 40.348423>,  <35.206989, 40.251938, 40.430222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821854, 39.852276, 40.348423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508934, 39.621117, 40.255436>,  <35.321182, 39.482422, 40.199642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508934, 39.621117, 40.255436>,  <35.821854, 39.852276, 40.348423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508934, 39.621117, 40.255436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410765, -0.198043, -0.889973,
		0.468273, -0.791716, 0.392309,
		-0.782300, -0.577897, -0.232471,
		35.274242, 39.447746, 40.185696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193119, 39.331146, 39.879044>,  <35.821854, 39.852276, 40.348423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193119, 39.331146, 39.879044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801765, 39.302055, 39.801613>,  <35.566952, 39.284599, 39.755154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801765, 39.302055, 39.801613>,  <36.193119, 39.331146, 39.879044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801765, 39.302055, 39.801613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189513, 0.059205, -0.980092,
		0.082750, -0.995592, -0.044140,
		-0.978385, -0.072738, -0.193577,
		35.508251, 39.280235, 39.743542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101673, 38.759140, 39.351383>,  <36.193119, 39.331146, 39.879044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101673, 38.759140, 39.351383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788086, 39.006519, 39.329781>,  <35.599934, 39.154945, 39.316818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788086, 39.006519, 39.329781>,  <36.101673, 38.759140, 39.351383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788086, 39.006519, 39.329781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141938, 0.093879, -0.985414,
		-0.604353, -0.780201, -0.161380,
		-0.783971, 0.618444, -0.054004,
		35.552895, 39.192051, 39.313580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729015, 38.505711, 38.845707>,  <36.101673, 38.759140, 39.351383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729015, 38.505711, 38.845707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531208, 38.850571, 38.889816>,  <35.412525, 39.057487, 38.916283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531208, 38.850571, 38.889816>,  <35.729015, 38.505711, 38.845707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531208, 38.850571, 38.889816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019972, 0.115568, -0.993099,
		-0.868940, -0.493304, -0.039932,
		-0.494515, 0.862146, 0.110274,
		35.382854, 39.109215, 38.922897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146835, 38.457508, 38.468094>,  <35.729015, 38.505711, 38.845707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146835, 38.457508, 38.468094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236050, 38.844830, 38.513065>,  <35.289577, 39.077225, 38.540047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236050, 38.844830, 38.513065>,  <35.146835, 38.457508, 38.468094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236050, 38.844830, 38.513065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113683, 0.140379, -0.983550,
		-0.968159, 0.206585, 0.141389,
		0.223035, 0.968306, 0.112424,
		35.302959, 39.135323, 38.546791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623108, 38.791370, 38.118996>,  <35.146835, 38.457508, 38.468094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623108, 38.791370, 38.118996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.906239, 39.073891, 38.123257>,  <35.076118, 39.243404, 38.125813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.906239, 39.073891, 38.123257>,  <34.623108, 38.791370, 38.118996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906239, 39.073891, 38.123257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116867, 0.131959, -0.984342,
		-0.696651, 0.695500, 0.175948,
		0.707828, 0.706305, 0.010648,
		35.118587, 39.285782, 38.126450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380337, 39.483105, 37.757656>,  <34.623108, 38.791370, 38.118996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380337, 39.483105, 37.757656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.778534, 39.521019, 37.758049>,  <35.017452, 39.543766, 37.758286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.778534, 39.521019, 37.758049>,  <34.380337, 39.483105, 37.757656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778534, 39.521019, 37.758049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020087, 0.221091, -0.975046,
		-0.092634, 0.970637, 0.222000,
		0.995498, 0.094782, 0.000984,
		35.077183, 39.549454, 37.758343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578873, 40.004410, 37.312950>,  <34.380337, 39.483105, 37.757656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578873, 40.004410, 37.312950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933083, 39.820511, 37.339718>,  <35.145607, 39.710171, 37.355778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933083, 39.820511, 37.339718>,  <34.578873, 40.004410, 37.312950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933083, 39.820511, 37.339718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114884, 0.077124, -0.990380,
		0.450166, 0.884693, 0.121113,
		0.885524, -0.459749, 0.066919,
		35.198738, 39.682587, 37.359795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075680, 40.394325, 36.878002>,  <34.578873, 40.004410, 37.312950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075680, 40.394325, 36.878002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245789, 40.035503, 36.926056>,  <35.347855, 39.820210, 36.954887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245789, 40.035503, 36.926056>,  <35.075680, 40.394325, 36.878002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245789, 40.035503, 36.926056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305633, 0.017402, -0.951990,
		0.851899, 0.441571, 0.281571,
		0.425271, -0.897057, 0.120134,
		35.373371, 39.766388, 36.962097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731796, 40.505997, 36.597786>,  <35.075680, 40.394325, 36.878002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731796, 40.505997, 36.597786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686489, 40.108974, 36.615654>,  <35.659306, 39.870762, 36.626377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686489, 40.108974, 36.615654>,  <35.731796, 40.505997, 36.597786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686489, 40.108974, 36.615654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227802, -0.069709, -0.971209,
		0.967097, -0.099834, 0.234003,
		-0.113272, -0.992559, 0.044673,
		35.652508, 39.811207, 36.629055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378674, 40.210091, 36.480667>,  <35.731796, 40.505997, 36.597786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378674, 40.210091, 36.480667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111599, 39.930096, 36.379303>,  <35.951355, 39.762100, 36.318485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111599, 39.930096, 36.379303>,  <36.378674, 40.210091, 36.480667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111599, 39.930096, 36.379303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323032, 0.034258, -0.945768,
		0.670706, -0.713334, 0.203244,
		-0.667685, -0.699987, -0.253406,
		35.911293, 39.720100, 36.303280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669792, 39.466572, 36.200386>,  <36.378674, 40.210091, 36.480667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669792, 39.466572, 36.200386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313694, 39.573673, 36.053001>,  <36.100033, 39.637932, 35.964569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313694, 39.573673, 36.053001>,  <36.669792, 39.466572, 36.200386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313694, 39.573673, 36.053001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379958, -0.009547, -0.924954,
		-0.251175, -0.963441, -0.093235,
		-0.890249, 0.267751, -0.368465,
		36.046619, 39.653999, 35.942463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816509, 38.747478, 36.234592>,  <36.669792, 39.466572, 36.200386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816509, 38.747478, 36.234592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195187, 38.655827, 36.144016>,  <37.422394, 38.600838, 36.089672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195187, 38.655827, 36.144016>,  <36.816509, 38.747478, 36.234592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195187, 38.655827, 36.144016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229687, -0.012770, 0.973181,
		-0.225874, -0.973313, 0.040539,
		0.946691, -0.229128, -0.226442,
		37.479195, 38.587090, 36.076084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939861, 38.183922, 36.636536>,  <36.816509, 38.747478, 36.234592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939861, 38.183922, 36.636536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301712, 38.324913, 36.540691>,  <37.518822, 38.409508, 36.483185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301712, 38.324913, 36.540691>,  <36.939861, 38.183922, 36.636536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301712, 38.324913, 36.540691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331742, -0.229357, 0.915064,
		0.267587, -0.907278, -0.324415,
		0.904624, 0.352481, -0.239610,
		37.573101, 38.430656, 36.468807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396278, 37.735802, 37.075783>,  <36.939861, 38.183922, 36.636536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396278, 37.735802, 37.075783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599049, 38.060799, 36.960629>,  <37.720711, 38.255798, 36.891537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599049, 38.060799, 36.960629>,  <37.396278, 37.735802, 37.075783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599049, 38.060799, 36.960629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317931, 0.134202, 0.938568,
		0.801218, -0.567309, -0.190288,
		0.506921, 0.812496, -0.287890,
		37.751125, 38.304546, 36.874260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047222, 37.670147, 37.359589>,  <37.396278, 37.735802, 37.075783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047222, 37.670147, 37.359589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.008408, 38.063095, 37.295681>,  <37.985119, 38.298866, 37.257336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.008408, 38.063095, 37.295681>,  <38.047222, 37.670147, 37.359589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008408, 38.063095, 37.295681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325569, 0.183028, 0.927634,
		0.940526, 0.037996, -0.337591,
		-0.097035, 0.982373, -0.159772,
		37.979298, 38.357807, 37.247749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574535, 37.906494, 37.774075>,  <38.047222, 37.670147, 37.359589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574535, 37.906494, 37.774075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330906, 38.215183, 37.700905>,  <38.184727, 38.400398, 37.657001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330906, 38.215183, 37.700905>,  <38.574535, 37.906494, 37.774075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330906, 38.215183, 37.700905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262561, 0.413840, 0.871664,
		0.748389, 0.482882, -0.454686,
		-0.609078, 0.771727, -0.182927,
		38.148182, 38.446701, 37.646027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958107, 38.592888, 37.930580>,  <38.574535, 37.906494, 37.774075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958107, 38.592888, 37.930580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570412, 38.691242, 37.935097>,  <38.337795, 38.750256, 37.937809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570412, 38.691242, 37.935097>,  <38.958107, 38.592888, 37.930580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570412, 38.691242, 37.935097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145797, 0.536531, 0.831190,
		0.198314, 0.807265, -0.555873,
		-0.969234, 0.245881, 0.011296,
		38.279640, 38.765007, 37.938484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908558, 39.252777, 38.188244>,  <38.958107, 38.592888, 37.930580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908558, 39.252777, 38.188244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519371, 39.160629, 38.194649>,  <38.285858, 39.105339, 38.198490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519371, 39.160629, 38.194649>,  <38.908558, 39.252777, 38.188244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519371, 39.160629, 38.194649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065706, 0.342640, 0.937166,
		-0.221381, 0.910784, -0.348516,
		-0.972971, -0.230371, 0.016010,
		38.227478, 39.091518, 38.199451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635624, 39.822598, 38.479675>,  <38.908558, 39.252777, 38.188244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635624, 39.822598, 38.479675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.378098, 39.524979, 38.551109>,  <38.223583, 39.346409, 38.593971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.378098, 39.524979, 38.551109>,  <38.635624, 39.822598, 38.479675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378098, 39.524979, 38.551109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189606, 0.381241, 0.904823,
		-0.741317, 0.548678, -0.386525,
		-0.643816, -0.744048, 0.178588,
		38.184952, 39.301765, 38.604687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948174, 40.186989, 38.679321>,  <38.635624, 39.822598, 38.479675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948174, 40.186989, 38.679321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955837, 39.810249, 38.813515>,  <37.960438, 39.584206, 38.894032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955837, 39.810249, 38.813515>,  <37.948174, 40.186989, 38.679321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955837, 39.810249, 38.813515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279910, 0.317075, 0.906153,
		-0.959835, -0.111270, -0.257558,
		0.019163, -0.941850, 0.335486,
		37.961586, 39.527695, 38.914162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303509, 40.048313, 39.018974>,  <37.948174, 40.186989, 38.679321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303509, 40.048313, 39.018974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543629, 39.760834, 39.159328>,  <37.687698, 39.588348, 39.243542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543629, 39.760834, 39.159328>,  <37.303509, 40.048313, 39.018974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543629, 39.760834, 39.159328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181359, 0.304976, 0.934932,
		-0.778944, -0.624873, 0.052734,
		0.600296, -0.718696, 0.350886,
		37.723717, 39.545223, 39.264595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926052, 39.476116, 39.444664>,  <37.303509, 40.048313, 39.018974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926052, 39.476116, 39.444664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.313103, 39.458736, 39.544106>,  <37.545334, 39.448307, 39.603771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.313103, 39.458736, 39.544106>,  <36.926052, 39.476116, 39.444664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313103, 39.458736, 39.544106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239345, 0.154411, 0.958578,
		-0.080036, -0.987051, 0.139014,
		0.967630, -0.043448, 0.248605,
		37.603394, 39.445702, 39.618687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991493, 38.990074, 39.993164>,  <36.926052, 39.476116, 39.444664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991493, 38.990074, 39.993164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.324421, 39.209019, 40.028141>,  <37.524178, 39.340385, 40.049129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.324421, 39.209019, 40.028141>,  <36.991493, 38.990074, 39.993164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324421, 39.209019, 40.028141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161184, 0.088053, 0.982988,
		0.530349, -0.832252, 0.161514,
		0.832316, 0.547360, 0.087447,
		37.574116, 39.373226, 40.054375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330334, 38.649620, 40.569618>,  <36.991493, 38.990074, 39.993164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330334, 38.649620, 40.569618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.487640, 39.014648, 40.524799>,  <37.582024, 39.233665, 40.497906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.487640, 39.014648, 40.524799>,  <37.330334, 38.649620, 40.569618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487640, 39.014648, 40.524799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006513, 0.124630, 0.992182,
		0.919403, -0.389458, 0.054956,
		0.393263, 0.912573, -0.112049,
		37.605618, 39.288422, 40.491184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681217, 38.690823, 41.130882>,  <37.330334, 38.649620, 40.569618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681217, 38.690823, 41.130882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673931, 39.077831, 41.030025>,  <37.669559, 39.310036, 40.969513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673931, 39.077831, 41.030025>,  <37.681217, 38.690823, 41.130882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673931, 39.077831, 41.030025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179870, 0.251237, 0.951066,
		0.983522, -0.028024, -0.178605,
		-0.018220, 0.967520, -0.252138,
		37.668465, 39.368088, 40.954384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126308, 38.923668, 41.557365>,  <37.681217, 38.690823, 41.130882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126308, 38.923668, 41.557365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.915222, 39.242584, 41.440166>,  <37.788570, 39.433933, 41.369846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.915222, 39.242584, 41.440166>,  <38.126308, 38.923668, 41.557365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915222, 39.242584, 41.440166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244869, 0.473085, 0.846304,
		0.813362, 0.374860, -0.444885,
		-0.527714, 0.797290, -0.292998,
		37.756908, 39.481770, 41.352268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494011, 39.569462, 41.736755>,  <38.126308, 38.923668, 41.557365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494011, 39.569462, 41.736755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.128372, 39.721844, 41.681190>,  <37.908989, 39.813274, 41.647850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.128372, 39.721844, 41.681190>,  <38.494011, 39.569462, 41.736755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128372, 39.721844, 41.681190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118312, 0.578238, 0.807244,
		0.387851, 0.721465, -0.573638,
		-0.914097, 0.380959, -0.138912,
		37.854141, 39.836132, 41.639519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530521, 40.315544, 41.852783>,  <38.494011, 39.569462, 41.736755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530521, 40.315544, 41.852783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.164021, 40.168190, 41.915752>,  <37.944122, 40.079777, 41.953533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.164021, 40.168190, 41.915752>,  <38.530521, 40.315544, 41.852783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164021, 40.168190, 41.915752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012210, 0.418447, 0.908159,
		-0.400426, 0.830177, -0.387899,
		-0.916248, -0.368387, 0.157421,
		37.889145, 40.057674, 41.962978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220322, 40.836224, 42.164478>,  <38.530521, 40.315544, 41.852783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220322, 40.836224, 42.164478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990665, 40.519863, 42.249184>,  <37.852871, 40.330048, 42.300007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990665, 40.519863, 42.249184>,  <38.220322, 40.836224, 42.164478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990665, 40.519863, 42.249184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070967, 0.305735, 0.949468,
		-0.815676, 0.530099, -0.231663,
		-0.574140, -0.790899, 0.211761,
		37.818424, 40.282593, 42.312714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.624687, 41.116528, 42.618729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.576466, 40.725315, 42.686756>,  <37.547531, 40.490589, 42.727573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.576466, 40.725315, 42.686756>,  <37.624687, 41.116528, 42.618729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576466, 40.725315, 42.686756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095403, 0.181940, 0.978671,
		-0.988112, 0.101758, -0.115241,
		-0.120554, -0.978030, 0.170069,
		37.540298, 40.431908, 42.737778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139366, 41.082687, 43.214706>,  <37.624687, 41.116528, 42.618729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139366, 41.082687, 43.214706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.279350, 40.708027, 43.220509>,  <37.363342, 40.483231, 43.223991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.279350, 40.708027, 43.220509>,  <37.139366, 41.082687, 43.214706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279350, 40.708027, 43.220509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129991, -0.033219, 0.990958,
		-0.927701, -0.348682, -0.133382,
		0.349960, -0.936652, 0.014509,
		37.384338, 40.427032, 43.224861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699631, 40.722511, 43.616703>,  <37.139366, 41.082687, 43.214706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699631, 40.722511, 43.616703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.015240, 40.476933, 43.607578>,  <37.204605, 40.329586, 43.602104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.015240, 40.476933, 43.607578>,  <36.699631, 40.722511, 43.616703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015240, 40.476933, 43.607578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027668, -0.072607, 0.996977,
		-0.613747, -0.786001, -0.074274,
		0.789018, -0.613946, -0.022815,
		37.251945, 40.292747, 43.600735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453888, 40.011589, 43.912334>,  <36.699631, 40.722511, 43.616703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453888, 40.011589, 43.912334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.844372, 40.075024, 43.971489>,  <37.078663, 40.113083, 44.006981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.844372, 40.075024, 43.971489>,  <36.453888, 40.011589, 43.912334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844372, 40.075024, 43.971489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135069, -0.088832, 0.986846,
		0.169638, -0.983341, -0.065299,
		0.976207, 0.158586, 0.147888,
		37.137234, 40.122601, 44.015854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707882, 39.484112, 44.408531>,  <36.453888, 40.011589, 43.912334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707882, 39.484112, 44.408531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.001431, 39.755520, 44.421444>,  <37.177559, 39.918365, 44.429192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.001431, 39.755520, 44.421444>,  <36.707882, 39.484112, 44.408531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001431, 39.755520, 44.421444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167202, -0.226493, 0.959554,
		0.658391, -0.698790, -0.279667,
		0.733870, 0.678523, 0.032281,
		37.221592, 39.959076, 44.431129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215385, 39.135303, 44.856865>,  <36.707882, 39.484112, 44.408531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215385, 39.135303, 44.856865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275108, 39.530815, 44.858685>,  <37.310944, 39.768124, 44.859776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275108, 39.530815, 44.858685>,  <37.215385, 39.135303, 44.856865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275108, 39.530815, 44.858685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163213, -0.029183, 0.986159,
		0.975227, -0.146501, -0.165739,
		0.149310, 0.988780, 0.004549,
		37.319901, 39.827450, 44.860050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863903, 39.281631, 45.175167>,  <37.215385, 39.135303, 44.856865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863903, 39.281631, 45.175167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660873, 39.625893, 45.191399>,  <37.539055, 39.832447, 45.201138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660873, 39.625893, 45.191399>,  <37.863903, 39.281631, 45.175167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660873, 39.625893, 45.191399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281076, 0.120879, 0.952042,
		0.814470, 0.494642, -0.303264,
		-0.507578, 0.860650, 0.040580,
		37.508598, 39.884087, 45.203571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370014, 39.709553, 45.398239>,  <37.863903, 39.281631, 45.175167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370014, 39.709553, 45.398239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014469, 39.872898, 45.481346>,  <37.801144, 39.970905, 45.531212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014469, 39.872898, 45.481346>,  <38.370014, 39.709553, 45.398239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014469, 39.872898, 45.481346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363403, 0.352161, 0.862508,
		0.279047, 0.842154, -0.461422,
		-0.888860, 0.408362, 0.207771,
		37.747810, 39.995407, 45.543678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502869, 40.425426, 45.606091>,  <38.370014, 39.709553, 45.398239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502869, 40.425426, 45.606091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.144211, 40.350216, 45.766426>,  <37.929016, 40.305088, 45.862629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.144211, 40.350216, 45.766426>,  <38.502869, 40.425426, 45.606091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144211, 40.350216, 45.766426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315527, 0.363744, 0.876432,
		-0.310597, 0.912324, -0.266822,
		-0.896645, -0.188028, 0.400840,
		37.875217, 40.293808, 45.886677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422813, 40.952225, 46.107502>,  <38.502869, 40.425426, 45.606091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422813, 40.952225, 46.107502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147072, 40.672382, 46.182705>,  <37.981628, 40.504478, 46.227825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147072, 40.672382, 46.182705>,  <38.422813, 40.952225, 46.107502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147072, 40.672382, 46.182705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023773, 0.237536, 0.971088,
		-0.724036, 0.673892, -0.147114,
		-0.689353, -0.699605, 0.188005,
		37.940266, 40.462502, 46.239105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968102, 41.272984, 46.516876>,  <38.422813, 40.952225, 46.107502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968102, 41.272984, 46.516876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889790, 40.884483, 46.571045>,  <37.842804, 40.651382, 46.603546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889790, 40.884483, 46.571045>,  <37.968102, 41.272984, 46.516876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889790, 40.884483, 46.571045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121884, 0.161123, 0.979379,
		-0.973044, 0.175234, -0.149925,
		-0.195777, -0.971253, 0.135422,
		37.831055, 40.593109, 46.611671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481956, 41.271580, 46.874222>,  <37.968102, 41.272984, 46.516876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481956, 41.271580, 46.874222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643070, 40.915977, 46.961338>,  <37.739738, 40.702614, 47.013607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643070, 40.915977, 46.961338>,  <37.481956, 41.271580, 46.874222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643070, 40.915977, 46.961338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164435, 0.163793, 0.972694,
		-0.900405, -0.427595, -0.080212,
		0.402781, -0.889008, 0.217792,
		37.763905, 40.649277, 47.026676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187897, 41.023476, 47.414848>,  <37.481956, 41.271580, 46.874222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187897, 41.023476, 47.414848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516895, 40.796043, 47.420727>,  <37.714294, 40.659584, 47.424252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516895, 40.796043, 47.420727>,  <37.187897, 41.023476, 47.414848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516895, 40.796043, 47.420727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033940, 0.074851, 0.996617,
		-0.567759, -0.819214, 0.080862,
		0.822495, -0.568583, 0.014693,
		37.763645, 40.625469, 47.425133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151157, 40.300167, 47.860580>,  <37.187897, 41.023476, 47.414848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151157, 40.300167, 47.860580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530674, 40.424179, 47.836353>,  <37.758385, 40.498589, 47.821819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530674, 40.424179, 47.836353>,  <37.151157, 40.300167, 47.860580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530674, 40.424179, 47.836353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146697, -0.262636, 0.953678,
		0.279767, -0.913729, -0.294668,
		0.948794, 0.310035, -0.060564,
		37.815311, 40.517189, 47.818184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586658, 39.741703, 48.006546>,  <37.151157, 40.300167, 47.860580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586658, 39.741703, 48.006546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783287, 40.073387, 48.112961>,  <37.901264, 40.272396, 48.176811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783287, 40.073387, 48.112961>,  <37.586658, 39.741703, 48.006546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783287, 40.073387, 48.112961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101287, -0.357866, 0.928264,
		0.864928, -0.429360, -0.259903,
		0.491570, 0.829206, 0.266040,
		37.930759, 40.322147, 48.192772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752655, 39.541489, 48.641441>,  <37.586658, 39.741703, 48.006546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752655, 39.541489, 48.641441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920662, 39.904392, 48.632771>,  <38.021465, 40.122135, 48.627567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920662, 39.904392, 48.632771>,  <37.752655, 39.541489, 48.641441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920662, 39.904392, 48.632771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355529, -0.142522, 0.923735,
		0.834975, -0.395694, -0.382417,
		0.420019, 0.907256, -0.021679,
		38.046669, 40.176571, 48.626266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403843, 39.525261, 48.979218>,  <37.752655, 39.541489, 48.641441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403843, 39.525261, 48.979218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294102, 39.909775, 48.989464>,  <38.228256, 40.140484, 48.995613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294102, 39.909775, 48.989464>,  <38.403843, 39.525261, 48.979218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294102, 39.909775, 48.989464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041123, -0.014886, 0.999043,
		0.960749, 0.275144, -0.035447,
		-0.274353, 0.961288, 0.025617,
		38.211796, 40.198162, 48.997150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967758, 39.779762, 49.248718>,  <38.403843, 39.525261, 48.979218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967758, 39.779762, 49.248718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661827, 40.029118, 49.313747>,  <38.478268, 40.178730, 49.352764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661827, 40.029118, 49.313747>,  <38.967758, 39.779762, 49.248718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661827, 40.029118, 49.313747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123009, -0.106392, 0.986686,
		0.632387, 0.774639, 0.004688,
		-0.764824, 0.623390, 0.162569,
		38.432381, 40.216133, 49.362518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149338, 40.122837, 49.738262>,  <38.967758, 39.779762, 49.248718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149338, 40.122837, 49.738262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763680, 40.227554, 49.755630>,  <38.532284, 40.290382, 49.766052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763680, 40.227554, 49.755630>,  <39.149338, 40.122837, 49.738262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763680, 40.227554, 49.755630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010071, -0.199610, 0.979824,
		0.265176, 0.944257, 0.195090,
		-0.964147, 0.261791, 0.043422,
		38.474434, 40.306091, 49.768658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109440, 40.775230, 50.234711>,  <39.149338, 40.122837, 49.738262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109440, 40.775230, 50.234711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766865, 40.571136, 50.203289>,  <38.561321, 40.448681, 50.184437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766865, 40.571136, 50.203289>,  <39.109440, 40.775230, 50.234711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766865, 40.571136, 50.203289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088899, -0.295653, 0.951150,
		-0.508538, 0.807618, 0.298568,
		-0.856438, -0.510239, -0.078554,
		38.509933, 40.418064, 50.179722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773548, 41.025551, 50.785851>,  <39.109440, 40.775230, 50.234711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773548, 41.025551, 50.785851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.599777, 40.679073, 50.687069>,  <38.495514, 40.471188, 50.627800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.599777, 40.679073, 50.687069>,  <38.773548, 41.025551, 50.785851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599777, 40.679073, 50.687069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128783, -0.331094, 0.934768,
		-0.891454, 0.374283, 0.255387,
		-0.434425, -0.866192, -0.246954,
		38.469448, 40.419216, 50.612984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283058, 40.954929, 51.258694>,  <38.773548, 41.025551, 50.785851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283058, 40.954929, 51.258694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358112, 40.585052, 51.126186>,  <38.403145, 40.363129, 51.046680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358112, 40.585052, 51.126186>,  <38.283058, 40.954929, 51.258694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358112, 40.585052, 51.126186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093770, -0.318858, 0.943153,
		-0.977753, -0.208034, 0.026879,
		0.187637, -0.924690, -0.331272,
		38.414402, 40.307644, 51.026806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788784, 40.399776, 51.543221>,  <38.283058, 40.954929, 51.258694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788784, 40.399776, 51.543221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.115967, 40.179337, 51.477203>,  <38.312275, 40.047073, 51.437595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.115967, 40.179337, 51.477203>,  <37.788784, 40.399776, 51.543221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115967, 40.179337, 51.477203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001460, -0.288874, 0.957366,
		-0.575280, -0.782842, -0.237091,
		0.817955, -0.551099, -0.165041,
		38.361355, 40.014008, 51.427692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675556, 39.812523, 51.959824>,  <37.788784, 40.399776, 51.543221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675556, 39.812523, 51.959824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.069351, 39.845264, 51.897751>,  <38.305630, 39.864910, 51.860508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.069351, 39.845264, 51.897751>,  <37.675556, 39.812523, 51.959824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069351, 39.845264, 51.897751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175365, -0.432260, 0.884533,
		0.005321, -0.898027, -0.439909,
		0.984489, 0.081851, -0.155182,
		38.364697, 39.869820, 51.851196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141068, 39.392941, 52.064056>,  <37.675556, 39.812523, 51.959824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141068, 39.392941, 52.064056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748787, 39.350250, 52.129589>,  <36.513420, 39.324635, 52.168911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748787, 39.350250, 52.129589>,  <37.141068, 39.392941, 52.064056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748787, 39.350250, 52.129589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176348, 0.120830, -0.976884,
		0.084458, -0.986920, -0.137318,
		-0.980698, -0.106722, 0.163837,
		36.454578, 39.318233, 52.178741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937843, 39.072296, 51.440430>,  <37.141068, 39.392941, 52.064056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937843, 39.072296, 51.440430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.584221, 39.193352, 51.582893>,  <36.372047, 39.265987, 51.668369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.584221, 39.193352, 51.582893>,  <36.937843, 39.072296, 51.440430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584221, 39.193352, 51.582893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309995, 0.190593, -0.931438,
		-0.349773, -0.933853, -0.074678,
		-0.884060, 0.302642, 0.356155,
		36.319004, 39.284145, 51.689739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412693, 38.609135, 51.164852>,  <36.937843, 39.072296, 51.440430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412693, 38.609135, 51.164852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228531, 38.947445, 51.272690>,  <36.118034, 39.150433, 51.337391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228531, 38.947445, 51.272690>,  <36.412693, 38.609135, 51.164852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228531, 38.947445, 51.272690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391377, 0.079187, -0.916817,
		-0.796773, -0.527624, 0.294560,
		-0.460410, 0.845779, 0.269593,
		36.090408, 39.201180, 51.353569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734226, 38.504307, 50.933331>,  <36.412693, 38.609135, 51.164852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734226, 38.504307, 50.933331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783218, 38.898785, 50.977898>,  <35.812614, 39.135471, 51.004639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783218, 38.898785, 50.977898>,  <35.734226, 38.504307, 50.933331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783218, 38.898785, 50.977898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478660, 0.157044, -0.863841,
		-0.869416, 0.052468, 0.491287,
		0.122477, 0.986197, 0.111422,
		35.819962, 39.194645, 51.011326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105518, 38.812641, 50.635376>,  <35.734226, 38.504307, 50.933331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105518, 38.812641, 50.635376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374882, 39.108318, 50.639488>,  <35.536499, 39.285725, 50.641956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374882, 39.108318, 50.639488>,  <35.105518, 38.812641, 50.635376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374882, 39.108318, 50.639488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189998, 0.186497, -0.963908,
		-0.714434, 0.647155, 0.266035,
		0.673413, 0.739195, 0.010282,
		35.576904, 39.330078, 50.642574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778152, 39.436783, 50.341991>,  <35.105518, 38.812641, 50.635376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778152, 39.436783, 50.341991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166679, 39.531895, 50.341316>,  <35.399796, 39.588963, 50.340912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166679, 39.531895, 50.341316>,  <34.778152, 39.436783, 50.341991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166679, 39.531895, 50.341316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113379, 0.456886, -0.882270,
		-0.209010, 0.857157, 0.470740,
		0.971319, 0.237776, -0.001690,
		35.458076, 39.603226, 50.340809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844696, 40.114323, 50.053474>,  <34.778152, 39.436783, 50.341991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844696, 40.114323, 50.053474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194752, 39.931171, 49.990894>,  <35.404785, 39.821281, 49.953346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194752, 39.931171, 49.990894>,  <34.844696, 40.114323, 50.053474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194752, 39.931171, 49.990894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022665, 0.284192, -0.958500,
		0.483335, 0.842369, 0.238330,
		0.875142, -0.457875, -0.156452,
		35.457294, 39.793808, 49.943958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154789, 40.509476, 49.485939>,  <34.844696, 40.114323, 50.053474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154789, 40.509476, 49.485939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335258, 40.153130, 49.464748>,  <35.443539, 39.939323, 49.452034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335258, 40.153130, 49.464748>,  <35.154789, 40.509476, 49.485939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335258, 40.153130, 49.464748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079092, 0.099040, -0.991935,
		0.888924, 0.443346, 0.115144,
		0.451174, -0.890862, -0.052974,
		35.470612, 39.885872, 49.448856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558315, 40.610119, 48.921139>,  <35.154789, 40.509476, 49.485939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558315, 40.610119, 48.921139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539120, 40.214336, 48.975796>,  <35.527603, 39.976868, 49.008591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539120, 40.214336, 48.975796>,  <35.558315, 40.610119, 48.921139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539120, 40.214336, 48.975796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096431, -0.131576, -0.986605,
		0.994182, -0.060525, -0.089100,
		-0.047991, -0.989457, 0.136647,
		35.524723, 39.917500, 49.016788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005310, 40.375259, 48.416149>,  <35.558315, 40.610119, 48.921139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005310, 40.375259, 48.416149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780952, 40.058956, 48.514206>,  <35.646339, 39.869171, 48.573040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780952, 40.058956, 48.514206>,  <36.005310, 40.375259, 48.416149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780952, 40.058956, 48.514206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057422, -0.258236, -0.964374,
		0.825896, -0.554985, 0.099435,
		-0.560891, -0.790763, 0.245144,
		35.612686, 39.821728, 48.587749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296772, 39.805164, 48.177162>,  <36.005310, 40.375259, 48.416149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296772, 39.805164, 48.177162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901215, 39.750984, 48.201614>,  <35.663879, 39.718475, 48.216286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901215, 39.750984, 48.201614>,  <36.296772, 39.805164, 48.177162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901215, 39.750984, 48.201614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041616, -0.142495, -0.988920,
		0.142660, -0.980484, 0.135276,
		-0.988896, -0.135450, 0.061132,
		35.604546, 39.710350, 48.219955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179462, 39.350323, 47.725468>,  <36.296772, 39.805164, 48.177162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179462, 39.350323, 47.725468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809425, 39.494900, 47.772060>,  <35.587402, 39.581646, 47.800014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809425, 39.494900, 47.772060>,  <36.179462, 39.350323, 47.725468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809425, 39.494900, 47.772060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069651, 0.140035, -0.987694,
		-0.373302, -0.921820, -0.104371,
		-0.925092, 0.361439, 0.116481,
		35.531898, 39.603333, 47.807003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871136, 39.082066, 47.228168>,  <36.179462, 39.350323, 47.725468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871136, 39.082066, 47.228168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.606552, 39.374416, 47.295460>,  <35.447803, 39.549828, 47.335835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.606552, 39.374416, 47.295460>,  <35.871136, 39.082066, 47.228168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606552, 39.374416, 47.295460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183714, 0.059575, -0.981173,
		-0.727135, -0.679909, 0.094866,
		-0.661456, 0.730873, 0.168228,
		35.408115, 39.593678, 47.345928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377953, 38.889961, 46.765339>,  <35.871136, 39.082066, 47.228168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377953, 38.889961, 46.765339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.336029, 39.281460, 46.835850>,  <35.310875, 39.516357, 46.878155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.336029, 39.281460, 46.835850>,  <35.377953, 38.889961, 46.765339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336029, 39.281460, 46.835850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297727, 0.138241, -0.944589,
		-0.948880, -0.151486, 0.276909,
		-0.104812, 0.978745, 0.176276,
		35.304585, 39.575085, 46.888733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665684, 39.076550, 46.501495>,  <35.377953, 38.889961, 46.765339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665684, 39.076550, 46.501495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.879208, 39.413784, 46.527588>,  <35.007324, 39.616123, 46.543243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.879208, 39.413784, 46.527588>,  <34.665684, 39.076550, 46.501495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879208, 39.413784, 46.527588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275167, 0.246137, -0.929355,
		-0.799580, 0.478151, 0.363379,
		0.533813, 0.843083, 0.065235,
		35.039352, 39.666710, 46.547157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260056, 39.468037, 46.091625>,  <34.665684, 39.076550, 46.501495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260056, 39.468037, 46.091625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625198, 39.628014, 46.124481>,  <34.844284, 39.723999, 46.144196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625198, 39.628014, 46.124481>,  <34.260056, 39.468037, 46.091625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625198, 39.628014, 46.124481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077635, 0.367530, -0.926765,
		-0.400839, 0.839624, 0.366551,
		0.912853, 0.399941, 0.082136,
		34.899055, 39.747997, 46.149120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108250, 40.150810, 45.847435>,  <34.260056, 39.468037, 46.091625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108250, 40.150810, 45.847435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498299, 40.082355, 45.791080>,  <34.732327, 40.041283, 45.757267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498299, 40.082355, 45.791080>,  <34.108250, 40.150810, 45.847435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498299, 40.082355, 45.791080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050326, 0.448061, -0.892585,
		0.215877, 0.877470, 0.428302,
		0.975123, -0.171134, -0.140886,
		34.790836, 40.031013, 45.748814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370724, 40.789837, 45.517292>,  <34.108250, 40.150810, 45.847435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370724, 40.789837, 45.517292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642120, 40.510895, 45.424908>,  <34.804958, 40.343529, 45.369476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642120, 40.510895, 45.424908>,  <34.370724, 40.789837, 45.517292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642120, 40.510895, 45.424908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211967, 0.115187, -0.970465,
		0.703361, 0.707411, -0.069662,
		0.678494, -0.697353, -0.230966,
		34.845669, 40.301689, 45.355618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793800, 41.104698, 45.049011>,  <34.370724, 40.789837, 45.517292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793800, 41.104698, 45.049011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.851944, 40.713314, 44.990372>,  <34.886829, 40.478485, 44.955189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.851944, 40.713314, 44.990372>,  <34.793800, 41.104698, 45.049011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851944, 40.713314, 44.990372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005532, 0.148972, -0.988826,
		0.989363, 0.142927, 0.027068,
		0.145363, -0.978458, -0.146597,
		34.895554, 40.419777, 44.946392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242062, 40.972057, 44.360813>,  <34.793800, 41.104698, 45.049011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242062, 40.972057, 44.360813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064087, 40.615948, 44.399689>,  <34.957302, 40.402283, 44.423016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064087, 40.615948, 44.399689>,  <35.242062, 40.972057, 44.360813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064087, 40.615948, 44.399689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019165, -0.117967, -0.992832,
		0.895357, -0.439885, 0.069550,
		-0.444937, -0.890272, 0.097192,
		34.930607, 40.348866, 44.428848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.351158, 32.410412, 39.387791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028439, 32.284241, 39.587624>,  <44.834808, 32.208538, 39.707523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028439, 32.284241, 39.587624>,  <45.351158, 32.410412, 39.387791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028439, 32.284241, 39.587624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588518, 0.354325, -0.726705,
		0.052207, -0.880318, -0.471502,
		-0.806797, -0.315427, 0.499585,
		44.786400, 32.189613, 39.737499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981354, 32.144493, 39.005119>,  <45.351158, 32.410412, 39.387791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981354, 32.144493, 39.005119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.711258, 32.245811, 39.282215>,  <44.549202, 32.306602, 39.448475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.711258, 32.245811, 39.282215>,  <44.981354, 32.144493, 39.005119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711258, 32.245811, 39.282215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595745, 0.366476, -0.714691,
		-0.434900, -0.895286, -0.096561,
		-0.675240, 0.253293, 0.692743,
		44.508686, 32.321800, 39.490040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402851, 31.849688, 38.830059>,  <44.981354, 32.144493, 39.005119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402851, 31.849688, 38.830059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310398, 32.157047, 39.068771>,  <44.254929, 32.341461, 39.211998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310398, 32.157047, 39.068771>,  <44.402851, 31.849688, 38.830059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310398, 32.157047, 39.068771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660142, 0.326728, -0.676358,
		-0.714696, -0.550285, 0.431736,
		-0.231130, 0.768398, 0.596778,
		44.241058, 32.387566, 39.247807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641663, 31.872194, 38.929493>,  <44.402851, 31.849688, 38.830059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641663, 31.872194, 38.929493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.783997, 32.237015, 39.011028>,  <43.869396, 32.455906, 39.059948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.783997, 32.237015, 39.011028>,  <43.641663, 31.872194, 38.929493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783997, 32.237015, 39.011028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666160, 0.400509, -0.629145,
		-0.655449, 0.088085, 0.750085,
		0.355834, 0.912049, 0.203835,
		43.890747, 32.510628, 39.072178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058735, 32.397129, 39.024189>,  <43.641663, 31.872194, 38.929493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058735, 32.397129, 39.024189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357906, 32.654263, 38.958012>,  <43.537411, 32.808540, 38.918304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357906, 32.654263, 38.958012>,  <43.058735, 32.397129, 39.024189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357906, 32.654263, 38.958012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533953, 0.434583, -0.725280,
		-0.394332, 0.630798, 0.668278,
		0.747928, 0.642831, -0.165446,
		43.582283, 32.847111, 38.908379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722954, 32.980320, 38.903152>,  <43.058735, 32.397129, 39.024189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722954, 32.980320, 38.903152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.081039, 33.061516, 38.744461>,  <43.295891, 33.110233, 38.649246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.081039, 33.061516, 38.744461>,  <42.722954, 32.980320, 38.903152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081039, 33.061516, 38.744461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445243, 0.444976, -0.777017,
		0.018805, 0.872234, 0.488728,
		0.895212, 0.202991, -0.396724,
		43.349602, 33.122414, 38.625443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691372, 33.686047, 38.515427>,  <42.722954, 32.980320, 38.903152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691372, 33.686047, 38.515427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.000492, 33.473423, 38.376728>,  <43.185963, 33.345848, 38.293510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.000492, 33.473423, 38.376728>,  <42.691372, 33.686047, 38.515427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000492, 33.473423, 38.376728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216811, 0.292360, -0.931407,
		0.596472, 0.794965, 0.110686,
		0.772797, -0.531560, -0.346742,
		43.232330, 33.313953, 38.272705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020996, 34.119366, 38.058517>,  <42.691372, 33.686047, 38.515427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020996, 34.119366, 38.058517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132076, 33.752377, 37.944588>,  <43.198727, 33.532185, 37.876232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132076, 33.752377, 37.944588>,  <43.020996, 34.119366, 38.058517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132076, 33.752377, 37.944588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068815, 0.314719, -0.946687,
		0.958199, 0.243299, 0.150535,
		0.277704, -0.917474, -0.284820,
		43.215389, 33.477135, 37.859142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578651, 34.188183, 37.513344>,  <43.020996, 34.119366, 38.058517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578651, 34.188183, 37.513344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453358, 33.812477, 37.457260>,  <43.378181, 33.587051, 37.423611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453358, 33.812477, 37.457260>,  <43.578651, 34.188183, 37.513344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453358, 33.812477, 37.457260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093941, 0.116266, -0.988766,
		0.945018, -0.322887, 0.051817,
		-0.313235, -0.939269, -0.140206,
		43.359386, 33.530697, 37.415199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092812, 33.791744, 37.074047>,  <43.578651, 34.188183, 37.513344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092812, 33.791744, 37.074047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746902, 33.595123, 37.032982>,  <43.539356, 33.477150, 37.008343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746902, 33.595123, 37.032982>,  <44.092812, 33.791744, 37.074047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746902, 33.595123, 37.032982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093953, 0.042453, -0.994671,
		0.493291, -0.869812, 0.009470,
		-0.864775, -0.491552, -0.102664,
		43.487469, 33.447659, 37.002182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148472, 33.396931, 36.500221>,  <44.092812, 33.791744, 37.074047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148472, 33.396931, 36.500221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751431, 33.374260, 36.543148>,  <43.513206, 33.360657, 36.568905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751431, 33.374260, 36.543148>,  <44.148472, 33.396931, 36.500221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751431, 33.374260, 36.543148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109379, 0.034526, -0.993400,
		0.052604, -0.997795, -0.040471,
		-0.992608, -0.056683, 0.107321,
		43.453648, 33.357258, 36.575344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851669, 32.903828, 35.979744>,  <44.148472, 33.396931, 36.500221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851669, 32.903828, 35.979744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.549431, 33.136673, 36.099888>,  <43.368088, 33.276379, 36.171974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.549431, 33.136673, 36.099888>,  <43.851669, 32.903828, 35.979744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549431, 33.136673, 36.099888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140613, 0.303711, -0.942331,
		-0.639768, -0.754257, -0.147630,
		-0.755596, 0.582114, 0.300363,
		43.322750, 33.311306, 36.189995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233295, 32.724346, 35.578053>,  <43.851669, 32.903828, 35.979744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233295, 32.724346, 35.578053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134785, 33.089760, 35.707550>,  <43.075680, 33.309006, 35.785248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134785, 33.089760, 35.707550>,  <43.233295, 32.724346, 35.578053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134785, 33.089760, 35.707550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175409, 0.286509, -0.941883,
		-0.953195, -0.288749, 0.089682,
		-0.246274, 0.913530, 0.323748,
		43.060902, 33.363819, 35.804676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668179, 32.883347, 35.124500>,  <43.233295, 32.724346, 35.578053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668179, 32.883347, 35.124500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.808369, 33.233189, 35.258507>,  <42.892483, 33.443092, 35.338909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.808369, 33.233189, 35.258507>,  <42.668179, 32.883347, 35.124500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808369, 33.233189, 35.258507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107629, 0.392940, -0.913244,
		-0.930368, 0.284010, 0.231848,
		0.350473, 0.874606, 0.335012,
		42.913509, 33.495571, 35.359009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169331, 33.407223, 34.999729>,  <42.668179, 32.883347, 35.124500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169331, 33.407223, 34.999729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.524395, 33.587738, 35.036381>,  <42.737434, 33.696049, 35.058372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.524395, 33.587738, 35.036381>,  <42.169331, 33.407223, 34.999729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524395, 33.587738, 35.036381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125019, 0.427676, -0.895245,
		-0.443206, 0.783217, 0.436051,
		0.887659, 0.451293, 0.091631,
		42.790691, 33.723125, 35.063869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086376, 34.037071, 34.640644>,  <42.169331, 33.407223, 34.999729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086376, 34.037071, 34.640644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.482456, 33.990589, 34.671619>,  <42.720104, 33.962700, 34.690205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.482456, 33.990589, 34.671619>,  <42.086376, 34.037071, 34.640644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482456, 33.990589, 34.671619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119959, 0.423981, -0.897691,
		0.071482, 0.898185, 0.433767,
		0.990202, -0.116203, 0.077438,
		42.779518, 33.955727, 34.694851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417767, 34.725765, 34.616840>,  <42.086376, 34.037071, 34.640644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417767, 34.725765, 34.616840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.662239, 34.432587, 34.497341>,  <42.808922, 34.256680, 34.425640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.662239, 34.432587, 34.497341>,  <42.417767, 34.725765, 34.616840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662239, 34.432587, 34.497341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079222, 0.432207, -0.898288,
		0.787519, 0.525345, 0.322221,
		0.611177, -0.732945, -0.298753,
		42.845592, 34.212704, 34.407715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932522, 35.114197, 34.221401>,  <42.417767, 34.725765, 34.616840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932522, 35.114197, 34.221401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.965706, 34.725868, 34.131397>,  <42.985615, 34.492870, 34.077393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.965706, 34.725868, 34.131397>,  <42.932522, 35.114197, 34.221401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965706, 34.725868, 34.131397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283632, 0.239455, -0.928555,
		0.955338, 0.013212, 0.295221,
		0.082961, -0.970818, -0.225013,
		42.990593, 34.434624, 34.063892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561817, 35.075363, 33.972195>,  <42.932522, 35.114197, 34.221401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561817, 35.075363, 33.972195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417645, 34.744804, 33.799145>,  <43.331139, 34.546471, 33.695316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417645, 34.744804, 33.799145>,  <43.561817, 35.075363, 33.972195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417645, 34.744804, 33.799145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368852, 0.299725, -0.879837,
		0.856759, -0.476696, 0.196786,
		-0.360433, -0.826393, -0.432623,
		43.309513, 34.496887, 33.669357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033909, 34.856693, 33.521156>,  <43.561817, 35.075363, 33.972195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033909, 34.856693, 33.521156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709476, 34.664661, 33.387493>,  <43.514816, 34.549442, 33.307293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709476, 34.664661, 33.387493>,  <44.033909, 34.856693, 33.521156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709476, 34.664661, 33.387493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165849, 0.359091, -0.918449,
		0.560928, -0.800358, -0.211630,
		-0.811082, -0.480085, -0.334163,
		43.466152, 34.520638, 33.287243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262009, 34.343815, 32.944344>,  <44.033909, 34.856693, 33.521156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262009, 34.343815, 32.944344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871891, 34.428226, 32.918179>,  <43.637821, 34.478874, 32.902481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871891, 34.428226, 32.918179>,  <44.262009, 34.343815, 32.944344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871891, 34.428226, 32.918179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105334, 0.183906, -0.977284,
		-0.194204, -0.960024, -0.201590,
		-0.975289, 0.211027, -0.065408,
		43.579304, 34.491535, 32.898556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687580, 34.151196, 33.450871>,  <44.262009, 34.343815, 32.944344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687580, 34.151196, 33.450871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.020565, 34.361485, 33.520863>,  <45.220356, 34.487659, 33.562859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.020565, 34.361485, 33.520863>,  <44.687580, 34.151196, 33.450871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020565, 34.361485, 33.520863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324039, -0.718094, 0.615905,
		0.449448, -0.456019, -0.768143,
		0.832464, 0.525726, 0.174978,
		45.270306, 34.519203, 33.573357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262245, 33.724461, 33.309444>,  <44.687580, 34.151196, 33.450871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262245, 33.724461, 33.309444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.403679, 34.004337, 33.557770>,  <45.488537, 34.172264, 33.706764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.403679, 34.004337, 33.557770>,  <45.262245, 33.724461, 33.309444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403679, 34.004337, 33.557770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394082, -0.713336, 0.579527,
		0.848339, 0.039740, -0.527960,
		0.353583, 0.699695, 0.620811,
		45.509754, 34.214245, 33.744015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841385, 33.463104, 33.557705>,  <45.262245, 33.724461, 33.309444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841385, 33.463104, 33.557705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740082, 33.745697, 33.822052>,  <45.679298, 33.915253, 33.980659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740082, 33.745697, 33.822052>,  <45.841385, 33.463104, 33.557705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740082, 33.745697, 33.822052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381970, -0.554601, 0.739267,
		0.888796, 0.439657, -0.129397,
		-0.253261, 0.706483, 0.660863,
		45.664104, 33.957642, 34.020309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434555, 33.577881, 34.062256>,  <45.841385, 33.463104, 33.557705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434555, 33.577881, 34.062256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106857, 33.716793, 34.244785>,  <45.910236, 33.800140, 34.354301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106857, 33.716793, 34.244785>,  <46.434555, 33.577881, 34.062256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106857, 33.716793, 34.244785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318707, -0.385788, 0.865790,
		0.476717, 0.854729, 0.205375,
		-0.819247, 0.347283, 0.456321,
		45.861084, 33.820976, 34.381683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.691914, 33.858612, 34.570423>,  <46.434555, 33.577881, 34.062256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.691914, 33.858612, 34.570423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.310387, 33.811596, 34.681004>,  <46.081470, 33.783386, 34.747353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.310387, 33.811596, 34.681004>,  <46.691914, 33.858612, 34.570423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.310387, 33.811596, 34.681004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292780, -0.569719, 0.767919,
		0.067233, 0.813390, 0.577820,
		-0.953813, -0.117544, 0.276449,
		46.024242, 33.776333, 34.763939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615894, 34.000820, 35.238361>,  <46.691914, 33.858612, 34.570423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615894, 34.000820, 35.238361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.283649, 33.789204, 35.168846>,  <46.084305, 33.662235, 35.127136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.283649, 33.789204, 35.168846>,  <46.615894, 34.000820, 35.238361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283649, 33.789204, 35.168846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129143, -0.486594, 0.864030,
		-0.541672, 0.695229, 0.472492,
		-0.830611, -0.529040, -0.173790,
		46.034466, 33.630493, 35.116711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160080, 34.109058, 35.870018>,  <46.615894, 34.000820, 35.238361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160080, 34.109058, 35.870018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.066635, 33.764866, 35.688908>,  <46.010571, 33.558350, 35.580242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.066635, 33.764866, 35.688908>,  <46.160080, 34.109058, 35.870018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.066635, 33.764866, 35.688908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233140, -0.501646, 0.833065,
		-0.943966, 0.089052, 0.317801,
		-0.233610, -0.860477, -0.452775,
		45.996552, 33.506721, 35.553074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727013, 33.838455, 36.403519>,  <46.160080, 34.109058, 35.870018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727013, 33.838455, 36.403519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.829060, 33.532166, 36.167358>,  <45.890289, 33.348392, 36.025661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.829060, 33.532166, 36.167358>,  <45.727013, 33.838455, 36.403519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.829060, 33.532166, 36.167358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188315, -0.559565, 0.807109,
		-0.948394, -0.317092, 0.001441,
		0.255122, -0.765728, -0.590401,
		45.905598, 33.302448, 35.990238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459919, 33.129539, 36.663242>,  <45.727013, 33.838455, 36.403519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459919, 33.129539, 36.663242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.754139, 32.998085, 36.426273>,  <45.930672, 32.919212, 36.284092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.754139, 32.998085, 36.426273>,  <45.459919, 33.129539, 36.663242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754139, 32.998085, 36.426273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156590, -0.768307, 0.620632,
		-0.659126, -0.549273, -0.513665,
		0.735548, -0.328640, -0.592422,
		45.974804, 32.899494, 36.248547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249950, 32.449543, 36.537930>,  <45.459919, 33.129539, 36.663242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249950, 32.449543, 36.537930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644520, 32.495117, 36.490635>,  <45.881264, 32.522461, 36.462257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644520, 32.495117, 36.490635>,  <45.249950, 32.449543, 36.537930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644520, 32.495117, 36.490635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159065, -0.841678, 0.516019,
		-0.040721, -0.527822, -0.848378,
		0.986428, 0.113935, -0.118232,
		45.940449, 32.529297, 36.455166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543430, 31.762911, 36.462448>,  <45.249950, 32.449543, 36.537930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543430, 31.762911, 36.462448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860901, 31.988894, 36.552692>,  <46.051384, 32.124481, 36.606838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860901, 31.988894, 36.552692>,  <45.543430, 31.762911, 36.462448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860901, 31.988894, 36.552692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348255, -0.726038, 0.592948,
		0.498794, -0.392038, -0.772989,
		0.793677, 0.564956, 0.225614,
		46.099003, 32.158379, 36.620377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175785, 31.417028, 36.292370>,  <45.543430, 31.762911, 36.462448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175785, 31.417028, 36.292370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.241653, 31.677687, 36.588543>,  <46.281174, 31.834082, 36.766247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.241653, 31.677687, 36.588543>,  <46.175785, 31.417028, 36.292370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241653, 31.677687, 36.588543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479222, -0.708983, 0.517388,
		0.862108, 0.269632, -0.429033,
		0.164673, 0.651646, 0.740433,
		46.291054, 31.873180, 36.810673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717964, 31.119112, 36.602650>,  <46.175785, 31.417028, 36.292370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717964, 31.119112, 36.602650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.595757, 31.400949, 36.858841>,  <46.522434, 31.570051, 37.012554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.595757, 31.400949, 36.858841>,  <46.717964, 31.119112, 36.602650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.595757, 31.400949, 36.858841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282620, -0.575222, 0.767624,
		0.909278, 0.415532, -0.023393,
		-0.305516, 0.704594, 0.640474,
		46.504101, 31.612328, 37.050983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.035713, 30.928022, 37.220886>,  <46.717964, 31.119112, 36.602650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.035713, 30.928022, 37.220886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.777943, 31.205214, 37.350189>,  <46.623280, 31.371529, 37.427769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.777943, 31.205214, 37.350189>,  <47.035713, 30.928022, 37.220886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777943, 31.205214, 37.350189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042753, -0.389426, 0.920065,
		0.763468, 0.606736, 0.221330,
		-0.644429, 0.692978, 0.323254,
		46.584614, 31.413107, 37.447166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.338882, 31.265495, 37.745190>,  <47.035713, 30.928022, 37.220886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.338882, 31.265495, 37.745190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.940681, 31.274279, 37.782051>,  <46.701759, 31.279549, 37.804169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.940681, 31.274279, 37.782051>,  <47.338882, 31.265495, 37.745190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.940681, 31.274279, 37.782051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078773, -0.348507, 0.933990,
		0.052626, 0.937049, 0.345210,
		-0.995503, 0.021959, 0.092155,
		46.642029, 31.280867, 37.809696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.218964, 31.373701, 38.444553>,  <47.338882, 31.265495, 37.745190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.218964, 31.373701, 38.444553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.860870, 31.244799, 38.321453>,  <46.646015, 31.167458, 38.247593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.860870, 31.244799, 38.321453>,  <47.218964, 31.373701, 38.444553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.860870, 31.244799, 38.321453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153601, -0.425152, 0.891994,
		-0.418291, 0.845812, 0.331111,
		-0.895231, -0.322254, -0.307755,
		46.592300, 31.148123, 38.229126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809341, 31.416618, 39.037823>,  <47.218964, 31.373701, 38.444553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809341, 31.416618, 39.037823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.564964, 31.180513, 38.826794>,  <46.418339, 31.038851, 38.700176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.564964, 31.180513, 38.826794>,  <46.809341, 31.416618, 39.037823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564964, 31.180513, 38.826794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136524, -0.577868, 0.804630,
		-0.779812, 0.563612, 0.272461,
		-0.610946, -0.590262, -0.527575,
		46.381680, 31.003435, 38.668522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182278, 31.372736, 39.374519>,  <46.809341, 31.416618, 39.037823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182278, 31.372736, 39.374519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175186, 31.066982, 39.116714>,  <46.170933, 30.883530, 38.962032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175186, 31.066982, 39.116714>,  <46.182278, 31.372736, 39.374519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175186, 31.066982, 39.116714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044840, -0.643362, 0.764248,
		-0.998837, 0.042449, -0.022869,
		-0.017729, -0.764385, -0.644517,
		46.169868, 30.837667, 38.923359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573814, 31.034113, 39.487850>,  <46.182278, 31.372736, 39.374519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573814, 31.034113, 39.487850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.792217, 30.751106, 39.308384>,  <45.923260, 30.581303, 39.200703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.792217, 30.751106, 39.308384>,  <45.573814, 31.034113, 39.487850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792217, 30.751106, 39.308384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221990, -0.638577, 0.736844,
		-0.807837, -0.302720, -0.505727,
		0.546003, -0.707517, -0.448666,
		45.956017, 30.538851, 39.173786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191978, 30.384478, 39.551720>,  <45.573814, 31.034113, 39.487850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191978, 30.384478, 39.551720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.573990, 30.279556, 39.496426>,  <45.803196, 30.216604, 39.463249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.573990, 30.279556, 39.496426>,  <45.191978, 30.384478, 39.551720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573990, 30.279556, 39.496426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022865, -0.530002, 0.847688,
		-0.295617, -0.806409, -0.512167,
		0.955033, -0.262301, -0.138239,
		45.860500, 30.200865, 39.454952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226246, 29.675566, 39.602894>,  <45.191978, 30.384478, 39.551720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226246, 29.675566, 39.602894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.596008, 29.809269, 39.676369>,  <45.817867, 29.889490, 39.720451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.596008, 29.809269, 39.676369>,  <45.226246, 29.675566, 39.602894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596008, 29.809269, 39.676369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097140, -0.672057, 0.734100,
		0.368824, -0.660766, -0.653725,
		0.924409, 0.334257, 0.183684,
		45.873333, 29.909546, 39.731476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.734398, 39.948269, 40.223988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380810, 39.769333, 40.169621>,  <38.168655, 39.661972, 40.137001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380810, 39.769333, 40.169621>,  <38.734398, 39.948269, 40.223988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380810, 39.769333, 40.169621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317507, -0.360986, -0.876857,
		0.343190, -0.818274, 0.461137,
		-0.883973, -0.447343, -0.135921,
		38.115616, 39.635132, 40.128845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884853, 39.395145, 39.828777>,  <38.734398, 39.948269, 40.223988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884853, 39.395145, 39.828777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489784, 39.440910, 39.786041>,  <38.252743, 39.468369, 39.760399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489784, 39.440910, 39.786041>,  <38.884853, 39.395145, 39.828777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489784, 39.440910, 39.786041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078591, -0.227856, -0.970518,
		-0.135386, -0.966949, 0.216055,
		-0.987671, 0.114415, -0.106842,
		38.193481, 39.475235, 39.753990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561089, 38.647621, 39.738148>,  <38.884853, 39.395145, 39.828777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561089, 38.647621, 39.738148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344620, 38.945980, 39.582829>,  <38.214737, 39.124996, 39.489635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344620, 38.945980, 39.582829>,  <38.561089, 38.647621, 39.738148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344620, 38.945980, 39.582829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073280, -0.501834, -0.861854,
		-0.837713, -0.437957, 0.326237,
		-0.541172, 0.745893, -0.388299,
		38.182266, 39.169746, 39.466339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975689, 38.308285, 39.297688>,  <38.561089, 38.647621, 39.738148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975689, 38.308285, 39.297688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999310, 38.685215, 39.165909>,  <38.013481, 38.911373, 39.086842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999310, 38.685215, 39.165909>,  <37.975689, 38.308285, 39.297688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999310, 38.685215, 39.165909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100337, -0.322745, -0.941153,
		-0.993200, 0.088630, 0.075493,
		0.059049, 0.942327, -0.329443,
		38.017025, 38.967915, 39.067078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381962, 38.330086, 38.985180>,  <37.975689, 38.308285, 39.297688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381962, 38.330086, 38.985180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609753, 38.633217, 38.857807>,  <37.746426, 38.815094, 38.781384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609753, 38.633217, 38.857807>,  <37.381962, 38.330086, 38.985180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609753, 38.633217, 38.857807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174014, -0.267461, -0.947726,
		-0.803377, 0.595119, -0.020440,
		0.569477, 0.757824, -0.318431,
		37.780594, 38.860565, 38.762280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026878, 38.606297, 38.469074>,  <37.381962, 38.330086, 38.985180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026878, 38.606297, 38.469074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390301, 38.762268, 38.409096>,  <37.608353, 38.855850, 38.373108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390301, 38.762268, 38.409096>,  <37.026878, 38.606297, 38.469074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390301, 38.762268, 38.409096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034702, -0.287251, -0.957227,
		-0.416321, 0.874897, -0.247452,
		0.908555, 0.389926, -0.149949,
		37.662868, 38.879246, 38.364113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990383, 38.995022, 37.919544>,  <37.026878, 38.606297, 38.469074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990383, 38.995022, 37.919544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384670, 38.928356, 37.929142>,  <37.621243, 38.888355, 37.934902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384670, 38.928356, 37.929142>,  <36.990383, 38.995022, 37.919544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384670, 38.928356, 37.929142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020887, -0.262445, -0.964721,
		0.167081, 0.950445, -0.262179,
		0.985722, -0.166663, 0.023997,
		37.680386, 38.878357, 37.936340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204193, 39.382504, 37.397438>,  <36.990383, 38.995022, 37.919544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204193, 39.382504, 37.397438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489109, 39.109035, 37.460979>,  <37.660057, 38.944954, 37.499104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489109, 39.109035, 37.460979>,  <37.204193, 39.382504, 37.397438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489109, 39.109035, 37.460979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031077, -0.256818, -0.965960,
		0.701197, 0.683107, -0.204175,
		0.712290, -0.683673, 0.158851,
		37.702797, 38.903934, 37.508636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738441, 39.647835, 36.909687>,  <37.204193, 39.382504, 37.397438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738441, 39.647835, 36.909687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806004, 39.267643, 37.014034>,  <37.846542, 39.039528, 37.076641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806004, 39.267643, 37.014034>,  <37.738441, 39.647835, 36.909687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806004, 39.267643, 37.014034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195113, -0.227191, -0.954104,
		0.966127, 0.212053, 0.147078,
		0.168906, -0.950483, 0.260870,
		37.856674, 38.982498, 37.092297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407719, 39.455158, 36.584202>,  <37.738441, 39.647835, 36.909687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407719, 39.455158, 36.584202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202114, 39.122372, 36.667759>,  <38.078751, 38.922699, 36.717892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202114, 39.122372, 36.667759>,  <38.407719, 39.455158, 36.584202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202114, 39.122372, 36.667759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066899, -0.281661, -0.957179,
		0.855172, -0.478024, 0.200434,
		-0.514009, -0.831962, 0.208889,
		38.047913, 38.872784, 36.730427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713879, 39.023308, 36.192833>,  <38.407719, 39.455158, 36.584202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713879, 39.023308, 36.192833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389584, 38.802296, 36.270203>,  <38.195007, 38.669689, 36.316624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389584, 38.802296, 36.270203>,  <38.713879, 39.023308, 36.192833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389584, 38.802296, 36.270203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146215, -0.128815, -0.980830,
		0.566851, -0.823481, 0.023648,
		-0.810741, -0.552527, 0.193424,
		38.146362, 38.636539, 36.328228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798695, 38.395260, 35.843201>,  <38.713879, 39.023308, 36.192833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798695, 38.395260, 35.843201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407475, 38.464985, 35.888874>,  <38.172741, 38.506821, 35.916279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407475, 38.464985, 35.888874>,  <38.798695, 38.395260, 35.843201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407475, 38.464985, 35.888874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136602, -0.122564, -0.983015,
		-0.157360, -0.977033, 0.143686,
		-0.978048, 0.174315, 0.114178,
		38.114059, 38.517277, 35.923126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417664, 37.939083, 35.327724>,  <38.798695, 38.395260, 35.843201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417664, 37.939083, 35.327724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159397, 38.226574, 35.430912>,  <38.004436, 38.399067, 35.492825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159397, 38.226574, 35.430912>,  <38.417664, 37.939083, 35.327724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159397, 38.226574, 35.430912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391667, -0.021698, -0.919851,
		-0.655526, -0.694952, 0.295512,
		-0.645665, 0.718728, 0.257966,
		37.965698, 38.442192, 35.508301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615768, 37.698372, 35.227261>,  <38.417664, 37.939083, 35.327724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615768, 37.698372, 35.227261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743790, 38.076984, 35.211075>,  <37.820602, 38.304153, 35.201363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743790, 38.076984, 35.211075>,  <37.615768, 37.698372, 35.227261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743790, 38.076984, 35.211075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303157, 0.061851, -0.950932,
		-0.897587, 0.316615, 0.306744,
		0.320052, 0.946535, -0.040468,
		37.839806, 38.360947, 35.198933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926105, 37.042847, 34.963089>,  <37.615768, 37.698372, 35.227261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926105, 37.042847, 34.963089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206196, 37.287407, 34.815647>,  <38.374252, 37.434143, 34.727180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206196, 37.287407, 34.815647>,  <37.926105, 37.042847, 34.963089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206196, 37.287407, 34.815647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039608, 0.548784, 0.835025,
		0.712820, -0.570108, 0.408491,
		0.700228, 0.611401, -0.368604,
		38.416264, 37.470829, 34.705067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075703, 36.419262, 35.552856>,  <37.926105, 37.042847, 34.963089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075703, 36.419262, 35.552856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469032, 36.360096, 35.595184>,  <38.705029, 36.324596, 35.620579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469032, 36.360096, 35.595184>,  <38.075703, 36.419262, 35.552856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469032, 36.360096, 35.595184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110938, -0.026783, 0.993466,
		-0.144113, -0.988638, -0.042746,
		0.983323, -0.147913, 0.105817,
		38.764030, 36.315723, 35.626930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135086, 36.036316, 36.170452>,  <38.075703, 36.419262, 35.552856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135086, 36.036316, 36.170452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522053, 36.115273, 36.107021>,  <38.754230, 36.162647, 36.068962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522053, 36.115273, 36.107021>,  <38.135086, 36.036316, 36.170452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522053, 36.115273, 36.107021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190777, -0.156445, 0.969087,
		0.166480, -0.967761, -0.189005,
		0.967414, 0.197391, -0.158581,
		38.812275, 36.174488, 36.059448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627308, 35.409718, 36.361572>,  <38.135086, 36.036316, 36.170452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627308, 35.409718, 36.361572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820339, 35.758991, 36.388897>,  <38.936157, 35.968555, 36.405293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820339, 35.758991, 36.388897>,  <38.627308, 35.409718, 36.361572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820339, 35.758991, 36.388897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125457, -0.146108, 0.981281,
		0.866823, -0.464971, -0.180055,
		0.482575, 0.873187, 0.068316,
		38.965111, 36.020947, 36.409393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180523, 35.357388, 36.814240>,  <38.627308, 35.409718, 36.361572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180523, 35.357388, 36.814240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136024, 35.754890, 36.817558>,  <39.109325, 35.993393, 36.819550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136024, 35.754890, 36.817558>,  <39.180523, 35.357388, 36.814240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136024, 35.754890, 36.817558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255054, 0.020477, 0.966710,
		0.960506, 0.109660, -0.255740,
		-0.111246, 0.993758, 0.008301,
		39.102650, 36.053017, 36.820049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816528, 35.468758, 36.968716>,  <39.180523, 35.357388, 36.814240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816528, 35.468758, 36.968716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587662, 35.779282, 37.074520>,  <39.450340, 35.965595, 37.138004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587662, 35.779282, 37.074520>,  <39.816528, 35.468758, 36.968716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587662, 35.779282, 37.074520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356264, -0.055241, 0.932751,
		0.738717, 0.627925, -0.244965,
		-0.572165, 0.776311, 0.264514,
		39.416012, 36.012177, 37.153873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216991, 35.849548, 37.511040>,  <39.816528, 35.468758, 36.968716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216991, 35.849548, 37.511040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852299, 36.006325, 37.560249>,  <39.633484, 36.100391, 37.589775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852299, 36.006325, 37.560249>,  <40.216991, 35.849548, 37.511040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852299, 36.006325, 37.560249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240018, 0.265202, 0.933841,
		0.333381, 0.880938, -0.335865,
		-0.911729, 0.391938, 0.123027,
		39.578781, 36.123905, 37.597157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320049, 36.535950, 37.735046>,  <40.216991, 35.849548, 37.511040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320049, 36.535950, 37.735046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965683, 36.410400, 37.871651>,  <39.753063, 36.335072, 37.953613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965683, 36.410400, 37.871651>,  <40.320049, 36.535950, 37.735046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965683, 36.410400, 37.871651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288074, 0.204735, 0.935466,
		-0.363536, 0.927129, -0.090961,
		-0.885920, -0.313872, 0.341510,
		39.699905, 36.316238, 37.974102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185673, 36.915913, 38.343571>,  <40.320049, 36.535950, 37.735046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185673, 36.915913, 38.343571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913536, 36.624222, 38.372856>,  <39.750256, 36.449207, 38.390427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913536, 36.624222, 38.372856>,  <40.185673, 36.915913, 38.343571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913536, 36.624222, 38.372856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007334, 0.106668, 0.994268,
		-0.732860, 0.675904, -0.077919,
		-0.680341, -0.729230, 0.073216,
		39.709435, 36.405453, 38.394821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636139, 37.218933, 38.641766>,  <40.185673, 36.915913, 38.343571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636139, 37.218933, 38.641766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602539, 36.830036, 38.729118>,  <39.582378, 36.596699, 38.781528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602539, 36.830036, 38.729118>,  <39.636139, 37.218933, 38.641766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602539, 36.830036, 38.729118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143300, 0.228664, 0.962901,
		-0.986108, 0.049592, -0.158531,
		-0.084003, -0.972241, 0.218381,
		39.577339, 36.538364, 38.794632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250809, 37.222954, 39.220669>,  <39.636139, 37.218933, 38.641766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250809, 37.222954, 39.220669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399185, 36.851753, 39.234600>,  <39.488213, 36.629032, 39.242958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399185, 36.851753, 39.234600>,  <39.250809, 37.222954, 39.220669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399185, 36.851753, 39.234600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037487, 0.022506, 0.999044,
		-0.927899, -0.371894, -0.026440,
		0.370944, -0.928002, 0.034824,
		39.510468, 36.573353, 39.245049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848637, 36.913403, 39.709858>,  <39.250809, 37.222954, 39.220669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848637, 36.913403, 39.709858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173367, 36.679935, 39.703293>,  <39.368206, 36.539856, 39.699356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173367, 36.679935, 39.703293>,  <38.848637, 36.913403, 39.709858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173367, 36.679935, 39.703293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011882, -0.044610, 0.998934,
		-0.583779, -0.810765, -0.043151,
		0.811826, -0.583669, -0.016409,
		39.416916, 36.504833, 39.698372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690910, 36.333466, 40.093578>,  <38.848637, 36.913403, 39.709858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690910, 36.333466, 40.093578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090630, 36.347485, 40.088406>,  <39.330463, 36.355896, 40.085300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090630, 36.347485, 40.088406>,  <38.690910, 36.333466, 40.093578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090630, 36.347485, 40.088406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012255, 0.019496, 0.999735,
		0.035308, -0.999195, 0.019053,
		0.999301, 0.035065, -0.012933,
		39.390419, 36.357998, 40.084526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873726, 35.830536, 40.492760>,  <38.690910, 36.333466, 40.093578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873726, 35.830536, 40.492760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173470, 36.095348, 40.487614>,  <39.353317, 36.254238, 40.484528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173470, 36.095348, 40.487614>,  <38.873726, 35.830536, 40.492760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173470, 36.095348, 40.487614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058307, 0.085324, 0.994646,
		0.659589, -0.744600, 0.102540,
		0.749362, 0.662036, -0.012864,
		39.398277, 36.293961, 40.483753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728569, 35.087624, 40.564342>,  <38.873726, 35.830536, 40.492760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728569, 35.087624, 40.564342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391514, 34.944973, 40.725727>,  <38.189281, 34.859383, 40.822559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391514, 34.944973, 40.725727>,  <38.728569, 35.087624, 40.564342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391514, 34.944973, 40.725727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404746, -0.074724, -0.911371,
		0.355167, -0.931254, -0.081378,
		-0.842637, -0.356627, 0.403461,
		38.138721, 34.837986, 40.846764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534660, 34.442459, 40.208145>,  <38.728569, 35.087624, 40.564342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534660, 34.442459, 40.208145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199287, 34.594730, 40.364155>,  <37.998066, 34.686092, 40.457760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199287, 34.594730, 40.364155>,  <38.534660, 34.442459, 40.208145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199287, 34.594730, 40.364155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471713, -0.148424, -0.869170,
		-0.272987, -0.912717, 0.304015,
		-0.838430, 0.380680, 0.390023,
		37.947758, 34.708935, 40.481163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022854, 34.098011, 39.917252>,  <38.534660, 34.442459, 40.208145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022854, 34.098011, 39.917252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826817, 34.405552, 40.081532>,  <37.709194, 34.590076, 40.180099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826817, 34.405552, 40.081532>,  <38.022854, 34.098011, 39.917252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826817, 34.405552, 40.081532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624973, 0.018496, -0.780427,
		-0.607630, -0.639158, 0.471447,
		-0.490096, 0.768853, 0.410695,
		37.679787, 34.636208, 40.204739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275742, 33.933899, 39.993210>,  <38.022854, 34.098011, 39.917252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275742, 33.933899, 39.993210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279457, 34.333702, 40.005184>,  <37.281685, 34.573586, 40.012371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279457, 34.333702, 40.005184>,  <37.275742, 33.933899, 39.993210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279457, 34.333702, 40.005184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606443, 0.029436, -0.794582,
		-0.795072, -0.010778, 0.606419,
		0.009286, 0.999509, 0.029940,
		37.282242, 34.633556, 40.014168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559235, 34.176773, 39.892368>,  <37.275742, 33.933899, 39.993210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559235, 34.176773, 39.892368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799171, 34.476879, 39.781166>,  <36.943134, 34.656944, 39.714443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799171, 34.476879, 39.781166>,  <36.559235, 34.176773, 39.892368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799171, 34.476879, 39.781166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589051, 0.178945, -0.788034,
		-0.541489, 0.636456, 0.549285,
		0.599841, 0.750269, -0.278008,
		36.979122, 34.701962, 39.697765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063625, 34.778259, 39.930679>,  <36.559235, 34.176773, 39.892368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063625, 34.778259, 39.930679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368965, 34.848415, 39.681992>,  <36.552170, 34.890511, 39.532780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368965, 34.848415, 39.681992>,  <36.063625, 34.778259, 39.930679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368965, 34.848415, 39.681992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645512, 0.243889, -0.723763,
		0.024688, 0.953811, 0.299390,
		0.763351, 0.175391, -0.621718,
		36.597969, 34.901031, 39.495476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771835, 35.154312, 39.471806>,  <36.063625, 34.778259, 39.930679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771835, 35.154312, 39.471806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109550, 35.072380, 39.273724>,  <36.312180, 35.023220, 39.154877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109550, 35.072380, 39.273724>,  <35.771835, 35.154312, 39.471806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109550, 35.072380, 39.273724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453648, 0.218742, -0.863919,
		0.285278, 0.954042, 0.091761,
		0.844287, -0.204830, -0.495201,
		36.362835, 35.010933, 39.125164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860168, 35.709362, 38.983852>,  <35.771835, 35.154312, 39.471806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860168, 35.709362, 38.983852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042587, 35.383259, 38.841087>,  <36.152039, 35.187599, 38.755428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042587, 35.383259, 38.841087>,  <35.860168, 35.709362, 38.983852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042587, 35.383259, 38.841087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521437, 0.080219, -0.849511,
		0.721198, 0.573522, -0.388519,
		0.456046, -0.815254, -0.356909,
		36.179401, 35.138683, 38.734016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044624, 35.904854, 38.249931>,  <35.860168, 35.709362, 38.983852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044624, 35.904854, 38.249931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061859, 35.505394, 38.261562>,  <36.072201, 35.265717, 38.268539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061859, 35.505394, 38.261562>,  <36.044624, 35.904854, 38.249931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061859, 35.505394, 38.261562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565802, -0.048376, -0.823121,
		0.823415, 0.019013, -0.567121,
		0.043085, -0.998648, 0.029076,
		36.074783, 35.205799, 38.270287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110153, 35.670509, 37.578686>,  <36.044624, 35.904854, 38.249931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110153, 35.670509, 37.578686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981304, 35.326778, 37.737576>,  <35.903996, 35.120541, 37.832909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981304, 35.326778, 37.737576>,  <36.110153, 35.670509, 37.578686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981304, 35.326778, 37.737576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708440, -0.059523, -0.703256,
		0.627975, -0.507943, -0.589612,
		-0.322119, -0.859332, 0.397226,
		35.884670, 35.068977, 37.856743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947842, 35.115963, 37.054459>,  <36.110153, 35.670509, 37.578686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947842, 35.115963, 37.054459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748699, 35.011848, 37.385368>,  <35.629211, 34.949379, 37.583916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748699, 35.011848, 37.385368>,  <35.947842, 35.115963, 37.054459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748699, 35.011848, 37.385368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812373, -0.193995, -0.549924,
		0.303625, -0.945842, -0.114866,
		-0.497858, -0.260285, 0.827278,
		35.599342, 34.933762, 37.633553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981960, 34.448551, 37.164547>,  <35.947842, 35.115963, 37.054459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981960, 34.448551, 37.164547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833210, 34.371944, 36.801220>,  <35.743961, 34.325981, 36.583225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833210, 34.371944, 36.801220>,  <35.981960, 34.448551, 37.164547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833210, 34.371944, 36.801220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449604, 0.893218, -0.004262,
		0.812137, 0.406796, -0.418270,
		-0.371872, -0.191517, -0.908313,
		35.721649, 34.314487, 36.528725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.550964, 33.911198, 44.706833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.189007, 34.069271, 44.643593>,  <37.971832, 34.164116, 44.605648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.189007, 34.069271, 44.643593>,  <38.550964, 33.911198, 44.706833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189007, 34.069271, 44.643593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183030, 0.025929, -0.982765,
		-0.384273, -0.918236, -0.095794,
		-0.904895, 0.395183, -0.158101,
		37.917538, 34.187824, 44.596161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432785, 33.554356, 44.111012>,  <38.550964, 33.911198, 44.706833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432785, 33.554356, 44.111012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155933, 33.842743, 44.097366>,  <37.989822, 34.015774, 44.089180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155933, 33.842743, 44.097366>,  <38.432785, 33.554356, 44.111012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155933, 33.842743, 44.097366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212081, 0.157961, -0.964401,
		-0.689915, -0.674723, -0.262233,
		-0.692126, 0.720970, -0.034116,
		37.948296, 34.059032, 44.087132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854202, 33.477180, 43.584412>,  <38.432785, 33.554356, 44.111012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854202, 33.477180, 43.584412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883369, 33.871506, 43.644882>,  <37.900871, 34.108101, 43.681164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883369, 33.871506, 43.644882>,  <37.854202, 33.477180, 43.584412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883369, 33.871506, 43.644882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048550, 0.154907, -0.986735,
		-0.996155, 0.064616, 0.059157,
		0.072923, 0.985814, 0.151175,
		37.905247, 34.167252, 43.690235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315975, 33.781975, 43.191658>,  <37.854202, 33.477180, 43.584412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315975, 33.781975, 43.191658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.593578, 34.064049, 43.249714>,  <37.760139, 34.233295, 43.284550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.593578, 34.064049, 43.249714>,  <37.315975, 33.781975, 43.191658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593578, 34.064049, 43.249714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139210, 0.066357, -0.988037,
		-0.706385, 0.705907, -0.052118,
		0.694004, 0.705190, 0.145143,
		37.801781, 34.275604, 43.293259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042156, 34.493069, 42.958248>,  <37.315975, 33.781975, 43.191658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042156, 34.493069, 42.958248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441959, 34.480579, 42.958054>,  <37.681843, 34.473087, 42.957939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441959, 34.480579, 42.958054>,  <37.042156, 34.493069, 42.958248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441959, 34.480579, 42.958054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003160, 0.116574, -0.993177,
		0.031066, 0.992691, 0.116616,
		0.999512, -0.031222, -0.000484,
		37.741814, 34.471214, 42.957909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187595, 34.978207, 42.486965>,  <37.042156, 34.493069, 42.958248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187595, 34.978207, 42.486965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556679, 34.833912, 42.541344>,  <37.778130, 34.747334, 42.573971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556679, 34.833912, 42.541344>,  <37.187595, 34.978207, 42.486965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556679, 34.833912, 42.541344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204247, 0.158383, -0.966022,
		0.326949, 0.919121, 0.219821,
		0.922707, -0.360737, 0.135945,
		37.833492, 34.725689, 42.582127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650921, 35.451878, 42.180943>,  <37.187595, 34.978207, 42.486965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650921, 35.451878, 42.180943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848789, 35.104298, 42.174828>,  <37.967510, 34.895752, 42.171158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848789, 35.104298, 42.174828>,  <37.650921, 35.451878, 42.180943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848789, 35.104298, 42.174828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311808, 0.193870, -0.930156,
		0.811221, 0.455350, 0.366846,
		0.494667, -0.868948, -0.015290,
		37.997189, 34.843613, 42.170242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180424, 35.614445, 41.694202>,  <37.650921, 35.451878, 42.180943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180424, 35.614445, 41.694202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149467, 35.215679, 41.699509>,  <38.130894, 34.976421, 41.702690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149467, 35.215679, 41.699509>,  <38.180424, 35.614445, 41.694202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149467, 35.215679, 41.699509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039662, -0.016369, -0.999079,
		0.996212, -0.076793, 0.040806,
		-0.077390, -0.996913, 0.013261,
		38.126251, 34.916607, 41.703487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668633, 35.324482, 41.240456>,  <38.180424, 35.614445, 41.694202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668633, 35.324482, 41.240456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.379944, 35.049824, 41.275383>,  <38.206730, 34.885029, 41.296341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.379944, 35.049824, 41.275383>,  <38.668633, 35.324482, 41.240456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379944, 35.049824, 41.275383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141381, 0.022742, -0.989694,
		0.677588, -0.726632, -0.113493,
		-0.721725, -0.686650, 0.087323,
		38.163425, 34.843830, 41.301579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338799, 35.563576, 41.047359>,  <38.668633, 35.324482, 41.240456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338799, 35.563576, 41.047359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.438972, 35.944805, 40.979321>,  <39.499077, 36.173542, 40.938496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.438972, 35.944805, 40.979321>,  <39.338799, 35.563576, 41.047359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438972, 35.944805, 40.979321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045646, 0.163878, 0.985424,
		0.967056, -0.254550, -0.002463,
		0.250436, 0.953073, -0.170098,
		39.514103, 36.230728, 40.928291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011093, 35.743946, 41.478035>,  <39.338799, 35.563576, 41.047359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011093, 35.743946, 41.478035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.848354, 36.096806, 41.383129>,  <39.750713, 36.308521, 41.326187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.848354, 36.096806, 41.383129>,  <40.011093, 35.743946, 41.478035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848354, 36.096806, 41.383129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076735, 0.291818, 0.953391,
		0.910270, 0.369673, -0.186416,
		-0.406843, 0.882147, -0.237266,
		39.726303, 36.361450, 41.311951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413025, 36.271931, 41.760826>,  <40.011093, 35.743946, 41.478035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413025, 36.271931, 41.760826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.062904, 36.454758, 41.697666>,  <39.852833, 36.564453, 41.659771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.062904, 36.454758, 41.697666>,  <40.413025, 36.271931, 41.760826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062904, 36.454758, 41.697666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045962, 0.403688, 0.913741,
		0.481381, 0.792545, -0.374358,
		-0.875306, 0.457064, -0.157901,
		39.800312, 36.591877, 41.650295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527355, 36.847687, 42.081013>,  <40.413025, 36.271931, 41.760826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527355, 36.847687, 42.081013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.130886, 36.856937, 42.028786>,  <39.893005, 36.862488, 41.997452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.130886, 36.856937, 42.028786>,  <40.527355, 36.847687, 42.081013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130886, 36.856937, 42.028786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095027, 0.562852, 0.821077,
		0.092472, 0.826234, -0.555685,
		-0.991170, 0.023122, -0.130563,
		39.833534, 36.863873, 41.989616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304916, 37.585926, 42.184814>,  <40.527355, 36.847687, 42.081013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304916, 37.585926, 42.184814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.000034, 37.333801, 42.243809>,  <39.817104, 37.182526, 42.279205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.000034, 37.333801, 42.243809>,  <40.304916, 37.585926, 42.184814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000034, 37.333801, 42.243809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178604, 0.423758, 0.887992,
		-0.622211, 0.650489, -0.435566,
		-0.762203, -0.630312, 0.147487,
		39.771374, 37.144707, 42.288055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763126, 37.975769, 42.408493>,  <40.304916, 37.585926, 42.184814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763126, 37.975769, 42.408493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.676567, 37.600803, 42.517624>,  <39.624630, 37.375824, 42.583103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.676567, 37.600803, 42.517624>,  <39.763126, 37.975769, 42.408493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676567, 37.600803, 42.517624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437929, 0.342958, 0.831022,
		-0.872577, 0.060351, -0.484734,
		-0.216397, -0.937410, 0.272828,
		39.611649, 37.319580, 42.599472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118229, 37.938129, 42.694916>,  <39.763126, 37.975769, 42.408493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118229, 37.938129, 42.694916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.337555, 37.638905, 42.844452>,  <39.469151, 37.459370, 42.934174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.337555, 37.638905, 42.844452>,  <39.118229, 37.938129, 42.694916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337555, 37.638905, 42.844452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258694, 0.273381, 0.926466,
		-0.795255, -0.604704, -0.043621,
		0.548312, -0.748062, 0.373841,
		39.502048, 37.414486, 42.956604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774788, 37.829582, 43.371750>,  <39.118229, 37.938129, 42.694916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774788, 37.829582, 43.371750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092789, 37.593197, 43.426495>,  <39.283588, 37.451366, 43.459343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092789, 37.593197, 43.426495>,  <38.774788, 37.829582, 43.371750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092789, 37.593197, 43.426495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001079, 0.224243, 0.974532,
		-0.606603, -0.774905, 0.177637,
		0.795004, -0.590963, 0.136863,
		39.331291, 37.415909, 43.467552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585857, 37.384377, 43.954533>,  <38.774788, 37.829582, 43.371750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585857, 37.384377, 43.954533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984035, 37.348736, 43.940960>,  <39.222942, 37.327351, 43.932816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984035, 37.348736, 43.940960>,  <38.585857, 37.384377, 43.954533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984035, 37.348736, 43.940960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048444, 0.166123, 0.984914,
		-0.082122, -0.982071, 0.169683,
		0.995444, -0.089103, -0.033933,
		39.282669, 37.322006, 43.930779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706089, 36.884518, 44.385273>,  <38.585857, 37.384377, 43.954533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706089, 36.884518, 44.385273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026272, 37.121803, 44.350937>,  <39.218380, 37.264175, 44.330338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026272, 37.121803, 44.350937>,  <38.706089, 36.884518, 44.385273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026272, 37.121803, 44.350937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046159, 0.081776, 0.995581,
		0.597609, -0.800883, 0.038076,
		0.800458, 0.593211, -0.085839,
		39.266411, 37.299767, 44.325184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135681, 36.565411, 44.885460>,  <38.706089, 36.884518, 44.385273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135681, 36.565411, 44.885460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274475, 36.935577, 44.824532>,  <39.357750, 37.157677, 44.787975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274475, 36.935577, 44.824532>,  <39.135681, 36.565411, 44.885460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274475, 36.935577, 44.824532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178555, 0.094254, 0.979405,
		0.920718, -0.367032, -0.132534,
		0.346981, 0.925421, -0.152316,
		39.378571, 37.213203, 44.778835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755978, 36.506336, 45.258083>,  <39.135681, 36.565411, 44.885460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755978, 36.506336, 45.258083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.711967, 36.900135, 45.203442>,  <39.685562, 37.136414, 45.170654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.711967, 36.900135, 45.203442>,  <39.755978, 36.506336, 45.258083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711967, 36.900135, 45.203442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389083, 0.169135, 0.905542,
		0.914609, 0.046479, -0.401660,
		-0.110023, 0.984496, -0.136609,
		39.678959, 37.195484, 45.162460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295433, 36.745350, 45.585838>,  <39.755978, 36.506336, 45.258083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295433, 36.745350, 45.585838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.048252, 37.059174, 45.565414>,  <39.899944, 37.247467, 45.553162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.048252, 37.059174, 45.565414>,  <40.295433, 36.745350, 45.585838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048252, 37.059174, 45.565414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123542, 0.161034, 0.979186,
		0.776450, 0.598781, -0.196437,
		-0.617951, 0.784557, -0.051060,
		39.862865, 37.294540, 45.550095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697029, 37.335110, 46.019272>,  <40.295433, 36.745350, 45.585838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697029, 37.335110, 46.019272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307247, 37.415081, 45.978340>,  <40.073380, 37.463062, 45.953781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307247, 37.415081, 45.978340>,  <40.697029, 37.335110, 46.019272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307247, 37.415081, 45.978340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046718, 0.265217, 0.963056,
		0.219677, 0.943234, -0.249102,
		-0.974453, 0.199924, -0.102328,
		40.014912, 37.475060, 45.947643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.319721, 38.667831, 46.270424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.587231, 38.370583, 46.279423>,  <32.747738, 38.192234, 46.284821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.587231, 38.370583, 46.279423>,  <32.319721, 38.667831, 46.270424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587231, 38.370583, 46.279423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031141, -0.002235, -0.999513,
		0.742810, 0.669152, 0.021646,
		0.668777, -0.743122, 0.022498,
		32.787865, 38.147644, 46.286171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848808, 38.830887, 45.789532>,  <32.319721, 38.667831, 46.270424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848808, 38.830887, 45.789532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.877346, 38.434006, 45.830395>,  <32.894466, 38.195877, 45.854912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.877346, 38.434006, 45.830395>,  <32.848808, 38.830887, 45.789532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877346, 38.434006, 45.830395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081708, -0.096264, -0.991997,
		0.994100, 0.079119, 0.074204,
		0.071342, -0.992206, 0.102161,
		32.898750, 38.136345, 45.861042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447365, 38.705059, 45.407772>,  <32.848808, 38.830887, 45.789532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447365, 38.705059, 45.407772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269058, 38.349171, 45.447140>,  <33.162075, 38.135639, 45.470760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269058, 38.349171, 45.447140>,  <33.447365, 38.705059, 45.407772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269058, 38.349171, 45.447140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286820, -0.246113, -0.925831,
		0.847953, -0.384479, 0.364900,
		-0.445769, -0.889721, 0.098416,
		33.135326, 38.082253, 45.476665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940136, 38.141373, 45.294979>,  <33.447365, 38.705059, 45.407772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940136, 38.141373, 45.294979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582439, 37.976891, 45.224289>,  <33.367821, 37.878201, 45.181873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582439, 37.976891, 45.224289>,  <33.940136, 38.141373, 45.294979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582439, 37.976891, 45.224289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357504, -0.418675, -0.834807,
		0.269288, -0.809703, 0.521407,
		-0.894245, -0.411209, -0.176728,
		33.314167, 37.853527, 45.171272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084061, 37.538212, 44.883690>,  <33.940136, 38.141373, 45.294979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084061, 37.538212, 44.883690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695087, 37.564129, 44.794098>,  <33.461704, 37.579678, 44.740341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.695087, 37.564129, 44.794098>,  <34.084061, 37.538212, 44.883690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695087, 37.564129, 44.794098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203504, -0.233026, -0.950939,
		-0.113804, -0.970310, 0.213419,
		-0.972438, 0.064789, -0.223981,
		33.403355, 37.583565, 44.726902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944782, 37.002068, 44.384773>,  <34.084061, 37.538212, 44.883690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944782, 37.002068, 44.384773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646275, 37.265572, 44.346581>,  <33.467171, 37.423676, 44.323666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646275, 37.265572, 44.346581>,  <33.944782, 37.002068, 44.384773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646275, 37.265572, 44.346581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085113, -0.236692, -0.967849,
		-0.660184, -0.714147, 0.232705,
		-0.746266, 0.658764, -0.095477,
		33.422394, 37.463200, 44.317936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455479, 36.640179, 44.018833>,  <33.944782, 37.002068, 44.384773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455479, 36.640179, 44.018833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355572, 37.020401, 43.945019>,  <33.295628, 37.248535, 43.900730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355572, 37.020401, 43.945019>,  <33.455479, 36.640179, 44.018833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355572, 37.020401, 43.945019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019453, -0.185617, -0.982430,
		-0.968109, -0.248973, 0.027871,
		-0.249772, 0.950557, -0.184540,
		33.280640, 37.305569, 43.889656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916225, 36.592678, 43.473358>,  <33.455479, 36.640179, 44.018833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916225, 36.592678, 43.473358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050575, 36.969349, 43.465038>,  <33.131187, 37.195351, 43.460045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050575, 36.969349, 43.465038>,  <32.916225, 36.592678, 43.473358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050575, 36.969349, 43.465038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178867, -0.085448, -0.980156,
		-0.924767, 0.325491, -0.197135,
		0.335877, 0.941676, -0.020800,
		33.151337, 37.251850, 43.458797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521328, 36.876122, 42.938854>,  <32.916225, 36.592678, 43.473358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521328, 36.876122, 42.938854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.851337, 37.099808, 42.971375>,  <33.049343, 37.234020, 42.990887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.851337, 37.099808, 42.971375>,  <32.521328, 36.876122, 42.938854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851337, 37.099808, 42.971375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014662, 0.165006, -0.986184,
		-0.564906, 0.812434, 0.144333,
		0.825025, 0.559217, 0.081301,
		33.098846, 37.267574, 42.995766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362888, 37.463703, 42.475655>,  <32.521328, 36.876122, 42.938854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362888, 37.463703, 42.475655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.760948, 37.482899, 42.510010>,  <32.999783, 37.494415, 42.530621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.760948, 37.482899, 42.510010>,  <32.362888, 37.463703, 42.475655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760948, 37.482899, 42.510010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078190, 0.144062, -0.986475,
		-0.059710, 0.988405, 0.139611,
		0.995149, 0.047986, 0.085886,
		33.059494, 37.497295, 42.535774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661514, 38.208897, 42.221851>,  <32.362888, 37.463703, 42.475655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661514, 38.208897, 42.221851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.934071, 37.917187, 42.196968>,  <33.097603, 37.742161, 42.182037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.934071, 37.917187, 42.196968>,  <32.661514, 38.208897, 42.221851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934071, 37.917187, 42.196968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005047, 0.080315, -0.996757,
		0.731905, 0.679492, 0.051045,
		0.681388, -0.729274, -0.062212,
		33.138489, 37.698406, 42.178303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250599, 38.484875, 41.951180>,  <32.661514, 38.208897, 42.221851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250599, 38.484875, 41.951180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342529, 38.104668, 41.867561>,  <33.397686, 37.876545, 41.817390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342529, 38.104668, 41.867561>,  <33.250599, 38.484875, 41.951180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342529, 38.104668, 41.867561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066255, 0.229576, -0.971033,
		0.970974, 0.209316, 0.115739,
		0.229824, -0.950516, -0.209044,
		33.411476, 37.819511, 41.804848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786217, 38.508572, 41.472843>,  <33.250599, 38.484875, 41.951180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786217, 38.508572, 41.472843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664906, 38.131496, 41.417187>,  <33.592117, 37.905251, 41.383793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664906, 38.131496, 41.417187>,  <33.786217, 38.508572, 41.472843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664906, 38.131496, 41.417187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043526, 0.159573, -0.986226,
		0.951907, -0.293045, -0.089427,
		-0.303279, -0.942688, -0.139143,
		33.573921, 37.848690, 41.375443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069164, 38.405434, 40.855339>,  <33.786217, 38.508572, 41.472843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069164, 38.405434, 40.855339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.774445, 38.135880, 40.877285>,  <33.597614, 37.974148, 40.890453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.774445, 38.135880, 40.877285>,  <34.069164, 38.405434, 40.855339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774445, 38.135880, 40.877285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050122, -0.026485, -0.998392,
		0.674256, -0.738360, -0.014263,
		-0.736795, -0.673887, 0.054866,
		33.553406, 37.933712, 40.893745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718822, 38.279949, 40.596622>,  <34.069164, 38.405434, 40.855339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718822, 38.279949, 40.596622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.838417, 38.660027, 40.561440>,  <34.910175, 38.888073, 40.540329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.838417, 38.660027, 40.561440>,  <34.718822, 38.279949, 40.596622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838417, 38.660027, 40.561440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089989, 0.063690, 0.993904,
		0.950005, -0.305079, -0.066465,
		0.298986, 0.950195, -0.087960,
		34.928112, 38.945084, 40.535053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372551, 38.425472, 41.152740>,  <34.718822, 38.279949, 40.596622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372551, 38.425472, 41.152740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.157894, 38.749851, 41.059460>,  <35.029099, 38.944477, 41.003490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.157894, 38.749851, 41.059460>,  <35.372551, 38.425472, 41.152740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157894, 38.749851, 41.059460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011838, 0.283577, 0.958876,
		0.843727, 0.511813, -0.161779,
		-0.536642, 0.810945, -0.233202,
		34.996902, 38.993134, 40.989498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650707, 38.869572, 41.568520>,  <35.372551, 38.425472, 41.152740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650707, 38.869572, 41.568520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318325, 39.060467, 41.454151>,  <35.118896, 39.175003, 41.385529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318325, 39.060467, 41.454151>,  <35.650707, 38.869572, 41.568520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318325, 39.060467, 41.454151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057910, 0.436946, 0.897622,
		0.553312, 0.762444, -0.335447,
		-0.830959, 0.477239, -0.285921,
		35.069038, 39.203640, 41.368374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757961, 39.581398, 41.519333>,  <35.650707, 38.869572, 41.568520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757961, 39.581398, 41.519333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.367786, 39.536186, 41.594955>,  <35.133682, 39.509060, 41.640327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.367786, 39.536186, 41.594955>,  <35.757961, 39.581398, 41.519333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367786, 39.536186, 41.594955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112155, 0.483828, 0.867947,
		-0.189570, 0.867833, -0.459269,
		-0.975441, -0.113027, 0.189052,
		35.075153, 39.502277, 41.651672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593712, 40.142948, 42.010357>,  <35.757961, 39.581398, 41.519333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593712, 40.142948, 42.010357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.270561, 39.911785, 42.056591>,  <35.076672, 39.773087, 42.084332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.270561, 39.911785, 42.056591>,  <35.593712, 40.142948, 42.010357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270561, 39.911785, 42.056591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181354, 0.430384, 0.884240,
		-0.560754, 0.693394, -0.452503,
		-0.807877, -0.577905, 0.115589,
		35.028198, 39.738415, 42.091267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207970, 40.634449, 42.343529>,  <35.593712, 40.142948, 42.010357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207970, 40.634449, 42.343529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076130, 40.261116, 42.400459>,  <34.997028, 40.037117, 42.434616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076130, 40.261116, 42.400459>,  <35.207970, 40.634449, 42.343529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076130, 40.261116, 42.400459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189478, 0.213073, 0.958487,
		-0.924914, 0.288945, -0.247074,
		-0.329595, -0.933333, 0.142326,
		34.977253, 39.981117, 42.443157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562057, 40.715416, 42.741173>,  <35.207970, 40.634449, 42.343529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562057, 40.715416, 42.741173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649181, 40.328392, 42.792381>,  <34.701454, 40.096180, 42.823109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649181, 40.328392, 42.792381>,  <34.562057, 40.715416, 42.741173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649181, 40.328392, 42.792381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245921, 0.072534, 0.966572,
		-0.944501, -0.242012, -0.222144,
		0.217809, -0.967558, 0.128025,
		34.714523, 40.038124, 42.830788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082348, 40.524467, 43.227093>,  <34.562057, 40.715416, 42.741173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082348, 40.524467, 43.227093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.354393, 40.234909, 43.273434>,  <34.517620, 40.061172, 43.301239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.354393, 40.234909, 43.273434>,  <34.082348, 40.524467, 43.227093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354393, 40.234909, 43.273434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110578, 0.257516, 0.959926,
		-0.724723, -0.640044, 0.255187,
		0.680110, -0.723898, 0.115853,
		34.558426, 40.017738, 43.308189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806328, 39.946404, 43.736504>,  <34.082348, 40.524467, 43.227093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806328, 39.946404, 43.736504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205418, 39.958633, 43.712448>,  <34.444870, 39.965973, 43.698013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205418, 39.958633, 43.712448>,  <33.806328, 39.946404, 43.736504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205418, 39.958633, 43.712448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062649, -0.089200, 0.994041,
		0.025033, -0.995544, -0.090913,
		0.997722, 0.030580, -0.060137,
		34.504734, 39.967808, 43.694408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926304, 39.493633, 44.139183>,  <33.806328, 39.946404, 43.736504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926304, 39.493633, 44.139183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275509, 39.686691, 44.111176>,  <34.485031, 39.802525, 44.094372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275509, 39.686691, 44.111176>,  <33.926304, 39.493633, 44.139183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275509, 39.686691, 44.111176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099797, -0.036267, 0.994347,
		0.477375, -0.875066, -0.079828,
		0.873014, 0.482643, -0.070016,
		34.537415, 39.831486, 44.090172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435863, 39.203663, 44.677586>,  <33.926304, 39.493633, 44.139183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435863, 39.203663, 44.677586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.598282, 39.561008, 44.600620>,  <34.695732, 39.775417, 44.554443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.598282, 39.561008, 44.600620>,  <34.435863, 39.203663, 44.677586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598282, 39.561008, 44.600620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253631, 0.092108, 0.962906,
		0.877950, -0.439786, -0.189185,
		0.406047, 0.893367, -0.192410,
		34.720097, 39.829018, 44.542896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149258, 39.174381, 44.798496>,  <34.435863, 39.203663, 44.677586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149258, 39.174381, 44.798496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073898, 39.564598, 44.843807>,  <35.028683, 39.798729, 44.870995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073898, 39.564598, 44.843807>,  <35.149258, 39.174381, 44.798496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073898, 39.564598, 44.843807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421450, -0.023872, 0.906537,
		0.887066, 0.218531, -0.406643,
		-0.188399, 0.975538, 0.113276,
		35.017380, 39.857258, 44.877789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754650, 39.438335, 45.087273>,  <35.149258, 39.174381, 44.798496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754650, 39.438335, 45.087273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476101, 39.713490, 45.169121>,  <35.308971, 39.878582, 45.218231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476101, 39.713490, 45.169121>,  <35.754650, 39.438335, 45.087273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476101, 39.713490, 45.169121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243448, -0.041795, 0.969013,
		0.675126, 0.724611, -0.138361,
		-0.696374, 0.687890, 0.204623,
		35.267189, 39.919857, 45.230507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075169, 39.827614, 45.531128>,  <35.754650, 39.438335, 45.087273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075169, 39.827614, 45.531128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691338, 39.911095, 45.606655>,  <35.461040, 39.961182, 45.651970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691338, 39.911095, 45.606655>,  <36.075169, 39.827614, 45.531128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691338, 39.911095, 45.606655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166704, -0.119058, 0.978793,
		0.226755, 0.970705, 0.079454,
		-0.959579, 0.208701, 0.188818,
		35.403465, 39.973705, 45.663300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543823, 40.427414, 45.612865>,  <36.075169, 39.827614, 45.531128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543823, 40.427414, 45.612865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926327, 40.310829, 45.622898>,  <37.155827, 40.240879, 45.628918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926327, 40.310829, 45.622898>,  <36.543823, 40.427414, 45.612865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926327, 40.310829, 45.622898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038401, 0.040081, -0.998458,
		0.290004, 0.955743, 0.049520,
		0.956255, -0.291459, 0.025078,
		37.213203, 40.223392, 45.630421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879246, 41.004505, 45.259499>,  <36.543823, 40.427414, 45.612865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879246, 41.004505, 45.259499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.085514, 40.662388, 45.239292>,  <37.209274, 40.457115, 45.227169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.085514, 40.662388, 45.239292>,  <36.879246, 41.004505, 45.259499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085514, 40.662388, 45.239292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125214, 0.133554, -0.983100,
		0.847586, 0.500633, 0.175965,
		0.515673, -0.855295, -0.050512,
		37.240215, 40.405800, 45.224140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476170, 41.126469, 44.908989>,  <36.879246, 41.004505, 45.259499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476170, 41.126469, 44.908989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.448906, 40.727737, 44.892559>,  <37.432549, 40.488499, 44.882702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.448906, 40.727737, 44.892559>,  <37.476170, 41.126469, 44.908989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448906, 40.727737, 44.892559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074765, 0.035955, -0.996553,
		0.994869, -0.070997, 0.072077,
		-0.068160, -0.996828, -0.041079,
		37.428459, 40.428688, 44.880234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153652, 40.850266, 44.475716>,  <37.476170, 41.126469, 44.908989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153652, 40.850266, 44.475716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.864521, 40.574451, 44.457577>,  <37.691044, 40.408962, 44.446693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.864521, 40.574451, 44.457577>,  <38.153652, 40.850266, 44.475716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864521, 40.574451, 44.457577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156901, -0.099859, -0.982553,
		0.672980, -0.717332, 0.180370,
		-0.722828, -0.689539, -0.045347,
		37.647675, 40.367588, 44.443974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428070, 40.208241, 44.134132>,  <38.153652, 40.850266, 44.475716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428070, 40.208241, 44.134132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031292, 40.186199, 44.088520>,  <37.793224, 40.172974, 44.061153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031292, 40.186199, 44.088520>,  <38.428070, 40.208241, 44.134132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031292, 40.186199, 44.088520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123169, -0.210129, -0.969884,
		0.029483, -0.976120, 0.215224,
		-0.991947, -0.055104, -0.114033,
		37.733707, 40.169666, 44.054310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442699, 39.820236, 43.520962>,  <38.428070, 40.208241, 44.134132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442699, 39.820236, 43.520962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.056881, 39.910717, 43.575352>,  <37.825390, 39.965004, 43.607986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.056881, 39.910717, 43.575352>,  <38.442699, 39.820236, 43.520962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056881, 39.910717, 43.575352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198595, -0.282747, -0.938410,
		-0.173818, -0.932142, 0.317644,
		-0.964545, 0.226195, 0.135972,
		37.767517, 39.978577, 43.616142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021244, 39.281052, 43.252838>,  <38.442699, 39.820236, 43.520962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021244, 39.281052, 43.252838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812492, 39.621895, 43.237068>,  <37.687241, 39.826401, 43.227604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812492, 39.621895, 43.237068>,  <38.021244, 39.281052, 43.252838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812492, 39.621895, 43.237068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192881, -0.162902, -0.967605,
		-0.830927, -0.497368, 0.249371,
		-0.521878, 0.852108, -0.039427,
		37.655930, 39.877529, 43.225239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437431, 39.180859, 42.949734>,  <38.021244, 39.281052, 43.252838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437431, 39.180859, 42.949734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.489052, 39.569225, 42.869061>,  <37.520023, 39.802246, 42.820656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.489052, 39.569225, 42.869061>,  <37.437431, 39.180859, 42.949734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489052, 39.569225, 42.869061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288078, -0.157903, -0.944499,
		-0.948872, 0.179987, 0.259321,
		0.129050, 0.970913, -0.201680,
		37.527767, 39.860500, 42.808556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961418, 39.384571, 42.533356>,  <37.437431, 39.180859, 42.949734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961418, 39.384571, 42.533356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251503, 39.650352, 42.461170>,  <37.425556, 39.809822, 42.417858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251503, 39.650352, 42.461170>,  <36.961418, 39.384571, 42.533356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251503, 39.650352, 42.461170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181816, -0.067984, -0.980980,
		-0.664081, 0.744233, 0.071505,
		0.725216, 0.664451, -0.180460,
		37.469067, 39.849689, 42.407032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594471, 39.701473, 42.046738>,  <36.961418, 39.384571, 42.533356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594471, 39.701473, 42.046738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985828, 39.780319, 42.021790>,  <37.220642, 39.827625, 42.006821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985828, 39.780319, 42.021790>,  <36.594471, 39.701473, 42.046738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985828, 39.780319, 42.021790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020932, -0.205686, -0.978394,
		-0.205686, 0.958561, -0.197116,
		0.978394, 0.197116, -0.062371,
		37.279346, 39.839455, 42.003078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649757, 40.070160, 41.434444>,  <36.594471, 39.701473, 42.046738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649757, 40.070160, 41.434444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037533, 40.009014, 41.511196>,  <37.270199, 39.972328, 41.557247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037533, 40.009014, 41.511196>,  <36.649757, 40.070160, 41.434444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037533, 40.009014, 41.511196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168530, -0.153422, -0.973683,
		0.178277, 0.976266, -0.122972,
		0.969441, -0.152861, 0.191882,
		37.328365, 39.963158, 41.568760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040947, 40.473961, 40.954517>,  <36.649757, 40.070160, 41.434444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040947, 40.473961, 40.954517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.253448, 40.157066, 41.074604>,  <37.380951, 39.966930, 41.146656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.253448, 40.157066, 41.074604>,  <37.040947, 40.473961, 40.954517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253448, 40.157066, 41.074604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251410, -0.190971, -0.948854,
		0.809049, 0.579561, 0.097722,
		0.531256, -0.792237, 0.300212,
		37.412827, 39.919395, 41.164669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483028, 40.583416, 40.567894>,  <37.040947, 40.473961, 40.954517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483028, 40.583416, 40.567894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.537754, 40.203449, 40.680275>,  <37.570591, 39.975468, 40.747704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.537754, 40.203449, 40.680275>,  <37.483028, 40.583416, 40.567894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537754, 40.203449, 40.680275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133870, -0.263283, -0.955385,
		0.981509, 0.168323, 0.091144,
		0.136817, -0.949921, 0.280948,
		37.578800, 39.918472, 40.764561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204529, 40.473846, 40.354980>,  <37.483028, 40.583416, 40.567894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204529, 40.473846, 40.354980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.026123, 40.118259, 40.396587>,  <37.919079, 39.904907, 40.421551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.026123, 40.118259, 40.396587>,  <38.204529, 40.473846, 40.354980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026123, 40.118259, 40.396587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347930, -0.279284, -0.894955,
		0.824633, -0.362967, 0.433860,
		-0.446010, -0.888963, 0.104019,
		37.892319, 39.851570, 40.427792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.436878, 32.851463, 27.727861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.490349, 32.484241, 27.877153>,  <28.522432, 32.263908, 27.966728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.490349, 32.484241, 27.877153>,  <28.436878, 32.851463, 27.727861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490349, 32.484241, 27.877153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201425, 0.343582, 0.917267,
		-0.970339, -0.197798, -0.138990,
		0.133679, -0.918057, 0.373232,
		28.530453, 32.208824, 27.989122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861610, 32.752666, 28.113218>,  <28.436878, 32.851463, 27.727861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861610, 32.752666, 28.113218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105028, 32.481033, 28.277426>,  <28.251078, 32.318054, 28.375950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105028, 32.481033, 28.277426>,  <27.861610, 32.752666, 28.113218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105028, 32.481033, 28.277426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307478, 0.275125, 0.910913,
		-0.731528, -0.680554, -0.041378,
		0.608542, -0.679082, 0.410518,
		28.287590, 32.277309, 28.400581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392332, 32.360157, 28.536753>,  <27.861610, 32.752666, 28.113218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392332, 32.360157, 28.536753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.771830, 32.335506, 28.660748>,  <27.999527, 32.320717, 28.735144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.771830, 32.335506, 28.660748>,  <27.392332, 32.360157, 28.536753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771830, 32.335506, 28.660748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287907, 0.236100, 0.928098,
		-0.130382, -0.969773, 0.206255,
		0.948741, -0.061625, 0.309987,
		28.056452, 32.317020, 28.753744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272705, 32.023212, 29.153971>,  <27.392332, 32.360157, 28.536753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272705, 32.023212, 29.153971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.629921, 32.202648, 29.139868>,  <27.844252, 32.310310, 29.131407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.629921, 32.202648, 29.139868>,  <27.272705, 32.023212, 29.153971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629921, 32.202648, 29.139868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126266, 0.325031, 0.937236,
		0.431897, -0.832539, 0.346907,
		0.893041, 0.448592, -0.035258,
		27.897833, 32.337227, 29.129290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401222, 32.055820, 29.721718>,  <27.272705, 32.023212, 29.153971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401222, 32.055820, 29.721718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.679657, 32.324493, 29.620281>,  <27.846718, 32.485699, 29.559420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.679657, 32.324493, 29.620281>,  <27.401222, 32.055820, 29.721718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679657, 32.324493, 29.620281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154207, 0.484843, 0.860899,
		0.701203, -0.560153, 0.441070,
		0.696085, 0.671682, -0.253594,
		27.888483, 32.525997, 29.544203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863161, 32.176601, 30.261011>,  <27.401222, 32.055820, 29.721718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863161, 32.176601, 30.261011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936958, 32.506317, 30.046904>,  <27.981237, 32.704147, 29.918440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936958, 32.506317, 30.046904>,  <27.863161, 32.176601, 30.261011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936958, 32.506317, 30.046904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081162, 0.555534, 0.827523,
		0.979477, -0.109229, 0.169392,
		0.184492, 0.824288, -0.535267,
		27.992306, 32.753605, 29.886324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345497, 32.500088, 30.711941>,  <27.863161, 32.176601, 30.261011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345497, 32.500088, 30.711941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.156803, 32.765148, 30.479267>,  <28.043587, 32.924187, 30.339663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.156803, 32.765148, 30.479267>,  <28.345497, 32.500088, 30.711941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156803, 32.765148, 30.479267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134791, 0.597749, 0.790271,
		0.871376, 0.451206, -0.192660,
		-0.471737, 0.662654, -0.581682,
		28.015282, 32.963943, 30.304762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396883, 33.071617, 30.997971>,  <28.345497, 32.500088, 30.711941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396883, 33.071617, 30.997971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105040, 33.223190, 30.770258>,  <27.929934, 33.314133, 30.633631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105040, 33.223190, 30.770258>,  <28.396883, 33.071617, 30.997971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105040, 33.223190, 30.770258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254854, 0.621818, 0.740534,
		0.634603, 0.685384, -0.357111,
		-0.729609, 0.378934, -0.569281,
		27.886158, 33.336872, 30.599474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330805, 33.728802, 31.246803>,  <28.396883, 33.071617, 30.997971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330805, 33.728802, 31.246803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009670, 33.706612, 31.009357>,  <27.816990, 33.693298, 30.866890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009670, 33.706612, 31.009357>,  <28.330805, 33.728802, 31.246803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009670, 33.706612, 31.009357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439309, 0.728169, 0.526097,
		0.403065, 0.683149, -0.608971,
		-0.802836, -0.055475, -0.593613,
		27.768820, 33.689968, 30.831274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197905, 34.441391, 30.866392>,  <28.330805, 33.728802, 31.246803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197905, 34.441391, 30.866392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871782, 34.218277, 30.928558>,  <27.676109, 34.084408, 30.965858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871782, 34.218277, 30.928558>,  <28.197905, 34.441391, 30.866392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871782, 34.218277, 30.928558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391878, 0.729135, 0.561065,
		-0.426270, 0.396536, -0.813051,
		-0.815307, -0.557783, 0.155414,
		27.627190, 34.050941, 30.975183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706821, 34.886353, 30.736723>,  <28.197905, 34.441391, 30.866392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706821, 34.886353, 30.736723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.516020, 34.601780, 30.943153>,  <27.401539, 34.431038, 31.067013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.516020, 34.601780, 30.943153>,  <27.706821, 34.886353, 30.736723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516020, 34.601780, 30.943153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484639, 0.702756, 0.520825,
		-0.733207, -0.001676, -0.680004,
		-0.477004, -0.711429, 0.516078,
		27.372919, 34.388351, 31.097977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096010, 35.040272, 30.706837>,  <27.706821, 34.886353, 30.736723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096010, 35.040272, 30.706837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122261, 34.803226, 31.027962>,  <27.138012, 34.660999, 31.220636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122261, 34.803226, 31.027962>,  <27.096010, 35.040272, 30.706837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122261, 34.803226, 31.027962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448142, 0.701339, 0.554340,
		-0.891550, -0.396154, -0.219547,
		0.065627, -0.592610, 0.802812,
		27.141949, 34.625443, 31.268805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501596, 35.241009, 31.080185>,  <27.096010, 35.040272, 30.706837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501596, 35.241009, 31.080185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.729044, 35.033710, 31.335714>,  <26.865513, 34.909332, 31.489033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.729044, 35.033710, 31.335714>,  <26.501596, 35.241009, 31.080185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729044, 35.033710, 31.335714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244845, 0.634763, 0.732889,
		-0.785317, -0.573148, 0.234049,
		0.568620, -0.518244, 0.638823,
		26.899630, 34.878239, 31.527361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971415, 35.186852, 31.646296>,  <26.501596, 35.241009, 31.080185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971415, 35.186852, 31.646296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.328392, 35.109615, 31.809397>,  <26.542578, 35.063274, 31.907257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.328392, 35.109615, 31.809397>,  <25.971415, 35.186852, 31.646296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328392, 35.109615, 31.809397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282171, 0.466318, 0.838408,
		-0.352032, -0.863286, 0.361677,
		0.892443, -0.193091, 0.407753,
		26.596125, 35.051689, 31.931723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858717, 34.904259, 32.346481>,  <25.971415, 35.186852, 31.646296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858717, 34.904259, 32.346481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.239086, 35.026146, 32.324955>,  <26.467308, 35.099277, 32.312038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.239086, 35.026146, 32.324955>,  <25.858717, 34.904259, 32.346481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239086, 35.026146, 32.324955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105159, 0.481809, 0.869943,
		0.291015, -0.821589, 0.490207,
		0.950922, 0.304717, -0.053816,
		26.524363, 35.117561, 32.308811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071669, 35.064259, 33.034389>,  <25.858717, 34.904259, 32.346481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071669, 35.064259, 33.034389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402830, 35.214375, 32.867664>,  <26.601526, 35.304443, 32.767628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402830, 35.214375, 32.867664>,  <26.071669, 35.064259, 33.034389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402830, 35.214375, 32.867664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171775, 0.537787, 0.825396,
		0.533918, -0.754947, 0.380771,
		0.827905, 0.375287, -0.416815,
		26.651201, 35.326962, 32.742619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570204, 34.983067, 33.502018>,  <26.071669, 35.064259, 33.034389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570204, 34.983067, 33.502018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.679630, 35.289974, 33.269997>,  <26.745287, 35.474117, 33.130783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.679630, 35.289974, 33.269997>,  <26.570204, 34.983067, 33.502018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679630, 35.289974, 33.269997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010381, 0.605376, 0.795872,
		0.961797, -0.211702, 0.173575,
		0.273566, 0.767269, -0.580051,
		26.761700, 35.520157, 33.095982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230093, 35.280777, 33.687019>,  <26.570204, 34.983067, 33.502018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230093, 35.280777, 33.687019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.994469, 35.547829, 33.504906>,  <26.853094, 35.708057, 33.395638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.994469, 35.547829, 33.504906>,  <27.230093, 35.280777, 33.687019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994469, 35.547829, 33.504906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071432, 0.604222, 0.793608,
		0.804926, 0.434960, -0.403613,
		-0.589059, 0.667627, -0.455284,
		26.817751, 35.748116, 33.368320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520180, 35.836391, 33.862396>,  <27.230093, 35.280777, 33.687019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520180, 35.836391, 33.862396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.161036, 35.970161, 33.747849>,  <26.945549, 36.050423, 33.679119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.161036, 35.970161, 33.747849>,  <27.520180, 35.836391, 33.862396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161036, 35.970161, 33.747849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007572, 0.662061, 0.749412,
		0.440213, 0.670699, -0.596971,
		-0.897861, 0.334422, -0.286369,
		26.891678, 36.070488, 33.661938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586782, 36.515308, 33.901806>,  <27.520180, 35.836391, 33.862396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586782, 36.515308, 33.901806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192411, 36.448631, 33.906860>,  <26.955790, 36.408623, 33.909893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192411, 36.448631, 33.906860>,  <27.586782, 36.515308, 33.901806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192411, 36.448631, 33.906860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106745, 0.685915, 0.719810,
		-0.128658, 0.708331, -0.694057,
		-0.985927, -0.166696, 0.012638,
		26.896633, 36.398621, 33.910652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019629, 36.338203, 34.486980>,  <27.586782, 36.515308, 33.901806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019629, 36.338203, 34.486980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.320662, 36.118446, 34.632195>,  <28.501282, 35.986591, 34.719322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.320662, 36.118446, 34.632195>,  <28.019629, 36.338203, 34.486980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320662, 36.118446, 34.632195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181072, -0.357399, -0.916231,
		0.633115, 0.755273, -0.169493,
		0.752581, -0.549389, 0.363033,
		28.546436, 35.953629, 34.741104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575108, 36.624001, 34.269615>,  <28.019629, 36.338203, 34.486980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575108, 36.624001, 34.269615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641521, 36.231087, 34.304363>,  <28.681370, 35.995338, 34.325211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641521, 36.231087, 34.304363>,  <28.575108, 36.624001, 34.269615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641521, 36.231087, 34.304363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206834, -0.051441, -0.977023,
		0.964185, 0.180185, 0.194629,
		0.166033, -0.982287, 0.086867,
		28.691332, 35.936401, 34.330421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310989, 36.492588, 33.939930>,  <28.575108, 36.624001, 34.269615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310989, 36.492588, 33.939930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119940, 36.142429, 33.969769>,  <29.005310, 35.932335, 33.987671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119940, 36.142429, 33.969769>,  <29.310989, 36.492588, 33.939930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119940, 36.142429, 33.969769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198311, -0.190137, -0.961520,
		0.855891, -0.444450, 0.264414,
		-0.477623, -0.875392, 0.074597,
		28.976652, 35.879810, 33.992149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712111, 35.908272, 33.625561>,  <29.310989, 36.492588, 33.939930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712111, 35.908272, 33.625561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.333431, 35.780876, 33.644863>,  <29.106224, 35.704437, 33.656445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.333431, 35.780876, 33.644863>,  <29.712111, 35.908272, 33.625561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333431, 35.780876, 33.644863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115910, -0.476570, -0.871462,
		0.300547, -0.819418, 0.488084,
		-0.946697, -0.318489, 0.048253,
		29.049421, 35.685329, 33.659340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828875, 35.280956, 33.313152>,  <29.712111, 35.908272, 33.625561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828875, 35.280956, 33.313152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.441845, 35.380100, 33.332619>,  <29.209627, 35.439587, 33.344299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.441845, 35.380100, 33.332619>,  <29.828875, 35.280956, 33.313152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441845, 35.380100, 33.332619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134932, -0.344313, -0.929108,
		-0.213535, -0.905546, 0.366592,
		-0.967573, 0.247862, 0.048664,
		29.151573, 35.454460, 33.347218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367102, 34.771118, 32.912678>,  <29.828875, 35.280956, 33.313152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367102, 34.771118, 32.912678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.127438, 35.090435, 32.888237>,  <28.983639, 35.282024, 32.873573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.127438, 35.090435, 32.888237>,  <29.367102, 34.771118, 32.912678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127438, 35.090435, 32.888237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112069, -0.159195, -0.980866,
		-0.792748, -0.580846, 0.184847,
		-0.599158, 0.798295, -0.061107,
		28.947691, 35.329922, 32.869904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811747, 34.587021, 32.576572>,  <29.367102, 34.771118, 32.912678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811747, 34.587021, 32.576572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807722, 34.985100, 32.537640>,  <28.805307, 35.223949, 32.514278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807722, 34.985100, 32.537640>,  <28.811747, 34.587021, 32.576572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807722, 34.985100, 32.537640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000913, -0.097326, -0.995252,
		-0.999949, -0.010101, 0.000070,
		-0.010059, 0.995201, -0.097331,
		28.804705, 35.283661, 32.508442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402401, 34.679867, 31.947412>,  <28.811747, 34.587021, 32.576572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402401, 34.679867, 31.947412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.593361, 35.028824, 31.989405>,  <28.707937, 35.238197, 32.014599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.593361, 35.028824, 31.989405>,  <28.402401, 34.679867, 31.947412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593361, 35.028824, 31.989405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009821, 0.114171, -0.993412,
		-0.878631, 0.475286, 0.045938,
		0.477400, 0.872392, 0.104982,
		28.736580, 35.290543, 32.020901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165943, 35.014835, 31.444824>,  <28.402401, 34.679867, 31.947412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165943, 35.014835, 31.444824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501429, 35.222252, 31.511368>,  <28.702721, 35.346703, 31.551294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501429, 35.222252, 31.511368>,  <28.165943, 35.014835, 31.444824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501429, 35.222252, 31.511368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226736, -0.054763, -0.972415,
		-0.495127, 0.853298, -0.163502,
		0.838714, 0.518541, 0.166359,
		28.753042, 35.377815, 31.561275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162249, 35.468540, 30.870247>,  <28.165943, 35.014835, 31.444824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162249, 35.468540, 30.870247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526110, 35.478500, 31.036095>,  <28.744427, 35.484474, 31.135603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526110, 35.478500, 31.036095>,  <28.162249, 35.468540, 30.870247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526110, 35.478500, 31.036095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414472, 0.011081, -0.909994,
		-0.027252, 0.999629, -0.000240,
		0.909654, 0.024899, 0.414620,
		28.799006, 35.485970, 31.160480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536564, 35.976913, 30.533548>,  <28.162249, 35.468540, 30.870247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536564, 35.976913, 30.533548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.781603, 35.703823, 30.692852>,  <28.928627, 35.539970, 30.788433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.781603, 35.703823, 30.692852>,  <28.536564, 35.976913, 30.533548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781603, 35.703823, 30.692852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553052, 0.010277, -0.833083,
		0.564674, 0.730603, 0.383878,
		0.612599, -0.682725, 0.398258,
		28.965382, 35.499004, 30.812330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139740, 36.188820, 30.359358>,  <28.536564, 35.976913, 30.533548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139740, 36.188820, 30.359358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225054, 35.811520, 30.461178>,  <29.276241, 35.585140, 30.522270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225054, 35.811520, 30.461178>,  <29.139740, 36.188820, 30.359358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225054, 35.811520, 30.461178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468126, -0.130023, -0.874044,
		0.857536, 0.305582, 0.413826,
		0.213285, -0.943246, 0.254550,
		29.289040, 35.528545, 30.537542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835709, 36.060570, 30.030012>,  <29.139740, 36.188820, 30.359358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835709, 36.060570, 30.030012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719429, 35.691204, 30.130247>,  <29.649662, 35.469585, 30.190388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719429, 35.691204, 30.130247>,  <29.835709, 36.060570, 30.030012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719429, 35.691204, 30.130247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602741, -0.380130, -0.701572,
		0.743100, -0.052906, 0.667085,
		-0.290697, -0.923419, 0.250586,
		29.632219, 35.414177, 30.205423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400253, 35.715221, 29.904951>,  <29.835709, 36.060570, 30.030012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400253, 35.715221, 29.904951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103781, 35.447338, 29.886457>,  <29.925898, 35.286606, 29.875360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103781, 35.447338, 29.886457>,  <30.400253, 35.715221, 29.904951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103781, 35.447338, 29.886457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513155, -0.520817, -0.682219,
		0.432810, -0.529373, 0.729685,
		-0.741180, -0.669712, -0.046235,
		29.881426, 35.246426, 29.872587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749386, 35.006546, 29.917347>,  <30.400253, 35.715221, 29.904951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749386, 35.006546, 29.917347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.388887, 34.925465, 29.764160>,  <30.172588, 34.876816, 29.672247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.388887, 34.925465, 29.764160>,  <30.749386, 35.006546, 29.917347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388887, 34.925465, 29.764160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413219, -0.668025, -0.618863,
		-0.130389, -0.715999, 0.685816,
		-0.901248, -0.202699, -0.382968,
		30.118513, 34.864655, 29.649269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579067, 34.268368, 29.861889>,  <30.749386, 35.006546, 29.917347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579067, 34.268368, 29.861889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.314550, 34.416668, 29.601046>,  <30.155840, 34.505646, 29.444540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.314550, 34.416668, 29.601046>,  <30.579067, 34.268368, 29.861889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314550, 34.416668, 29.601046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339465, -0.627306, -0.700893,
		-0.668926, -0.684859, 0.288974,
		-0.661288, 0.370749, -0.652107,
		30.116163, 34.527893, 29.405415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387310, 33.725861, 29.526148>,  <30.579067, 34.268368, 29.861889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387310, 33.725861, 29.526148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.313137, 34.017403, 29.262514>,  <30.268633, 34.192326, 29.104334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.313137, 34.017403, 29.262514>,  <30.387310, 33.725861, 29.526148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313137, 34.017403, 29.262514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230122, -0.619855, -0.750216,
		-0.955332, -0.290784, -0.052784,
		-0.185433, 0.728852, -0.659082,
		30.257507, 34.236057, 29.064789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060925, 33.355968, 29.045355>,  <30.387310, 33.725861, 29.526148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060925, 33.355968, 29.045355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155632, 33.692814, 28.851538>,  <30.212458, 33.894920, 28.735249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155632, 33.692814, 28.851538>,  <30.060925, 33.355968, 29.045355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155632, 33.692814, 28.851538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363014, -0.539282, -0.759866,
		-0.901200, 0.004018, -0.433386,
		0.236771, 0.842116, -0.484542,
		30.226664, 33.945450, 28.706175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938354, 33.108772, 28.434847>,  <30.060925, 33.355968, 29.045355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938354, 33.108772, 28.434847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.136969, 33.452606, 28.386576>,  <30.256136, 33.658909, 28.357613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.136969, 33.452606, 28.386576>,  <29.938354, 33.108772, 28.434847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136969, 33.452606, 28.386576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334414, -0.317732, -0.887251,
		-0.801013, 0.400194, -0.445223,
		0.496533, 0.859588, -0.120677,
		30.285929, 33.710484, 28.350372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770945, 33.318954, 27.799387>,  <29.938354, 33.108772, 28.434847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770945, 33.318954, 27.799387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115002, 33.502872, 27.887691>,  <30.321436, 33.613224, 27.940674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115002, 33.502872, 27.887691>,  <29.770945, 33.318954, 27.799387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115002, 33.502872, 27.887691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398540, -0.335768, -0.853478,
		-0.318304, 0.822097, -0.472058,
		0.860145, 0.459799, 0.220762,
		30.373045, 33.640812, 27.953920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890923, 33.792751, 27.296062>,  <29.770945, 33.318954, 27.799387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890923, 33.792751, 27.296062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262203, 33.741955, 27.435955>,  <30.484972, 33.711475, 27.519890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262203, 33.741955, 27.435955>,  <29.890923, 33.792751, 27.296062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262203, 33.741955, 27.435955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306337, -0.272663, -0.912038,
		0.211180, 0.953692, -0.214184,
		0.928203, -0.126992, 0.349732,
		30.540665, 33.703857, 27.540874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229294, 34.160088, 26.842253>,  <29.890923, 33.792751, 27.296062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229294, 34.160088, 26.842253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.473148, 33.889519, 27.007565>,  <30.619461, 33.727177, 27.106752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.473148, 33.889519, 27.007565>,  <30.229294, 34.160088, 26.842253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473148, 33.889519, 27.007565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115613, -0.439919, -0.890565,
		0.784206, 0.590700, -0.189987,
		0.609635, -0.676421, 0.413279,
		30.656038, 33.686592, 27.131548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.622231, 37.996632, 46.310425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.259045, 37.829800, 46.326633>,  <40.041134, 37.729702, 46.336357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.259045, 37.829800, 46.326633>,  <40.622231, 37.996632, 46.310425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259045, 37.829800, 46.326633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081109, 0.269785, 0.959499,
		-0.411119, 0.867906, -0.278784,
		-0.907966, -0.417080, 0.040519,
		39.986656, 37.704674, 46.338791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171703, 38.488689, 46.767960>,  <40.622231, 37.996632, 46.310425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171703, 38.488689, 46.767960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.963879, 38.146919, 46.768555>,  <39.839184, 37.941856, 46.768913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.963879, 38.146919, 46.768555>,  <40.171703, 38.488689, 46.767960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963879, 38.146919, 46.768555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409456, 0.250511, 0.877263,
		-0.749932, 0.455186, -0.480008,
		-0.519565, -0.854430, 0.001487,
		39.808010, 37.890591, 46.769001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414211, 38.716976, 46.957932>,  <40.171703, 38.488689, 46.767960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414211, 38.716976, 46.957932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.463783, 38.327480, 47.034325>,  <39.493526, 38.093784, 47.080162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.463783, 38.327480, 47.034325>,  <39.414211, 38.716976, 46.957932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463783, 38.327480, 47.034325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443257, 0.117875, 0.888610,
		-0.887786, -0.194782, -0.417008,
		0.123931, -0.973738, 0.190986,
		39.500961, 38.035358, 47.091621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841034, 38.570000, 47.234837>,  <39.414211, 38.716976, 46.957932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841034, 38.570000, 47.234837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.067204, 38.261074, 47.350647>,  <39.202908, 38.075718, 47.420132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.067204, 38.261074, 47.350647>,  <38.841034, 38.570000, 47.234837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067204, 38.261074, 47.350647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274879, 0.154511, 0.948983,
		-0.777647, -0.616165, -0.124928,
		0.565427, -0.772313, 0.289526,
		39.236832, 38.029381, 47.437504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439747, 38.167839, 47.652588>,  <38.841034, 38.570000, 47.234837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439747, 38.167839, 47.652588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.808743, 38.050602, 47.753071>,  <39.030140, 37.980259, 47.813358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.808743, 38.050602, 47.753071>,  <38.439747, 38.167839, 47.652588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808743, 38.050602, 47.753071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246029, 0.055028, 0.967699,
		-0.297449, -0.954499, -0.021347,
		0.922493, -0.293093, 0.251202,
		39.085491, 37.962673, 47.828430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412239, 37.676506, 48.277664>,  <38.439747, 38.167839, 47.652588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412239, 37.676506, 48.277664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800167, 37.773422, 48.266735>,  <39.032925, 37.831573, 48.260178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800167, 37.773422, 48.266735>,  <38.412239, 37.676506, 48.277664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800167, 37.773422, 48.266735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014039, 0.056391, 0.998310,
		0.243426, -0.968563, 0.051288,
		0.969818, 0.242294, -0.027325,
		39.091114, 37.846111, 48.258537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686726, 37.204113, 48.683765>,  <38.412239, 37.676506, 48.277664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686726, 37.204113, 48.683765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.935127, 37.517445, 48.672787>,  <39.084167, 37.705444, 48.666199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.935127, 37.517445, 48.672787>,  <38.686726, 37.204113, 48.683765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935127, 37.517445, 48.672787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128230, -0.066986, 0.989480,
		0.773249, -0.617988, -0.142044,
		0.621001, 0.783329, -0.027448,
		39.121429, 37.752441, 48.664551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220058, 37.072342, 49.102543>,  <38.686726, 37.204113, 48.683765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220058, 37.072342, 49.102543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263256, 37.469315, 49.079170>,  <39.289173, 37.707497, 49.065147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263256, 37.469315, 49.079170>,  <39.220058, 37.072342, 49.102543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263256, 37.469315, 49.079170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290844, 0.024670, 0.956452,
		0.950657, -0.120283, -0.285979,
		0.107990, 0.992433, -0.058436,
		39.295654, 37.767044, 49.061638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721272, 37.261372, 49.624912>,  <39.220058, 37.072342, 49.102543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721272, 37.261372, 49.624912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.589554, 37.632557, 49.555119>,  <39.510521, 37.855267, 49.513241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.589554, 37.632557, 49.555119>,  <39.721272, 37.261372, 49.624912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589554, 37.632557, 49.555119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340949, 0.289183, 0.894498,
		0.880521, 0.235065, -0.411616,
		-0.329298, 0.927964, -0.174487,
		39.490765, 37.910946, 49.502773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243950, 37.776047, 49.984486>,  <39.721272, 37.261372, 49.624912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243950, 37.776047, 49.984486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.911350, 37.987385, 49.915825>,  <39.711792, 38.114189, 49.874630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.911350, 37.987385, 49.915825>,  <40.243950, 37.776047, 49.984486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911350, 37.987385, 49.915825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165351, 0.530354, 0.831495,
		0.530354, 0.663002, -0.528349,
		-0.831495, 0.528349, -0.171647,
		39.661903, 38.145889, 49.864330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334629, 38.444332, 50.195629>,  <40.243950, 37.776047, 49.984486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334629, 38.444332, 50.195629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.936882, 38.408291, 50.217983>,  <39.698235, 38.386665, 50.231396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.936882, 38.408291, 50.217983>,  <40.334629, 38.444332, 50.195629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936882, 38.408291, 50.217983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039328, 0.176052, 0.983595,
		-0.098463, 0.980249, -0.171516,
		-0.994363, -0.090103, 0.055886,
		39.638573, 38.381260, 50.234749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127472, 39.021404, 50.806744>,  <40.334629, 38.444332, 50.195629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127472, 39.021404, 50.806744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.834488, 38.755032, 50.750130>,  <39.658695, 38.595207, 50.716160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.834488, 38.755032, 50.750130>,  <40.127472, 39.021404, 50.806744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834488, 38.755032, 50.750130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272827, 0.096646, 0.957196,
		-0.623751, 0.739724, -0.252474,
		-0.732462, -0.665933, -0.141534,
		39.614750, 38.555252, 50.707668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613453, 39.381618, 51.199520>,  <40.127472, 39.021404, 50.806744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613453, 39.381618, 51.199520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.521751, 38.995083, 51.152805>,  <39.466732, 38.763161, 51.124779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.521751, 38.995083, 51.152805>,  <39.613453, 39.381618, 51.199520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521751, 38.995083, 51.152805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283895, -0.048380, 0.957634,
		-0.931046, 0.252694, -0.263247,
		-0.229252, -0.966336, -0.116783,
		39.452976, 38.705181, 51.117771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070251, 39.258408, 50.760342>,  <39.613453, 39.381618, 51.199520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070251, 39.258408, 50.760342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792210, 39.460991, 50.964432>,  <38.625385, 39.582542, 51.086887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792210, 39.460991, 50.964432>,  <39.070251, 39.258408, 50.760342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792210, 39.460991, 50.964432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340049, 0.393683, -0.854038,
		-0.633401, -0.767147, -0.101431,
		-0.695105, 0.506457, 0.510226,
		38.583679, 39.612926, 51.117500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498672, 39.127384, 50.438919>,  <39.070251, 39.258408, 50.760342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498672, 39.127384, 50.438919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440815, 39.467602, 50.641171>,  <38.406101, 39.671730, 50.762520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440815, 39.467602, 50.641171>,  <38.498672, 39.127384, 50.438919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440815, 39.467602, 50.641171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373998, 0.426098, -0.823751,
		-0.916081, -0.308254, 0.256467,
		-0.144645, 0.850541, 0.505627,
		38.397423, 39.722763, 50.792858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846729, 39.300148, 50.372559>,  <38.498672, 39.127384, 50.438919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846729, 39.300148, 50.372559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.019749, 39.652199, 50.450817>,  <38.123562, 39.863430, 50.497772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.019749, 39.652199, 50.450817>,  <37.846729, 39.300148, 50.372559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019749, 39.652199, 50.450817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306367, 0.347561, -0.886195,
		-0.847962, 0.323386, 0.419979,
		0.432551, 0.880127, 0.195644,
		38.149513, 39.916237, 50.509510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367069, 39.861500, 50.314785>,  <37.846729, 39.300148, 50.372559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367069, 39.861500, 50.314785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728580, 40.015858, 50.240730>,  <37.945488, 40.108471, 50.196297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728580, 40.015858, 50.240730>,  <37.367069, 39.861500, 50.314785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728580, 40.015858, 50.240730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341721, 0.390121, -0.855004,
		-0.257715, 0.835997, 0.484450,
		0.903775, 0.385894, -0.185138,
		37.999714, 40.131626, 50.185188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166901, 40.376495, 49.892391>,  <37.367069, 39.861500, 50.314785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166901, 40.376495, 49.892391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562550, 40.363876, 49.834923>,  <37.799938, 40.356304, 49.800442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562550, 40.363876, 49.834923>,  <37.166901, 40.376495, 49.892391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562550, 40.363876, 49.834923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128297, 0.292692, -0.947561,
		0.071948, 0.955686, 0.285460,
		0.989122, -0.031551, -0.143670,
		37.859287, 40.354412, 49.791821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383221, 41.032440, 49.465004>,  <37.166901, 40.376495, 49.892391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383221, 41.032440, 49.465004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.702969, 40.792542, 49.450531>,  <37.894817, 40.648602, 49.441849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.702969, 40.792542, 49.450531>,  <37.383221, 41.032440, 49.465004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702969, 40.792542, 49.450531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123194, 0.222536, -0.967110,
		0.588075, 0.768621, 0.251774,
		0.799369, -0.599750, -0.036179,
		37.942780, 40.612617, 49.439678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884876, 41.410736, 49.093586>,  <37.383221, 41.032440, 49.465004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884876, 41.410736, 49.093586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991421, 41.027275, 49.053516>,  <38.055347, 40.797199, 49.029476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991421, 41.027275, 49.053516>,  <37.884876, 41.410736, 49.093586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991421, 41.027275, 49.053516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049287, 0.090246, -0.994699,
		0.962611, 0.269891, -0.023211,
		0.266365, -0.958653, -0.100174,
		38.071331, 40.739677, 49.023464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441319, 41.390419, 48.679127>,  <37.884876, 41.410736, 49.093586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441319, 41.390419, 48.679127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302704, 41.016941, 48.643063>,  <38.219536, 40.792854, 48.621426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302704, 41.016941, 48.643063>,  <38.441319, 41.390419, 48.679127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302704, 41.016941, 48.643063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153185, 0.038493, -0.987447,
		0.925445, -0.355996, 0.129689,
		-0.346535, -0.933694, -0.090156,
		38.198742, 40.736832, 48.616016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960167, 40.940178, 48.544514>,  <38.441319, 41.390419, 48.679127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960167, 40.940178, 48.544514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.601181, 40.850624, 48.392498>,  <38.385788, 40.796894, 48.301289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.601181, 40.850624, 48.392498>,  <38.960167, 40.940178, 48.544514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601181, 40.850624, 48.392498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407939, -0.093626, -0.908196,
		0.167747, -0.970109, 0.175357,
		-0.897466, -0.223883, -0.380040,
		38.331940, 40.783459, 48.278484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077618, 40.723480, 47.833820>,  <38.960167, 40.940178, 48.544514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077618, 40.723480, 47.833820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687622, 40.636292, 47.816456>,  <38.453625, 40.583977, 47.806038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687622, 40.636292, 47.816456>,  <39.077618, 40.723480, 47.833820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687622, 40.636292, 47.816456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132059, -0.411049, -0.901997,
		0.178770, -0.885169, 0.429554,
		-0.974988, -0.217976, -0.043411,
		38.395126, 40.570900, 47.803432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947529, 40.128098, 47.362595>,  <39.077618, 40.723480, 47.833820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947529, 40.128098, 47.362595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579941, 40.283150, 47.391533>,  <38.359386, 40.376183, 47.408894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579941, 40.283150, 47.391533>,  <38.947529, 40.128098, 47.362595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579941, 40.283150, 47.391533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218268, -0.347249, -0.912018,
		-0.328387, -0.853917, 0.403718,
		-0.918979, 0.387613, 0.072350,
		38.304249, 40.399437, 47.413235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548279, 39.618122, 47.202263>,  <38.947529, 40.128098, 47.362595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548279, 39.618122, 47.202263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286621, 39.917114, 47.156013>,  <38.129627, 40.096512, 47.128265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286621, 39.917114, 47.156013>,  <38.548279, 39.618122, 47.202263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286621, 39.917114, 47.156013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185415, -0.306668, -0.933582,
		-0.733295, -0.589256, 0.339199,
		-0.654140, 0.747484, -0.115622,
		38.090378, 40.141357, 47.121326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873466, 39.297531, 46.867126>,  <38.548279, 39.618122, 47.202263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873466, 39.297531, 46.867126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882450, 39.692825, 46.806622>,  <37.887840, 39.930004, 46.770317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882450, 39.692825, 46.806622>,  <37.873466, 39.297531, 46.867126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882450, 39.692825, 46.806622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408016, -0.129070, -0.903805,
		-0.912699, 0.082014, 0.400319,
		0.022455, 0.988238, -0.151265,
		37.889187, 39.989296, 46.761242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193317, 39.476891, 46.488171>,  <37.873466, 39.297531, 46.867126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193317, 39.476891, 46.488171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.423470, 39.794312, 46.408962>,  <37.561562, 39.984764, 46.361435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.423470, 39.794312, 46.408962>,  <37.193317, 39.476891, 46.488171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423470, 39.794312, 46.408962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241072, -0.066811, -0.968205,
		-0.781549, 0.604825, 0.152861,
		0.575382, 0.793550, -0.198023,
		37.596085, 40.032375, 46.349556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643448, 40.035774, 46.255177>,  <37.193317, 39.476891, 46.488171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643448, 40.035774, 46.255177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.020432, 40.110832, 46.144501>,  <37.246624, 40.155869, 46.078094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.020432, 40.110832, 46.144501>,  <36.643448, 40.035774, 46.255177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020432, 40.110832, 46.144501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295688, 0.081685, -0.951786,
		-0.155996, 0.978835, 0.132470,
		0.942462, 0.187644, -0.276687,
		37.303169, 40.167126, 46.061493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013443, 40.408432, 46.102890>,  <36.643448, 40.035774, 46.255177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013443, 40.408432, 46.102890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661530, 40.220425, 46.131359>,  <35.450382, 40.107620, 46.148441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661530, 40.220425, 46.131359>,  <36.013443, 40.408432, 46.102890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661530, 40.220425, 46.131359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138144, -0.109523, 0.984338,
		-0.454860, 0.875836, 0.161287,
		-0.879783, -0.470017, 0.071174,
		35.397594, 40.079418, 46.152710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663345, 40.802380, 46.591686>,  <36.013443, 40.408432, 46.102890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663345, 40.802380, 46.591686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454010, 40.461563, 46.586838>,  <35.328407, 40.257072, 46.583927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454010, 40.461563, 46.586838>,  <35.663345, 40.802380, 46.591686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454010, 40.461563, 46.586838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005008, -0.017302, 0.999838,
		-0.852111, 0.523192, 0.013322,
		-0.523337, -0.852039, -0.012124,
		35.297009, 40.205952, 46.583202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202072, 40.877239, 47.156971>,  <35.663345, 40.802380, 46.591686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202072, 40.877239, 47.156971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230797, 40.487492, 47.071697>,  <35.248032, 40.253643, 47.020531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230797, 40.487492, 47.071697>,  <35.202072, 40.877239, 47.156971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230797, 40.487492, 47.071697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149473, -0.221837, 0.963559,
		-0.986154, -0.037331, -0.161573,
		0.071813, -0.974369, -0.213186,
		35.252342, 40.195183, 47.007740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584961, 40.534081, 47.581703>,  <35.202072, 40.877239, 47.156971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584961, 40.534081, 47.581703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866718, 40.263683, 47.495117>,  <35.035774, 40.101444, 47.443165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866718, 40.263683, 47.495117>,  <34.584961, 40.534081, 47.581703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866718, 40.263683, 47.495117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052929, -0.354137, 0.933695,
		-0.707833, -0.646232, -0.285231,
		0.704394, -0.675997, -0.216466,
		35.078037, 40.060883, 47.430176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290783, 39.893414, 47.901619>,  <34.584961, 40.534081, 47.581703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290783, 39.893414, 47.901619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685184, 39.836765, 47.866421>,  <34.921825, 39.802776, 47.845303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685184, 39.836765, 47.866421>,  <34.290783, 39.893414, 47.901619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685184, 39.836765, 47.866421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039726, -0.313029, 0.948912,
		-0.161930, -0.939125, -0.303022,
		0.986002, -0.141619, -0.087996,
		34.980984, 39.794281, 47.840023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380135, 39.348888, 48.409565>,  <34.290783, 39.893414, 47.901619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380135, 39.348888, 48.409565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748680, 39.491276, 48.347103>,  <34.969807, 39.576706, 48.309624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748680, 39.491276, 48.347103>,  <34.380135, 39.348888, 48.409565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748680, 39.491276, 48.347103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181045, -0.037477, 0.982761,
		0.343976, -0.933747, -0.098976,
		0.921359, 0.355965, -0.156159,
		35.025089, 39.598064, 48.300255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700211, 38.891624, 48.783535>,  <34.380135, 39.348888, 48.409565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700211, 38.891624, 48.783535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966034, 39.186970, 48.737598>,  <35.125526, 39.364178, 48.710037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966034, 39.186970, 48.737598>,  <34.700211, 38.891624, 48.783535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966034, 39.186970, 48.737598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301996, -0.124811, 0.945104,
		0.683494, -0.662755, -0.305926,
		0.664555, 0.738361, -0.114841,
		35.165401, 39.408478, 48.703144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736633, 38.236805, 48.691746>,  <34.700211, 38.891624, 48.783535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736633, 38.236805, 48.691746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370300, 38.180283, 48.842094>,  <34.150501, 38.146370, 48.932304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370300, 38.180283, 48.842094>,  <34.736633, 38.236805, 48.691746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370300, 38.180283, 48.842094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388345, 0.073572, -0.918573,
		0.102155, -0.987227, -0.122259,
		-0.915834, -0.141315, 0.375869,
		34.095551, 38.137890, 48.954857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452240, 37.736027, 48.286514>,  <34.736633, 38.236805, 48.691746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452240, 37.736027, 48.286514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142742, 37.940777, 48.435810>,  <33.957043, 38.063625, 48.525387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142742, 37.940777, 48.435810>,  <34.452240, 37.736027, 48.286514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142742, 37.940777, 48.435810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421387, 0.024061, -0.906562,
		-0.473024, -0.858725, 0.197079,
		-0.773745, 0.511872, 0.373237,
		33.910618, 38.094337, 48.547783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904072, 37.257359, 48.184593>,  <34.452240, 37.736027, 48.286514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904072, 37.257359, 48.184593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731640, 37.615364, 48.230423>,  <33.628181, 37.830166, 48.257919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731640, 37.615364, 48.230423>,  <33.904072, 37.257359, 48.184593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731640, 37.615364, 48.230423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378837, -0.064281, -0.923228,
		-0.818935, -0.441388, 0.366773,
		-0.431078, 0.895011, 0.114572,
		33.602318, 37.883869, 48.264793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168655, 37.155762, 47.975445>,  <33.904072, 37.257359, 48.184593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168655, 37.155762, 47.975445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252609, 37.545769, 47.946335>,  <33.302982, 37.779774, 47.928867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252609, 37.545769, 47.946335>,  <33.168655, 37.155762, 47.975445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252609, 37.545769, 47.946335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276841, -0.012127, -0.960839,
		-0.937714, 0.221814, 0.267379,
		0.209885, 0.975014, -0.072778,
		33.315575, 37.838272, 47.924500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655842, 37.307880, 47.502514>,  <33.168655, 37.155762, 47.975445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655842, 37.307880, 47.502514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.856270, 37.653217, 47.526413>,  <32.976528, 37.860420, 47.540752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.856270, 37.653217, 47.526413>,  <32.655842, 37.307880, 47.502514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856270, 37.653217, 47.526413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374604, 0.278617, -0.884333,
		-0.780128, 0.420731, 0.463018,
		0.501070, 0.863342, 0.059749,
		33.006592, 37.912220, 47.544338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208324, 37.752876, 47.250294>,  <32.655842, 37.307880, 47.502514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208324, 37.752876, 47.250294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568123, 37.912117, 47.178272>,  <32.784000, 38.007664, 47.135059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568123, 37.912117, 47.178272>,  <32.208324, 37.752876, 47.250294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568123, 37.912117, 47.178272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229556, 0.079963, -0.970005,
		-0.371766, 0.913848, 0.163314,
		0.899496, 0.398105, -0.180052,
		32.837971, 38.031548, 47.124256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062828, 38.197815, 46.763786>,  <32.208324, 37.752876, 47.250294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062828, 38.197815, 46.763786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.459232, 38.151787, 46.736485>,  <32.697075, 38.124172, 46.720104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.459232, 38.151787, 46.736485>,  <32.062828, 38.197815, 46.763786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459232, 38.151787, 46.736485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061773, 0.058986, -0.996346,
		0.118674, 0.991605, 0.051347,
		0.991010, -0.115068, -0.068255,
		32.756535, 38.117268, 46.716007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.793964, 36.011162, 51.480816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.067074, 36.213360, 51.269802>,  <38.230938, 36.334679, 51.143192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.067074, 36.213360, 51.269802>,  <37.793964, 36.011162, 51.480816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067074, 36.213360, 51.269802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432685, -0.302052, -0.849440,
		-0.588729, 0.808234, 0.012485,
		0.682775, 0.505492, -0.527538,
		38.271908, 36.365005, 51.111542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457218, 36.548679, 51.053001>,  <37.793964, 36.011162, 51.480816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457218, 36.548679, 51.053001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.816757, 36.460060, 50.901745>,  <38.032478, 36.406891, 50.810989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.816757, 36.460060, 50.901745>,  <37.457218, 36.548679, 51.053001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816757, 36.460060, 50.901745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419930, -0.188407, -0.887785,
		0.125440, 0.956776, -0.262382,
		0.898846, -0.221546, -0.378145,
		38.086411, 36.393597, 50.788300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369839, 36.741913, 50.427177>,  <37.457218, 36.548679, 51.053001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369839, 36.741913, 50.427177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.707325, 36.527958, 50.409119>,  <37.909817, 36.399586, 50.398285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.707325, 36.527958, 50.409119>,  <37.369839, 36.741913, 50.427177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707325, 36.527958, 50.409119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374745, -0.526720, -0.762976,
		0.384325, 0.660655, -0.644848,
		0.843718, -0.534884, -0.045145,
		37.960442, 36.367493, 50.395576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581905, 36.858902, 49.778332>,  <37.369839, 36.741913, 50.427177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581905, 36.858902, 49.778332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.749775, 36.513317, 49.889648>,  <37.850498, 36.305965, 49.956440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.749775, 36.513317, 49.889648>,  <37.581905, 36.858902, 49.778332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749775, 36.513317, 49.889648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238234, -0.400696, -0.884696,
		0.875853, 0.304984, -0.373986,
		0.419673, -0.863960, 0.278293,
		37.875675, 36.254128, 49.973137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941998, 36.718716, 49.226974>,  <37.581905, 36.858902, 49.778332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941998, 36.718716, 49.226974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.888226, 36.366066, 49.407936>,  <37.855965, 36.154476, 49.516514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.888226, 36.366066, 49.407936>,  <37.941998, 36.718716, 49.226974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888226, 36.366066, 49.407936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021060, -0.458987, -0.888193,
		0.990700, -0.109869, 0.080267,
		-0.134426, -0.881623, 0.452405,
		37.847897, 36.101578, 49.543659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275124, 36.292946, 48.860901>,  <37.941998, 36.718716, 49.226974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275124, 36.292946, 48.860901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.069035, 36.017052, 49.064396>,  <37.945381, 35.851517, 49.186493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.069035, 36.017052, 49.064396>,  <38.275124, 36.292946, 48.860901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069035, 36.017052, 49.064396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051932, -0.617622, -0.784758,
		0.855482, -0.377905, 0.354032,
		-0.515222, -0.689732, 0.508739,
		37.914467, 35.810131, 49.217018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618530, 35.644196, 48.592266>,  <38.275124, 36.292946, 48.860901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618530, 35.644196, 48.592266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.243427, 35.593681, 48.721672>,  <38.018364, 35.563374, 48.799316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.243427, 35.593681, 48.721672>,  <38.618530, 35.644196, 48.592266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243427, 35.593681, 48.721672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205901, -0.547997, -0.810743,
		0.279670, -0.826893, 0.487886,
		-0.937757, -0.126284, 0.323516,
		37.962101, 35.555798, 48.818726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511219, 34.968170, 48.508404>,  <38.618530, 35.644196, 48.592266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511219, 34.968170, 48.508404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.127518, 35.072910, 48.550846>,  <37.897297, 35.135754, 48.576313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.127518, 35.072910, 48.550846>,  <38.511219, 34.968170, 48.508404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127518, 35.072910, 48.550846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225352, -0.482594, -0.846357,
		-0.170413, -0.835786, 0.521941,
		-0.959258, 0.261851, 0.106106,
		37.839741, 35.151466, 48.582680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083797, 34.362789, 48.377632>,  <38.511219, 34.968170, 48.508404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083797, 34.362789, 48.377632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.840813, 34.671993, 48.304478>,  <37.695023, 34.857513, 48.260586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.840813, 34.671993, 48.304478>,  <38.083797, 34.362789, 48.377632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840813, 34.671993, 48.304478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348488, -0.466234, -0.813131,
		-0.713823, -0.430214, 0.552605,
		-0.607463, 0.773008, -0.182884,
		37.658573, 34.903896, 48.249611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508385, 34.060028, 48.138233>,  <38.083797, 34.362789, 48.377632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508385, 34.060028, 48.138233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.467102, 34.440166, 48.020798>,  <37.442333, 34.668251, 47.950336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.467102, 34.440166, 48.020798>,  <37.508385, 34.060028, 48.138233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467102, 34.440166, 48.020798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233616, -0.310067, -0.921565,
		-0.966837, -0.026520, 0.254015,
		-0.103202, 0.950345, -0.293588,
		37.436142, 34.725269, 47.932720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903912, 34.057404, 47.789383>,  <37.508385, 34.060028, 48.138233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903912, 34.057404, 47.789383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.092087, 34.380390, 47.647015>,  <37.204990, 34.574184, 47.561592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.092087, 34.380390, 47.647015>,  <36.903912, 34.057404, 47.789383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092087, 34.380390, 47.647015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384526, -0.175452, -0.906287,
		-0.794247, 0.563214, 0.227954,
		0.470438, 0.807470, -0.355923,
		37.233219, 34.622631, 47.540237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355244, 34.509026, 47.393997>,  <36.903912, 34.057404, 47.789383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355244, 34.509026, 47.393997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.731697, 34.567875, 47.272263>,  <36.957569, 34.603184, 47.199223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.731697, 34.567875, 47.272263>,  <36.355244, 34.509026, 47.393997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731697, 34.567875, 47.272263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281020, -0.159846, -0.946296,
		-0.187872, 0.976116, -0.109091,
		0.941133, 0.147125, -0.304339,
		37.014038, 34.612011, 47.180962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749916, 34.996212, 47.338696>,  <36.355244, 34.509026, 47.393997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749916, 34.996212, 47.338696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.519974, 34.680161, 47.423771>,  <35.382008, 34.490528, 47.474815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.519974, 34.680161, 47.423771>,  <35.749916, 34.996212, 47.338696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519974, 34.680161, 47.423771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049583, 0.293085, 0.954800,
		-0.816748, 0.538331, -0.207660,
		-0.574860, -0.790127, 0.212685,
		35.347515, 34.443123, 47.487576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116837, 35.286800, 47.625629>,  <35.749916, 34.996212, 47.338696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116837, 35.286800, 47.625629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.126900, 34.908855, 47.756226>,  <35.132938, 34.682087, 47.834583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.126900, 34.908855, 47.756226>,  <35.116837, 35.286800, 47.625629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126900, 34.908855, 47.756226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005246, 0.326468, 0.945194,
		-0.999670, -0.025495, 0.003258,
		0.025162, -0.944864, 0.326494,
		35.134449, 34.625397, 47.854176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547382, 35.138138, 48.045570>,  <35.116837, 35.286800, 47.625629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547382, 35.138138, 48.045570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.792984, 34.852623, 48.180336>,  <34.940346, 34.681313, 48.261196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.792984, 34.852623, 48.180336>,  <34.547382, 35.138138, 48.045570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792984, 34.852623, 48.180336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005604, 0.422892, 0.906163,
		-0.789283, -0.558276, 0.255657,
		0.614004, -0.713786, 0.336910,
		34.977184, 34.638489, 48.281410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263355, 34.970970, 48.627640>,  <34.547382, 35.138138, 48.045570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263355, 34.970970, 48.627640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.635910, 34.838005, 48.686985>,  <34.859444, 34.758224, 48.722591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.635910, 34.838005, 48.686985>,  <34.263355, 34.970970, 48.627640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635910, 34.838005, 48.686985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017286, 0.366724, 0.930169,
		-0.363608, -0.868916, 0.335818,
		0.931391, -0.332413, 0.148364,
		34.915329, 34.738281, 48.731495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203648, 34.420238, 49.192204>,  <34.263355, 34.970970, 48.627640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203648, 34.420238, 49.192204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576290, 34.564137, 49.171478>,  <34.799877, 34.650475, 49.159042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576290, 34.564137, 49.171478>,  <34.203648, 34.420238, 49.192204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576290, 34.564137, 49.171478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042525, 0.033697, 0.998527,
		0.360963, -0.932441, 0.016094,
		0.931610, 0.359747, -0.051815,
		34.855774, 34.672062, 49.155933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450073, 34.138657, 49.831268>,  <34.203648, 34.420238, 49.192204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450073, 34.138657, 49.831268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.713943, 34.413727, 49.709984>,  <34.872265, 34.578770, 49.637215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.713943, 34.413727, 49.709984>,  <34.450073, 34.138657, 49.831268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713943, 34.413727, 49.709984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005025, 0.399403, 0.916761,
		0.751534, -0.606288, 0.260021,
		0.659675, 0.687671, -0.303212,
		34.911846, 34.620029, 49.619019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982136, 34.132824, 50.333687>,  <34.450073, 34.138657, 49.831268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982136, 34.132824, 50.333687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010201, 34.485397, 50.146862>,  <35.027039, 34.696941, 50.034767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010201, 34.485397, 50.146862>,  <34.982136, 34.132824, 50.333687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010201, 34.485397, 50.146862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061665, 0.463492, 0.883953,
		0.995628, -0.090819, -0.021835,
		0.070159, 0.881435, -0.467066,
		35.031250, 34.749828, 50.006741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605091, 34.452511, 50.627846>,  <34.982136, 34.132824, 50.333687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605091, 34.452511, 50.627846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.393536, 34.747272, 50.459446>,  <35.266602, 34.924129, 50.358406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.393536, 34.747272, 50.459446>,  <35.605091, 34.452511, 50.627846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393536, 34.747272, 50.459446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136716, 0.563560, 0.814683,
		0.837605, 0.373322, -0.398809,
		-0.528892, 0.736907, -0.421001,
		35.234867, 34.968346, 50.333145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995068, 35.068466, 50.849644>,  <35.605091, 34.452511, 50.627846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995068, 35.068466, 50.849644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624554, 35.187496, 50.757172>,  <35.402245, 35.258915, 50.701687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624554, 35.187496, 50.757172>,  <35.995068, 35.068466, 50.849644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624554, 35.187496, 50.757172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043865, 0.524187, 0.850473,
		0.374259, 0.797922, -0.472494,
		-0.926286, 0.297572, -0.231183,
		35.346668, 35.276768, 50.687817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956699, 35.728073, 51.005604>,  <35.995068, 35.068466, 50.849644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956699, 35.728073, 51.005604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.570278, 35.625854, 51.020771>,  <35.338425, 35.564522, 51.029869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.570278, 35.625854, 51.020771>,  <35.956699, 35.728073, 51.005604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570278, 35.625854, 51.020771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086500, 0.458244, 0.884607,
		-0.243432, 0.851298, -0.464793,
		-0.966053, -0.255547, 0.037914,
		35.280464, 35.549191, 51.032146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618320, 36.227413, 51.244614>,  <35.956699, 35.728073, 51.005604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618320, 36.227413, 51.244614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.346230, 35.948532, 51.335114>,  <35.182976, 35.781204, 51.389416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.346230, 35.948532, 51.335114>,  <35.618320, 36.227413, 51.244614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346230, 35.948532, 51.335114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247850, 0.509264, 0.824148,
		-0.689823, 0.504535, -0.519220,
		-0.680231, -0.697205, 0.226253,
		35.142159, 35.739372, 51.402988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087120, 36.658947, 51.383755>,  <35.618320, 36.227413, 51.244614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087120, 36.658947, 51.383755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032696, 36.296391, 51.543728>,  <35.000042, 36.078857, 51.639709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032696, 36.296391, 51.543728>,  <35.087120, 36.658947, 51.383755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032696, 36.296391, 51.543728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345778, 0.421746, 0.838193,
		-0.928399, -0.024239, -0.370794,
		-0.136064, -0.906390, 0.399930,
		34.991875, 36.024475, 51.663708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473801, 36.704475, 51.628769>,  <35.087120, 36.658947, 51.383755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473801, 36.704475, 51.628769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.618153, 36.399529, 51.843639>,  <34.704765, 36.216560, 51.972561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.618153, 36.399529, 51.843639>,  <34.473801, 36.704475, 51.628769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618153, 36.399529, 51.843639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343984, 0.426570, 0.836489,
		-0.866856, -0.486652, -0.108302,
		0.360881, -0.762370, 0.537175,
		34.726418, 36.170818, 52.004791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049061, 36.280819, 52.102921>,  <34.473801, 36.704475, 51.628769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049061, 36.280819, 52.102921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929581, 36.662361, 52.115124>,  <33.857891, 36.891289, 52.122444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929581, 36.662361, 52.115124>,  <34.049061, 36.280819, 52.102921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929581, 36.662361, 52.115124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051639, 0.015764, -0.998541,
		-0.952948, -0.299844, 0.044548,
		-0.298704, 0.953858, 0.030506,
		33.839970, 36.948517, 52.124275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460560, 36.454887, 51.561848>,  <34.049061, 36.280819, 52.102921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460560, 36.454887, 51.561848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.658493, 36.793312, 51.641163>,  <33.777252, 36.996368, 51.688751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.658493, 36.793312, 51.641163>,  <33.460560, 36.454887, 51.561848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658493, 36.793312, 51.641163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044383, 0.252488, -0.966582,
		-0.867854, 0.469496, 0.162490,
		0.494833, 0.846063, 0.198285,
		33.806942, 37.047131, 51.700649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096344, 37.068325, 51.292622>,  <33.460560, 36.454887, 51.561848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096344, 37.068325, 51.292622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.455090, 37.241684, 51.327965>,  <33.670338, 37.345699, 51.349171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.455090, 37.241684, 51.327965>,  <33.096344, 37.068325, 51.292622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455090, 37.241684, 51.327965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113471, 0.418521, -0.901091,
		-0.427512, 0.798126, 0.424533,
		0.896860, 0.433399, 0.088359,
		33.724148, 37.371704, 51.354473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055630, 37.770260, 51.105698>,  <33.096344, 37.068325, 51.292622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055630, 37.770260, 51.105698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439747, 37.672298, 51.052235>,  <33.670216, 37.613522, 51.020157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439747, 37.672298, 51.052235>,  <33.055630, 37.770260, 51.105698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439747, 37.672298, 51.052235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058923, 0.290242, -0.955138,
		0.272709, 0.925085, 0.264286,
		0.960291, -0.244902, -0.133660,
		33.727833, 37.598827, 51.012138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240307, 38.206821, 50.581909>,  <33.055630, 37.770260, 51.105698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240307, 38.206821, 50.581909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566933, 37.976452, 50.597576>,  <33.762909, 37.838230, 50.606976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566933, 37.976452, 50.597576>,  <33.240307, 38.206821, 50.581909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566933, 37.976452, 50.597576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208674, 0.231237, -0.950255,
		0.538215, 0.784119, 0.309000,
		0.816566, -0.575922, 0.039170,
		33.811901, 37.803677, 50.609325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708176, 38.593544, 50.475189>,  <33.240307, 38.206821, 50.581909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708176, 38.593544, 50.475189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.851513, 38.240730, 50.352810>,  <33.937515, 38.029041, 50.279381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.851513, 38.240730, 50.352810>,  <33.708176, 38.593544, 50.475189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851513, 38.240730, 50.352810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248385, 0.405975, -0.879482,
		0.899941, 0.239165, 0.364563,
		0.358346, -0.882034, -0.305949,
		33.959015, 37.976120, 50.261024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174450, 38.737423, 50.064453>,  <33.708176, 38.593544, 50.475189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174450, 38.737423, 50.064453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.138824, 38.353142, 49.959297>,  <34.117451, 38.122574, 49.896202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.138824, 38.353142, 49.959297>,  <34.174450, 38.737423, 50.064453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138824, 38.353142, 49.959297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104584, 0.253459, -0.961676,
		0.990520, -0.113142, 0.077902,
		-0.089061, -0.960707, -0.262889,
		34.112106, 38.064930, 49.880432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711121, 38.652248, 49.633537>,  <34.174450, 38.737423, 50.064453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711121, 38.652248, 49.633537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.408894, 38.398983, 49.566345>,  <34.227558, 38.247025, 49.526028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.408894, 38.398983, 49.566345>,  <34.711121, 38.652248, 49.633537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408894, 38.398983, 49.566345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048171, 0.202036, -0.978193,
		0.653299, -0.747181, -0.122152,
		-0.755566, -0.633169, -0.167983,
		34.182224, 38.209034, 49.515949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328053, 38.645424, 49.244335>,  <34.711121, 38.652248, 49.633537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328053, 38.645424, 49.244335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.400261, 39.032387, 49.173313>,  <35.443588, 39.264565, 49.130699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.400261, 39.032387, 49.173313>,  <35.328053, 38.645424, 49.244335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400261, 39.032387, 49.173313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409742, 0.090146, 0.907736,
		0.894160, -0.236622, -0.380116,
		0.180524, 0.967411, -0.177559,
		35.454418, 39.322609, 49.120045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093781, 38.818886, 49.268410>,  <35.328053, 38.645424, 49.244335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093781, 38.818886, 49.268410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.876850, 39.142998, 49.357250>,  <35.746693, 39.337463, 49.410553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.876850, 39.142998, 49.357250>,  <36.093781, 38.818886, 49.268410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876850, 39.142998, 49.357250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447575, 0.054911, 0.892559,
		0.711027, 0.583464, -0.392441,
		-0.542325, 0.810280, 0.222101,
		35.714153, 39.386082, 49.423882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509441, 39.065769, 49.841892>,  <36.093781, 38.818886, 49.268410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509441, 39.065769, 49.841892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.171230, 39.278843, 49.856472>,  <35.968304, 39.406685, 49.865219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.171230, 39.278843, 49.856472>,  <36.509441, 39.065769, 49.841892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171230, 39.278843, 49.856472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193399, 0.241921, 0.950826,
		0.497670, 0.811002, -0.307572,
		-0.845530, 0.532682, 0.036450,
		35.917572, 39.438648, 49.867409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674366, 39.676098, 50.152897>,  <36.509441, 39.065769, 49.841892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674366, 39.676098, 50.152897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.276478, 39.664886, 50.192394>,  <36.037746, 39.658161, 50.216091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.276478, 39.664886, 50.192394>,  <36.674366, 39.676098, 50.152897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276478, 39.664886, 50.192394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087503, 0.271318, 0.958504,
		-0.053657, 0.962081, -0.267432,
		-0.994718, -0.028029, 0.098743,
		35.978062, 39.656479, 50.222015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511578, 40.232403, 50.603813>,  <36.674366, 39.676098, 50.152897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511578, 40.232403, 50.603813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.217258, 39.962551, 50.627384>,  <36.040668, 39.800640, 50.641525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.217258, 39.962551, 50.627384>,  <36.511578, 40.232403, 50.603813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217258, 39.962551, 50.627384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050354, 0.141276, 0.988689,
		-0.675327, 0.724508, -0.137922,
		-0.735798, -0.674633, 0.058925,
		35.996521, 39.760162, 50.645061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953308, 40.455982, 51.141563>,  <36.511578, 40.232403, 50.603813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953308, 40.455982, 51.141563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.906086, 40.060585, 51.103718>,  <35.877754, 39.823349, 51.081009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.906086, 40.060585, 51.103718>,  <35.953308, 40.455982, 51.141563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906086, 40.060585, 51.103718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069134, -0.086866, 0.993818,
		-0.990598, 0.123865, -0.058083,
		-0.118053, -0.988490, -0.094613,
		35.870670, 39.764038, 51.075333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535343, 40.302841, 51.650887>,  <35.953308, 40.455982, 51.141563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535343, 40.302841, 51.650887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.704803, 39.954590, 51.550861>,  <35.806480, 39.745640, 51.490845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.704803, 39.954590, 51.550861>,  <35.535343, 40.302841, 51.650887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704803, 39.954590, 51.550861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070693, -0.243443, 0.967336,
		-0.903065, -0.427486, -0.041586,
		0.423646, -0.870627, -0.250065,
		35.831898, 39.693401, 51.475842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289097, 39.886047, 52.157303>,  <35.535343, 40.302841, 51.650887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289097, 39.886047, 52.157303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592300, 39.670643, 52.010101>,  <35.774223, 39.541401, 51.921780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592300, 39.670643, 52.010101>,  <35.289097, 39.886047, 52.157303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592300, 39.670643, 52.010101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197102, -0.348710, 0.916271,
		-0.621749, -0.767076, -0.158184,
		0.758010, -0.538512, -0.368002,
		35.819702, 39.509090, 51.899700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156944, 39.135445, 52.259727>,  <35.289097, 39.886047, 52.157303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156944, 39.135445, 52.259727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.547787, 39.219162, 52.244450>,  <35.782291, 39.269394, 52.235283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.547787, 39.219162, 52.244450>,  <35.156944, 39.135445, 52.259727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547787, 39.219162, 52.244450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100635, -0.296513, 0.949712,
		0.187448, -0.931813, -0.310787,
		0.977106, 0.209297, -0.038193,
		35.840919, 39.281952, 52.232990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.449539, 38.375641, 35.870182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503899, 38.743996, 35.724030>,  <34.536514, 38.965008, 35.636337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503899, 38.743996, 35.724030>,  <34.449539, 38.375641, 35.870182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503899, 38.743996, 35.724030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963416, 0.036849, -0.265464,
		-0.230998, 0.388090, 0.892203,
		0.135901, 0.920885, -0.365381,
		34.544670, 39.020260, 35.614414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059563, 38.772793, 36.130867>,  <34.449539, 38.375641, 35.870182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059563, 38.772793, 36.130867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336060, 39.058414, 36.175240>,  <35.501957, 39.229786, 36.201862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336060, 39.058414, 36.175240>,  <35.059563, 38.772793, 36.130867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336060, 39.058414, 36.175240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074748, -0.082035, 0.993822,
		0.718743, -0.695268, -0.003332,
		0.691247, 0.714054, 0.110932,
		35.543434, 39.272629, 36.208519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491402, 38.529648, 36.563786>,  <35.059563, 38.772793, 36.130867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491402, 38.529648, 36.563786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521420, 38.926979, 36.598808>,  <35.539433, 39.165379, 36.619823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521420, 38.926979, 36.598808>,  <35.491402, 38.529648, 36.563786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521420, 38.926979, 36.598808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128413, -0.096703, 0.986995,
		0.988877, -0.062828, -0.134813,
		0.075048, 0.993328, 0.087560,
		35.543934, 39.224979, 36.625076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968819, 38.622009, 37.138638>,  <35.491402, 38.529648, 36.563786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968819, 38.622009, 37.138638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786308, 38.973736, 37.084068>,  <35.676800, 39.184772, 37.051327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786308, 38.973736, 37.084068>,  <35.968819, 38.622009, 37.138638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786308, 38.973736, 37.084068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040687, 0.173771, 0.983945,
		0.888905, 0.443404, -0.115065,
		-0.456280, 0.879316, -0.136425,
		35.649426, 39.237530, 37.043140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336987, 39.128357, 37.500595>,  <35.968819, 38.622009, 37.138638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336987, 39.128357, 37.500595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968796, 39.279606, 37.461109>,  <35.747883, 39.370354, 37.437420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968796, 39.279606, 37.461109>,  <36.336987, 39.128357, 37.500595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968796, 39.279606, 37.461109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035939, 0.169617, 0.984855,
		0.389139, 0.910085, -0.142539,
		-0.920478, 0.378122, -0.098712,
		35.692654, 39.393044, 37.431496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359158, 39.695534, 37.889812>,  <36.336987, 39.128357, 37.500595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359158, 39.695534, 37.889812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966980, 39.629089, 37.847584>,  <35.731674, 39.589222, 37.822247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966980, 39.629089, 37.847584>,  <36.359158, 39.695534, 37.889812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966980, 39.629089, 37.847584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138121, 0.198570, 0.970305,
		-0.140211, 0.965908, -0.217629,
		-0.980440, -0.166107, -0.105570,
		35.672848, 39.579258, 37.815914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025547, 40.201797, 38.310623>,  <36.359158, 39.695534, 37.889812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025547, 40.201797, 38.310623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753094, 39.918240, 38.237381>,  <35.589622, 39.748104, 38.193436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753094, 39.918240, 38.237381>,  <36.025547, 40.201797, 38.310623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753094, 39.918240, 38.237381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310600, 0.053300, 0.949045,
		-0.663015, 0.703296, -0.256487,
		-0.681131, -0.708896, -0.183105,
		35.548756, 39.705570, 38.182449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419697, 40.441555, 38.623741>,  <36.025547, 40.201797, 38.310623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419697, 40.441555, 38.623741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421417, 40.042236, 38.600475>,  <35.422451, 39.802647, 38.586517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421417, 40.042236, 38.600475>,  <35.419697, 40.441555, 38.623741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421417, 40.042236, 38.600475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206020, -0.057801, 0.976839,
		-0.978538, 0.007779, -0.205918,
		0.004303, -0.998298, -0.058164,
		35.422707, 39.742748, 38.583027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938244, 40.307053, 39.074036>,  <35.419697, 40.441555, 38.623741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938244, 40.307053, 39.074036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071880, 39.931759, 39.038029>,  <35.152061, 39.706585, 39.016422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071880, 39.931759, 39.038029>,  <34.938244, 40.307053, 39.074036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071880, 39.931759, 39.038029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296566, -0.195300, 0.934830,
		-0.894667, -0.285625, -0.343496,
		0.334095, -0.938230, -0.090021,
		35.172108, 39.650291, 39.011021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440468, 39.861656, 39.323391>,  <34.938244, 40.307053, 39.074036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440468, 39.861656, 39.323391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786575, 39.661144, 39.325871>,  <34.994240, 39.540836, 39.327358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786575, 39.661144, 39.325871>,  <34.440468, 39.861656, 39.323391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786575, 39.661144, 39.325871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140887, -0.231293, 0.962629,
		-0.481110, -0.833802, -0.270754,
		0.865265, -0.501276, 0.006194,
		35.046154, 39.510761, 39.327728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243164, 39.241398, 39.452396>,  <34.440468, 39.861656, 39.323391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243164, 39.241398, 39.452396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627232, 39.291172, 39.552471>,  <34.857674, 39.321037, 39.612518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627232, 39.291172, 39.552471>,  <34.243164, 39.241398, 39.452396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627232, 39.291172, 39.552471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227045, -0.174491, 0.958125,
		0.162877, -0.976765, -0.139289,
		0.960167, 0.124432, 0.250190,
		34.915283, 39.328503, 39.627529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308762, 38.622227, 39.893982>,  <34.243164, 39.241398, 39.452396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308762, 38.622227, 39.893982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604282, 38.883518, 39.960262>,  <34.781597, 39.040295, 40.000031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604282, 38.883518, 39.960262>,  <34.308762, 38.622227, 39.893982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604282, 38.883518, 39.960262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046079, -0.196332, 0.979454,
		0.672341, -0.731262, -0.114951,
		0.738806, 0.653230, 0.165698,
		34.825924, 39.079487, 40.009972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152866, 37.908367, 40.167023>,  <34.308762, 38.622227, 39.893982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152866, 37.908367, 40.167023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782543, 37.843735, 40.303711>,  <33.560349, 37.804955, 40.385723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782543, 37.843735, 40.303711>,  <34.152866, 37.908367, 40.167023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782543, 37.843735, 40.303711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344425, -0.011828, -0.938739,
		0.155726, -0.986788, -0.044703,
		-0.925808, -0.161583, 0.341717,
		33.504799, 37.795261, 40.406227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916080, 37.338108, 39.760216>,  <34.152866, 37.908367, 40.167023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916080, 37.338108, 39.760216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575375, 37.505703, 39.886044>,  <33.370953, 37.606258, 39.961540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575375, 37.505703, 39.886044>,  <33.916080, 37.338108, 39.760216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575375, 37.505703, 39.886044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417906, -0.181188, -0.890239,
		-0.316003, -0.889731, 0.329426,
		-0.851761, 0.418988, 0.314568,
		33.319847, 37.631401, 39.980415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448124, 36.834633, 39.582478>,  <33.916080, 37.338108, 39.760216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448124, 36.834633, 39.582478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217873, 37.153641, 39.654724>,  <33.079723, 37.345043, 39.698071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217873, 37.153641, 39.654724>,  <33.448124, 36.834633, 39.582478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217873, 37.153641, 39.654724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604686, -0.266463, -0.750568,
		-0.550464, -0.541262, 0.635630,
		-0.575626, 0.797517, 0.180615,
		33.045185, 37.392895, 39.708908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769161, 36.581573, 39.620228>,  <33.448124, 36.834633, 39.582478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769161, 36.581573, 39.620228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759262, 36.971329, 39.530819>,  <32.753323, 37.205181, 39.477173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759262, 36.971329, 39.530819>,  <32.769161, 36.581573, 39.620228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759262, 36.971329, 39.530819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624215, -0.189709, -0.757870,
		-0.780861, 0.120773, 0.612919,
		-0.024746, 0.974384, -0.223525,
		32.751839, 37.263645, 39.463760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010399, 36.717869, 39.501297>,  <32.769161, 36.581573, 39.620228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010399, 36.717869, 39.501297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222523, 37.004879, 39.320660>,  <32.349796, 37.177086, 39.212276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222523, 37.004879, 39.320660>,  <32.010399, 36.717869, 39.501297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222523, 37.004879, 39.320660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568366, -0.094351, -0.817348,
		-0.629076, 0.690113, 0.357782,
		0.530305, 0.717525, -0.451591,
		32.381615, 37.220135, 39.185181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470484, 37.064022, 39.162205>,  <32.010399, 36.717869, 39.501297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470484, 37.064022, 39.162205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798466, 37.187675, 38.969494>,  <31.995255, 37.261868, 38.853867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798466, 37.187675, 38.969494>,  <31.470484, 37.064022, 39.162205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798466, 37.187675, 38.969494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309301, -0.468934, -0.827305,
		-0.481669, 0.827368, -0.288890,
		0.819956, 0.309133, -0.481777,
		32.044453, 37.280415, 38.824963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329210, 37.434902, 38.563282>,  <31.470484, 37.064022, 39.162205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329210, 37.434902, 38.563282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694178, 37.285217, 38.496994>,  <31.913158, 37.195408, 38.457222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694178, 37.285217, 38.496994>,  <31.329210, 37.434902, 38.563282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694178, 37.285217, 38.496994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314203, -0.381035, -0.869534,
		0.262245, 0.845446, -0.465241,
		0.912416, -0.374211, -0.165718,
		31.967903, 37.172955, 38.447277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474245, 37.723705, 37.928570>,  <31.329210, 37.434902, 38.563282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474245, 37.723705, 37.928570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688154, 37.393406, 38.000305>,  <31.816500, 37.195229, 38.043346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688154, 37.393406, 38.000305>,  <31.474245, 37.723705, 37.928570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688154, 37.393406, 38.000305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319268, -0.393956, -0.861898,
		0.782358, 0.403664, -0.474311,
		0.534775, -0.825745, 0.179338,
		31.848587, 37.145683, 38.054108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807432, 37.533451, 37.295189>,  <31.474245, 37.723705, 37.928570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807432, 37.533451, 37.295189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843441, 37.204792, 37.520325>,  <31.865046, 37.007595, 37.655407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843441, 37.204792, 37.520325>,  <31.807432, 37.533451, 37.295189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843441, 37.204792, 37.520325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249589, -0.565714, -0.785922,
		0.964158, -0.069729, -0.256001,
		0.090022, -0.821648, 0.562842,
		31.870447, 36.958298, 37.689178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134674, 37.084457, 36.841877>,  <31.807432, 37.533451, 37.295189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134674, 37.084457, 36.841877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011772, 36.831306, 37.126148>,  <31.938030, 36.679417, 37.296711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011772, 36.831306, 37.126148>,  <32.134674, 37.084457, 36.841877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011772, 36.831306, 37.126148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123864, -0.713849, -0.689259,
		0.943531, -0.299806, 0.140943,
		-0.307256, -0.632879, 0.710674,
		31.919596, 36.641441, 37.339352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414455, 36.401524, 36.726723>,  <32.134674, 37.084457, 36.841877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414455, 36.401524, 36.726723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085167, 36.352139, 36.948372>,  <31.887592, 36.322506, 37.081364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085167, 36.352139, 36.948372>,  <32.414455, 36.401524, 36.726723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085167, 36.352139, 36.948372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281800, -0.758463, -0.587641,
		0.492839, -0.639914, 0.589593,
		-0.823225, -0.123465, 0.554128,
		31.838200, 36.315098, 37.114609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354069, 35.683750, 36.692551>,  <32.414455, 36.401524, 36.726723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354069, 35.683750, 36.692551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983339, 35.756989, 36.823685>,  <31.760902, 35.800934, 36.902367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983339, 35.756989, 36.823685>,  <32.354069, 35.683750, 36.692551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983339, 35.756989, 36.823685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354584, -0.714085, -0.603616,
		0.123581, -0.675690, 0.726754,
		-0.926822, 0.183100, 0.327836,
		31.705294, 35.811920, 36.922035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047588, 35.075397, 36.924122>,  <32.354069, 35.683750, 36.692551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047588, 35.075397, 36.924122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773718, 35.347782, 36.820198>,  <31.609394, 35.511215, 36.757843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773718, 35.347782, 36.820198>,  <32.047588, 35.075397, 36.924122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773718, 35.347782, 36.820198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307768, -0.593255, -0.743859,
		-0.660676, -0.429343, 0.615769,
		-0.684679, 0.680964, -0.259812,
		31.568314, 35.552071, 36.742256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306610, 34.774586, 36.981358>,  <32.047588, 35.075397, 36.924122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306610, 34.774586, 36.981358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336655, 35.061699, 36.704475>,  <31.354681, 35.233967, 36.538345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336655, 35.061699, 36.704475>,  <31.306610, 34.774586, 36.981358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336655, 35.061699, 36.704475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225726, -0.663909, -0.712932,
		-0.971291, 0.209799, 0.112154,
		0.075112, 0.717781, -0.692206,
		31.359188, 35.277035, 36.496815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074339, 34.403412, 37.574127>,  <31.306610, 34.774586, 36.981358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074339, 34.403412, 37.574127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402323, 34.631054, 37.549541>,  <31.599113, 34.767639, 37.534790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402323, 34.631054, 37.549541>,  <31.074339, 34.403412, 37.574127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402323, 34.631054, 37.549541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031624, -0.152248, -0.987836,
		-0.571544, 0.808044, -0.142835,
		0.819962, 0.569109, -0.061463,
		31.648312, 34.801788, 37.531101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767622, 34.231956, 37.362530>,  <31.074339, 34.403412, 37.574127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767622, 34.231956, 37.362530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591291, 33.880260, 37.290302>,  <31.485493, 33.669243, 37.246964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591291, 33.880260, 37.290302>,  <31.767622, 34.231956, 37.362530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591291, 33.880260, 37.290302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332137, 0.027109, -0.942841,
		0.833880, -0.475606, 0.280078,
		-0.440828, -0.879241, -0.180572,
		31.459044, 33.616489, 37.236130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471645, 34.036999, 37.491272>,  <31.767622, 34.231956, 37.362530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471645, 34.036999, 37.491272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869122, 34.056644, 37.531601>,  <33.107609, 34.068432, 37.555798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869122, 34.056644, 37.531601>,  <32.471645, 34.036999, 37.491272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869122, 34.056644, 37.531601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048067, -0.625721, 0.778564,
		0.101326, -0.778499, -0.619413,
		0.993691, 0.049115, 0.100822,
		33.167229, 34.071381, 37.561848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806770, 33.335693, 37.674343>,  <32.471645, 34.036999, 37.491272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806770, 33.335693, 37.674343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037060, 33.605309, 37.859474>,  <33.175232, 33.767078, 37.970554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037060, 33.605309, 37.859474>,  <32.806770, 33.335693, 37.674343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037060, 33.605309, 37.859474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101045, -0.620368, 0.777775,
		0.811378, -0.401015, -0.425268,
		0.575721, 0.674041, 0.462832,
		33.209778, 33.807522, 37.998325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435890, 33.005096, 38.059444>,  <32.806770, 33.335693, 37.674343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435890, 33.005096, 38.059444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365421, 33.364201, 38.220932>,  <33.323139, 33.579662, 38.317825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365421, 33.364201, 38.220932>,  <33.435890, 33.005096, 38.059444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365421, 33.364201, 38.220932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416466, -0.303643, 0.856946,
		0.891918, 0.319109, -0.320392,
		-0.176175, 0.897758, 0.403723,
		33.312569, 33.633530, 38.342049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037384, 33.188286, 38.383484>,  <33.435890, 33.005096, 38.059444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037384, 33.188286, 38.383484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766304, 33.436848, 38.540756>,  <33.603657, 33.585983, 38.635120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766304, 33.436848, 38.540756>,  <34.037384, 33.188286, 38.383484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766304, 33.436848, 38.540756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446078, -0.077663, 0.891618,
		0.584587, 0.779634, -0.224561,
		-0.677696, 0.621400, 0.393179,
		33.562996, 33.623268, 38.658710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393250, 33.693764, 38.816727>,  <34.037384, 33.188286, 38.383484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393250, 33.693764, 38.816727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009407, 33.663570, 38.925140>,  <33.779102, 33.645454, 38.990189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009407, 33.663570, 38.925140>,  <34.393250, 33.693764, 38.816727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009407, 33.663570, 38.925140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281343, -0.251955, 0.925940,
		-0.001607, 0.964791, 0.263015,
		-0.959606, -0.075485, 0.271032,
		33.721527, 33.640926, 39.006451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336174, 34.092323, 39.443569>,  <34.393250, 33.693764, 38.816727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336174, 34.092323, 39.443569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023849, 33.844521, 39.475910>,  <33.836452, 33.695839, 39.495316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023849, 33.844521, 39.475910>,  <34.336174, 34.092323, 39.443569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023849, 33.844521, 39.475910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174771, -0.092338, 0.980270,
		-0.599820, 0.779539, 0.180371,
		-0.780814, -0.619510, 0.080855,
		33.789604, 33.658669, 39.500168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912525, 34.315899, 40.001381>,  <34.336174, 34.092323, 39.443569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912525, 34.315899, 40.001381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810410, 33.933590, 39.942966>,  <33.749142, 33.704205, 39.907917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810410, 33.933590, 39.942966>,  <33.912525, 34.315899, 40.001381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810410, 33.933590, 39.942966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058129, -0.165937, 0.984422,
		-0.965116, 0.242824, 0.097920,
		-0.255290, -0.955773, -0.146034,
		33.733822, 33.646858, 39.899155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379391, 34.205841, 40.497681>,  <33.912525, 34.315899, 40.001381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379391, 34.205841, 40.497681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558659, 33.864285, 40.391842>,  <33.666218, 33.659351, 40.328339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558659, 33.864285, 40.391842>,  <33.379391, 34.205841, 40.497681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558659, 33.864285, 40.391842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164496, -0.212156, 0.963292,
		-0.878686, -0.475238, 0.045381,
		0.448165, -0.853896, -0.264593,
		33.693108, 33.608116, 40.312466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101963, 33.572567, 40.911266>,  <33.379391, 34.205841, 40.497681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101963, 33.572567, 40.911266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457073, 33.443676, 40.779797>,  <33.670139, 33.366341, 40.700916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457073, 33.443676, 40.779797>,  <33.101963, 33.572567, 40.911266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457073, 33.443676, 40.779797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160605, -0.452336, 0.877267,
		-0.431342, -0.831605, -0.349824,
		0.887778, -0.322219, -0.328672,
		33.723404, 33.347008, 40.681194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185387, 32.959980, 41.160912>,  <33.101963, 33.572567, 40.911266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185387, 32.959980, 41.160912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568340, 33.050907, 41.089642>,  <33.798111, 33.105465, 41.046879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568340, 33.050907, 41.089642>,  <33.185387, 32.959980, 41.160912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568340, 33.050907, 41.089642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234061, -0.249184, 0.939746,
		0.169226, -0.941399, -0.291771,
		0.957381, 0.227322, -0.178177,
		33.855553, 33.119102, 41.036190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469246, 32.450508, 41.554592>,  <33.185387, 32.959980, 41.160912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469246, 32.450508, 41.554592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750301, 32.728199, 41.492180>,  <33.918934, 32.894814, 41.454731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750301, 32.728199, 41.492180>,  <33.469246, 32.450508, 41.554592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750301, 32.728199, 41.492180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308295, -0.099392, 0.946084,
		0.641294, -0.712856, -0.283864,
		0.702635, 0.694232, -0.156031,
		33.961090, 32.936470, 41.445370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093830, 32.214275, 41.921780>,  <33.469246, 32.450508, 41.554592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093830, 32.214275, 41.921780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152676, 32.607761, 41.880489>,  <34.187984, 32.843853, 41.855717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152676, 32.607761, 41.880489>,  <34.093830, 32.214275, 41.921780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152676, 32.607761, 41.880489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434229, 0.029534, 0.900318,
		0.888708, -0.177277, -0.422814,
		0.147118, 0.983718, -0.103226,
		34.196812, 32.902878, 41.849522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811184, 32.254395, 42.312996>,  <34.093830, 32.214275, 41.921780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811184, 32.254395, 42.312996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629913, 32.605728, 42.252129>,  <34.521149, 32.816528, 42.215607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629913, 32.605728, 42.252129>,  <34.811184, 32.254395, 42.312996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629913, 32.605728, 42.252129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339962, 0.328099, 0.881350,
		0.824047, 0.347678, -0.447288,
		-0.453181, 0.878334, -0.152172,
		34.493958, 32.869228, 42.206478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265732, 32.735321, 42.551510>,  <34.811184, 32.254395, 42.312996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265732, 32.735321, 42.551510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930008, 32.952728, 42.556553>,  <34.728573, 33.083172, 42.559578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930008, 32.952728, 42.556553>,  <35.265732, 32.735321, 42.551510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930008, 32.952728, 42.556553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296804, 0.438650, 0.848229,
		0.455493, 0.715666, -0.529479,
		-0.839305, 0.543514, 0.012611,
		34.678215, 33.115784, 42.560337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375172, 33.486252, 42.549854>,  <35.265732, 32.735321, 42.551510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375172, 33.486252, 42.549854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013725, 33.420952, 42.708263>,  <34.796860, 33.381771, 42.803307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013725, 33.420952, 42.708263>,  <35.375172, 33.486252, 42.549854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013725, 33.420952, 42.708263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279161, 0.476787, 0.833513,
		-0.324885, 0.863727, -0.385260,
		-0.903614, -0.163247, 0.396020,
		34.742641, 33.371979, 42.827068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245888, 34.147865, 42.965481>,  <35.375172, 33.486252, 42.549854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245888, 34.147865, 42.965481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978611, 33.872692, 43.078808>,  <34.818245, 33.707588, 43.146805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978611, 33.872692, 43.078808>,  <35.245888, 34.147865, 42.965481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978611, 33.872692, 43.078808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241535, 0.159600, 0.957178,
		-0.703692, 0.708008, 0.059518,
		-0.668190, -0.687934, 0.283318,
		34.778152, 33.666313, 43.163803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993652, 34.441589, 43.467587>,  <35.245888, 34.147865, 42.965481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993652, 34.441589, 43.467587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859207, 34.066917, 43.506901>,  <34.778542, 33.842113, 43.530491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859207, 34.066917, 43.506901>,  <34.993652, 34.441589, 43.467587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859207, 34.066917, 43.506901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109404, 0.064823, 0.991882,
		-0.935447, 0.344135, 0.080689,
		-0.336111, -0.936680, 0.098289,
		34.758373, 33.785912, 43.536388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463943, 34.384224, 43.964951>,  <34.993652, 34.441589, 43.467587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463943, 34.384224, 43.964951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621460, 34.016678, 43.955112>,  <34.715969, 33.796150, 43.949211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621460, 34.016678, 43.955112>,  <34.463943, 34.384224, 43.964951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621460, 34.016678, 43.955112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024140, -0.037082, 0.999021,
		-0.918881, -0.392815, -0.036784,
		0.393794, -0.918869, -0.024591,
		34.739597, 33.741016, 43.947735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060810, 34.056671, 44.419037>,  <34.463943, 34.384224, 43.964951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060810, 34.056671, 44.419037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402946, 33.851894, 44.387272>,  <34.608231, 33.729031, 44.368214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402946, 33.851894, 44.387272>,  <34.060810, 34.056671, 44.419037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402946, 33.851894, 44.387272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033401, -0.098473, 0.994579,
		-0.516984, -0.853359, -0.067129,
		0.855343, -0.511939, -0.079412,
		34.659550, 33.698311, 44.363449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882328, 33.539490, 44.829704>,  <34.060810, 34.056671, 44.419037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882328, 33.539490, 44.829704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280376, 33.564091, 44.798859>,  <34.519207, 33.578854, 44.780350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280376, 33.564091, 44.798859>,  <33.882328, 33.539490, 44.829704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280376, 33.564091, 44.798859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085157, -0.141109, 0.986325,
		0.049784, -0.988082, -0.145659,
		0.995123, 0.061507, -0.077117,
		34.578915, 33.582542, 44.775723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033779, 33.210857, 45.369568>,  <33.882328, 33.539490, 44.829704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033779, 33.210857, 45.369568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388607, 33.379433, 45.294212>,  <34.601505, 33.480579, 45.249001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388607, 33.379433, 45.294212>,  <34.033779, 33.210857, 45.369568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388607, 33.379433, 45.294212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179349, 0.061403, 0.981867,
		0.425368, -0.904774, -0.021117,
		0.887072, 0.421442, -0.188389,
		34.654728, 33.505863, 45.237694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613197, 32.755241, 45.730766>,  <34.033779, 33.210857, 45.369568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613197, 32.755241, 45.730766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770588, 33.117191, 45.665806>,  <34.865021, 33.334362, 45.626831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770588, 33.117191, 45.665806>,  <34.613197, 32.755241, 45.730766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770588, 33.117191, 45.665806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279949, 0.050329, 0.958695,
		0.875676, -0.422683, -0.233517,
		0.393472, 0.904879, -0.162401,
		34.888630, 33.388657, 45.617085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291035, 32.726311, 46.081978>,  <34.613197, 32.755241, 45.730766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291035, 32.726311, 46.081978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197926, 33.113518, 46.044544>,  <35.142059, 33.345840, 46.022083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197926, 33.113518, 46.044544>,  <35.291035, 32.726311, 46.081978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197926, 33.113518, 46.044544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353695, 0.173905, 0.919052,
		0.905933, 0.180833, -0.382864,
		-0.232777, 0.968017, -0.093586,
		35.128094, 33.403923, 46.016468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861988, 33.066055, 46.368259>,  <35.291035, 32.726311, 46.081978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861988, 33.066055, 46.368259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580780, 33.350403, 46.360027>,  <35.412056, 33.521011, 46.355087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580780, 33.350403, 46.360027>,  <35.861988, 33.066055, 46.368259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580780, 33.350403, 46.360027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365573, 0.386057, 0.846945,
		0.610017, 0.587894, -0.531282,
		-0.703019, 0.710873, -0.020583,
		35.369873, 33.563663, 46.353851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117424, 33.791847, 46.697750>,  <35.861988, 33.066055, 46.368259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117424, 33.791847, 46.697750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721733, 33.850368, 46.699982>,  <35.484318, 33.885479, 46.701321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721733, 33.850368, 46.699982>,  <36.117424, 33.791847, 46.697750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721733, 33.850368, 46.699982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086103, 0.550546, 0.830353,
		0.118409, 0.821886, -0.557211,
		-0.989225, 0.146298, 0.005577,
		35.424965, 33.894257, 46.701656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947338, 34.518696, 46.747761>,  <36.117424, 33.791847, 46.697750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947338, 34.518696, 46.747761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642620, 34.312481, 46.904678>,  <35.459789, 34.188751, 46.998829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642620, 34.312481, 46.904678>,  <35.947338, 34.518696, 46.747761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642620, 34.312481, 46.904678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084374, 0.521435, 0.849109,
		-0.642304, 0.679943, -0.353727,
		-0.761792, -0.515541, 0.392290,
		35.414082, 34.157818, 47.022366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364124, 35.152340, 46.758629>,  <35.947338, 34.518696, 46.747761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364124, 35.152340, 46.758629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739071, 35.014938, 46.735516>,  <36.964039, 34.932499, 46.721645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739071, 35.014938, 46.735516>,  <36.364124, 35.152340, 46.758629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739071, 35.014938, 46.735516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051793, 0.301500, -0.952058,
		0.344460, 0.889439, 0.300409,
		0.937371, -0.343505, -0.057788,
		37.020283, 34.911888, 46.718178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633827, 35.492107, 46.164631>,  <36.364124, 35.152340, 46.758629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633827, 35.492107, 46.164631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903999, 35.201500, 46.215157>,  <37.066105, 35.027134, 46.245472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903999, 35.201500, 46.215157>,  <36.633827, 35.492107, 46.164631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903999, 35.201500, 46.215157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271531, 0.085778, -0.958599,
		0.685609, 0.681768, 0.255211,
		0.675434, -0.726522, 0.126311,
		37.106628, 34.983543, 46.253048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321674, 35.635914, 45.804775>,  <36.633827, 35.492107, 46.164631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321674, 35.635914, 45.804775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336117, 35.237946, 45.842369>,  <37.344784, 34.999165, 45.864925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336117, 35.237946, 45.842369>,  <37.321674, 35.635914, 45.804775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336117, 35.237946, 45.842369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367318, -0.074247, -0.927127,
		0.929394, 0.067999, 0.362770,
		0.036109, -0.994919, 0.093982,
		37.346951, 34.939468, 45.870564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952469, 35.437202, 45.525040>,  <37.321674, 35.635914, 45.804775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952469, 35.437202, 45.525040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723522, 35.112194, 45.480846>,  <37.586155, 34.917191, 45.454330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723522, 35.112194, 45.480846>,  <37.952469, 35.437202, 45.525040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723522, 35.112194, 45.480846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320563, -0.097704, -0.942175,
		0.754739, -0.574690, 0.316386,
		-0.572370, -0.812518, -0.110483,
		37.551811, 34.868439, 45.447701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421730, 34.931019, 45.193527>,  <37.952469, 35.437202, 45.525040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421730, 34.931019, 45.193527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093021, 34.711983, 45.130493>,  <37.895798, 34.580559, 45.092674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093021, 34.711983, 45.130493>,  <38.421730, 34.931019, 45.193527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093021, 34.711983, 45.130493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293958, -0.170494, -0.940489,
		0.488140, -0.819190, 0.301077,
		-0.821771, -0.547595, -0.157582,
		37.846489, 34.547703, 45.083218>
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
