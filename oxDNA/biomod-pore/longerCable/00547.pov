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
	<24.282022, 34.964203, 34.420265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226923, 35.052830, 34.806412>,  <24.193863, 35.106007, 35.038101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226923, 35.052830, 34.806412>,  <24.282022, 34.964203, 34.420265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.226923, 35.052830, 34.806412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985450, -0.067321, 0.156063,
		0.099567, 0.972819, -0.209069,
		-0.137747, 0.221566, 0.965367,
		24.185598, 35.119301, 35.096024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863735, 35.337158, 34.562214>,  <24.282022, 34.964203, 34.420265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863735, 35.337158, 34.562214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714897, 35.173851, 34.895649>,  <24.625593, 35.075867, 35.095711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714897, 35.173851, 34.895649>,  <24.863735, 35.337158, 34.562214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.714897, 35.173851, 34.895649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903818, -0.363833, 0.225253,
		0.211322, 0.837224, 0.504379,
		-0.372097, -0.408266, 0.833585,
		24.603268, 35.051373, 35.145725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210674, 35.526409, 35.184971>,  <24.863735, 35.337158, 34.562214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210674, 35.526409, 35.184971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045685, 35.162998, 35.211643>,  <24.946692, 34.944950, 35.227646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045685, 35.162998, 35.211643>,  <25.210674, 35.526409, 35.184971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.045685, 35.162998, 35.211643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910664, -0.413127, 0.004299,
		0.023643, 0.062500, 0.997765,
		-0.412472, -0.908526, 0.066684,
		24.921944, 34.890442, 35.231647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.540737, 35.286087, 35.752110>,  <25.210674, 35.526409, 35.184971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.540737, 35.286087, 35.752110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429445, 35.001835, 35.493622>,  <25.362671, 34.831284, 35.338528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429445, 35.001835, 35.493622>,  <25.540737, 35.286087, 35.752110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429445, 35.001835, 35.493622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918451, -0.393748, 0.037557,
		-0.281137, -0.583070, 0.762228,
		-0.278228, -0.710628, -0.646218,
		25.345978, 34.788647, 35.299755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675503, 34.465038, 35.950722>,  <25.540737, 35.286087, 35.752110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675503, 34.465038, 35.950722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706238, 34.548809, 35.560802>,  <25.724678, 34.599072, 35.326851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706238, 34.548809, 35.560802>,  <25.675503, 34.465038, 35.950722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706238, 34.548809, 35.560802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912857, -0.407979, -0.015697,
		-0.400985, -0.888647, -0.222525,
		0.076837, 0.209428, -0.974800,
		25.729288, 34.611637, 35.268364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410007, 34.653858, 36.012138>,  <25.675503, 34.465038, 35.950722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410007, 34.653858, 36.012138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707548, 34.883690, 36.148693>,  <26.886072, 35.021587, 36.230625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707548, 34.883690, 36.148693>,  <26.410007, 34.653858, 36.012138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707548, 34.883690, 36.148693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515956, -0.169001, -0.839779,
		-0.424821, 0.800813, -0.422167,
		0.743853, 0.574575, 0.341389,
		26.930704, 35.056061, 36.251110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552643, 35.228252, 35.519814>,  <26.410007, 34.653858, 36.012138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552643, 35.228252, 35.519814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846615, 35.059956, 35.732552>,  <27.022997, 34.958977, 35.860195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846615, 35.059956, 35.732552>,  <26.552643, 35.228252, 35.519814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846615, 35.059956, 35.732552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471720, -0.246253, -0.846664,
		0.487197, 0.873117, 0.017495,
		0.734928, -0.420744, 0.531841,
		27.067093, 34.933731, 35.892105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269760, 35.310371, 35.174026>,  <26.552643, 35.228252, 35.519814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269760, 35.310371, 35.174026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251251, 34.969223, 35.382053>,  <27.240145, 34.764534, 35.506870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251251, 34.969223, 35.382053>,  <27.269760, 35.310371, 35.174026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251251, 34.969223, 35.382053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462271, -0.479806, -0.745715,
		0.885531, 0.205905, 0.416460,
		-0.046274, -0.852871, 0.520067,
		27.237370, 34.713360, 35.538074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812433, 35.008446, 34.952187>,  <27.269760, 35.310371, 35.174026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812433, 35.008446, 34.952187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593096, 34.726311, 35.131886>,  <27.461493, 34.557030, 35.239704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593096, 34.726311, 35.131886>,  <27.812433, 35.008446, 34.952187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593096, 34.726311, 35.131886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223199, -0.641164, -0.734228,
		0.805917, -0.302338, 0.509008,
		-0.548343, -0.705337, 0.449243,
		27.428593, 34.514709, 35.266659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271294, 34.398655, 35.048130>,  <27.812433, 35.008446, 34.952187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271294, 34.398655, 35.048130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890425, 34.278721, 35.071682>,  <27.661903, 34.206760, 35.085812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890425, 34.278721, 35.071682>,  <28.271294, 34.398655, 35.048130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890425, 34.278721, 35.071682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177139, -0.698651, -0.693187,
		0.248981, -0.649603, 0.718348,
		-0.952171, -0.299838, 0.058880,
		27.604773, 34.188770, 35.089348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226639, 33.709061, 34.801868>,  <28.271294, 34.398655, 35.048130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226639, 33.709061, 34.801868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831055, 33.767265, 34.790646>,  <27.593704, 33.802189, 34.783913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831055, 33.767265, 34.790646>,  <28.226639, 33.709061, 34.801868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831055, 33.767265, 34.790646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041577, -0.454154, -0.889953,
		-0.142243, -0.878959, 0.455189,
		-0.988958, 0.145515, -0.028056,
		27.534367, 33.810921, 34.782230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877546, 33.048523, 34.740379>,  <28.226639, 33.709061, 34.801868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877546, 33.048523, 34.740379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662907, 33.346111, 34.581097>,  <27.534122, 33.524666, 34.485527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662907, 33.346111, 34.581097>,  <27.877546, 33.048523, 34.740379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662907, 33.346111, 34.581097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106999, -0.408101, -0.906645,
		-0.837027, -0.529111, 0.139382,
		-0.536598, 0.743973, -0.398206,
		27.501926, 33.569302, 34.461636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414392, 32.782932, 34.264263>,  <27.877546, 33.048523, 34.740379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414392, 32.782932, 34.264263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514030, 33.160912, 34.179386>,  <27.573812, 33.387699, 34.128460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514030, 33.160912, 34.179386>,  <27.414392, 32.782932, 34.264263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514030, 33.160912, 34.179386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269035, -0.277992, -0.922139,
		-0.930362, 0.172611, -0.323470,
		0.249093, 0.944948, -0.212195,
		27.588758, 33.444397, 34.115726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525419, 33.290314, 33.647476>,  <27.414392, 32.782932, 34.264263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525419, 33.290314, 33.647476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134089, 33.366814, 33.615730>,  <26.899290, 33.412716, 33.596684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134089, 33.366814, 33.615730>,  <27.525419, 33.290314, 33.647476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134089, 33.366814, 33.615730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001094, 0.378491, 0.925604,
		0.207064, 0.905630, -0.370079,
		-0.978327, 0.191254, -0.079363,
		26.840590, 33.424191, 33.591923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285093, 34.052048, 33.837509>,  <27.525419, 33.290314, 33.647476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285093, 34.052048, 33.837509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089605, 33.724171, 33.957012>,  <26.972313, 33.527443, 34.028713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089605, 33.724171, 33.957012>,  <27.285093, 34.052048, 33.837509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089605, 33.724171, 33.957012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090398, 0.293014, 0.951825,
		-0.867745, 0.492182, -0.069103,
		-0.488720, -0.819695, 0.298754,
		26.942989, 33.478264, 34.046638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595255, 34.191616, 34.062405>,  <27.285093, 34.052048, 33.837509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595255, 34.191616, 34.062405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826206, 33.907742, 34.223888>,  <26.964777, 33.737419, 34.320778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826206, 33.907742, 34.223888>,  <26.595255, 34.191616, 34.062405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826206, 33.907742, 34.223888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000066, 0.494497, 0.869179,
		-0.816477, -0.501819, 0.285559,
		0.577378, -0.709684, 0.403712,
		26.999420, 33.694836, 34.345001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297575, 34.009045, 34.718693>,  <26.595255, 34.191616, 34.062405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297575, 34.009045, 34.718693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690849, 33.945652, 34.754974>,  <26.926815, 33.907616, 34.776745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690849, 33.945652, 34.754974>,  <26.297575, 34.009045, 34.718693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690849, 33.945652, 34.754974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017443, 0.412956, 0.910584,
		-0.181769, -0.896856, 0.403248,
		0.983186, -0.158482, 0.090706,
		26.985806, 33.898106, 34.782185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338974, 33.668858, 35.238468>,  <26.297575, 34.009045, 34.718693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338974, 33.668858, 35.238468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696936, 33.840706, 35.190189>,  <26.911713, 33.943813, 35.161221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696936, 33.840706, 35.190189>,  <26.338974, 33.668858, 35.238468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696936, 33.840706, 35.190189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046745, 0.359236, 0.932075,
		0.443799, -0.828478, 0.341565,
		0.894906, 0.429621, -0.120702,
		26.965408, 33.969593, 35.153980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666849, 33.600426, 35.804958>,  <26.338974, 33.668858, 35.238468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666849, 33.600426, 35.804958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926764, 33.865055, 35.655239>,  <27.082712, 34.023834, 35.565407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926764, 33.865055, 35.655239>,  <26.666849, 33.600426, 35.804958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926764, 33.865055, 35.655239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089827, 0.422141, 0.902069,
		0.754793, -0.619772, 0.214873,
		0.649784, 0.661574, -0.374301,
		27.121698, 34.063526, 35.542950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233372, 33.674595, 36.257935>,  <26.666849, 33.600426, 35.804958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233372, 33.674595, 36.257935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246174, 34.010307, 36.040833>,  <27.253855, 34.211735, 35.910572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246174, 34.010307, 36.040833>,  <27.233372, 33.674595, 36.257935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246174, 34.010307, 36.040833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038636, 0.541587, 0.839756,
		0.998741, -0.047845, -0.015093,
		0.032004, 0.839282, -0.542753,
		27.255775, 34.262093, 35.878006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769014, 34.127491, 36.643929>,  <27.233372, 33.674595, 36.257935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769014, 34.127491, 36.643929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517151, 34.347000, 36.423973>,  <27.366034, 34.478706, 36.292000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517151, 34.347000, 36.423973>,  <27.769014, 34.127491, 36.643929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517151, 34.347000, 36.423973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104395, 0.641630, 0.759877,
		0.769826, 0.535868, -0.346719,
		-0.629659, 0.548777, -0.549885,
		27.328253, 34.511635, 36.259007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021612, 34.883472, 36.631912>,  <27.769014, 34.127491, 36.643929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021612, 34.883472, 36.631912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625305, 34.854942, 36.585793>,  <27.387522, 34.837826, 36.558121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625305, 34.854942, 36.585793>,  <28.021612, 34.883472, 36.631912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625305, 34.854942, 36.585793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132478, 0.689996, 0.711587,
		0.028802, 0.720291, -0.693074,
		-0.990767, -0.071322, -0.115296,
		27.328075, 34.833546, 36.551205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698202, 35.538506, 36.539146>,  <28.021612, 34.883472, 36.631912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698202, 35.538506, 36.539146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401480, 35.342724, 36.722519>,  <27.223446, 35.225254, 36.832542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401480, 35.342724, 36.722519>,  <27.698202, 35.538506, 36.539146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401480, 35.342724, 36.722519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044250, 0.717839, 0.694802,
		-0.669153, 0.495122, -0.554155,
		-0.741806, -0.489450, 0.458435,
		27.178938, 35.195889, 36.860050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168764, 36.054153, 36.451874>,  <27.698202, 35.538506, 36.539146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168764, 36.054153, 36.451874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113844, 35.821438, 36.772541>,  <27.080891, 35.681808, 36.964943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113844, 35.821438, 36.772541>,  <27.168764, 36.054153, 36.451874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113844, 35.821438, 36.772541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021321, 0.810881, 0.584822,
		-0.990300, 0.063205, -0.123740,
		-0.137302, -0.581787, 0.801668,
		27.072653, 35.646900, 37.013042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435146, 36.186554, 36.879776>,  <27.168764, 36.054153, 36.451874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435146, 36.186554, 36.879776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750797, 36.048950, 37.083321>,  <26.940187, 35.966389, 37.205448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750797, 36.048950, 37.083321>,  <26.435146, 36.186554, 36.879776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750797, 36.048950, 37.083321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023296, 0.844614, 0.534868,
		-0.613788, -0.410225, 0.674522,
		0.789127, -0.344009, 0.508858,
		26.987535, 35.945747, 37.235977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347576, 36.439194, 37.580666>,  <26.435146, 36.186554, 36.879776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347576, 36.439194, 37.580666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733311, 36.354824, 37.516712>,  <26.964752, 36.304203, 37.478340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733311, 36.354824, 37.516712>,  <26.347576, 36.439194, 37.580666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733311, 36.354824, 37.516712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258944, 0.626801, 0.734893,
		-0.054792, -0.750086, 0.659066,
		0.964337, -0.210928, -0.159887,
		27.022612, 36.291546, 37.468746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732656, 36.191914, 38.174576>,  <26.347576, 36.439194, 37.580666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732656, 36.191914, 38.174576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007109, 36.380695, 37.953133>,  <27.171780, 36.493965, 37.820267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007109, 36.380695, 37.953133>,  <26.732656, 36.191914, 38.174576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007109, 36.380695, 37.953133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257971, 0.553701, 0.791749,
		0.680201, -0.686060, 0.258163,
		0.686133, 0.471950, -0.553611,
		27.212948, 36.522282, 37.787048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445894, 36.207317, 38.385426>,  <26.732656, 36.191914, 38.174576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445894, 36.207317, 38.385426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400921, 36.554146, 38.191292>,  <27.373938, 36.762241, 38.074814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400921, 36.554146, 38.191292>,  <27.445894, 36.207317, 38.385426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400921, 36.554146, 38.191292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294212, 0.495577, 0.817216,
		0.949104, -0.050909, -0.310822,
		-0.112433, 0.867071, -0.485332,
		27.367191, 36.814266, 38.045692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075180, 36.644562, 38.446075>,  <27.445894, 36.207317, 38.385426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075180, 36.644562, 38.446075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742886, 36.866722, 38.431103>,  <27.543509, 37.000019, 38.422119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742886, 36.866722, 38.431103>,  <28.075180, 36.644562, 38.446075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742886, 36.866722, 38.431103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226213, 0.398266, 0.888938,
		0.508629, 0.730006, -0.456494,
		-0.830737, 0.555405, -0.037433,
		27.493664, 37.033344, 38.419872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235128, 37.371037, 38.675858>,  <28.075180, 36.644562, 38.446075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235128, 37.371037, 38.675858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837881, 37.339439, 38.710438>,  <27.599533, 37.320480, 38.731186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837881, 37.339439, 38.710438>,  <28.235128, 37.371037, 38.675858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837881, 37.339439, 38.710438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049338, 0.387226, 0.920664,
		-0.106204, 0.918594, -0.380664,
		-0.993120, -0.078997, 0.086446,
		27.539946, 37.315739, 38.736370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993353, 38.108459, 38.735077>,  <28.235128, 37.371037, 38.675858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993353, 38.108459, 38.735077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770550, 37.825520, 38.909157>,  <27.636868, 37.655754, 39.013603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770550, 37.825520, 38.909157>,  <27.993353, 38.108459, 38.735077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770550, 37.825520, 38.909157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138059, 0.437861, 0.888379,
		-0.818952, 0.554917, -0.146236,
		-0.557008, -0.707350, 0.435198,
		27.603447, 37.613316, 39.039715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453917, 38.488991, 39.073387>,  <27.993353, 38.108459, 38.735077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453917, 38.488991, 39.073387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579838, 38.144829, 39.233688>,  <27.655390, 37.938332, 39.329868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579838, 38.144829, 39.233688>,  <27.453917, 38.488991, 39.073387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579838, 38.144829, 39.233688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284011, 0.488265, 0.825187,
		-0.905670, -0.145952, 0.398071,
		0.314802, -0.860404, 0.400755,
		27.674278, 37.886707, 39.353916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151468, 38.645321, 39.628284>,  <27.453917, 38.488991, 39.073387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151468, 38.645321, 39.628284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423199, 38.355427, 39.674385>,  <27.586237, 38.181492, 39.702045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423199, 38.355427, 39.674385>,  <27.151468, 38.645321, 39.628284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423199, 38.355427, 39.674385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290216, 0.409575, 0.864883,
		-0.674012, -0.554088, 0.488563,
		0.679325, -0.724731, 0.115253,
		27.626997, 38.138008, 39.708961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294765, 38.699089, 40.344349>,  <27.151468, 38.645321, 39.628284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294765, 38.699089, 40.344349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574551, 38.437092, 40.229996>,  <27.742422, 38.279892, 40.161385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574551, 38.437092, 40.229996>,  <27.294765, 38.699089, 40.344349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574551, 38.437092, 40.229996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567603, 0.266078, 0.779121,
		-0.434255, -0.707234, 0.557891,
		0.699464, -0.654998, -0.285883,
		27.784389, 38.240593, 40.144230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513660, 38.348019, 40.960388>,  <27.294765, 38.699089, 40.344349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513660, 38.348019, 40.960388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806650, 38.330635, 40.688625>,  <27.982445, 38.320206, 40.525570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806650, 38.330635, 40.688625>,  <27.513660, 38.348019, 40.960388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806650, 38.330635, 40.688625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648586, 0.347872, 0.676995,
		0.206922, -0.936534, 0.282996,
		0.732475, -0.043462, -0.679405,
		28.026392, 38.317596, 40.484802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766512, 37.725117, 41.197395>,  <27.513660, 38.348019, 40.960388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766512, 37.725117, 41.197395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004290, 37.745209, 40.876369>,  <28.146957, 37.757263, 40.683754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004290, 37.745209, 40.876369>,  <27.766512, 37.725117, 41.197395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004290, 37.745209, 40.876369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752877, 0.315867, 0.577411,
		0.282506, -0.947473, 0.149951,
		0.594446, 0.050227, -0.802565,
		28.182623, 37.760277, 40.635601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410751, 37.352913, 41.356636>,  <27.766512, 37.725117, 41.197395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410751, 37.352913, 41.356636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484894, 37.622284, 41.070381>,  <28.529379, 37.783905, 40.898628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484894, 37.622284, 41.070381>,  <28.410751, 37.352913, 41.356636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484894, 37.622284, 41.070381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842881, 0.265424, 0.468083,
		0.505168, -0.689959, -0.518422,
		0.185357, 0.673429, -0.715637,
		28.540501, 37.824314, 40.855690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081951, 37.272797, 41.132984>,  <28.410751, 37.352913, 41.356636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081951, 37.272797, 41.132984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984398, 37.653465, 41.058311>,  <28.925865, 37.881866, 41.013508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984398, 37.653465, 41.058311>,  <29.081951, 37.272797, 41.132984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984398, 37.653465, 41.058311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891093, 0.295864, 0.344119,
		0.382719, -0.082424, -0.920181,
		-0.243884, 0.951667, -0.186680,
		28.911232, 37.938965, 41.002308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772751, 37.534237, 40.979576>,  <29.081951, 37.272797, 41.132984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772751, 37.534237, 40.979576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508833, 37.808800, 41.101898>,  <29.350481, 37.973537, 41.175293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508833, 37.808800, 41.101898>,  <29.772751, 37.534237, 40.979576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508833, 37.808800, 41.101898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685408, 0.382906, 0.619354,
		0.308033, 0.618250, -0.723107,
		-0.659797, 0.686404, 0.305806,
		29.310894, 38.014721, 41.193642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094101, 38.086742, 41.045132>,  <29.772751, 37.534237, 40.979576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094101, 38.086742, 41.045132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786112, 38.131638, 41.296383>,  <29.601318, 38.158573, 41.447132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786112, 38.131638, 41.296383>,  <30.094101, 38.086742, 41.045132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786112, 38.131638, 41.296383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577739, 0.540490, 0.611627,
		-0.270851, 0.833830, -0.481006,
		-0.769973, 0.112236, 0.628128,
		29.555120, 38.165310, 41.484821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791594, 38.747433, 41.073517>,  <30.094101, 38.086742, 41.045132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791594, 38.747433, 41.073517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819269, 38.594196, 41.441963>,  <29.835875, 38.502254, 41.663033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819269, 38.594196, 41.441963>,  <29.791594, 38.747433, 41.073517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819269, 38.594196, 41.441963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500766, 0.811911, 0.300056,
		-0.862813, 0.440504, 0.248012,
		0.069188, -0.383089, 0.921117,
		29.840025, 38.479271, 41.718300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560707, 39.217625, 41.635452>,  <29.791594, 38.747433, 41.073517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560707, 39.217625, 41.635452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838118, 38.960735, 41.766033>,  <30.004564, 38.806602, 41.844383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838118, 38.960735, 41.766033>,  <29.560707, 39.217625, 41.635452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838118, 38.960735, 41.766033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607270, 0.764931, 0.214717,
		-0.387611, 0.049334, 0.920502,
		0.693528, -0.642220, 0.326455,
		30.046175, 38.768070, 41.863968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863359, 39.042591, 41.384506>,  <29.560707, 39.217625, 41.635452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863359, 39.042591, 41.384506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053440, 38.739452, 41.205685>,  <29.167488, 38.557571, 41.098392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053440, 38.739452, 41.205685>,  <28.863359, 39.042591, 41.384506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053440, 38.739452, 41.205685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831911, -0.221521, -0.508775,
		0.286540, 0.613680, -0.735725,
		0.475204, -0.757843, -0.447052,
		29.196001, 38.512100, 41.071568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799408, 39.122398, 40.608990>,  <28.863359, 39.042591, 41.384506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799408, 39.122398, 40.608990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830708, 38.743973, 40.734749>,  <28.849487, 38.516918, 40.810204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830708, 38.743973, 40.734749>,  <28.799408, 39.122398, 40.608990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830708, 38.743973, 40.734749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760519, -0.260549, -0.594748,
		0.644584, -0.192568, -0.739884,
		0.078247, -0.946061, 0.314397,
		28.854181, 38.460155, 40.829067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852617, 38.693184, 39.910633>,  <28.799408, 39.122398, 40.608990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852617, 38.693184, 39.910633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756863, 38.450939, 40.214191>,  <28.699409, 38.305592, 40.396328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756863, 38.450939, 40.214191>,  <28.852617, 38.693184, 39.910633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756863, 38.450939, 40.214191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682709, -0.450774, -0.575076,
		0.690364, -0.655773, -0.305547,
		-0.239386, -0.605612, 0.758900,
		28.685047, 38.269257, 40.441860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750429, 38.015877, 39.671669>,  <28.852617, 38.693184, 39.910633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750429, 38.015877, 39.671669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544746, 38.039543, 40.013916>,  <28.421337, 38.053745, 40.219265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544746, 38.039543, 40.013916>,  <28.750429, 38.015877, 39.671669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544746, 38.039543, 40.013916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780075, -0.446908, -0.437901,
		0.356474, -0.892621, 0.275959,
		-0.514208, 0.059168, 0.855622,
		28.390484, 38.057293, 40.270603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654362, 37.343578, 39.896671>,  <28.750429, 38.015877, 39.671669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654362, 37.343578, 39.896671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381214, 37.622284, 39.984497>,  <28.217325, 37.789509, 40.037193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381214, 37.622284, 39.984497>,  <28.654362, 37.343578, 39.896671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381214, 37.622284, 39.984497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643065, -0.430697, -0.633220,
		-0.346635, -0.573605, 0.742173,
		-0.682870, 0.696762, 0.219570,
		28.176353, 37.831314, 40.050369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984474, 36.970905, 40.100288>,  <28.654362, 37.343578, 39.896671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984474, 36.970905, 40.100288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880400, 37.330711, 39.959904>,  <27.817955, 37.546597, 39.875675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880400, 37.330711, 39.959904>,  <27.984474, 36.970905, 40.100288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880400, 37.330711, 39.959904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775823, -0.411142, -0.478604,
		-0.574806, 0.147757, 0.804839,
		-0.260186, 0.899517, -0.350960,
		27.802343, 37.600567, 39.854614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282764, 37.093697, 40.239639>,  <27.984474, 36.970905, 40.100288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282764, 37.093697, 40.239639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396614, 37.319675, 39.929848>,  <27.464924, 37.455261, 39.743973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396614, 37.319675, 39.929848>,  <27.282764, 37.093697, 40.239639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396614, 37.319675, 39.929848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851175, -0.222731, -0.475281,
		-0.441010, 0.794498, 0.417473,
		0.284626, 0.564946, -0.774483,
		27.482002, 37.489159, 39.697502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824694, 36.955154, 39.749935>,  <27.282764, 37.093697, 40.239639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824694, 36.955154, 39.749935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001469, 37.212883, 39.500282>,  <27.107534, 37.367519, 39.350491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001469, 37.212883, 39.500282>,  <26.824694, 36.955154, 39.749935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001469, 37.212883, 39.500282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497324, -0.403064, -0.768250,
		-0.746565, 0.649915, 0.142307,
		0.441939, 0.644321, -0.624132,
		27.134050, 37.406178, 39.313042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352932, 37.315651, 39.121414>,  <26.824694, 36.955154, 39.749935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352932, 37.315651, 39.121414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723648, 37.356354, 38.976803>,  <26.946079, 37.380775, 38.890038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723648, 37.356354, 38.976803>,  <26.352932, 37.315651, 39.121414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723648, 37.356354, 38.976803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313725, -0.319437, -0.894168,
		-0.206476, 0.942128, -0.264126,
		0.926793, 0.101761, -0.361525,
		27.001686, 37.386883, 38.868347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390310, 37.658871, 38.525471>,  <26.352932, 37.315651, 39.121414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390310, 37.658871, 38.525471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693836, 37.398846, 38.509396>,  <26.875952, 37.242828, 38.499752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693836, 37.398846, 38.509396>,  <26.390310, 37.658871, 38.525471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693836, 37.398846, 38.509396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323293, -0.322375, -0.889694,
		0.565403, 0.688106, -0.454785,
		0.758815, -0.650065, -0.040188,
		26.921480, 37.203827, 38.497337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886076, 37.717987, 37.835602>,  <26.390310, 37.658871, 38.525471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886076, 37.717987, 37.835602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858435, 37.340862, 37.966038>,  <26.841850, 37.114590, 38.044300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858435, 37.340862, 37.966038>,  <26.886076, 37.717987, 37.835602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858435, 37.340862, 37.966038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041628, -0.323862, -0.945188,
		0.996741, -0.078889, -0.016868,
		-0.069102, -0.942810, 0.326091,
		26.837704, 37.058018, 38.063866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508846, 37.240147, 37.553844>,  <26.886076, 37.717987, 37.835602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508846, 37.240147, 37.553844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147051, 37.092701, 37.639656>,  <26.929974, 37.004234, 37.691143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147051, 37.092701, 37.639656>,  <27.508846, 37.240147, 37.553844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147051, 37.092701, 37.639656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158004, -0.177609, -0.971334,
		0.396155, -0.912456, 0.102402,
		-0.904486, -0.368619, 0.214533,
		26.875706, 36.982117, 37.704018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182060, 36.935261, 37.336185>,  <27.508846, 37.240147, 37.553844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182060, 36.935261, 37.336185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308590, 36.594143, 37.502403>,  <28.384508, 36.389473, 37.602135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308590, 36.594143, 37.502403>,  <28.182060, 36.935261, 37.336185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308590, 36.594143, 37.502403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799557, 0.003932, -0.600577,
		0.510536, 0.522229, 0.683103,
		0.316324, -0.852796, 0.415545,
		28.403488, 36.338303, 37.627068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902639, 36.961040, 37.688408>,  <28.182060, 36.935261, 37.336185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902639, 36.961040, 37.688408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786341, 36.629646, 37.496960>,  <28.716562, 36.430809, 37.382092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786341, 36.629646, 37.496960>,  <28.902639, 36.961040, 37.688408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786341, 36.629646, 37.496960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813994, 0.048732, -0.578826,
		0.502872, -0.557890, 0.660211,
		-0.290747, -0.828483, -0.478625,
		28.699116, 36.381100, 37.353371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560965, 36.590824, 37.627121>,  <28.902639, 36.961040, 37.688408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560965, 36.590824, 37.627121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281126, 36.568768, 37.342155>,  <29.113224, 36.555534, 37.171177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281126, 36.568768, 37.342155>,  <29.560965, 36.590824, 37.627121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281126, 36.568768, 37.342155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683112, 0.240826, -0.689464,
		0.209583, -0.969001, -0.130816,
		-0.699595, -0.055138, -0.712409,
		29.071247, 36.552227, 37.128433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782297, 36.225582, 36.941730>,  <29.560965, 36.590824, 37.627121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782297, 36.225582, 36.941730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495377, 36.476711, 36.820854>,  <29.323225, 36.627388, 36.748329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495377, 36.476711, 36.820854>,  <29.782297, 36.225582, 36.941730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495377, 36.476711, 36.820854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665760, 0.489632, -0.563049,
		-0.205536, -0.605059, -0.769194,
		-0.717300, 0.627825, -0.302187,
		29.280188, 36.665058, 36.730198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451382, 36.570740, 36.648846>,  <29.782297, 36.225582, 36.941730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451382, 36.570740, 36.648846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742914, 36.841282, 36.691441>,  <30.917835, 37.003609, 36.716995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742914, 36.841282, 36.691441>,  <30.451382, 36.570740, 36.648846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742914, 36.841282, 36.691441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089414, -0.248211, 0.964571,
		0.678828, -0.693490, -0.241380,
		0.728834, 0.676360, 0.106485,
		30.961565, 37.044189, 36.723385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939684, 36.316647, 37.021152>,  <30.451382, 36.570740, 36.648846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939684, 36.316647, 37.021152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037567, 36.702595, 37.059410>,  <31.096296, 36.934162, 37.082363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037567, 36.702595, 37.059410>,  <30.939684, 36.316647, 37.021152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037567, 36.702595, 37.059410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145196, -0.133995, 0.980288,
		0.958664, -0.225997, -0.172885,
		0.244708, 0.964868, 0.095643,
		31.110979, 36.992054, 37.088104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512371, 36.388496, 37.441467>,  <30.939684, 36.316647, 37.021152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512371, 36.388496, 37.441467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305988, 36.729416, 37.475815>,  <31.182159, 36.933968, 37.496422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305988, 36.729416, 37.475815>,  <31.512371, 36.388496, 37.441467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305988, 36.729416, 37.475815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005002, -0.097241, 0.995248,
		0.856601, 0.513933, 0.045909,
		-0.515955, 0.852301, 0.085868,
		31.151201, 36.985107, 37.501575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784229, 36.880753, 38.058411>,  <31.512371, 36.388496, 37.441467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784229, 36.880753, 38.058411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395313, 36.943241, 37.988838>,  <31.161964, 36.980736, 37.947094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395313, 36.943241, 37.988838>,  <31.784229, 36.880753, 38.058411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395313, 36.943241, 37.988838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175615, 0.003039, 0.984454,
		0.154321, 0.987717, 0.024480,
		-0.972288, 0.156222, -0.173927,
		31.103626, 36.990108, 37.936661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431746, 37.559811, 38.359776>,  <31.784229, 36.880753, 38.058411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431746, 37.559811, 38.359776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238859, 37.210735, 38.329113>,  <31.123127, 37.001289, 38.310715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238859, 37.210735, 38.329113>,  <31.431746, 37.559811, 38.359776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238859, 37.210735, 38.329113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279059, 0.070071, 0.957714,
		-0.830419, 0.483215, -0.277322,
		-0.482214, -0.872693, -0.076657,
		31.094194, 36.948929, 38.306114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836285, 38.111786, 38.404915>,  <31.431746, 37.559811, 38.359776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836285, 38.111786, 38.404915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476570, 38.229328, 38.534489>,  <31.260742, 38.299854, 38.612232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476570, 38.229328, 38.534489>,  <31.836285, 38.111786, 38.404915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476570, 38.229328, 38.534489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080707, 0.839436, -0.537432,
		-0.429849, -0.457161, -0.778610,
		-0.899286, 0.293854, 0.323935,
		31.206783, 38.317486, 38.631668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244986, 38.092720, 37.896156>,  <31.836285, 38.111786, 38.404915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244986, 38.092720, 37.896156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221649, 38.386570, 38.166542>,  <31.207647, 38.562881, 38.328773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221649, 38.386570, 38.166542>,  <31.244986, 38.092720, 37.896156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221649, 38.386570, 38.166542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106663, 0.668651, -0.735886,
		-0.992582, -0.115032, 0.039348,
		-0.058340, 0.734624, 0.675961,
		31.204147, 38.606956, 38.369331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770428, 38.638504, 37.632725>,  <31.244986, 38.092720, 37.896156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770428, 38.638504, 37.632725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018581, 38.855816, 37.858990>,  <31.167473, 38.986202, 37.994747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018581, 38.855816, 37.858990>,  <30.770428, 38.638504, 37.632725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018581, 38.855816, 37.858990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137090, 0.635010, -0.760242,
		-0.772225, 0.549187, 0.319471,
		0.620383, 0.543282, 0.565659,
		31.204697, 39.018799, 38.028687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625090, 39.420673, 37.300198>,  <30.770428, 38.638504, 37.632725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625090, 39.420673, 37.300198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974432, 39.379143, 37.490555>,  <31.184036, 39.354225, 37.604767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974432, 39.379143, 37.490555>,  <30.625090, 39.420673, 37.300198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974432, 39.379143, 37.490555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428916, 0.626944, -0.650363,
		-0.230830, 0.772114, 0.592078,
		0.873355, -0.103828, 0.475890,
		31.236439, 39.347996, 37.633324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769466, 40.073868, 37.570400>,  <30.625090, 39.420673, 37.300198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769466, 40.073868, 37.570400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081190, 39.841072, 37.477482>,  <31.268225, 39.701393, 37.421730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081190, 39.841072, 37.477482>,  <30.769466, 40.073868, 37.570400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081190, 39.841072, 37.477482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384743, 0.736994, -0.555709,
		0.494621, 0.343694, 0.798263,
		0.779309, -0.581992, -0.232299,
		31.314983, 39.666473, 37.407791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190067, 40.519680, 37.697006>,  <30.769466, 40.073868, 37.570400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190067, 40.519680, 37.697006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374500, 40.248402, 37.468113>,  <31.485159, 40.085632, 37.330776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374500, 40.248402, 37.468113>,  <31.190067, 40.519680, 37.697006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374500, 40.248402, 37.468113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388034, 0.734049, -0.557316,
		0.798019, 0.034920, 0.601620,
		0.461080, -0.678198, -0.572235,
		31.512825, 40.044941, 37.296444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851370, 40.752705, 37.579037>,  <31.190067, 40.519680, 37.697006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851370, 40.752705, 37.579037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780239, 40.511658, 37.267853>,  <31.737560, 40.367027, 37.081142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780239, 40.511658, 37.267853>,  <31.851370, 40.752705, 37.579037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780239, 40.511658, 37.267853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466009, 0.644730, -0.605937,
		0.866725, -0.470290, 0.166175,
		-0.177828, -0.602620, -0.777963,
		31.726891, 40.330872, 37.034462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449745, 40.742878, 37.158688>,  <31.851370, 40.752705, 37.579037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449745, 40.742878, 37.158688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173717, 40.625755, 36.893940>,  <32.008099, 40.555481, 36.735092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173717, 40.625755, 36.893940>,  <32.449745, 40.742878, 37.158688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173717, 40.625755, 36.893940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492856, 0.479574, -0.726018,
		0.529999, -0.827207, -0.186626,
		-0.690068, -0.292809, -0.661868,
		31.966696, 40.537914, 36.695381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847878, 40.693096, 36.546448>,  <32.449745, 40.742878, 37.158688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847878, 40.693096, 36.546448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478489, 40.681923, 36.393383>,  <32.256855, 40.675217, 36.301544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478489, 40.681923, 36.393383>,  <32.847878, 40.693096, 36.546448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478489, 40.681923, 36.393383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308558, 0.538687, -0.783970,
		0.228035, -0.842043, -0.488839,
		-0.923467, -0.027937, -0.382659,
		32.201450, 40.673542, 36.278584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918324, 40.323887, 35.827492>,  <32.847878, 40.693096, 36.546448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918324, 40.323887, 35.827492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613007, 40.575638, 35.885818>,  <32.429817, 40.726688, 35.920815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613007, 40.575638, 35.885818>,  <32.918324, 40.323887, 35.827492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613007, 40.575638, 35.885818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225104, 0.470648, -0.853123,
		-0.605565, -0.618362, -0.500920,
		-0.763295, 0.629380, 0.145813,
		32.384018, 40.764450, 35.929562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432846, 40.218971, 35.238411>,  <32.918324, 40.323887, 35.827492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432846, 40.218971, 35.238411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310799, 40.573444, 35.377884>,  <32.237572, 40.786129, 35.461567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310799, 40.573444, 35.377884>,  <32.432846, 40.218971, 35.238411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310799, 40.573444, 35.377884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032096, 0.356367, -0.933795,
		-0.951773, -0.296109, -0.080291,
		-0.305118, 0.886184, 0.348685,
		32.219265, 40.839298, 35.482491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873304, 40.388359, 34.747528>,  <32.432846, 40.218971, 35.238411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873304, 40.388359, 34.747528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971125, 40.723083, 34.943466>,  <32.029816, 40.923916, 35.061028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971125, 40.723083, 34.943466>,  <31.873304, 40.388359, 34.747528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971125, 40.723083, 34.943466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087612, 0.484048, -0.870645,
		-0.965670, 0.255833, 0.045060,
		0.244550, 0.836808, 0.489844,
		32.044491, 40.974125, 35.090420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500082, 40.858936, 34.419514>,  <31.873304, 40.388359, 34.747528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500082, 40.858936, 34.419514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755548, 41.094475, 34.617649>,  <31.908829, 41.235798, 34.736530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755548, 41.094475, 34.617649>,  <31.500082, 40.858936, 34.419514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755548, 41.094475, 34.617649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132109, 0.550262, -0.824475,
		-0.758058, 0.592004, 0.273642,
		0.638667, 0.588849, 0.495339,
		31.947149, 41.271130, 34.766251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357378, 41.636238, 34.269405>,  <31.500082, 40.858936, 34.419514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357378, 41.636238, 34.269405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741978, 41.622009, 34.378403>,  <31.972738, 41.613472, 34.443802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741978, 41.622009, 34.378403>,  <31.357378, 41.636238, 34.269405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741978, 41.622009, 34.378403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253154, 0.500433, -0.827937,
		-0.106913, 0.865044, 0.490171,
		0.961500, -0.035571, 0.272493,
		32.030426, 41.611340, 34.460152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615231, 42.328758, 34.053951>,  <31.357378, 41.636238, 34.269405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615231, 42.328758, 34.053951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951050, 42.121204, 34.118347>,  <32.152542, 41.996674, 34.156986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951050, 42.121204, 34.118347>,  <31.615231, 42.328758, 34.053951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951050, 42.121204, 34.118347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464406, 0.531650, -0.708291,
		0.281928, 0.669411, 0.687318,
		0.839550, -0.518881, 0.160991,
		32.202915, 41.965542, 34.166645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209274, 42.762814, 34.013935>,  <31.615231, 42.328758, 34.053951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209274, 42.762814, 34.013935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358791, 42.398746, 33.942528>,  <32.448502, 42.180305, 33.899685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358791, 42.398746, 33.942528>,  <32.209274, 42.762814, 34.013935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358791, 42.398746, 33.942528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672495, 0.398502, -0.623656,
		0.638772, 0.113068, 0.761043,
		0.373792, -0.910171, -0.178514,
		32.470928, 42.125694, 33.888973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815773, 42.935276, 33.755070>,  <32.209274, 42.762814, 34.013935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815773, 42.935276, 33.755070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819630, 42.543697, 33.673512>,  <32.821945, 42.308750, 33.624577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819630, 42.543697, 33.673512>,  <32.815773, 42.935276, 33.755070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819630, 42.543697, 33.673512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608917, 0.167488, -0.775350,
		0.793175, -0.116677, 0.597712,
		0.009643, -0.978945, -0.203894,
		32.822521, 42.250015, 33.612343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436302, 42.825123, 33.505241>,  <32.815773, 42.935276, 33.755070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436302, 42.825123, 33.505241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250175, 42.490070, 33.390800>,  <33.138500, 42.289040, 33.322136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250175, 42.490070, 33.390800>,  <33.436302, 42.825123, 33.505241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250175, 42.490070, 33.390800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576849, -0.041805, -0.815781,
		0.671363, -0.544633, 0.502639,
		-0.465314, -0.837632, -0.286105,
		33.110580, 42.238781, 33.304970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944366, 42.433773, 33.428726>,  <33.436302, 42.825123, 33.505241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944366, 42.433773, 33.428726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638916, 42.304310, 33.205257>,  <33.455647, 42.226631, 33.071175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638916, 42.304310, 33.205257>,  <33.944366, 42.433773, 33.428726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638916, 42.304310, 33.205257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604574, -0.054724, -0.794667,
		0.226626, -0.944591, 0.237463,
		-0.763630, -0.323656, -0.558674,
		33.409828, 42.207214, 33.037655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095631, 41.747921, 33.227802>,  <33.944366, 42.433773, 33.428726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095631, 41.747921, 33.227802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859695, 41.948471, 32.974594>,  <33.718132, 42.068802, 32.822670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859695, 41.948471, 32.974594>,  <34.095631, 41.747921, 33.227802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859695, 41.948471, 32.974594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618529, -0.223446, -0.753322,
		-0.519142, -0.835879, -0.178318,
		-0.589842, 0.501376, -0.633016,
		33.682743, 42.098885, 32.784691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320465, 41.530880, 32.663033>,  <34.095631, 41.747921, 33.227802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320465, 41.530880, 32.663033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105640, 41.827873, 32.502884>,  <33.976746, 42.006069, 32.406796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105640, 41.827873, 32.502884>,  <34.320465, 41.530880, 32.663033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105640, 41.827873, 32.502884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582273, -0.017116, -0.812813,
		-0.610349, -0.669651, -0.423133,
		-0.537059, 0.742479, -0.400367,
		33.944523, 42.050617, 32.382774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312424, 41.333321, 32.011662>,  <34.320465, 41.530880, 32.663033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312424, 41.333321, 32.011662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179176, 41.710476, 32.011898>,  <34.099228, 41.936768, 32.012039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179176, 41.710476, 32.011898>,  <34.312424, 41.333321, 32.011662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179176, 41.710476, 32.011898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601885, 0.213129, -0.769617,
		-0.725787, -0.256015, -0.638506,
		-0.333117, 0.942885, 0.000595,
		34.079243, 41.993343, 32.012077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085682, 41.375633, 31.326578>,  <34.312424, 41.333321, 32.011662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085682, 41.375633, 31.326578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150425, 41.755096, 31.435282>,  <34.189270, 41.982773, 31.500504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150425, 41.755096, 31.435282>,  <34.085682, 41.375633, 31.326578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150425, 41.755096, 31.435282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634412, 0.110908, -0.764997,
		-0.755860, 0.296226, -0.583888,
		0.161854, 0.948657, 0.271760,
		34.198982, 42.039692, 31.516809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764694, 41.861252, 30.857925>,  <34.085682, 41.375633, 31.326578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764694, 41.861252, 30.857925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055592, 42.068501, 31.038002>,  <34.230129, 42.192848, 31.146048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055592, 42.068501, 31.038002>,  <33.764694, 41.861252, 30.857925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055592, 42.068501, 31.038002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362756, 0.266676, -0.892912,
		-0.582689, 0.812673, 0.005988,
		0.727242, 0.518118, 0.450191,
		34.273766, 42.223934, 31.173059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780087, 42.449791, 30.396416>,  <33.764694, 41.861252, 30.857925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780087, 42.449791, 30.396416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122120, 42.474895, 30.602287>,  <34.327339, 42.489960, 30.725809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122120, 42.474895, 30.602287>,  <33.780087, 42.449791, 30.396416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122120, 42.474895, 30.602287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468960, 0.329778, -0.819343,
		-0.221156, 0.941970, 0.252553,
		0.855083, 0.062765, 0.514678,
		34.378643, 42.493725, 30.756691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140167, 43.210934, 30.174953>,  <33.780087, 42.449791, 30.396416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140167, 43.210934, 30.174953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404991, 42.965702, 30.347380>,  <34.563885, 42.818562, 30.450836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404991, 42.965702, 30.347380>,  <34.140167, 43.210934, 30.174953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404991, 42.965702, 30.347380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617117, 0.119581, -0.777732,
		0.425263, 0.780920, 0.457510,
		0.662056, -0.613078, 0.431065,
		34.603607, 42.781780, 30.476700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750919, 43.598003, 30.220829>,  <34.140167, 43.210934, 30.174953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750919, 43.598003, 30.220829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867954, 43.216198, 30.243792>,  <34.938175, 42.987114, 30.257570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867954, 43.216198, 30.243792>,  <34.750919, 43.598003, 30.220829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867954, 43.216198, 30.243792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676856, 0.164319, -0.717541,
		0.675470, 0.248799, 0.694146,
		0.292585, -0.954515, 0.057408,
		34.955730, 42.929844, 30.261015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480774, 43.627808, 30.177740>,  <34.750919, 43.598003, 30.220829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480774, 43.627808, 30.177740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379074, 43.250721, 30.091351>,  <35.318054, 43.024467, 30.039516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379074, 43.250721, 30.091351>,  <35.480774, 43.627808, 30.177740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379074, 43.250721, 30.091351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711093, -0.030861, -0.702420,
		0.655518, -0.332167, 0.678205,
		-0.254251, -0.942715, -0.215972,
		35.302799, 42.967907, 30.026560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028881, 43.166122, 30.279804>,  <35.480774, 43.627808, 30.177740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028881, 43.166122, 30.279804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797268, 42.988010, 30.006618>,  <35.658298, 42.881142, 29.842707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797268, 42.988010, 30.006618>,  <36.028881, 43.166122, 30.279804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797268, 42.988010, 30.006618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786720, -0.085303, -0.611388,
		0.213981, -0.891318, 0.399705,
		-0.579037, -0.445281, -0.682964,
		35.623558, 42.854427, 29.801729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503162, 42.705227, 29.880545>,  <36.028881, 43.166122, 30.279804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503162, 42.705227, 29.880545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176910, 42.786221, 29.663752>,  <35.981159, 42.834816, 29.533676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176910, 42.786221, 29.663752>,  <36.503162, 42.705227, 29.880545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176910, 42.786221, 29.663752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531490, -0.107929, -0.840161,
		-0.228615, -0.973320, -0.019588,
		-0.815631, 0.202484, -0.541984,
		35.932220, 42.846966, 29.501156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389751, 42.043182, 29.489868>,  <36.503162, 42.705227, 29.880545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389751, 42.043182, 29.489868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231468, 42.369919, 29.321966>,  <36.136497, 42.565960, 29.221226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231468, 42.369919, 29.321966>,  <36.389751, 42.043182, 29.489868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231468, 42.369919, 29.321966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573549, -0.137160, -0.807607,
		-0.717256, -0.560325, -0.414221,
		-0.395708, 0.816837, -0.419753,
		36.112755, 42.614971, 29.196041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371124, 41.786602, 28.888834>,  <36.389751, 42.043182, 29.489868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371124, 41.786602, 28.888834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320839, 42.180035, 28.837040>,  <36.290668, 42.416092, 28.805964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320839, 42.180035, 28.837040>,  <36.371124, 41.786602, 28.888834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320839, 42.180035, 28.837040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590294, -0.030738, -0.806603,
		-0.797338, -0.177839, -0.576737,
		-0.125717, 0.983580, -0.129486,
		36.283123, 42.475109, 28.798195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105377, 41.913235, 28.159023>,  <36.371124, 41.786602, 28.888834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105377, 41.913235, 28.159023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254383, 42.271927, 28.254614>,  <36.343784, 42.487141, 28.311968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254383, 42.271927, 28.254614>,  <36.105377, 41.913235, 28.159023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254383, 42.271927, 28.254614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321787, 0.116727, -0.939589,
		-0.870453, 0.426908, -0.245074,
		0.372511, 0.896730, 0.238979,
		36.366135, 42.540947, 28.326307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945896, 42.426117, 27.509844>,  <36.105377, 41.913235, 28.159023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945896, 42.426117, 27.509844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217762, 42.604595, 27.742727>,  <36.380882, 42.711681, 27.882458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217762, 42.604595, 27.742727>,  <35.945896, 42.426117, 27.509844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217762, 42.604595, 27.742727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599145, 0.120217, -0.791563,
		-0.423187, 0.886822, -0.185632,
		0.679660, 0.446200, 0.582210,
		36.421661, 42.738457, 27.917391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074280, 43.017067, 27.185003>,  <35.945896, 42.426117, 27.509844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074280, 43.017067, 27.185003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390961, 42.954170, 27.421133>,  <36.580971, 42.916431, 27.562811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390961, 42.954170, 27.421133>,  <36.074280, 43.017067, 27.185003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390961, 42.954170, 27.421133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605869, 0.078279, -0.791704,
		0.078279, 0.984453, 0.157241,
		0.791704, -0.157241, 0.590322,
		36.628471, 42.906998, 27.598230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604679, 43.491421, 26.918396>,  <36.074280, 43.017067, 27.185003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604679, 43.491421, 26.918396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793358, 43.213749, 27.135880>,  <36.906567, 43.047146, 27.266369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793358, 43.213749, 27.135880>,  <36.604679, 43.491421, 26.918396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793358, 43.213749, 27.135880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715743, -0.058700, -0.695892,
		0.514989, 0.717405, 0.469166,
		0.471697, -0.694179, 0.543707,
		36.934868, 43.005497, 27.298992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295631, 43.753658, 27.192518>,  <36.604679, 43.491421, 26.918396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295631, 43.753658, 27.192518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290718, 43.354492, 27.167198>,  <37.287769, 43.114990, 27.152006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290718, 43.354492, 27.167198>,  <37.295631, 43.753658, 27.192518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290718, 43.354492, 27.167198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718831, 0.035194, -0.694294,
		0.695077, -0.054026, 0.716903,
		-0.012279, -0.997919, -0.063298,
		37.287033, 43.055115, 27.148209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889275, 43.517265, 26.841105>,  <37.295631, 43.753658, 27.192518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889275, 43.517265, 26.841105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733059, 43.149117, 26.849030>,  <37.639328, 42.928226, 26.853785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733059, 43.149117, 26.849030>,  <37.889275, 43.517265, 26.841105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733059, 43.149117, 26.849030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702704, -0.311941, -0.639453,
		0.594715, -0.235811, 0.768575,
		-0.390540, -0.920372, 0.019811,
		37.615898, 42.873005, 26.854973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432014, 43.105877, 26.970560>,  <37.889275, 43.517265, 26.841105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432014, 43.105877, 26.970560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150303, 42.884140, 26.793154>,  <37.981277, 42.751099, 26.686710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150303, 42.884140, 26.793154>,  <38.432014, 43.105877, 26.970560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150303, 42.884140, 26.793154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675460, -0.330930, -0.658968,
		0.218520, -0.763671, 0.607500,
		-0.704274, -0.554340, -0.443514,
		37.939022, 42.717838, 26.660099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723961, 42.479229, 26.942152>,  <38.432014, 43.105877, 26.970560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723961, 42.479229, 26.942152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453377, 42.488628, 26.647711>,  <38.291027, 42.494270, 26.471046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453377, 42.488628, 26.647711>,  <38.723961, 42.479229, 26.942152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453377, 42.488628, 26.647711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665225, -0.409393, -0.624398,
		-0.316028, -0.912055, 0.261307,
		-0.676463, 0.023500, -0.736102,
		38.250439, 42.495678, 26.426880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696621, 41.743809, 26.716652>,  <38.723961, 42.479229, 26.942152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696621, 41.743809, 26.716652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530540, 41.963161, 26.426302>,  <38.430893, 42.094772, 26.252092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530540, 41.963161, 26.426302>,  <38.696621, 41.743809, 26.716652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530540, 41.963161, 26.426302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641161, -0.389660, -0.661119,
		-0.645387, -0.739896, -0.189813,
		-0.415197, 0.548378, -0.725874,
		38.405983, 42.127674, 26.208540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653053, 41.304466, 26.095264>,  <38.696621, 41.743809, 26.716652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653053, 41.304466, 26.095264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626266, 41.685413, 25.976259>,  <38.610195, 41.913982, 25.904856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626266, 41.685413, 25.976259>,  <38.653053, 41.304466, 26.095264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626266, 41.685413, 25.976259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549149, -0.213773, -0.807921,
		-0.833037, -0.217482, -0.508676,
		-0.066967, 0.952367, -0.297511,
		38.606174, 41.971123, 25.887007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407207, 41.279594, 25.467020>,  <38.653053, 41.304466, 26.095264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407207, 41.279594, 25.467020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561813, 41.648422, 25.474850>,  <38.654579, 41.869720, 25.479548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561813, 41.648422, 25.474850>,  <38.407207, 41.279594, 25.467020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561813, 41.648422, 25.474850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571386, -0.222749, -0.789874,
		-0.723962, 0.316485, -0.612957,
		0.386519, 0.922074, 0.019573,
		38.677769, 41.925045, 25.480722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500492, 41.424377, 24.774788>,  <38.407207, 41.279594, 25.467020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500492, 41.424377, 24.774788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728363, 41.685093, 24.975042>,  <38.865086, 41.841522, 25.095194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728363, 41.685093, 24.975042>,  <38.500492, 41.424377, 24.774788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728363, 41.685093, 24.975042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678916, -0.029912, -0.733606,
		-0.463181, 0.757811, -0.459550,
		0.569681, 0.651789, 0.500635,
		38.899269, 41.880630, 25.125233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818447, 41.870628, 24.229361>,  <38.500492, 41.424377, 24.774788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818447, 41.870628, 24.229361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051895, 41.940186, 24.546638>,  <39.191963, 41.981918, 24.737005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051895, 41.940186, 24.546638>,  <38.818447, 41.870628, 24.229361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051895, 41.940186, 24.546638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804679, 0.007287, -0.593665,
		-0.109012, 0.984738, -0.135674,
		0.583616, 0.173891, 0.793193,
		39.226978, 41.992352, 24.784595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194107, 42.437775, 24.070065>,  <38.818447, 41.870628, 24.229361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194107, 42.437775, 24.070065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405312, 42.224148, 24.334177>,  <39.532036, 42.095970, 24.492645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405312, 42.224148, 24.334177>,  <39.194107, 42.437775, 24.070065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405312, 42.224148, 24.334177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730225, -0.111415, -0.674061,
		0.433561, 0.838066, 0.331164,
		0.528011, -0.534071, 0.660282,
		39.563713, 42.063927, 24.532261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898220, 42.667381, 24.134626>,  <39.194107, 42.437775, 24.070065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898220, 42.667381, 24.134626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888508, 42.282074, 24.241602>,  <39.882683, 42.050888, 24.305788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888508, 42.282074, 24.241602>,  <39.898220, 42.667381, 24.134626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888508, 42.282074, 24.241602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762484, -0.190857, -0.618217,
		0.646551, 0.188911, 0.739110,
		-0.024276, -0.963269, 0.267440,
		39.881226, 41.993092, 24.321835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549408, 42.395412, 24.229647>,  <39.898220, 42.667381, 24.134626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549408, 42.395412, 24.229647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359905, 42.053368, 24.145426>,  <40.246204, 41.848141, 24.094894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359905, 42.053368, 24.145426>,  <40.549408, 42.395412, 24.229647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359905, 42.053368, 24.145426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777962, -0.294333, -0.555106,
		0.412708, -0.426787, 0.804689,
		-0.473759, -0.855114, -0.210551,
		40.217777, 41.796833, 24.082260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129215, 42.009007, 24.178001>,  <40.549408, 42.395412, 24.229647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129215, 42.009007, 24.178001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796879, 41.876255, 23.999311>,  <40.597477, 41.796604, 23.892097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796879, 41.876255, 23.999311>,  <41.129215, 42.009007, 24.178001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796879, 41.876255, 23.999311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548403, -0.351708, -0.758654,
		0.094668, -0.875303, 0.474218,
		-0.830838, -0.331883, -0.446724,
		40.547626, 41.776691, 23.865294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215000, 41.277134, 23.939957>,  <41.129215, 42.009007, 24.178001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215000, 41.277134, 23.939957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908295, 41.412384, 23.721693>,  <40.724270, 41.493534, 23.590734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908295, 41.412384, 23.721693>,  <41.215000, 41.277134, 23.939957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908295, 41.412384, 23.721693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385996, -0.436328, -0.812788,
		-0.512914, -0.833838, 0.204043,
		-0.766763, 0.338131, -0.545657,
		40.678265, 41.513824, 23.557997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439907, 40.962391, 23.439457>,  <41.215000, 41.277134, 23.939957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439907, 40.962391, 23.439457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133820, 41.188103, 23.315506>,  <40.950169, 41.323532, 23.241137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133820, 41.188103, 23.315506>,  <41.439907, 40.962391, 23.439457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133820, 41.188103, 23.315506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186199, -0.266774, -0.945601,
		-0.616255, -0.781291, 0.099072,
		-0.765219, 0.564284, -0.309876,
		40.904255, 41.357388, 23.222544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914455, 40.549759, 23.767965>,  <41.439907, 40.962391, 23.439457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914455, 40.549759, 23.767965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008419, 40.271732, 24.039759>,  <42.064796, 40.104916, 24.202835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008419, 40.271732, 24.039759>,  <41.914455, 40.549759, 23.767965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008419, 40.271732, 24.039759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918225, 0.070644, 0.389708,
		-0.318875, -0.715464, -0.621635,
		0.234907, -0.695069, 0.679483,
		42.078892, 40.063213, 24.243603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407249, 41.019344, 24.125835>,  <41.914455, 40.549759, 23.767965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407249, 41.019344, 24.125835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057640, 41.176228, 24.240559>,  <41.847874, 41.270359, 24.309393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057640, 41.176228, 24.240559>,  <42.407249, 41.019344, 24.125835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057640, 41.176228, 24.240559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482684, -0.768533, -0.419967,
		0.055707, -0.505498, 0.861028,
		-0.874021, 0.392210, 0.286808,
		41.795433, 41.293892, 24.326601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874474, 40.916664, 24.679800>,  <42.407249, 41.019344, 24.125835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874474, 40.916664, 24.679800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159279, 40.674034, 24.821283>,  <42.330162, 40.528458, 24.906174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159279, 40.674034, 24.821283>,  <41.874474, 40.916664, 24.679800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159279, 40.674034, 24.821283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511090, -0.102280, 0.853420,
		-0.481486, -0.788419, -0.382840,
		0.712009, -0.606575, 0.353707,
		42.372883, 40.492062, 24.927395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604240, 40.278923, 24.948681>,  <41.874474, 40.916664, 24.679800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604240, 40.278923, 24.948681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933575, 40.446407, 25.101940>,  <42.131176, 40.546898, 25.193895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933575, 40.446407, 25.101940>,  <41.604240, 40.278923, 24.948681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933575, 40.446407, 25.101940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483537, 0.164019, 0.859820,
		0.297171, -0.893186, 0.337504,
		0.823336, 0.418709, 0.383146,
		42.180576, 40.572021, 25.216885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720112, 39.843960, 25.519739>,  <41.604240, 40.278923, 24.948681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720112, 39.843960, 25.519739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867973, 40.214024, 25.554258>,  <41.956688, 40.436062, 25.574970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867973, 40.214024, 25.554258>,  <41.720112, 39.843960, 25.519739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867973, 40.214024, 25.554258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629233, 0.180904, 0.755870,
		0.683685, -0.333708, 0.649009,
		0.369649, 0.925156, 0.086299,
		41.978867, 40.491570, 25.580149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220684, 39.964603, 26.147604>,  <41.720112, 39.843960, 25.519739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220684, 39.964603, 26.147604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017059, 40.286575, 26.025656>,  <41.894886, 40.479759, 25.952486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017059, 40.286575, 26.025656>,  <42.220684, 39.964603, 26.147604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017059, 40.286575, 26.025656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574797, -0.054267, 0.816495,
		0.640675, 0.590886, 0.490296,
		-0.509062, 0.804928, -0.304872,
		41.864342, 40.528053, 25.934195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035149, 40.432365, 26.803106>,  <42.220684, 39.964603, 26.147604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035149, 40.432365, 26.803106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801144, 40.580307, 26.514395>,  <41.660740, 40.669071, 26.341167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801144, 40.580307, 26.514395>,  <42.035149, 40.432365, 26.803106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801144, 40.580307, 26.514395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734740, 0.135115, 0.664757,
		0.343386, 0.919213, 0.192702,
		-0.585016, 0.369854, -0.721779,
		41.625641, 40.691265, 26.297861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795135, 41.099892, 27.019703>,  <42.035149, 40.432365, 26.803106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795135, 41.099892, 27.019703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521339, 40.943142, 26.773806>,  <41.357063, 40.849091, 26.626266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521339, 40.943142, 26.773806>,  <41.795135, 41.099892, 27.019703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521339, 40.943142, 26.773806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696207, 0.101230, 0.710667,
		-0.216261, 0.914433, -0.342116,
		-0.684490, -0.391874, -0.614743,
		41.315994, 40.825581, 26.589382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197109, 41.188473, 27.439436>,  <41.795135, 41.099892, 27.019703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197109, 41.188473, 27.439436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068489, 40.948814, 27.146143>,  <40.991318, 40.805019, 26.970167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068489, 40.948814, 27.146143>,  <41.197109, 41.188473, 27.439436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068489, 40.948814, 27.146143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752629, -0.308174, 0.581874,
		-0.574591, 0.738955, -0.351841,
		-0.321550, -0.599145, -0.733233,
		40.972023, 40.769070, 26.926172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498272, 41.323925, 27.293640>,  <41.197109, 41.188473, 27.439436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498272, 41.323925, 27.293640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575085, 40.944527, 27.192856>,  <40.621174, 40.716888, 27.132385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575085, 40.944527, 27.192856>,  <40.498272, 41.323925, 27.293640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575085, 40.944527, 27.192856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739342, -0.308654, 0.598420,
		-0.645366, 0.071372, -0.760532,
		0.192030, -0.948493, -0.251963,
		40.632694, 40.659977, 27.117268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835495, 41.059433, 27.151276>,  <40.498272, 41.323925, 27.293640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835495, 41.059433, 27.151276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084255, 40.756348, 27.230377>,  <40.233513, 40.574497, 27.277838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084255, 40.756348, 27.230377>,  <39.835495, 41.059433, 27.151276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084255, 40.756348, 27.230377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731769, -0.472383, 0.491293,
		-0.278845, -0.450245, -0.848248,
		0.621900, -0.757716, 0.197753,
		40.270824, 40.529034, 27.289703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497288, 40.573997, 26.844509>,  <39.835495, 41.059433, 27.151276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497288, 40.573997, 26.844509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738316, 40.436153, 27.132441>,  <39.882935, 40.353447, 27.305199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738316, 40.436153, 27.132441>,  <39.497288, 40.573997, 26.844509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738316, 40.436153, 27.132441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798013, -0.249911, 0.548380,
		-0.009085, -0.904869, -0.425594,
		0.602572, -0.344611, 0.719826,
		39.919086, 40.332771, 27.348389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320641, 39.874783, 26.974569>,  <39.497288, 40.573997, 26.844509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320641, 39.874783, 26.974569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505138, 39.996941, 27.307793>,  <39.615837, 40.070236, 27.507727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505138, 39.996941, 27.307793>,  <39.320641, 39.874783, 26.974569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505138, 39.996941, 27.307793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740220, -0.385227, 0.551068,
		0.489212, -0.870822, 0.048379,
		0.461245, 0.305400, 0.833057,
		39.643513, 40.088562, 27.557711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087440, 39.422550, 27.334137>,  <39.320641, 39.874783, 26.974569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087440, 39.422550, 27.334137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233974, 39.684166, 27.598871>,  <39.321896, 39.841137, 27.757711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233974, 39.684166, 27.598871>,  <39.087440, 39.422550, 27.334137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233974, 39.684166, 27.598871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695241, -0.280330, 0.661857,
		0.618415, -0.702598, 0.352022,
		0.366337, 0.654042, 0.661835,
		39.343876, 39.880379, 27.797422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154152, 39.063583, 27.955732>,  <39.087440, 39.422550, 27.334137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154152, 39.063583, 27.955732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134407, 39.446507, 28.069666>,  <39.122562, 39.676258, 28.138027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134407, 39.446507, 28.069666>,  <39.154152, 39.063583, 27.955732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134407, 39.446507, 28.069666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693098, -0.238170, 0.680360,
		0.719151, -0.163837, 0.675262,
		-0.049359, 0.957305, 0.284835,
		39.119598, 39.733700, 28.155117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104725, 39.101208, 28.720001>,  <39.154152, 39.063583, 27.955732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104725, 39.101208, 28.720001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944538, 39.449326, 28.605312>,  <38.848427, 39.658195, 28.536499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944538, 39.449326, 28.605312>,  <39.104725, 39.101208, 28.720001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944538, 39.449326, 28.605312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798835, -0.178306, 0.574517,
		0.448876, 0.459120, 0.766629,
		-0.400466, 0.870297, -0.286724,
		38.824398, 39.710415, 28.519295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921715, 39.328442, 29.273083>,  <39.104725, 39.101208, 28.720001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921715, 39.328442, 29.273083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684048, 39.531754, 29.023727>,  <38.541447, 39.653740, 28.874115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684048, 39.531754, 29.023727>,  <38.921715, 39.328442, 29.273083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684048, 39.531754, 29.023727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803445, -0.338511, 0.489782,
		0.037923, 0.791872, 0.609509,
		-0.594170, 0.508281, -0.623388,
		38.505798, 39.684238, 28.836712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461800, 39.680855, 29.639227>,  <38.921715, 39.328442, 29.273083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461800, 39.680855, 29.639227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293728, 39.640228, 29.278530>,  <38.192886, 39.615852, 29.062113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293728, 39.640228, 29.278530>,  <38.461800, 39.680855, 29.639227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293728, 39.640228, 29.278530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884960, -0.173959, 0.431953,
		-0.200738, 0.979501, -0.016790,
		-0.420178, -0.101568, -0.901740,
		38.167675, 39.609756, 29.008009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865257, 39.971199, 29.729414>,  <38.461800, 39.680855, 29.639227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865257, 39.971199, 29.729414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778763, 39.767265, 29.396353>,  <37.726868, 39.644905, 29.196516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778763, 39.767265, 29.396353>,  <37.865257, 39.971199, 29.729414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778763, 39.767265, 29.396353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962042, -0.034167, 0.270754,
		-0.166489, 0.859594, -0.483094,
		-0.216232, -0.509834, -0.832654,
		37.713894, 39.614315, 29.146557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342762, 40.327576, 29.403320>,  <37.865257, 39.971199, 29.729414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342762, 40.327576, 29.403320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333054, 39.948059, 29.277336>,  <37.327229, 39.720348, 29.201746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333054, 39.948059, 29.277336>,  <37.342762, 40.327576, 29.403320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333054, 39.948059, 29.277336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978990, -0.041252, 0.199694,
		-0.202461, 0.313191, -0.927858,
		-0.024266, -0.948794, -0.314963,
		37.325775, 39.663422, 29.182848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847946, 40.369457, 28.877441>,  <37.342762, 40.327576, 29.403320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847946, 40.369457, 28.877441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875893, 39.989437, 28.999109>,  <36.892662, 39.761425, 29.072109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875893, 39.989437, 28.999109>,  <36.847946, 40.369457, 28.877441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875893, 39.989437, 28.999109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977779, -0.004807, 0.209582,
		-0.197652, -0.312051, -0.929278,
		0.069868, -0.950053, 0.304167,
		36.896854, 39.704422, 29.090359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159985, 40.121948, 28.818201>,  <36.847946, 40.369457, 28.877441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159985, 40.121948, 28.818201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321827, 39.838917, 29.049936>,  <36.418934, 39.669098, 29.188976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321827, 39.838917, 29.049936>,  <36.159985, 40.121948, 28.818201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321827, 39.838917, 29.049936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829806, -0.017821, 0.557767,
		-0.384338, -0.706412, -0.594362,
		0.404605, -0.707577, 0.579336,
		36.443207, 39.626644, 29.223738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589222, 39.522636, 28.923275>,  <36.159985, 40.121948, 28.818201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589222, 39.522636, 28.923275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856358, 39.439236, 29.209076>,  <36.016640, 39.389194, 29.380556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856358, 39.439236, 29.209076>,  <35.589222, 39.522636, 28.923275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856358, 39.439236, 29.209076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730460, 0.000675, 0.682955,
		-0.142881, -0.978021, -0.151854,
		0.667842, -0.208504, 0.714502,
		36.056709, 39.376686, 29.423426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330444, 38.920742, 29.172791>,  <35.589222, 39.522636, 28.923275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330444, 38.920742, 29.172791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581196, 39.100170, 29.427601>,  <35.731647, 39.207829, 29.580486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581196, 39.100170, 29.427601>,  <35.330444, 38.920742, 29.172791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581196, 39.100170, 29.427601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673343, -0.099399, 0.732618,
		0.391953, -0.888201, 0.239733,
		0.626883, 0.448574, 0.637024,
		35.769260, 39.234741, 29.618708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444489, 38.524761, 29.749920>,  <35.330444, 38.920742, 29.172791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444489, 38.524761, 29.749920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541714, 38.889034, 29.883533>,  <35.600048, 39.107597, 29.963701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541714, 38.889034, 29.883533>,  <35.444489, 38.524761, 29.749920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541714, 38.889034, 29.883533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456862, -0.196298, 0.867609,
		0.855686, -0.363490, 0.368343,
		0.243062, 0.910682, 0.334034,
		35.614632, 39.162239, 29.983744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728943, 38.385124, 30.350475>,  <35.444489, 38.524761, 29.749920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728943, 38.385124, 30.350475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641766, 38.774120, 30.383385>,  <35.589458, 39.007519, 30.403131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641766, 38.774120, 30.383385>,  <35.728943, 38.385124, 30.350475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641766, 38.774120, 30.383385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490884, -0.182090, 0.851984,
		0.843525, 0.145294, 0.517064,
		-0.217940, 0.972488, 0.082275,
		35.576382, 39.065868, 30.408068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916706, 38.549969, 30.953344>,  <35.728943, 38.385124, 30.350475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916706, 38.549969, 30.953344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656734, 38.847744, 30.892157>,  <35.500751, 39.026409, 30.855444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656734, 38.847744, 30.892157>,  <35.916706, 38.549969, 30.953344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656734, 38.847744, 30.892157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439630, -0.204081, 0.874687,
		0.619934, 0.635735, 0.459917,
		-0.649929, 0.744441, -0.152971,
		35.461758, 39.071075, 30.846266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862495, 38.857128, 31.613676>,  <35.916706, 38.549969, 30.953344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862495, 38.857128, 31.613676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543282, 38.993412, 31.414856>,  <35.351753, 39.075184, 31.295565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543282, 38.993412, 31.414856>,  <35.862495, 38.857128, 31.613676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543282, 38.993412, 31.414856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512300, 0.050746, 0.857306,
		0.317315, 0.938798, 0.134047,
		-0.798035, 0.340708, -0.497049,
		35.303871, 39.095623, 31.265741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600067, 39.389477, 31.994482>,  <35.862495, 38.857128, 31.613676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600067, 39.389477, 31.994482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298542, 39.269962, 31.760391>,  <35.117626, 39.198254, 31.619936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298542, 39.269962, 31.760391>,  <35.600067, 39.389477, 31.994482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298542, 39.269962, 31.760391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595260, -0.066649, 0.800765,
		-0.278259, 0.951991, -0.127612,
		-0.753816, -0.298782, -0.585227,
		35.072399, 39.180328, 31.584824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972569, 39.745747, 32.295940>,  <35.600067, 39.389477, 31.994482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972569, 39.745747, 32.295940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816952, 39.439072, 32.091652>,  <34.723583, 39.255066, 31.969080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816952, 39.439072, 32.091652>,  <34.972569, 39.745747, 32.295940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816952, 39.439072, 32.091652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622319, -0.190045, 0.759344,
		-0.679240, 0.613246, -0.403190,
		-0.389040, -0.766689, -0.510720,
		34.700241, 39.209064, 31.938437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365097, 39.699337, 32.529545>,  <34.972569, 39.745747, 32.295940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365097, 39.699337, 32.529545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362377, 39.340752, 32.352318>,  <34.360744, 39.125599, 32.245983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362377, 39.340752, 32.352318>,  <34.365097, 39.699337, 32.529545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362377, 39.340752, 32.352318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580994, -0.357081, 0.731395,
		-0.813880, 0.262390, -0.518413,
		-0.006795, -0.896463, -0.443068,
		34.360340, 39.071812, 32.219398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560268, 39.446308, 32.426456>,  <34.365097, 39.699337, 32.529545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560268, 39.446308, 32.426456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816986, 39.140495, 32.450397>,  <33.971016, 38.957008, 32.464764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816986, 39.140495, 32.450397>,  <33.560268, 39.446308, 32.426456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816986, 39.140495, 32.450397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565042, -0.418672, 0.710944,
		-0.518485, -0.490099, -0.700697,
		0.641795, -0.764537, 0.059851,
		34.009525, 38.911133, 32.468353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120842, 38.816952, 32.640800>,  <33.560268, 39.446308, 32.426456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120842, 38.816952, 32.640800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505062, 38.740406, 32.721523>,  <33.735596, 38.694481, 32.769955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505062, 38.740406, 32.721523>,  <33.120842, 38.816952, 32.640800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505062, 38.740406, 32.721523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260139, -0.361622, 0.895297,
		-0.098347, -0.912475, -0.397137,
		0.960549, -0.191361, 0.201805,
		33.793228, 38.682999, 32.782066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103035, 38.194733, 32.932266>,  <33.120842, 38.816952, 32.640800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103035, 38.194733, 32.932266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451134, 38.351711, 33.051369>,  <33.659992, 38.445900, 33.122829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451134, 38.351711, 33.051369>,  <33.103035, 38.194733, 32.932266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451134, 38.351711, 33.051369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232497, -0.205684, 0.950599,
		0.434306, -0.896481, -0.087752,
		0.870243, 0.392448, 0.297759,
		33.712208, 38.469444, 33.140697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338745, 37.692444, 33.497936>,  <33.103035, 38.194733, 32.932266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338745, 37.692444, 33.497936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574646, 38.011253, 33.550003>,  <33.716187, 38.202541, 33.581245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574646, 38.011253, 33.550003>,  <33.338745, 37.692444, 33.497936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574646, 38.011253, 33.550003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083619, -0.100051, 0.991462,
		0.803244, -0.595601, 0.007642,
		0.589751, 0.797026, 0.130169,
		33.751572, 38.250362, 33.589054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971653, 37.447960, 33.827759>,  <33.338745, 37.692444, 33.497936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971653, 37.447960, 33.827759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938835, 37.840820, 33.895470>,  <33.919144, 38.076534, 33.936096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938835, 37.840820, 33.895470>,  <33.971653, 37.447960, 33.827759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938835, 37.840820, 33.895470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013372, -0.170920, 0.985194,
		0.996539, 0.078568, 0.027156,
		-0.082046, 0.982147, 0.169278,
		33.914223, 38.135464, 33.946255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498711, 37.571430, 34.323643>,  <33.971653, 37.447960, 33.827759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498711, 37.571430, 34.323643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226543, 37.863869, 34.343761>,  <34.063244, 38.039333, 34.355831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226543, 37.863869, 34.343761>,  <34.498711, 37.571430, 34.323643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226543, 37.863869, 34.343761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073893, -0.136731, 0.987848,
		0.729092, 0.668430, 0.147057,
		-0.680415, 0.731099, 0.050297,
		34.022419, 38.083199, 34.358852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565777, 37.959202, 34.907974>,  <34.498711, 37.571430, 34.323643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565777, 37.959202, 34.907974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207355, 38.108959, 34.812542>,  <33.992302, 38.198814, 34.755283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207355, 38.108959, 34.812542>,  <34.565777, 37.959202, 34.907974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207355, 38.108959, 34.812542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230052, 0.068041, 0.970797,
		0.379695, 0.924770, 0.025162,
		-0.896051, 0.374395, -0.238580,
		33.938541, 38.221279, 34.740967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605198, 38.484032, 35.299988>,  <34.565777, 37.959202, 34.907974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605198, 38.484032, 35.299988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229134, 38.374260, 35.219200>,  <34.003494, 38.308395, 35.170727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229134, 38.374260, 35.219200>,  <34.605198, 38.484032, 35.299988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229134, 38.374260, 35.219200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213642, 0.012995, 0.976825,
		-0.265447, 0.961519, -0.070847,
		-0.940157, -0.274432, -0.201972,
		33.947086, 38.291931, 35.158607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031654, 38.886940, 35.798462>,  <34.605198, 38.484032, 35.299988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031654, 38.886940, 35.798462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876831, 38.548573, 35.651707>,  <33.783936, 38.345551, 35.563652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876831, 38.548573, 35.651707>,  <34.031654, 38.886940, 35.798462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876831, 38.548573, 35.651707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292472, -0.264717, 0.918904,
		-0.874439, 0.462978, -0.144945,
		-0.387063, -0.845918, -0.366887,
		33.760712, 38.294796, 35.541641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327511, 38.874615, 36.083908>,  <34.031654, 38.886940, 35.798462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327511, 38.874615, 36.083908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398438, 38.492729, 35.988338>,  <33.440994, 38.263599, 35.930996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398438, 38.492729, 35.988338>,  <33.327511, 38.874615, 36.083908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398438, 38.492729, 35.988338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231703, -0.276442, 0.932681,
		-0.956490, -0.110019, -0.270227,
		0.177314, -0.954712, -0.238922,
		33.451633, 38.206314, 35.916660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785839, 38.532772, 36.254154>,  <33.327511, 38.874615, 36.083908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785839, 38.532772, 36.254154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038441, 38.223774, 36.227444>,  <33.190002, 38.038376, 36.211418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038441, 38.223774, 36.227444>,  <32.785839, 38.532772, 36.254154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038441, 38.223774, 36.227444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407269, -0.403754, 0.819216,
		-0.659801, -0.490139, -0.569584,
		0.631502, -0.772494, -0.066779,
		33.227890, 37.992027, 36.207409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332066, 37.914459, 36.292660>,  <32.785839, 38.532772, 36.254154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332066, 37.914459, 36.292660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710186, 37.830280, 36.392357>,  <32.937057, 37.779774, 36.452175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710186, 37.830280, 36.392357>,  <32.332066, 37.914459, 36.292660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710186, 37.830280, 36.392357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314939, -0.389684, 0.865425,
		-0.084996, -0.896582, -0.434644,
		0.945299, -0.210444, 0.249247,
		32.993774, 37.767147, 36.467133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253761, 37.271229, 36.657345>,  <32.332066, 37.914459, 36.292660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253761, 37.271229, 36.657345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613613, 37.393784, 36.781788>,  <32.829525, 37.467316, 36.856453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613613, 37.393784, 36.781788>,  <32.253761, 37.271229, 36.657345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613613, 37.393784, 36.781788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243501, -0.239394, 0.939892,
		0.362445, -0.921314, -0.140762,
		0.899634, 0.306384, 0.311108,
		32.883503, 37.485699, 36.875118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419010, 36.710724, 37.151104>,  <32.253761, 37.271229, 36.657345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419010, 36.710724, 37.151104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642273, 37.035645, 37.218777>,  <32.776230, 37.230598, 37.259380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642273, 37.035645, 37.218777>,  <32.419010, 36.710724, 37.151104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642273, 37.035645, 37.218777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100365, -0.136305, 0.985570,
		0.823643, -0.567083, 0.005447,
		0.558157, 0.812304, 0.169182,
		32.809719, 37.279335, 37.269531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192135, 36.430614, 36.561985>,  <32.419010, 36.710724, 37.151104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192135, 36.430614, 36.561985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322330, 36.071762, 36.442509>,  <32.400448, 35.856453, 36.370823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322330, 36.071762, 36.442509>,  <32.192135, 36.430614, 36.561985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322330, 36.071762, 36.442509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563697, 0.437728, -0.700457,
		0.759144, 0.059625, 0.648186,
		0.325493, -0.897128, -0.298688,
		32.419979, 35.802624, 36.352901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988998, 36.403629, 36.507477>,  <32.192135, 36.430614, 36.561985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988998, 36.403629, 36.507477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875023, 36.100513, 36.272678>,  <32.806637, 35.918644, 36.131798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875023, 36.100513, 36.272678>,  <32.988998, 36.403629, 36.507477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875023, 36.100513, 36.272678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651094, 0.296423, -0.698721,
		0.703482, -0.581283, 0.408929,
		-0.284938, -0.757789, -0.586998,
		32.789543, 35.873177, 36.096581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621899, 36.098854, 36.112602>,  <32.988998, 36.403629, 36.507477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621899, 36.098854, 36.112602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347496, 35.918438, 35.884232>,  <33.182854, 35.810188, 35.747208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347496, 35.918438, 35.884232>,  <33.621899, 36.098854, 36.112602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347496, 35.918438, 35.884232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631091, 0.021659, -0.775406,
		0.362105, -0.892240, 0.269790,
		-0.686005, -0.451041, -0.570928,
		33.141693, 35.783127, 35.712952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849400, 35.531063, 35.728855>,  <33.621899, 36.098854, 36.112602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849400, 35.531063, 35.728855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531139, 35.640022, 35.512432>,  <33.340183, 35.705399, 35.382580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531139, 35.640022, 35.512432>,  <33.849400, 35.531063, 35.728855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531139, 35.640022, 35.512432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542339, -0.077535, -0.836574,
		-0.269835, -0.959054, -0.086043,
		-0.795649, 0.272402, -0.541055,
		33.292446, 35.721741, 35.350117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829941, 34.987221, 35.128838>,  <33.849400, 35.531063, 35.728855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829941, 34.987221, 35.128838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609608, 35.302254, 35.018353>,  <33.477409, 35.491276, 34.952061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609608, 35.302254, 35.018353>,  <33.829941, 34.987221, 35.128838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609608, 35.302254, 35.018353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426696, -0.018677, -0.904202,
		-0.717295, -0.615922, -0.325772,
		-0.550834, 0.787585, -0.276208,
		33.444359, 35.538528, 34.935490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845692, 34.914204, 34.451813>,  <33.829941, 34.987221, 35.128838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845692, 34.914204, 34.451813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671192, 35.273960, 34.462971>,  <33.566494, 35.489815, 34.469666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671192, 35.273960, 34.462971>,  <33.845692, 34.914204, 34.451813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671192, 35.273960, 34.462971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345464, 0.196031, -0.917729,
		-0.830869, -0.390718, -0.396227,
		-0.436246, 0.899395, 0.027897,
		33.540318, 35.543777, 34.471340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381416, 35.007927, 33.834663>,  <33.845692, 34.914204, 34.451813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381416, 35.007927, 33.834663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510693, 35.365330, 33.959366>,  <33.588257, 35.579773, 34.034187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510693, 35.365330, 33.959366>,  <33.381416, 35.007927, 33.834663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510693, 35.365330, 33.959366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226845, 0.246681, -0.942173,
		-0.918743, 0.375223, -0.122963,
		0.323192, 0.893508, 0.311754,
		33.607651, 35.633381, 34.052891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061272, 35.575279, 33.384125>,  <33.381416, 35.007927, 33.834663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061272, 35.575279, 33.384125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398796, 35.716030, 33.546192>,  <33.601311, 35.800480, 33.643433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398796, 35.716030, 33.546192>,  <33.061272, 35.575279, 33.384125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398796, 35.716030, 33.546192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329854, 0.255454, -0.908812,
		-0.423294, 0.900513, 0.099486,
		0.843812, 0.351879, 0.405170,
		33.651939, 35.821594, 33.667744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358902, 36.227989, 32.936913>,  <33.061272, 35.575279, 33.384125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358902, 36.227989, 32.936913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672016, 36.102291, 33.151764>,  <33.859882, 36.026875, 33.280674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672016, 36.102291, 33.151764>,  <33.358902, 36.227989, 32.936913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672016, 36.102291, 33.151764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606921, 0.194839, -0.770509,
		0.137472, 0.929134, 0.343236,
		0.782782, -0.314241, 0.537126,
		33.906849, 36.008018, 33.312901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912724, 36.529278, 32.633255>,  <33.358902, 36.227989, 32.936913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912724, 36.529278, 32.633255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092682, 36.255268, 32.862457>,  <34.200657, 36.090862, 32.999977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092682, 36.255268, 32.862457>,  <33.912724, 36.529278, 32.633255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092682, 36.255268, 32.862457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833271, 0.091129, -0.545302,
		0.321328, 0.722798, 0.611810,
		0.449897, -0.685025, 0.573004,
		34.227650, 36.049759, 33.034359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551628, 36.850693, 32.791908>,  <33.912724, 36.529278, 32.633255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551628, 36.850693, 32.791908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582916, 36.453163, 32.823372>,  <34.601688, 36.214645, 32.842251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582916, 36.453163, 32.823372>,  <34.551628, 36.850693, 32.791908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582916, 36.453163, 32.823372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760962, 0.008543, -0.648740,
		0.644064, 0.110601, 0.756934,
		0.078218, -0.993828, 0.078660,
		34.606380, 36.155014, 32.846970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223530, 36.704060, 32.985077>,  <34.551628, 36.850693, 32.791908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223530, 36.704060, 32.985077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086788, 36.364704, 32.823399>,  <35.004745, 36.161091, 32.726391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086788, 36.364704, 32.823399>,  <35.223530, 36.704060, 32.985077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086788, 36.364704, 32.823399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752342, 0.010670, -0.658686,
		0.563134, -0.529269, 0.634630,
		-0.341850, -0.848387, -0.404200,
		34.984234, 36.110188, 32.702137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839394, 36.342674, 32.824501>,  <35.223530, 36.704060, 32.985077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839394, 36.342674, 32.824501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563484, 36.142872, 32.614853>,  <35.397938, 36.022991, 32.489063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563484, 36.142872, 32.614853>,  <35.839394, 36.342674, 32.824501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563484, 36.142872, 32.614853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600050, 0.010694, -0.799891,
		0.405155, -0.866244, 0.292352,
		-0.689775, -0.499506, -0.524123,
		35.356552, 35.993019, 32.457615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217735, 35.841881, 32.512707>,  <35.839394, 36.342674, 32.824501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217735, 35.841881, 32.512707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874077, 35.844688, 32.308033>,  <35.667881, 35.846371, 32.185230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874077, 35.844688, 32.308033>,  <36.217735, 35.841881, 32.512707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874077, 35.844688, 32.308033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511727, 0.013993, -0.859034,
		0.001116, -0.999877, -0.015622,
		-0.859148, 0.007036, -0.511680,
		35.616333, 35.846794, 32.154530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368885, 35.369236, 32.111027>,  <36.217735, 35.841881, 32.512707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368885, 35.369236, 32.111027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068344, 35.580540, 31.952827>,  <35.888020, 35.707321, 31.857908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068344, 35.580540, 31.952827>,  <36.368885, 35.369236, 32.111027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068344, 35.580540, 31.952827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491828, 0.048688, -0.869330,
		-0.439972, -0.847689, -0.296392,
		-0.751352, 0.528255, -0.395496,
		35.842937, 35.739017, 31.834179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133713, 35.031345, 31.469458>,  <36.368885, 35.369236, 32.111027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133713, 35.031345, 31.469458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024628, 35.414223, 31.430655>,  <35.959179, 35.643948, 31.407373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024628, 35.414223, 31.430655>,  <36.133713, 35.031345, 31.469458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024628, 35.414223, 31.430655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474758, 0.046187, -0.878904,
		-0.836800, -0.285741, -0.467031,
		-0.272709, 0.957193, -0.097008,
		35.942814, 35.701382, 31.401552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877434, 35.136539, 30.791143>,  <36.133713, 35.031345, 31.469458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877434, 35.136539, 30.791143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958569, 35.516922, 30.884565>,  <36.007248, 35.745152, 30.940619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958569, 35.516922, 30.884565>,  <35.877434, 35.136539, 30.791143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958569, 35.516922, 30.884565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465182, 0.116303, -0.877542,
		-0.861664, 0.286641, -0.418776,
		0.202835, 0.950953, 0.233554,
		36.019421, 35.802208, 30.954632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710716, 35.493084, 30.194462>,  <35.877434, 35.136539, 30.791143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710716, 35.493084, 30.194462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944740, 35.740185, 30.404640>,  <36.085155, 35.888443, 30.530748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944740, 35.740185, 30.404640>,  <35.710716, 35.493084, 30.194462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944740, 35.740185, 30.404640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434738, 0.308057, -0.846229,
		-0.684624, 0.723525, -0.088328,
		0.585057, 0.617748, 0.525447,
		36.120258, 35.925510, 30.562275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815601, 36.090080, 29.704462>,  <35.710716, 35.493084, 30.194462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815601, 36.090080, 29.704462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105038, 36.146427, 29.974741>,  <36.278702, 36.180233, 30.136908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105038, 36.146427, 29.974741>,  <35.815601, 36.090080, 29.704462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105038, 36.146427, 29.974741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548199, 0.477538, -0.686611,
		-0.419390, 0.867245, 0.268323,
		0.723595, 0.140863, 0.675698,
		36.322117, 36.188686, 30.177450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912285, 36.818127, 29.728022>,  <35.815601, 36.090080, 29.704462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912285, 36.818127, 29.728022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245834, 36.643948, 29.863693>,  <36.445965, 36.539440, 29.945095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245834, 36.643948, 29.863693>,  <35.912285, 36.818127, 29.728022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245834, 36.643948, 29.863693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532197, 0.471363, -0.703266,
		0.146359, 0.766944, 0.624800,
		0.833874, -0.435446, 0.339177,
		36.495998, 36.513313, 29.965446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376579, 37.342419, 29.681913>,  <35.912285, 36.818127, 29.728022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376579, 37.342419, 29.681913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593487, 37.006927, 29.701866>,  <36.723629, 36.805634, 29.713839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593487, 37.006927, 29.701866>,  <36.376579, 37.342419, 29.681913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593487, 37.006927, 29.701866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557507, 0.314762, -0.768187,
		0.628596, 0.444372, 0.638280,
		0.542266, -0.838724, 0.049882,
		36.756168, 36.755310, 29.716831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081718, 37.544525, 29.697418>,  <36.376579, 37.342419, 29.681913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081718, 37.544525, 29.697418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094814, 37.167671, 29.563971>,  <37.102673, 36.941559, 29.483902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094814, 37.167671, 29.563971>,  <37.081718, 37.544525, 29.697418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094814, 37.167671, 29.563971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500176, 0.304438, -0.810643,
		0.865305, -0.140329, 0.481202,
		0.032739, -0.942139, -0.333621,
		37.104637, 36.885029, 29.463884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704693, 37.471409, 29.548306>,  <37.081718, 37.544525, 29.697418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704693, 37.471409, 29.548306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521637, 37.184742, 29.337799>,  <37.411804, 37.012741, 29.211494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521637, 37.184742, 29.337799>,  <37.704693, 37.471409, 29.548306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521637, 37.184742, 29.337799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569435, 0.218340, -0.792510,
		0.682869, -0.662359, 0.308172,
		-0.457640, -0.716664, -0.526268,
		37.384346, 36.969742, 29.179918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281616, 37.014534, 29.165537>,  <37.704693, 37.471409, 29.548306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281616, 37.014534, 29.165537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937508, 36.981041, 28.964369>,  <37.731045, 36.960945, 28.843668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937508, 36.981041, 28.964369>,  <38.281616, 37.014534, 29.165537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937508, 36.981041, 28.964369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487788, 0.151813, -0.859660,
		0.148246, -0.984865, -0.089806,
		-0.860282, -0.083635, -0.502911,
		37.679428, 36.955921, 28.813492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401909, 36.781483, 28.500744>,  <38.281616, 37.014534, 29.165537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401909, 36.781483, 28.500744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035217, 36.914539, 28.412237>,  <37.815205, 36.994373, 28.359133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035217, 36.914539, 28.412237>,  <38.401909, 36.781483, 28.500744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035217, 36.914539, 28.412237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293309, 0.184338, -0.938077,
		-0.271258, -0.924861, -0.266555,
		-0.916727, 0.332644, -0.221267,
		37.760201, 37.014332, 28.345858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210705, 36.498756, 27.889923>,  <38.401909, 36.781483, 28.500744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210705, 36.498756, 27.889923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970577, 36.818558, 27.898073>,  <37.826500, 37.010437, 27.902964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970577, 36.818558, 27.898073>,  <38.210705, 36.498756, 27.889923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970577, 36.818558, 27.898073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179415, 0.159456, -0.970764,
		-0.779375, -0.579115, -0.239167,
		-0.600321, 0.799500, 0.020374,
		37.790482, 37.058407, 27.904186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820999, 36.483833, 27.220091>,  <38.210705, 36.498756, 27.889923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820999, 36.483833, 27.220091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790413, 36.856865, 27.361197>,  <37.772060, 37.080685, 27.445860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790413, 36.856865, 27.361197>,  <37.820999, 36.483833, 27.220091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790413, 36.856865, 27.361197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099066, 0.359155, -0.928005,
		-0.992138, -0.036013, -0.119851,
		-0.076465, 0.932583, 0.352764,
		37.767475, 37.136639, 27.467026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377678, 36.831001, 26.666008>,  <37.820999, 36.483833, 27.220091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377678, 36.831001, 26.666008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552956, 37.133068, 26.861032>,  <37.658123, 37.314308, 26.978046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552956, 37.133068, 26.861032>,  <37.377678, 36.831001, 26.666008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552956, 37.133068, 26.861032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215821, 0.438152, -0.872607,
		-0.872587, 0.487597, 0.029015,
		0.438194, 0.755164, 0.487560,
		37.684414, 37.359615, 27.007301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089729, 37.433922, 26.446026>,  <37.377678, 36.831001, 26.666008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089729, 37.433922, 26.446026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421459, 37.592876, 26.603153>,  <37.620495, 37.688251, 26.697430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421459, 37.592876, 26.603153>,  <37.089729, 37.433922, 26.446026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421459, 37.592876, 26.603153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215351, 0.421385, -0.880942,
		-0.515605, 0.815178, 0.263886,
		0.829322, 0.397390, 0.392818,
		37.670258, 37.712093, 26.720999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051037, 38.114300, 26.270411>,  <37.089729, 37.433922, 26.446026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051037, 38.114300, 26.270411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434036, 38.038319, 26.357227>,  <37.663837, 37.992729, 26.409317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434036, 38.038319, 26.357227>,  <37.051037, 38.114300, 26.270411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434036, 38.038319, 26.357227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277820, 0.405238, -0.870975,
		0.077490, 0.894260, 0.440789,
		0.957503, -0.189952, 0.217042,
		37.721287, 37.981335, 26.422340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541870, 38.689110, 26.118864>,  <37.051037, 38.114300, 26.270411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541870, 38.689110, 26.118864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766842, 38.359653, 26.089767>,  <37.901825, 38.161980, 26.072309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766842, 38.359653, 26.089767>,  <37.541870, 38.689110, 26.118864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766842, 38.359653, 26.089767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422835, 0.362105, -0.830717,
		0.710548, 0.436466, 0.551923,
		0.562433, -0.823637, -0.072740,
		37.935574, 38.112564, 26.067945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059147, 38.906754, 25.601961>,  <37.541870, 38.689110, 26.118864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059147, 38.906754, 25.601961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093018, 38.510048, 25.640381>,  <38.113338, 38.272022, 25.663433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093018, 38.510048, 25.640381>,  <38.059147, 38.906754, 25.601961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093018, 38.510048, 25.640381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287541, -0.067975, -0.955353,
		0.954018, 0.108512, 0.279418,
		0.084674, -0.991768, 0.096051,
		38.118420, 38.212517, 25.669197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797424, 38.750267, 25.478640>,  <38.059147, 38.906754, 25.601961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797424, 38.750267, 25.478640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569847, 38.430485, 25.401510>,  <38.433300, 38.238617, 25.355232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569847, 38.430485, 25.401510>,  <38.797424, 38.750267, 25.478640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569847, 38.430485, 25.401510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220052, 0.077928, -0.972371,
		0.792393, -0.595650, 0.131585,
		-0.568938, -0.799455, -0.192823,
		38.399166, 38.190647, 25.343664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098701, 38.509571, 24.861530>,  <38.797424, 38.750267, 25.478640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098701, 38.509571, 24.861530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769512, 38.282337, 24.861834>,  <38.571999, 38.145996, 24.862015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769512, 38.282337, 24.861834>,  <39.098701, 38.509571, 24.861530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769512, 38.282337, 24.861834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109473, -0.159899, -0.981044,
		0.557436, -0.807288, 0.193782,
		-0.822971, -0.568083, 0.000757,
		38.522621, 38.111912, 24.862061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238125, 37.781769, 24.615110>,  <39.098701, 38.509571, 24.861530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238125, 37.781769, 24.615110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848648, 37.860058, 24.568443>,  <38.614960, 37.907032, 24.540443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848648, 37.860058, 24.568443>,  <39.238125, 37.781769, 24.615110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848648, 37.860058, 24.568443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044461, -0.338971, -0.939746,
		-0.223474, -0.920213, 0.321353,
		-0.973695, 0.195721, -0.116665,
		38.556541, 37.918774, 24.533443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026730, 37.208691, 24.125374>,  <39.238125, 37.781769, 24.615110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026730, 37.208691, 24.125374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732849, 37.479645, 24.140142>,  <38.556522, 37.642220, 24.149004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732849, 37.479645, 24.140142>,  <39.026730, 37.208691, 24.125374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732849, 37.479645, 24.140142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202419, -0.166945, -0.964964,
		-0.647493, -0.716430, 0.259771,
		-0.734697, 0.677390, 0.036923,
		38.512440, 37.682861, 24.151220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485161, 36.851452, 23.771200>,  <39.026730, 37.208691, 24.125374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485161, 36.851452, 23.771200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435040, 37.248093, 23.758345>,  <38.404964, 37.486076, 23.750631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435040, 37.248093, 23.758345>,  <38.485161, 36.851452, 23.771200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435040, 37.248093, 23.758345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110715, -0.046170, -0.992779,
		-0.985921, -0.120843, 0.115570,
		-0.125306, 0.991597, -0.032141,
		38.397449, 37.545570, 23.748703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909019, 36.967999, 23.259577>,  <38.485161, 36.851452, 23.771200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909019, 36.967999, 23.259577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127861, 37.294575, 23.333439>,  <38.259167, 37.490520, 23.377756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127861, 37.294575, 23.333439>,  <37.909019, 36.967999, 23.259577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127861, 37.294575, 23.333439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052648, 0.253727, -0.965842,
		-0.835407, 0.518694, 0.181799,
		0.547104, 0.816443, 0.184657,
		38.291992, 37.539509, 23.388836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453720, 37.295029, 22.623417>,  <37.909019, 36.967999, 23.259577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453720, 37.295029, 22.623417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081158, 37.436584, 22.589359>,  <36.857620, 37.521519, 22.568924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081158, 37.436584, 22.589359>,  <37.453720, 37.295029, 22.623417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081158, 37.436584, 22.589359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246277, -0.440461, 0.863331,
		0.268022, 0.825079, 0.497402,
		-0.931403, 0.353891, -0.085145,
		36.801735, 37.542751, 22.563816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325951, 37.594383, 23.307940>,  <37.453720, 37.295029, 22.623417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325951, 37.594383, 23.307940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963394, 37.539707, 23.148050>,  <36.745861, 37.506901, 23.052116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963394, 37.539707, 23.148050>,  <37.325951, 37.594383, 23.307940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963394, 37.539707, 23.148050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296947, -0.466861, 0.832985,
		-0.300471, 0.873704, 0.382569,
		-0.906388, -0.136685, -0.399722,
		36.691479, 37.498703, 23.028133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854916, 37.726555, 23.860893>,  <37.325951, 37.594383, 23.307940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854916, 37.726555, 23.860893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633114, 37.522167, 23.598156>,  <36.500034, 37.399536, 23.440514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633114, 37.522167, 23.598156>,  <36.854916, 37.726555, 23.860893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633114, 37.522167, 23.598156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445797, -0.484104, 0.752932,
		-0.702704, 0.710320, 0.040649,
		-0.554502, -0.510967, -0.656841,
		36.466763, 37.368877, 23.401104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238438, 37.771523, 23.974058>,  <36.854916, 37.726555, 23.860893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238438, 37.771523, 23.974058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225903, 37.428188, 23.769205>,  <36.218380, 37.222187, 23.646294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225903, 37.428188, 23.769205>,  <36.238438, 37.771523, 23.974058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225903, 37.428188, 23.769205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488160, -0.433970, 0.757212,
		-0.872191, 0.273734, -0.405403,
		-0.031342, -0.858335, -0.512131,
		36.216499, 37.170689, 23.615566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491653, 37.589226, 23.897633>,  <36.238438, 37.771523, 23.974058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491653, 37.589226, 23.897633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718693, 37.263359, 23.850033>,  <35.854916, 37.067841, 23.821472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718693, 37.263359, 23.850033>,  <35.491653, 37.589226, 23.897633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718693, 37.263359, 23.850033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493297, -0.452232, 0.743064,
		-0.659163, -0.363057, -0.658555,
		0.567594, -0.814663, -0.119000,
		35.888969, 37.018959, 23.814333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085808, 37.074276, 24.230770>,  <35.491653, 37.589226, 23.897633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085808, 37.074276, 24.230770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451305, 36.916443, 24.192049>,  <35.670605, 36.821743, 24.168818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451305, 36.916443, 24.192049>,  <35.085808, 37.074276, 24.230770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451305, 36.916443, 24.192049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136265, -0.522098, 0.841930,
		-0.382749, -0.756121, -0.530833,
		0.913748, -0.394582, -0.096800,
		35.725430, 36.798069, 24.163010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950871, 36.366993, 24.348709>,  <35.085808, 37.074276, 24.230770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950871, 36.366993, 24.348709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337997, 36.447590, 24.409010>,  <35.570274, 36.495949, 24.445190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337997, 36.447590, 24.409010>,  <34.950871, 36.366993, 24.348709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337997, 36.447590, 24.409010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013555, -0.556445, 0.830774,
		0.251280, -0.806082, -0.535807,
		0.967819, 0.201494, 0.150750,
		35.628342, 36.508038, 24.454235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251751, 35.754692, 24.737406>,  <34.950871, 36.366993, 24.348709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251751, 35.754692, 24.737406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511002, 36.054646, 24.790487>,  <35.666553, 36.234615, 24.822336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511002, 36.054646, 24.790487>,  <35.251751, 35.754692, 24.737406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511002, 36.054646, 24.790487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156433, -0.301639, 0.940501,
		0.745293, -0.588804, -0.312806,
		0.648126, 0.749882, 0.132702,
		35.705441, 36.279610, 24.830297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869450, 35.446411, 25.045387>,  <35.251751, 35.754692, 24.737406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869450, 35.446411, 25.045387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886650, 35.836197, 25.133547>,  <35.896973, 36.070068, 25.186441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886650, 35.836197, 25.133547>,  <35.869450, 35.446411, 25.045387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886650, 35.836197, 25.133547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191825, -0.224551, 0.955395,
		0.980487, 0.001192, -0.196582,
		0.043004, 0.974462, 0.220398,
		35.899551, 36.128536, 25.199667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287598, 35.447475, 25.581812>,  <35.869450, 35.446411, 25.045387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287598, 35.447475, 25.581812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119202, 35.807423, 25.627422>,  <36.018166, 36.023392, 25.654789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119202, 35.807423, 25.627422>,  <36.287598, 35.447475, 25.581812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119202, 35.807423, 25.627422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089507, -0.166307, 0.982003,
		0.902638, 0.403209, 0.150558,
		-0.420991, 0.899869, 0.114025,
		35.992905, 36.077385, 25.661631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531528, 35.722004, 26.221840>,  <36.287598, 35.447475, 25.581812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531528, 35.722004, 26.221840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182755, 35.896919, 26.133745>,  <35.973488, 36.001869, 26.080889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182755, 35.896919, 26.133745>,  <36.531528, 35.722004, 26.221840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182755, 35.896919, 26.133745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337384, -0.210641, 0.917498,
		0.354815, 0.874307, 0.331199,
		-0.871939, 0.437284, -0.220239,
		35.921173, 36.028103, 26.067673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403038, 36.321552, 26.628450>,  <36.531528, 35.722004, 26.221840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403038, 36.321552, 26.628450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030403, 36.231312, 26.514431>,  <35.806824, 36.177166, 26.446018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030403, 36.231312, 26.514431>,  <36.403038, 36.321552, 26.628450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030403, 36.231312, 26.514431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251575, -0.165929, 0.953508,
		-0.262413, 0.959984, 0.097821,
		-0.931584, -0.225604, -0.285050,
		35.750927, 36.163631, 26.428917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921776, 36.681118, 26.996195>,  <36.403038, 36.321552, 26.628450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921776, 36.681118, 26.996195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704983, 36.369419, 26.870325>,  <35.574905, 36.182400, 26.794804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704983, 36.369419, 26.870325>,  <35.921776, 36.681118, 26.996195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704983, 36.369419, 26.870325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485727, -0.015094, 0.873980,
		-0.685801, 0.626529, -0.370322,
		-0.541984, -0.779252, -0.314674,
		35.542389, 36.135643, 26.775923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224602, 36.894714, 27.172991>,  <35.921776, 36.681118, 26.996195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224602, 36.894714, 27.172991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230461, 36.497635, 27.125093>,  <35.233978, 36.259388, 27.096355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230461, 36.497635, 27.125093>,  <35.224602, 36.894714, 27.172991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230461, 36.497635, 27.125093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722611, -0.093284, 0.684932,
		-0.691100, 0.076491, -0.718700,
		0.014652, -0.992697, -0.119741,
		35.234856, 36.199825, 27.089170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548603, 36.814701, 27.296154>,  <35.224602, 36.894714, 27.172991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548603, 36.814701, 27.296154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712112, 36.451027, 27.327896>,  <34.810219, 36.232822, 27.346941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712112, 36.451027, 27.327896>,  <34.548603, 36.814701, 27.296154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712112, 36.451027, 27.327896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611989, -0.208569, 0.762868,
		-0.677035, -0.360401, -0.641666,
		0.408770, -0.909181, 0.079353,
		34.834743, 36.178272, 27.351702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016609, 36.336121, 27.346550>,  <34.548603, 36.814701, 27.296154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016609, 36.336121, 27.346550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333038, 36.157585, 27.513876>,  <34.522896, 36.050465, 27.614271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333038, 36.157585, 27.513876>,  <34.016609, 36.336121, 27.346550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333038, 36.157585, 27.513876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579854, -0.329294, 0.745208,
		-0.194868, -0.832074, -0.519307,
		0.791073, -0.446339, 0.418312,
		34.570362, 36.023685, 27.639370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865749, 35.648365, 27.446705>,  <34.016609, 36.336121, 27.346550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865749, 35.648365, 27.446705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159485, 35.689953, 27.715014>,  <34.335728, 35.714905, 27.875999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159485, 35.689953, 27.715014>,  <33.865749, 35.648365, 27.446705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159485, 35.689953, 27.715014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596587, -0.372502, 0.710863,
		0.323771, -0.922189, -0.211518,
		0.734341, 0.103968, 0.670771,
		34.379787, 35.721142, 27.916245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727348, 35.090103, 27.840229>,  <33.865749, 35.648365, 27.446705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727348, 35.090103, 27.840229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972195, 35.314659, 28.062998>,  <34.119102, 35.449390, 28.196659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972195, 35.314659, 28.062998>,  <33.727348, 35.090103, 27.840229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972195, 35.314659, 28.062998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466357, -0.312488, 0.827564,
		0.638615, -0.766288, 0.070528,
		0.612113, 0.561386, 0.556923,
		34.155830, 35.483074, 28.230076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901260, 34.635235, 28.439367>,  <33.727348, 35.090103, 27.840229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901260, 34.635235, 28.439367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960049, 35.016483, 28.545170>,  <33.995323, 35.245232, 28.608652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960049, 35.016483, 28.545170>,  <33.901260, 34.635235, 28.439367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960049, 35.016483, 28.545170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555232, -0.141815, 0.819516,
		0.818607, -0.267307, 0.508359,
		0.146970, 0.953119, 0.264508,
		34.004139, 35.302418, 28.624523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317715, 34.657639, 29.181841>,  <33.901260, 34.635235, 28.439367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317715, 34.657639, 29.181841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099934, 34.988548, 29.126436>,  <33.969265, 35.187096, 29.093193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099934, 34.988548, 29.126436>,  <34.317715, 34.657639, 29.181841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099934, 34.988548, 29.126436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480573, -0.172310, 0.859860,
		0.687476, 0.534715, 0.491381,
		-0.544450, 0.827278, -0.138511,
		33.936600, 35.236732, 29.084883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425644, 34.918831, 29.852274>,  <34.317715, 34.657639, 29.181841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425644, 34.918831, 29.852274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121109, 35.135883, 29.710339>,  <33.938389, 35.266117, 29.625177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121109, 35.135883, 29.710339>,  <34.425644, 34.918831, 29.852274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121109, 35.135883, 29.710339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441791, -0.033621, 0.896488,
		0.474534, 0.839296, 0.265327,
		-0.761340, 0.542633, -0.354840,
		33.892708, 35.298672, 29.603888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349884, 35.636539, 30.285299>,  <34.425644, 34.918831, 29.852274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349884, 35.636539, 30.285299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987453, 35.593937, 30.121500>,  <33.769997, 35.568375, 30.023220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987453, 35.593937, 30.121500>,  <34.349884, 35.636539, 30.285299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987453, 35.593937, 30.121500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421761, 0.149739, 0.894257,
		-0.033923, 0.982973, -0.180593,
		-0.906072, -0.106503, -0.409500,
		33.715633, 35.561985, 29.998650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857315, 36.185097, 30.642830>,  <34.349884, 35.636539, 30.285299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857315, 36.185097, 30.642830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616844, 35.918308, 30.466764>,  <33.472561, 35.758236, 30.361126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616844, 35.918308, 30.466764>,  <33.857315, 36.185097, 30.642830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616844, 35.918308, 30.466764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433762, -0.190248, 0.880714,
		-0.671147, 0.720390, -0.174933,
		-0.601176, -0.666967, -0.440162,
		33.436493, 35.718220, 30.334717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185680, 36.343071, 30.747166>,  <33.857315, 36.185097, 30.642830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185680, 36.343071, 30.747166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183422, 35.950985, 30.668016>,  <33.182068, 35.715733, 30.620527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183422, 35.950985, 30.668016>,  <33.185680, 36.343071, 30.747166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183422, 35.950985, 30.668016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343015, -0.183972, 0.921138,
		-0.939313, 0.073072, -0.335189,
		-0.005644, -0.980212, -0.197872,
		33.181728, 35.656921, 30.608654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605648, 36.128204, 31.066614>,  <33.185680, 36.343071, 30.747166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605648, 36.128204, 31.066614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831223, 35.799572, 31.033195>,  <32.966568, 35.602394, 31.013144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831223, 35.799572, 31.033195>,  <32.605648, 36.128204, 31.066614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831223, 35.799572, 31.033195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345570, -0.326662, 0.879701,
		-0.750036, -0.467226, -0.468130,
		0.563940, -0.821579, -0.083549,
		33.000404, 35.553097, 31.008131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196217, 35.619495, 31.249178>,  <32.605648, 36.128204, 31.066614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196217, 35.619495, 31.249178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563656, 35.465942, 31.286734>,  <32.784119, 35.373810, 31.309267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563656, 35.465942, 31.286734>,  <32.196217, 35.619495, 31.249178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563656, 35.465942, 31.286734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271749, -0.441072, 0.855341,
		-0.286940, -0.811226, -0.509487,
		0.918596, -0.383884, 0.093889,
		32.839233, 35.350777, 31.314899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022392, 34.928112, 31.291971>,  <32.196217, 35.619495, 31.249178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022392, 34.928112, 31.291971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390316, 34.943890, 31.448118>,  <32.611073, 34.953354, 31.541807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390316, 34.943890, 31.448118>,  <32.022392, 34.928112, 31.291971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390316, 34.943890, 31.448118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316902, -0.511941, 0.798430,
		0.231339, -0.858115, -0.458390,
		0.919813, 0.039443, 0.390370,
		32.666260, 34.955723, 31.565229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262051, 34.187088, 31.559042>,  <32.022392, 34.928112, 31.291971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262051, 34.187088, 31.559042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485924, 34.457317, 31.751020>,  <32.620247, 34.619457, 31.866207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485924, 34.457317, 31.751020>,  <32.262051, 34.187088, 31.559042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485924, 34.457317, 31.751020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387099, -0.298956, 0.872227,
		0.732740, -0.673958, 0.094195,
		0.559684, 0.675578, 0.479946,
		32.653828, 34.659992, 31.895004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599586, 33.747131, 32.172131>,  <32.262051, 34.187088, 31.559042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599586, 33.747131, 32.172131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629269, 34.138065, 32.251431>,  <32.647079, 34.372627, 32.299011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629269, 34.138065, 32.251431>,  <32.599586, 33.747131, 32.172131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629269, 34.138065, 32.251431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230758, -0.176573, 0.956856,
		0.970177, -0.116756, 0.212425,
		0.074210, 0.977338, 0.198249,
		32.651531, 34.431267, 32.310905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971020, 33.723621, 32.773113>,  <32.599586, 33.747131, 32.172131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971020, 33.723621, 32.773113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816658, 34.092396, 32.759739>,  <32.724041, 34.313660, 32.751713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816658, 34.092396, 32.759739>,  <32.971020, 33.723621, 32.773113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816658, 34.092396, 32.759739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202722, -0.049386, 0.977990,
		0.899990, 0.384188, 0.205955,
		-0.385903, 0.921933, -0.033436,
		32.700886, 34.368977, 32.749706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224007, 34.017025, 33.373650>,  <32.971020, 33.723621, 32.773113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224007, 34.017025, 33.373650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896820, 34.229271, 33.284760>,  <32.700508, 34.356617, 33.231426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896820, 34.229271, 33.284760>,  <33.224007, 34.017025, 33.373650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896820, 34.229271, 33.284760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376615, -0.201929, 0.904094,
		0.434850, 0.823210, 0.365007,
		-0.817965, 0.530613, -0.222225,
		32.651432, 34.388454, 33.218094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898102, 34.324230, 34.009808>,  <33.224007, 34.017025, 33.373650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898102, 34.324230, 34.009808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593033, 34.373928, 33.755913>,  <32.409992, 34.403748, 33.603577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593033, 34.373928, 33.755913>,  <32.898102, 34.324230, 34.009808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593033, 34.373928, 33.755913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646708, -0.161305, 0.745486,
		-0.009761, 0.979052, 0.203375,
		-0.762675, 0.124248, -0.634735,
		32.364231, 34.411201, 33.565491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490780, 34.935146, 34.257664>,  <32.898102, 34.324230, 34.009808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490780, 34.935146, 34.257664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263866, 34.694008, 34.033249>,  <32.127720, 34.549324, 33.898602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263866, 34.694008, 34.033249>,  <32.490780, 34.935146, 34.257664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263866, 34.694008, 34.033249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610371, -0.149551, 0.777870,
		-0.552842, 0.783713, -0.283124,
		-0.567285, -0.602850, -0.561034,
		32.093681, 34.513153, 33.864937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799467, 35.162262, 34.241482>,  <32.490780, 34.935146, 34.257664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799467, 35.162262, 34.241482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757383, 34.774273, 34.153767>,  <31.732134, 34.541481, 34.101139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757383, 34.774273, 34.153767>,  <31.799467, 35.162262, 34.241482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757383, 34.774273, 34.153767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616674, -0.109356, 0.779586,
		-0.780157, 0.217247, -0.586651,
		-0.105209, -0.969972, -0.219286,
		31.725821, 34.483280, 34.087982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131161, 35.078545, 34.316563>,  <31.799467, 35.162262, 34.241482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131161, 35.078545, 34.316563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282326, 34.708672, 34.335121>,  <31.373024, 34.486748, 34.346256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282326, 34.708672, 34.335121>,  <31.131161, 35.078545, 34.316563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282326, 34.708672, 34.335121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677909, -0.242229, 0.694093,
		-0.630574, -0.293759, -0.718388,
		0.377910, -0.924679, 0.046399,
		31.395699, 34.431267, 34.349041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538197, 34.592339, 34.171852>,  <31.131161, 35.078545, 34.316563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538197, 34.592339, 34.171852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818577, 34.425461, 34.403236>,  <30.986805, 34.325336, 34.542068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818577, 34.425461, 34.403236>,  <30.538197, 34.592339, 34.171852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818577, 34.425461, 34.403236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685777, -0.171461, 0.707327,
		-0.195907, -0.892497, -0.406286,
		0.700950, -0.417192, 0.578463,
		31.028862, 34.300304, 34.576775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067446, 34.405010, 34.662003>,  <30.538197, 34.592339, 34.171852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067446, 34.405010, 34.662003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420082, 34.320614, 34.830894>,  <30.631664, 34.269978, 34.932228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420082, 34.320614, 34.830894>,  <30.067446, 34.405010, 34.662003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420082, 34.320614, 34.830894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458077, -0.166694, 0.873143,
		-0.113843, -0.963169, -0.243607,
		0.881592, -0.210992, 0.422229,
		30.684559, 34.257317, 34.957561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918825, 33.899120, 35.160950>,  <30.067446, 34.405010, 34.662003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918825, 33.899120, 35.160950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275951, 34.031693, 35.282951>,  <30.490227, 34.111237, 35.356152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275951, 34.031693, 35.282951>,  <29.918825, 33.899120, 35.160950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275951, 34.031693, 35.282951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274627, -0.136170, 0.951860,
		0.357012, -0.933600, -0.030554,
		0.892817, 0.331435, 0.305006,
		30.543797, 34.131123, 35.374454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195681, 33.523724, 35.625896>,  <29.918825, 33.899120, 35.160950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195681, 33.523724, 35.625896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362684, 33.882236, 35.685703>,  <30.462887, 34.097343, 35.721588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362684, 33.882236, 35.685703>,  <30.195681, 33.523724, 35.625896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362684, 33.882236, 35.685703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234031, -0.052933, 0.970787,
		0.878018, -0.440305, 0.187659,
		0.417510, 0.896286, 0.149521,
		30.487938, 34.151123, 35.730560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520369, 33.371616, 36.248852>,  <30.195681, 33.523724, 35.625896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520369, 33.371616, 36.248852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518749, 33.770802, 36.223366>,  <30.517776, 34.010311, 36.208076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518749, 33.770802, 36.223366>,  <30.520369, 33.371616, 36.248852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518749, 33.770802, 36.223366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096098, 0.063028, 0.993375,
		0.995364, 0.010146, 0.095646,
		-0.004051, 0.997960, -0.063711,
		30.517534, 34.070190, 36.204254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096655, 33.642796, 36.628536>,  <30.520369, 33.371616, 36.248852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096655, 33.642796, 36.628536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773348, 33.878319, 36.627090>,  <30.579363, 34.019630, 36.626225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773348, 33.878319, 36.627090>,  <31.096655, 33.642796, 36.628536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773348, 33.878319, 36.627090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040335, -0.049248, 0.997972,
		0.587433, 0.806773, 0.063555,
		-0.808267, 0.588805, -0.003611,
		30.530869, 34.054962, 36.626007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278767, 32.993729, 36.327377>,  <31.096655, 33.642796, 36.628536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278767, 32.993729, 36.327377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619743, 32.917187, 36.132759>,  <31.824329, 32.871262, 36.015987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619743, 32.917187, 36.132759>,  <31.278767, 32.993729, 36.327377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619743, 32.917187, 36.132759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280756, 0.952590, 0.117254,
		0.441041, -0.236553, 0.865751,
		0.852443, -0.191351, -0.486546,
		31.875477, 32.859783, 35.986797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919138, 33.249924, 36.750397>,  <31.278767, 32.993729, 36.327377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919138, 33.249924, 36.750397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047894, 33.207664, 36.374050>,  <32.125145, 33.182308, 36.148243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047894, 33.207664, 36.374050>,  <31.919138, 33.249924, 36.750397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047894, 33.207664, 36.374050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321694, 0.946836, 0.003743,
		0.890450, -0.303875, 0.338761,
		0.321888, -0.105645, -0.940865,
		32.144459, 33.175972, 36.091789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488762, 33.577084, 36.668930>,  <31.919138, 33.249924, 36.750397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488762, 33.577084, 36.668930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418934, 33.519958, 36.279236>,  <32.377037, 33.485683, 36.045422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418934, 33.519958, 36.279236>,  <32.488762, 33.577084, 36.668930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418934, 33.519958, 36.279236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529682, 0.820448, -0.215181,
		0.830039, -0.553596, -0.067575,
		-0.174565, -0.142815, -0.974233,
		32.366566, 33.477116, 35.986965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157429, 33.547867, 36.399918>,  <32.488762, 33.577084, 36.668930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157429, 33.547867, 36.399918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872959, 33.674305, 36.148739>,  <32.702278, 33.750168, 35.998032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872959, 33.674305, 36.148739>,  <33.157429, 33.547867, 36.399918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872959, 33.674305, 36.148739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582896, 0.764476, -0.275334,
		0.393015, -0.561836, -0.727928,
		-0.711176, 0.316096, -0.627943,
		32.659607, 33.769135, 35.960358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467865, 33.636688, 35.754066>,  <33.157429, 33.547867, 36.399918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467865, 33.636688, 35.754066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155270, 33.884274, 35.785480>,  <32.967712, 34.032825, 35.804329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155270, 33.884274, 35.785480>,  <33.467865, 33.636688, 35.754066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155270, 33.884274, 35.785480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527295, 0.722490, -0.447178,
		-0.333529, -0.308050, -0.890990,
		-0.781485, 0.618961, 0.078538,
		32.920826, 34.069962, 35.809040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749447, 34.292419, 35.944221>,  <33.467865, 33.636688, 35.754066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749447, 34.292419, 35.944221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815643, 34.620552, 36.163189>,  <33.855362, 34.817432, 36.294571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815643, 34.620552, 36.163189>,  <33.749447, 34.292419, 35.944221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815643, 34.620552, 36.163189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986021, -0.148537, -0.075497,
		0.019379, 0.552259, -0.833447,
		0.165492, 0.820333, 0.547418,
		33.865292, 34.866653, 36.327415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309464, 34.731888, 35.640270>,  <33.749447, 34.292419, 35.944221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309464, 34.731888, 35.640270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315804, 34.844555, 36.024021>,  <34.319607, 34.912155, 36.254272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315804, 34.844555, 36.024021>,  <34.309464, 34.731888, 35.640270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315804, 34.844555, 36.024021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994158, -0.106895, 0.014962,
		0.106767, 0.953538, -0.281721,
		0.015848, 0.281672, 0.959380,
		34.320557, 34.929058, 36.311836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775574, 35.339481, 35.756832>,  <34.309464, 34.731888, 35.640270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775574, 35.339481, 35.756832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752945, 35.125454, 36.093998>,  <34.739368, 34.997036, 36.296295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752945, 35.125454, 36.093998>,  <34.775574, 35.339481, 35.756832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752945, 35.125454, 36.093998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997923, -0.056348, 0.031204,
		0.030800, 0.842927, 0.537145,
		-0.056570, -0.535069, 0.842912,
		34.735973, 34.964931, 36.346870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440739, 35.448746, 36.050060>,  <34.775574, 35.339481, 35.756832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440739, 35.448746, 36.050060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279530, 35.112427, 36.194637>,  <35.182804, 34.910637, 36.281384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279530, 35.112427, 36.194637>,  <35.440739, 35.448746, 36.050060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279530, 35.112427, 36.194637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908427, -0.319602, 0.269470,
		-0.111052, 0.436943, 0.892608,
		-0.403022, -0.840795, 0.361438,
		35.158623, 34.860188, 36.303070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000259, 35.111629, 36.523449>,  <35.440739, 35.448746, 36.050060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000259, 35.111629, 36.523449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718479, 34.853466, 36.405323>,  <35.549412, 34.698570, 36.334450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718479, 34.853466, 36.405323>,  <36.000259, 35.111629, 36.523449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718479, 34.853466, 36.405323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705240, -0.683367, -0.188803,
		-0.079951, -0.341267, 0.936560,
		-0.704446, -0.645405, -0.295311,
		35.507145, 34.659843, 36.316730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555706, 35.351398, 36.955761>,  <36.000259, 35.111629, 36.523449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555706, 35.351398, 36.955761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834362, 35.332088, 36.669441>,  <37.001556, 35.320503, 36.497650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834362, 35.332088, 36.669441>,  <36.555706, 35.351398, 36.955761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834362, 35.332088, 36.669441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341920, 0.899471, 0.272108,
		0.630703, -0.434306, 0.643111,
		0.696638, -0.048274, -0.715797,
		37.043354, 35.317608, 36.454700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152550, 35.446548, 37.336704>,  <36.555706, 35.351398, 36.955761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152550, 35.446548, 37.336704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184513, 35.528786, 36.946556>,  <37.203690, 35.578129, 36.712467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184513, 35.528786, 36.946556>,  <37.152550, 35.446548, 37.336704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184513, 35.528786, 36.946556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058828, 0.975820, 0.210510,
		0.995065, -0.074200, 0.065880,
		0.079907, 0.205596, -0.975370,
		37.208485, 35.590466, 36.653946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641048, 35.864517, 37.211235>,  <37.152550, 35.446548, 37.336704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641048, 35.864517, 37.211235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373165, 35.944321, 36.925106>,  <37.212437, 35.992203, 36.753429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373165, 35.944321, 36.925106>,  <37.641048, 35.864517, 37.211235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373165, 35.944321, 36.925106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021752, 0.968093, 0.249646,
		0.742304, 0.151631, -0.652681,
		-0.669710, 0.199511, -0.715321,
		37.172253, 36.004173, 36.710510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869499, 36.470303, 36.859188>,  <37.641048, 35.864517, 37.211235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869499, 36.470303, 36.859188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470135, 36.459408, 36.839447>,  <37.230515, 36.452869, 36.827602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470135, 36.459408, 36.839447>,  <37.869499, 36.470303, 36.859188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470135, 36.459408, 36.839447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048741, 0.856906, 0.513162,
		0.028309, 0.514752, -0.856872,
		-0.998410, -0.027238, -0.049348,
		37.170612, 36.451237, 36.824642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490009, 37.035542, 36.483593>,  <37.869499, 36.470303, 36.859188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490009, 37.035542, 36.483593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308987, 36.880486, 36.804821>,  <37.200371, 36.787453, 36.997559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308987, 36.880486, 36.804821>,  <37.490009, 37.035542, 36.483593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308987, 36.880486, 36.804821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217735, 0.825281, 0.521060,
		-0.864743, 0.410668, -0.289087,
		-0.452560, -0.387639, 0.803073,
		37.173218, 36.764194, 37.045742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950485, 37.454956, 36.769943>,  <37.490009, 37.035542, 36.483593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950485, 37.454956, 36.769943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053371, 37.215542, 37.073414>,  <37.115105, 37.071892, 37.255497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053371, 37.215542, 37.073414>,  <36.950485, 37.454956, 36.769943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053371, 37.215542, 37.073414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070322, 0.794604, 0.603041,
		-0.963792, -0.101760, 0.246476,
		0.257217, -0.598539, 0.758677,
		37.130535, 37.035980, 37.301018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449066, 37.325413, 37.415707>,  <36.950485, 37.454956, 36.769943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449066, 37.325413, 37.415707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832428, 37.319164, 37.529705>,  <37.062443, 37.315414, 37.598103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832428, 37.319164, 37.529705>,  <36.449066, 37.325413, 37.415707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832428, 37.319164, 37.529705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187727, 0.717622, 0.670654,
		-0.214996, -0.696257, 0.684838,
		0.958402, -0.015625, 0.284992,
		37.119949, 37.314476, 37.615204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468998, 37.180019, 38.144760>,  <36.449066, 37.325413, 37.415707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468998, 37.180019, 38.144760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772327, 37.393089, 37.994450>,  <36.954327, 37.520931, 37.904263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772327, 37.393089, 37.994450>,  <36.468998, 37.180019, 38.144760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772327, 37.393089, 37.994450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294245, 0.794083, 0.531839,
		0.581690, -0.292737, 0.758909,
		0.758325, 0.532670, -0.375773,
		36.999825, 37.552891, 37.881718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129147, 37.837292, 38.288445>,  <36.468998, 37.180019, 38.144760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129147, 37.837292, 38.288445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819294, 37.620419, 38.158226>,  <35.633381, 37.490295, 38.080093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819294, 37.620419, 38.158226>,  <36.129147, 37.837292, 38.288445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819294, 37.620419, 38.158226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364804, -0.037401, 0.930333,
		-0.516588, 0.839426, -0.168819,
		-0.774632, -0.542185, -0.325546,
		35.586903, 37.457764, 38.060562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683521, 38.039135, 38.770554>,  <36.129147, 37.837292, 38.288445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683521, 38.039135, 38.770554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592743, 37.691391, 38.594955>,  <35.538277, 37.482746, 38.489597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592743, 37.691391, 38.594955>,  <35.683521, 38.039135, 38.770554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592743, 37.691391, 38.594955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436781, -0.312025, 0.843719,
		-0.870470, 0.383223, -0.308905,
		-0.226947, -0.869356, -0.438993,
		35.524658, 37.430584, 38.463257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888546, 37.957069, 38.629429>,  <35.683521, 38.039135, 38.770554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888546, 37.957069, 38.629429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100384, 37.625046, 38.699326>,  <35.227486, 37.425831, 38.741264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100384, 37.625046, 38.699326>,  <34.888546, 37.957069, 38.629429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100384, 37.625046, 38.699326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521433, -0.156079, 0.838896,
		-0.669056, -0.535394, -0.515477,
		0.529595, -0.830056, 0.174746,
		35.259262, 37.376030, 38.751751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432175, 37.398628, 38.855434>,  <34.888546, 37.957069, 38.629429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432175, 37.398628, 38.855434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798546, 37.306694, 38.987041>,  <35.018368, 37.251534, 39.066006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798546, 37.306694, 38.987041>,  <34.432175, 37.398628, 38.855434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798546, 37.306694, 38.987041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385420, -0.275045, 0.880796,
		-0.111939, -0.933556, -0.340503,
		0.915927, -0.229832, 0.329023,
		35.073322, 37.237743, 39.085747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405613, 36.763588, 39.055508>,  <34.432175, 37.398628, 38.855434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405613, 36.763588, 39.055508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689674, 36.974457, 39.242172>,  <34.860111, 37.100979, 39.354172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689674, 36.974457, 39.242172>,  <34.405613, 36.763588, 39.055508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689674, 36.974457, 39.242172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399089, -0.244639, 0.883674,
		0.580011, -0.813783, 0.036657,
		0.710151, 0.527170, 0.466666,
		34.902721, 37.132607, 39.382172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598377, 36.440796, 39.625935>,  <34.405613, 36.763588, 39.055508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598377, 36.440796, 39.625935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642857, 36.832756, 39.692192>,  <34.669544, 37.067932, 39.731945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642857, 36.832756, 39.692192>,  <34.598377, 36.440796, 39.625935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642857, 36.832756, 39.692192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525025, -0.083588, 0.846972,
		0.843791, -0.181151, 0.505175,
		0.111203, 0.979897, 0.165640,
		34.676216, 37.126724, 39.741882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930058, 35.857285, 39.895382>,  <34.598377, 36.440796, 39.625935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930058, 35.857285, 39.895382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937004, 36.222637, 40.058079>,  <34.941170, 36.441849, 40.155697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937004, 36.222637, 40.058079>,  <34.930058, 35.857285, 39.895382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937004, 36.222637, 40.058079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875988, -0.182220, 0.446588,
		0.482020, -0.364054, 0.796945,
		0.017362, 0.913379, 0.406741,
		34.942211, 36.496651, 40.180099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682858, 35.813885, 39.694473>,  <34.930058, 35.857285, 39.895382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682858, 35.813885, 39.694473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948746, 35.924385, 39.972126>,  <36.108280, 35.990685, 40.138718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948746, 35.924385, 39.972126>,  <35.682858, 35.813885, 39.694473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948746, 35.924385, 39.972126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519040, -0.839039, -0.163126,
		0.537344, 0.468719, -0.701117,
		0.664724, 0.276253, 0.694137,
		36.148163, 36.007259, 40.180367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177876, 35.613945, 39.059731>,  <35.682858, 35.813885, 39.694473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177876, 35.613945, 39.059731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260361, 35.896484, 39.330593>,  <36.309853, 36.066010, 39.493111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260361, 35.896484, 39.330593>,  <36.177876, 35.613945, 39.059731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260361, 35.896484, 39.330593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975974, -0.198236, -0.090428,
		0.070364, 0.679538, -0.730258,
		0.206213, 0.706350, 0.677160,
		36.322224, 36.108391, 39.533741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773911, 36.018723, 38.872601>,  <36.177876, 35.613945, 39.059731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773911, 36.018723, 38.872601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734550, 36.010941, 39.270584>,  <36.710934, 36.006271, 39.509373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734550, 36.010941, 39.270584>,  <36.773911, 36.018723, 38.872601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734550, 36.010941, 39.270584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961193, -0.260797, 0.089965,
		0.257731, 0.965197, 0.044367,
		-0.098405, -0.019458, 0.994956,
		36.705029, 36.005104, 39.569073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223385, 36.659874, 39.226631>,  <36.773911, 36.018723, 38.872601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223385, 36.659874, 39.226631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172005, 36.319447, 39.430271>,  <37.141178, 36.115189, 39.552456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172005, 36.319447, 39.430271>,  <37.223385, 36.659874, 39.226631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172005, 36.319447, 39.430271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991073, -0.091681, 0.096794,
		-0.035703, 0.516991, 0.855246,
		-0.128451, -0.851067, 0.509102,
		37.133469, 36.064125, 39.583000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691723, 36.638256, 39.751747>,  <37.223385, 36.659874, 39.226631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691723, 36.638256, 39.751747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624863, 36.244812, 39.724682>,  <37.584747, 36.008747, 39.708443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624863, 36.244812, 39.724682>,  <37.691723, 36.638256, 39.751747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624863, 36.244812, 39.724682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983988, -0.170736, 0.051150,
		-0.061864, -0.058030, 0.996396,
		-0.167153, -0.983606, -0.067663,
		37.574718, 35.949730, 39.704384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246025, 36.638233, 39.346725>,  <37.691723, 36.638256, 39.751747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246025, 36.638233, 39.346725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524311, 36.887253, 39.490063>,  <38.691284, 37.036667, 39.576065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524311, 36.887253, 39.490063>,  <38.246025, 36.638233, 39.346725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524311, 36.887253, 39.490063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449030, 0.012455, -0.893430,
		-0.560670, 0.782479, -0.270879,
		0.695716, 0.622553, 0.358340,
		38.733025, 37.074020, 39.597565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921268, 36.237320, 39.413181>,  <38.246025, 36.638233, 39.346725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921268, 36.237320, 39.413181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655922, 35.944176, 39.352688>,  <38.496716, 35.768291, 39.316391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655922, 35.944176, 39.352688>,  <38.921268, 36.237320, 39.413181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655922, 35.944176, 39.352688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266109, -0.042144, -0.963021,
		0.699383, -0.679076, 0.222976,
		-0.663362, -0.732857, -0.151233,
		38.456913, 35.724319, 39.307320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235363, 35.550289, 39.076874>,  <38.921268, 36.237320, 39.413181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235363, 35.550289, 39.076874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860588, 35.669041, 39.003101>,  <38.635723, 35.740292, 38.958839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860588, 35.669041, 39.003101>,  <39.235363, 35.550289, 39.076874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860588, 35.669041, 39.003101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230387, 0.127820, -0.964668,
		-0.262813, -0.946323, -0.188156,
		-0.936937, 0.296876, -0.184428,
		38.579506, 35.758102, 38.947773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105473, 35.039600, 38.656094>,  <39.235363, 35.550289, 39.076874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105473, 35.039600, 38.656094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891266, 35.367416, 38.574532>,  <38.762741, 35.564106, 38.525593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891266, 35.367416, 38.574532>,  <39.105473, 35.039600, 38.656094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891266, 35.367416, 38.574532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223676, -0.095186, -0.970005,
		-0.814365, -0.565063, -0.132337,
		-0.535517, 0.819538, -0.203907,
		38.730610, 35.613277, 38.513359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539532, 34.964676, 38.206730>,  <39.105473, 35.039600, 38.656094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539532, 34.964676, 38.206730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690189, 35.334373, 38.181721>,  <38.780582, 35.556194, 38.166718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690189, 35.334373, 38.181721>,  <38.539532, 34.964676, 38.206730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690189, 35.334373, 38.181721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360816, -0.208527, -0.909026,
		-0.853200, 0.319823, -0.412023,
		0.376645, 0.924246, -0.062518,
		38.803185, 35.611649, 38.162964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363873, 35.356522, 37.643559>,  <38.539532, 34.964676, 38.206730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363873, 35.356522, 37.643559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548618, 35.460865, 37.304470>,  <38.659466, 35.523472, 37.101017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548618, 35.460865, 37.304470>,  <38.363873, 35.356522, 37.643559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548618, 35.460865, 37.304470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396400, -0.915716, -0.065814,
		-0.793442, -0.305640, -0.526340,
		0.461863, 0.260861, -0.847723,
		38.687176, 35.539124, 37.050152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136284, 34.910057, 37.107979>,  <38.363873, 35.356522, 37.643559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136284, 34.910057, 37.107979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508286, 35.051556, 37.068073>,  <38.731487, 35.136456, 37.044128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508286, 35.051556, 37.068073>,  <38.136284, 34.910057, 37.107979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508286, 35.051556, 37.068073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350888, -0.935314, -0.045440,
		-0.109388, 0.007252, -0.993973,
		0.930006, 0.353744, -0.099768,
		38.787289, 35.157681, 37.038143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491211, 34.656609, 36.443916>,  <38.136284, 34.910057, 37.107979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491211, 34.656609, 36.443916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775311, 34.757797, 36.706684>,  <38.945770, 34.818512, 36.864346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775311, 34.757797, 36.706684>,  <38.491211, 34.656609, 36.443916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775311, 34.757797, 36.706684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511003, -0.827122, -0.233976,
		0.484165, 0.501871, -0.716735,
		0.710253, 0.252971, 0.656922,
		38.988388, 34.833687, 36.903759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254841, 34.650196, 36.222057>,  <38.491211, 34.656609, 36.443916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254841, 34.650196, 36.222057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245144, 34.572437, 36.614307>,  <39.239326, 34.525780, 36.849655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245144, 34.572437, 36.614307>,  <39.254841, 34.650196, 36.222057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245144, 34.572437, 36.614307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714765, -0.689175, -0.118949,
		0.698945, 0.698031, 0.155659,
		-0.024246, -0.194398, 0.980623,
		39.237869, 34.514118, 36.908493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863888, 34.756611, 36.437092>,  <39.254841, 34.650196, 36.222057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863888, 34.756611, 36.437092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707214, 34.503925, 36.704681>,  <39.613209, 34.352314, 36.865234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707214, 34.503925, 36.704681>,  <39.863888, 34.756611, 36.437092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707214, 34.503925, 36.704681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789690, -0.603937, -0.107934,
		0.472202, 0.486007, 0.735406,
		-0.391682, -0.631710, 0.668975,
		39.589710, 34.314411, 36.905373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372143, 34.636589, 36.890945>,  <39.863888, 34.756611, 36.437092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372143, 34.636589, 36.890945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103981, 34.345818, 36.831429>,  <39.943085, 34.171356, 36.795719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103981, 34.345818, 36.831429>,  <40.372143, 34.636589, 36.890945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103981, 34.345818, 36.831429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735568, -0.624755, -0.261956,
		0.097463, -0.285063, 0.953541,
		-0.670404, -0.726925, -0.148793,
		39.902859, 34.127739, 36.786789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714539, 33.955620, 37.172764>,  <40.372143, 34.636589, 36.890945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714539, 33.955620, 37.172764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453583, 33.928692, 36.870808>,  <40.297009, 33.912537, 36.689632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453583, 33.928692, 36.870808>,  <40.714539, 33.955620, 37.172764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453583, 33.928692, 36.870808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699152, -0.437915, -0.565170,
		-0.292532, -0.896493, 0.332755,
		-0.652389, -0.067316, -0.754889,
		40.257866, 33.908497, 36.644341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601147, 33.188271, 37.021027>,  <40.714539, 33.955620, 37.172764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601147, 33.188271, 37.021027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540848, 33.420582, 36.701035>,  <40.504669, 33.559967, 36.509037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540848, 33.420582, 36.701035>,  <40.601147, 33.188271, 37.021027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540848, 33.420582, 36.701035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605508, -0.585425, -0.539109,
		-0.781432, -0.565663, -0.263417,
		-0.150744, 0.580778, -0.799983,
		40.495625, 33.594814, 36.461040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286350, 32.940861, 36.397202>,  <40.601147, 33.188271, 37.021027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286350, 32.940861, 36.397202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578651, 33.209072, 36.345985>,  <40.754032, 33.369999, 36.315254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578651, 33.209072, 36.345985>,  <40.286350, 32.940861, 36.397202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578651, 33.209072, 36.345985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591236, -0.715432, -0.372287,
		-0.341231, 0.196349, -0.919244,
		0.730754, 0.670526, -0.128039,
		40.797878, 33.410229, 36.307575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604710, 32.931084, 35.654945>,  <40.286350, 32.940861, 36.397202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604710, 32.931084, 35.654945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874920, 33.073166, 35.913399>,  <41.037045, 33.158413, 36.068470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874920, 33.073166, 35.913399>,  <40.604710, 32.931084, 35.654945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874920, 33.073166, 35.913399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641656, -0.714902, -0.277836,
		0.363237, 0.602284, -0.710854,
		0.675527, 0.355203, 0.646138,
		41.077579, 33.179726, 36.107239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358814, 33.017883, 35.353291>,  <40.604710, 32.931084, 35.654945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358814, 33.017883, 35.353291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336018, 32.917423, 35.739799>,  <41.322342, 32.857147, 35.971703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336018, 32.917423, 35.739799>,  <41.358814, 33.017883, 35.353291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336018, 32.917423, 35.739799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387035, -0.897715, -0.210502,
		0.920302, 0.361983, 0.148363,
		-0.056990, -0.251147, 0.966270,
		41.318920, 32.842079, 36.029682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974258, 32.700630, 35.733612>,  <41.358814, 33.017883, 35.353291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974258, 32.700630, 35.733612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619514, 32.554104, 35.846241>,  <41.406666, 32.466187, 35.913818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619514, 32.554104, 35.846241>,  <41.974258, 32.700630, 35.733612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619514, 32.554104, 35.846241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248805, -0.892160, -0.377023,
		0.389321, -0.264310, 0.882366,
		-0.886863, -0.366320, 0.281576,
		41.353455, 32.444206, 35.930714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107716, 31.959661, 35.806293>,  <41.974258, 32.700630, 35.733612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107716, 31.959661, 35.806293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707802, 31.966879, 35.802139>,  <41.467854, 31.971209, 35.799648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707802, 31.966879, 35.802139>,  <42.107716, 31.959661, 35.806293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707802, 31.966879, 35.802139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010604, -0.870699, -0.491702,
		-0.017913, -0.491485, 0.870702,
		-0.999783, 0.018041, -0.010385,
		41.407867, 31.972292, 35.799023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896034, 31.401859, 36.085140>,  <42.107716, 31.959661, 35.806293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896034, 31.401859, 36.085140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589447, 31.514702, 35.854340>,  <41.405495, 31.582407, 35.715858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589447, 31.514702, 35.854340>,  <41.896034, 31.401859, 36.085140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589447, 31.514702, 35.854340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037087, -0.877436, -0.478259,
		-0.641205, -0.387972, 0.662068,
		-0.766473, 0.282108, -0.577005,
		41.359505, 31.599335, 35.681236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092598, 30.933039, 35.527855>,  <41.896034, 31.401859, 36.085140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092598, 30.933039, 35.527855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446968, 30.773188, 35.433678>,  <42.659592, 30.677277, 35.377171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446968, 30.773188, 35.433678>,  <42.092598, 30.933039, 35.527855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446968, 30.773188, 35.433678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446251, -0.872789, -0.197735,
		-0.126468, 0.280244, -0.951562,
		0.885927, -0.399628, -0.235438,
		42.712746, 30.653299, 35.363045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071545, 30.772364, 34.772408>,  <42.092598, 30.933039, 35.527855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071545, 30.772364, 34.772408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292107, 30.534924, 35.006874>,  <42.424442, 30.392460, 35.147556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292107, 30.534924, 35.006874>,  <42.071545, 30.772364, 34.772408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292107, 30.534924, 35.006874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661882, -0.738988, -0.125734,
		0.507808, -0.318646, -0.800372,
		0.551400, -0.593601, 0.586170,
		42.457527, 30.356844, 35.182724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309250, 31.446428, 35.007435>,  <42.071545, 30.772364, 34.772408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309250, 31.446428, 35.007435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481926, 31.748394, 34.809952>,  <42.585533, 31.929573, 34.691463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481926, 31.748394, 34.809952>,  <42.309250, 31.446428, 35.007435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481926, 31.748394, 34.809952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694827, -0.627327, -0.351676,
		-0.575201, -0.191226, -0.795347,
		0.431693, 0.754913, -0.493708,
		42.611435, 31.974869, 34.661839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529396, 31.303745, 34.305843>,  <42.309250, 31.446428, 35.007435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529396, 31.303745, 34.305843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761761, 31.618132, 34.390511>,  <42.901180, 31.806765, 34.441311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761761, 31.618132, 34.390511>,  <42.529396, 31.303745, 34.305843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761761, 31.618132, 34.390511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812702, -0.545541, -0.204697,
		-0.045412, 0.290933, -0.955665,
		0.580907, 0.785967, 0.211668,
		42.936031, 31.853922, 34.454010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916973, 31.462225, 33.743366>,  <42.529396, 31.303745, 34.305843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916973, 31.462225, 33.743366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095650, 31.568750, 34.085018>,  <43.202854, 31.632666, 34.290009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095650, 31.568750, 34.085018>,  <42.916973, 31.462225, 33.743366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095650, 31.568750, 34.085018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820938, -0.501559, -0.272945,
		0.355710, 0.823113, -0.442669,
		0.446689, 0.266314, 0.854134,
		43.229656, 31.648645, 34.341259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357735, 31.998278, 33.924992>,  <42.916973, 31.462225, 33.743366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357735, 31.998278, 33.924992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621288, 32.115742, 33.647968>,  <43.779423, 32.186218, 33.481754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621288, 32.115742, 33.647968>,  <43.357735, 31.998278, 33.924992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621288, 32.115742, 33.647968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429757, 0.608673, 0.666953,
		0.617402, -0.737074, 0.274839,
		0.658881, 0.293664, -0.692558,
		43.818954, 32.203838, 33.440201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941479, 31.745625, 34.190170>,  <43.357735, 31.998278, 33.924992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941479, 31.745625, 34.190170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011837, 32.049980, 33.940338>,  <44.054050, 32.232594, 33.790436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011837, 32.049980, 33.940338>,  <43.941479, 31.745625, 34.190170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011837, 32.049980, 33.940338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302018, 0.562168, 0.769904,
		0.936935, -0.324056, -0.130922,
		0.175892, 0.760891, -0.624585,
		44.064606, 32.278248, 33.752964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470406, 32.130188, 34.470917>,  <43.941479, 31.745625, 34.190170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470406, 32.130188, 34.470917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331223, 32.403252, 34.213886>,  <44.247711, 32.567089, 34.059669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331223, 32.403252, 34.213886>,  <44.470406, 32.130188, 34.470917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331223, 32.403252, 34.213886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180534, 0.721366, 0.668610,
		0.919964, 0.116640, -0.374247,
		-0.347956, 0.682661, -0.642573,
		44.226837, 32.608051, 34.021114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548122, 32.647827, 34.863010>,  <44.470406, 32.130188, 34.470917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548122, 32.647827, 34.863010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489998, 32.858780, 34.528168>,  <44.455124, 32.985352, 34.327263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489998, 32.858780, 34.528168>,  <44.548122, 32.647827, 34.863010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489998, 32.858780, 34.528168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163624, 0.847247, 0.505370,
		0.975763, -0.063537, -0.209404,
		-0.145307, 0.527385, -0.837109,
		44.446407, 33.016994, 34.277035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910370, 32.548794, 35.567505>,  <44.548122, 32.647827, 34.863010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910370, 32.548794, 35.567505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537724, 32.405567, 35.592453>,  <44.314137, 32.319633, 35.607422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537724, 32.405567, 35.592453>,  <44.910370, 32.548794, 35.567505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537724, 32.405567, 35.592453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300016, 0.854463, 0.424126,
		-0.205155, 0.376410, -0.903453,
		-0.931612, -0.358062, 0.062368,
		44.258240, 32.298149, 35.611164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.443813, 32.765533, 35.116943>,  <44.910370, 32.548794, 35.567505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.443813, 32.765533, 35.116943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417156, 33.131813, 34.958420>,  <45.401161, 33.351582, 34.863308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417156, 33.131813, 34.958420>,  <45.443813, 32.765533, 35.116943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417156, 33.131813, 34.958420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712480, 0.321735, 0.623586,
		0.698521, -0.240801, -0.673857,
		-0.066643, 0.915698, -0.396304,
		45.397163, 33.406521, 34.839527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795765, 33.031670, 34.506237>,  <45.443813, 32.765533, 35.116943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795765, 33.031670, 34.506237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031757, 33.071987, 34.185799>,  <46.173355, 33.096180, 33.993534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031757, 33.071987, 34.185799>,  <45.795765, 33.031670, 34.506237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.031757, 33.071987, 34.185799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124555, 0.991662, 0.033043,
		0.797750, 0.080286, 0.597619,
		0.589983, 0.100796, -0.801099,
		46.208752, 33.102226, 33.945469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291416, 33.380421, 34.871395>,  <45.795765, 33.031670, 34.506237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291416, 33.380421, 34.871395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204514, 33.237953, 35.234921>,  <46.152370, 33.152473, 35.453037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204514, 33.237953, 35.234921>,  <46.291416, 33.380421, 34.871395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204514, 33.237953, 35.234921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120210, 0.933729, 0.337193,
		-0.968684, -0.035991, -0.245674,
		-0.217257, -0.356166, 0.908815,
		46.139336, 33.131104, 35.507565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.494297, 34.044605, 35.411633>,  <46.291416, 33.380421, 34.871395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.494297, 34.044605, 35.411633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684799, 34.197487, 35.094875>,  <46.799099, 34.289215, 34.904819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684799, 34.197487, 35.094875>,  <46.494297, 34.044605, 35.411633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.684799, 34.197487, 35.094875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228818, 0.815693, 0.531307,
		0.849014, -0.434237, 0.301021,
		0.476254, 0.382208, -0.791896,
		46.827675, 34.312149, 34.857307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.337624, 34.227081, 35.377823>,  <46.494297, 34.044605, 35.411633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.337624, 34.227081, 35.377823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.083660, 34.472946, 35.190594>,  <46.931282, 34.620464, 35.078259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.083660, 34.472946, 35.190594>,  <47.337624, 34.227081, 35.377823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.083660, 34.472946, 35.190594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440990, 0.785774, 0.433691,
		0.634368, 0.068938, -0.769950,
		-0.634905, 0.614660, -0.468069,
		46.893188, 34.657345, 35.050175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.804592, 34.676662, 34.924473>,  <47.337624, 34.227081, 35.377823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.804592, 34.676662, 34.924473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451855, 34.782635, 35.080509>,  <47.240211, 34.846218, 35.174129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451855, 34.782635, 35.080509>,  <47.804592, 34.676662, 34.924473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.451855, 34.782635, 35.080509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445114, 0.740766, 0.503131,
		-0.155666, 0.617314, -0.771163,
		-0.881840, 0.264935, 0.390086,
		47.187302, 34.862114, 35.197536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.875244, 35.415615, 34.908363>,  <47.804592, 34.676662, 34.924473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.875244, 35.415615, 34.908363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622486, 35.296185, 35.194458>,  <47.470833, 35.224525, 35.366116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622486, 35.296185, 35.194458>,  <47.875244, 35.415615, 34.908363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.622486, 35.296185, 35.194458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509759, 0.535034, 0.673709,
		-0.583829, 0.790311, -0.185884,
		-0.631894, -0.298574, 0.715237,
		47.432919, 35.206612, 35.409031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.992844, 41.447903, 28.241457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.360878, 41.604237, 28.251949>,  <32.581699, 41.698036, 28.258245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.360878, 41.604237, 28.251949>,  <31.992844, 41.447903, 28.241457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360878, 41.604237, 28.251949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067514, -0.224193, 0.972203,
		0.385851, -0.892741, -0.232664,
		0.920087, 0.390834, 0.026233,
		32.636906, 41.721485, 28.259819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428947, 41.019127, 28.576796>,  <31.992844, 41.447903, 28.241457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428947, 41.019127, 28.576796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.543900, 41.397770, 28.635227>,  <32.612869, 41.624958, 28.670286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.543900, 41.397770, 28.635227>,  <32.428947, 41.019127, 28.576796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543900, 41.397770, 28.635227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148355, -0.106682, 0.983163,
		0.946258, -0.304214, 0.109776,
		0.287381, 0.946611, 0.146080,
		32.630116, 41.681755, 28.679050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813683, 41.040848, 29.149055>,  <32.428947, 41.019127, 28.576796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813683, 41.040848, 29.149055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.674839, 41.414299, 29.113621>,  <32.591534, 41.638371, 29.092360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.674839, 41.414299, 29.113621>,  <32.813683, 41.040848, 29.149055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674839, 41.414299, 29.113621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159222, 0.034422, 0.986642,
		0.924209, 0.356579, 0.136706,
		-0.347110, 0.933631, -0.088589,
		32.570705, 41.694389, 29.087044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204247, 41.365818, 29.750704>,  <32.813683, 41.040848, 29.149055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204247, 41.365818, 29.750704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.884296, 41.570599, 29.625418>,  <32.692326, 41.693466, 29.550247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.884296, 41.570599, 29.625418>,  <33.204247, 41.365818, 29.750704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884296, 41.570599, 29.625418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283332, 0.137951, 0.949048,
		0.529077, 0.847864, 0.034709,
		-0.799876, 0.511953, -0.313214,
		32.644333, 41.724186, 29.531454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206707, 41.949699, 30.128456>,  <33.204247, 41.365818, 29.750704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206707, 41.949699, 30.128456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.836941, 41.877846, 29.993887>,  <32.615082, 41.834732, 29.913145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.836941, 41.877846, 29.993887>,  <33.206707, 41.949699, 30.128456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836941, 41.877846, 29.993887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323501, -0.097843, 0.941156,
		-0.201983, 0.978855, 0.032335,
		-0.924419, -0.179637, -0.336423,
		32.559616, 41.823956, 29.892960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803295, 42.220337, 30.686314>,  <33.206707, 41.949699, 30.128456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803295, 42.220337, 30.686314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.557144, 41.996956, 30.463806>,  <32.409454, 41.862926, 30.330301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.557144, 41.996956, 30.463806>,  <32.803295, 42.220337, 30.686314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557144, 41.996956, 30.463806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499247, -0.269970, 0.823328,
		-0.609969, 0.784374, -0.112674,
		-0.615379, -0.558456, -0.556269,
		32.372532, 41.829418, 30.296925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202862, 42.427376, 30.942106>,  <32.803295, 42.220337, 30.686314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202862, 42.427376, 30.942106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.140015, 42.070057, 30.773659>,  <32.102306, 41.855667, 30.672590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.140015, 42.070057, 30.773659>,  <32.202862, 42.427376, 30.942106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140015, 42.070057, 30.773659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516314, -0.289195, 0.806093,
		-0.841863, 0.344081, -0.415782,
		-0.157119, -0.893294, -0.421117,
		32.092880, 41.802067, 30.647324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464617, 42.330135, 30.951155>,  <32.202862, 42.427376, 30.942106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464617, 42.330135, 30.951155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.623278, 41.965984, 30.904018>,  <31.718473, 41.747494, 30.875736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.623278, 41.965984, 30.904018>,  <31.464617, 42.330135, 30.951155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623278, 41.965984, 30.904018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648922, -0.368873, 0.665457,
		-0.649283, -0.187486, -0.737076,
		0.396651, -0.910375, -0.117839,
		31.742273, 41.692871, 30.868668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865480, 41.796982, 30.791901>,  <31.464617, 42.330135, 30.951155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865480, 41.796982, 30.791901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.156328, 41.550198, 30.912340>,  <31.330837, 41.402126, 30.984604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.156328, 41.550198, 30.912340>,  <30.865480, 41.796982, 30.791901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156328, 41.550198, 30.912340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629431, -0.424021, 0.651171,
		-0.274073, -0.662999, -0.696646,
		0.727118, -0.616959, 0.301099,
		31.374464, 41.365108, 31.002670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586420, 41.104118, 30.883163>,  <30.865480, 41.796982, 30.791901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586420, 41.104118, 30.883163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.930767, 41.056114, 31.080954>,  <31.137375, 41.027309, 31.199627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.930767, 41.056114, 31.080954>,  <30.586420, 41.104118, 30.883163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930767, 41.056114, 31.080954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478283, -0.522497, 0.705863,
		0.173647, -0.844152, -0.507202,
		0.860867, -0.120015, 0.494474,
		31.189028, 41.020111, 31.229296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702265, 40.401272, 31.014887>,  <30.586420, 41.104118, 30.883163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702265, 40.401272, 31.014887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.908949, 40.589622, 31.300903>,  <31.032959, 40.702633, 31.472513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.908949, 40.589622, 31.300903>,  <30.702265, 40.401272, 31.014887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908949, 40.589622, 31.300903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489774, -0.522452, 0.697973,
		0.702235, -0.710858, -0.039332,
		0.516708, 0.470877, 0.715043,
		31.063961, 40.730885, 31.515417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017019, 39.897820, 31.417095>,  <30.702265, 40.401272, 31.014887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017019, 39.897820, 31.417095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.980429, 40.222889, 31.647291>,  <30.958473, 40.417931, 31.785408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.980429, 40.222889, 31.647291>,  <31.017019, 39.897820, 31.417095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980429, 40.222889, 31.647291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324793, -0.570659, 0.754226,
		0.941351, -0.117920, 0.316155,
		-0.091479, 0.812676, 0.575490,
		30.952986, 40.466690, 31.819939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234745, 39.622223, 32.070446>,  <31.017019, 39.897820, 31.417095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234745, 39.622223, 32.070446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.074152, 39.966530, 32.195595>,  <30.977797, 40.173115, 32.270683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.074152, 39.966530, 32.195595>,  <31.234745, 39.622223, 32.070446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074152, 39.966530, 32.195595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343685, -0.458245, 0.819690,
		0.848937, 0.221559, 0.479810,
		-0.401480, 0.860769, 0.312874,
		30.953709, 40.224762, 32.289455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504534, 39.692410, 32.708538>,  <31.234745, 39.622223, 32.070446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504534, 39.692410, 32.708538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.194536, 39.944939, 32.719952>,  <31.008537, 40.096455, 32.726799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.194536, 39.944939, 32.719952>,  <31.504534, 39.692410, 32.708538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194536, 39.944939, 32.719952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135872, -0.210545, 0.968096,
		0.617187, 0.746393, 0.248951,
		-0.774996, 0.631322, 0.028531,
		30.962038, 40.134335, 32.728512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511805, 40.135014, 33.312424>,  <31.504534, 39.692410, 32.708538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511805, 40.135014, 33.312424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126360, 40.127640, 33.205757>,  <30.895092, 40.123215, 33.141758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126360, 40.127640, 33.205757>,  <31.511805, 40.135014, 33.312424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126360, 40.127640, 33.205757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259144, -0.180160, 0.948887,
		-0.065535, 0.983465, 0.168828,
		-0.963613, -0.018435, -0.266665,
		30.837276, 40.122108, 33.125759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227318, 40.530914, 33.774086>,  <31.511805, 40.135014, 33.312424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227318, 40.530914, 33.774086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.932144, 40.304909, 33.626457>,  <30.755041, 40.169308, 33.537880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.932144, 40.304909, 33.626457>,  <31.227318, 40.530914, 33.774086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932144, 40.304909, 33.626457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189332, -0.351597, 0.916806,
		-0.647773, 0.746419, 0.152480,
		-0.737932, -0.565012, -0.369076,
		30.710764, 40.135406, 33.515736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766397, 40.385593, 34.297001>,  <31.227318, 40.530914, 33.774086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766397, 40.385593, 34.297001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.636944, 40.093727, 34.056053>,  <30.559271, 39.918610, 33.911484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.636944, 40.093727, 34.056053>,  <30.766397, 40.385593, 34.297001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636944, 40.093727, 34.056053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149206, -0.589314, 0.794007,
		-0.934343, 0.346847, 0.081853,
		-0.323636, -0.729662, -0.602373,
		30.539852, 39.874828, 33.875340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230061, 40.185734, 34.689453>,  <30.766397, 40.385593, 34.297001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230061, 40.185734, 34.689453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.294493, 39.891846, 34.425865>,  <30.333151, 39.715511, 34.267715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.294493, 39.891846, 34.425865>,  <30.230061, 40.185734, 34.689453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294493, 39.891846, 34.425865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351524, -0.666607, 0.657317,
		-0.922217, 0.125762, -0.365649,
		0.161079, -0.734724, -0.658965,
		30.342817, 39.671429, 34.228176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590048, 39.863823, 34.610390>,  <30.230061, 40.185734, 34.689453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590048, 39.863823, 34.610390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.897987, 39.619385, 34.536739>,  <30.082750, 39.472721, 34.492550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.897987, 39.619385, 34.536739>,  <29.590048, 39.863823, 34.610390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897987, 39.619385, 34.536739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341705, -0.638313, 0.689779,
		-0.539047, -0.468108, -0.700216,
		0.769848, -0.611091, -0.184126,
		30.128941, 39.436058, 34.481503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324636, 39.234871, 34.745613>,  <29.590048, 39.863823, 34.610390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324636, 39.234871, 34.745613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.702311, 39.109604, 34.704750>,  <29.928915, 39.034443, 34.680233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.702311, 39.109604, 34.704750>,  <29.324636, 39.234871, 34.745613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702311, 39.109604, 34.704750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181861, -0.754145, 0.631024,
		-0.274661, -0.577226, -0.769007,
		0.944186, -0.313170, -0.102160,
		29.985567, 39.015652, 34.674103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323591, 38.494823, 34.566174>,  <29.324636, 39.234871, 34.745613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323591, 38.494823, 34.566174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.668444, 38.582096, 34.749096>,  <29.875355, 38.634460, 34.858849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.668444, 38.582096, 34.749096>,  <29.323591, 38.494823, 34.566174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668444, 38.582096, 34.749096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215092, -0.659587, 0.720195,
		0.458766, -0.719265, -0.521721,
		0.862131, 0.218183, 0.457304,
		29.927082, 38.647552, 34.886288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681944, 37.846756, 34.643688>,  <29.323591, 38.494823, 34.566174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681944, 37.846756, 34.643688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.831085, 38.119888, 34.894997>,  <29.920570, 38.283768, 35.045780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.831085, 38.119888, 34.894997>,  <29.681944, 37.846756, 34.643688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831085, 38.119888, 34.894997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192840, -0.605284, 0.772298,
		0.907630, -0.409109, -0.094005,
		0.372854, 0.682833, 0.628266,
		29.942942, 38.324738, 35.083477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589579, 37.477051, 35.262115>,  <29.681944, 37.846756, 34.643688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589579, 37.477051, 35.262115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.574968, 37.091644, 35.156063>,  <29.566202, 36.860401, 35.092430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.574968, 37.091644, 35.156063>,  <29.589579, 37.477051, 35.262115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574968, 37.091644, 35.156063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455144, 0.220153, -0.862773,
		0.889668, -0.152188, 0.430499,
		-0.036528, -0.963521, -0.265130,
		29.564011, 36.802589, 35.076523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154526, 37.313282, 34.905312>,  <29.589579, 37.477051, 35.262115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154526, 37.313282, 34.905312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.942471, 37.002304, 34.769939>,  <29.815237, 36.815720, 34.688717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.942471, 37.002304, 34.769939>,  <30.154526, 37.313282, 34.905312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942471, 37.002304, 34.769939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383630, 0.136023, -0.913415,
		0.756162, -0.614069, 0.226139,
		-0.530139, -0.777443, -0.338431,
		29.783428, 36.769070, 34.668411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594683, 36.820679, 34.615276>,  <30.154526, 37.313282, 34.905312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594683, 36.820679, 34.615276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.235126, 36.772182, 34.446850>,  <30.019394, 36.743084, 34.345795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.235126, 36.772182, 34.446850>,  <30.594683, 36.820679, 34.615276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235126, 36.772182, 34.446850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386855, 0.231680, -0.892563,
		0.205770, -0.965207, -0.161351,
		-0.898889, -0.121243, -0.421067,
		29.965460, 36.735809, 34.320530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786259, 36.493137, 34.038872>,  <30.594683, 36.820679, 34.615276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786259, 36.493137, 34.038872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.406981, 36.595905, 33.964130>,  <30.179413, 36.657566, 33.919285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.406981, 36.595905, 33.964130>,  <30.786259, 36.493137, 34.038872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406981, 36.595905, 33.964130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237437, 0.182360, -0.954132,
		-0.211058, -0.949072, -0.233915,
		-0.948197, 0.256918, -0.186856,
		30.122520, 36.672981, 33.908073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601915, 36.218960, 33.471699>,  <30.786259, 36.493137, 34.038872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601915, 36.218960, 33.471699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.315630, 36.498318, 33.470871>,  <30.143860, 36.665932, 33.470375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.315630, 36.498318, 33.470871>,  <30.601915, 36.218960, 33.471699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315630, 36.498318, 33.470871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269527, 0.273481, -0.923344,
		-0.644292, -0.661405, -0.383969,
		-0.715712, 0.698392, -0.002065,
		30.100916, 36.707836, 33.470253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146183, 36.078125, 32.997139>,  <30.601915, 36.218960, 33.471699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146183, 36.078125, 32.997139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.111874, 36.473320, 33.048550>,  <30.091288, 36.710438, 33.079395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.111874, 36.473320, 33.048550>,  <30.146183, 36.078125, 32.997139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111874, 36.473320, 33.048550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211659, 0.144127, -0.966658,
		-0.973572, -0.055712, -0.221479,
		-0.085775, 0.987990, 0.128526,
		30.086142, 36.769718, 33.087109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917038, 36.122478, 32.337704>,  <30.146183, 36.078125, 32.997139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917038, 36.122478, 32.337704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.977261, 36.495644, 32.468552>,  <30.013395, 36.719543, 32.547062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.977261, 36.495644, 32.468552>,  <29.917038, 36.122478, 32.337704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977261, 36.495644, 32.468552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274337, 0.278472, -0.920431,
		-0.949775, 0.228319, -0.214006,
		0.150558, 0.932912, 0.327122,
		30.022429, 36.775517, 32.566689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667124, 36.560223, 31.748503>,  <29.917038, 36.122478, 32.337704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667124, 36.560223, 31.748503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.931973, 36.774757, 31.957857>,  <30.090881, 36.903481, 32.083469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.931973, 36.774757, 31.957857>,  <29.667124, 36.560223, 31.748503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931973, 36.774757, 31.957857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343909, 0.403052, -0.848101,
		-0.665822, 0.741544, 0.082418,
		0.662123, 0.536340, 0.523385,
		30.130610, 36.935661, 32.114872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533531, 37.223183, 31.580036>,  <29.667124, 36.560223, 31.748503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533531, 37.223183, 31.580036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.911861, 37.196598, 31.707155>,  <30.138861, 37.180645, 31.783426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.911861, 37.196598, 31.707155>,  <29.533531, 37.223183, 31.580036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911861, 37.196598, 31.707155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319679, 0.361624, -0.875804,
		-0.056713, 0.929952, 0.363281,
		0.945827, -0.066464, 0.317795,
		30.195610, 37.176659, 31.802494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883221, 37.795055, 31.246712>,  <29.533531, 37.223183, 31.580036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883221, 37.795055, 31.246712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.197119, 37.575111, 31.361135>,  <30.385458, 37.443146, 31.429789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.197119, 37.575111, 31.361135>,  <29.883221, 37.795055, 31.246712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197119, 37.575111, 31.361135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460152, 0.207642, -0.863218,
		0.415249, 0.809037, 0.415964,
		0.784747, -0.549858, 0.286057,
		30.432543, 37.410152, 31.446953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514626, 38.256664, 31.237526>,  <29.883221, 37.795055, 31.246712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514626, 38.256664, 31.237526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.638819, 37.876644, 31.224884>,  <30.713335, 37.648632, 31.217299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.638819, 37.876644, 31.224884>,  <30.514626, 38.256664, 31.237526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638819, 37.876644, 31.224884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516879, 0.196635, -0.833169,
		0.797769, 0.242351, 0.552115,
		0.310484, -0.950053, -0.031603,
		30.731964, 37.591629, 31.215403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222273, 38.284874, 31.076000>,  <30.514626, 38.256664, 31.237526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222273, 38.284874, 31.076000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.165154, 37.899815, 30.983980>,  <31.130882, 37.668781, 30.928768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.165154, 37.899815, 30.983980>,  <31.222273, 38.284874, 31.076000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165154, 37.899815, 30.983980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715367, 0.060247, -0.696146,
		0.684002, -0.263978, 0.680042,
		-0.142797, -0.962645, -0.230050,
		31.122314, 37.611019, 30.914965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872120, 37.847420, 31.036882>,  <31.222273, 38.284874, 31.076000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872120, 37.847420, 31.036882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.612659, 37.660450, 30.796625>,  <31.456984, 37.548267, 30.652472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.612659, 37.660450, 30.796625>,  <31.872120, 37.847420, 31.036882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612659, 37.660450, 30.796625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652044, 0.065745, -0.755325,
		0.392544, -0.881587, 0.262133,
		-0.648651, -0.467421, -0.600641,
		31.418064, 37.520226, 30.616432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325642, 37.413109, 30.580095>,  <31.872120, 37.847420, 31.036882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325642, 37.413109, 30.580095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.970829, 37.463207, 30.402338>,  <31.757940, 37.493267, 30.295683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.970829, 37.463207, 30.402338>,  <32.325642, 37.413109, 30.580095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970829, 37.463207, 30.402338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455928, 0.085825, -0.885869,
		-0.072811, -0.988407, -0.133232,
		-0.887033, 0.125246, -0.444393,
		31.704720, 37.500782, 30.269020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361923, 37.032379, 29.989744>,  <32.325642, 37.413109, 30.580095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361923, 37.032379, 29.989744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.081429, 37.308315, 29.917751>,  <31.913132, 37.473877, 29.874556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.081429, 37.308315, 29.917751>,  <32.361923, 37.032379, 29.989744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081429, 37.308315, 29.917751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404948, 0.177629, -0.896920,
		-0.586760, -0.701834, -0.403908,
		-0.701234, 0.689839, -0.179981,
		31.871058, 37.515266, 29.863756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192719, 36.852219, 29.353706>,  <32.361923, 37.032379, 29.989744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192719, 36.852219, 29.353706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.068726, 37.230705, 29.390751>,  <31.994329, 37.457798, 29.412977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.068726, 37.230705, 29.390751>,  <32.192719, 36.852219, 29.353706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068726, 37.230705, 29.390751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430005, 0.226411, -0.873976,
		-0.847943, -0.231093, -0.477063,
		-0.309982, 0.946221, 0.092613,
		31.975731, 37.514572, 29.418535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836119, 37.047508, 28.688139>,  <32.192719, 36.852219, 29.353706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836119, 37.047508, 28.688139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.882269, 37.404846, 28.861866>,  <31.909960, 37.619247, 28.966103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.882269, 37.404846, 28.861866>,  <31.836119, 37.047508, 28.688139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882269, 37.404846, 28.861866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038891, 0.440965, -0.896681,
		-0.992560, 0.086565, 0.085620,
		0.115377, 0.893340, 0.434317,
		31.916882, 37.672848, 28.992161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312756, 37.543610, 28.519995>,  <31.836119, 37.047508, 28.688139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312756, 37.543610, 28.519995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.620863, 37.775703, 28.625837>,  <31.805727, 37.914959, 28.689342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.620863, 37.775703, 28.625837>,  <31.312756, 37.543610, 28.519995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620863, 37.775703, 28.625837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150057, 0.568186, -0.809103,
		-0.619813, 0.583521, 0.524724,
		0.770269, 0.580231, 0.264608,
		31.851944, 37.949772, 28.705219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.183798, 38.792942, 28.257273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.548761, 38.668186, 28.363279>,  <31.767740, 38.593330, 28.426884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.548761, 38.668186, 28.363279>,  <31.183798, 38.792942, 28.257273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548761, 38.668186, 28.363279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398618, 0.530349, -0.748220,
		0.092812, 0.788323, 0.608221,
		0.912408, -0.311892, 0.265017,
		31.822483, 38.574619, 28.442785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625536, 39.296005, 28.544561>,  <31.183798, 38.792942, 28.257273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625536, 39.296005, 28.544561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.853645, 39.012371, 28.378675>,  <31.990511, 38.842190, 28.279144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.853645, 39.012371, 28.378675>,  <31.625536, 39.296005, 28.544561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853645, 39.012371, 28.378675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382786, 0.676078, -0.629598,
		0.726816, 0.200297, 0.656977,
		0.570274, -0.709084, -0.414714,
		32.024727, 38.799644, 28.254261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293221, 39.558311, 28.572376>,  <31.625536, 39.296005, 28.544561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293221, 39.558311, 28.572376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.333538, 39.242439, 28.330303>,  <32.357731, 39.052917, 28.185059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.333538, 39.242439, 28.330303>,  <32.293221, 39.558311, 28.572376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333538, 39.242439, 28.330303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664676, 0.506068, -0.549638,
		0.740301, -0.346850, 0.575890,
		0.100798, -0.789678, -0.605185,
		32.363777, 39.005535, 28.148748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010494, 39.521973, 28.426302>,  <32.293221, 39.558311, 28.572376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010494, 39.521973, 28.426302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844109, 39.308006, 28.132137>,  <32.744278, 39.179626, 27.955639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844109, 39.308006, 28.132137>,  <33.010494, 39.521973, 28.426302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844109, 39.308006, 28.132137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639290, 0.403130, -0.654825,
		0.646745, -0.742527, 0.174280,
		-0.415968, -0.534920, -0.735412,
		32.719318, 39.147530, 27.911514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558422, 39.591209, 27.947222>,  <33.010494, 39.521973, 28.426302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558422, 39.591209, 27.947222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.271881, 39.417553, 27.728733>,  <33.099957, 39.313358, 27.597641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.271881, 39.417553, 27.728733>,  <33.558422, 39.591209, 27.947222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271881, 39.417553, 27.728733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364492, 0.434692, -0.823522,
		0.594965, -0.789026, -0.153151,
		-0.716354, -0.434144, -0.546220,
		33.056976, 39.287308, 27.564867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832977, 39.042473, 27.524906>,  <33.558422, 39.591209, 27.947222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832977, 39.042473, 27.524906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.484875, 39.102772, 27.337320>,  <33.276012, 39.138950, 27.224770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.484875, 39.102772, 27.337320>,  <33.832977, 39.042473, 27.524906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484875, 39.102772, 27.337320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478600, 0.033410, -0.877397,
		-0.116600, -0.988007, -0.101224,
		-0.870257, 0.150750, -0.468965,
		33.223797, 39.147999, 27.196630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809586, 38.562366, 26.926500>,  <33.832977, 39.042473, 27.524906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809586, 38.562366, 26.926500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549091, 38.852715, 26.837952>,  <33.392796, 39.026924, 26.784822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549091, 38.852715, 26.837952>,  <33.809586, 38.562366, 26.926500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549091, 38.852715, 26.837952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416394, 0.097920, -0.903896,
		-0.634431, -0.680830, -0.366017,
		-0.651240, 0.725867, -0.221370,
		33.353718, 39.070473, 26.771542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655041, 38.455647, 26.299015>,  <33.809586, 38.562366, 26.926500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655041, 38.455647, 26.299015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.520100, 38.830669, 26.332890>,  <33.439137, 39.055683, 26.353214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.520100, 38.830669, 26.332890>,  <33.655041, 38.455647, 26.299015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520100, 38.830669, 26.332890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244709, 0.174206, -0.953818,
		-0.909016, -0.301051, -0.288199,
		-0.337354, 0.937561, 0.084686,
		33.418892, 39.111938, 26.358295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186153, 38.518169, 25.759478>,  <33.655041, 38.455647, 26.299015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186153, 38.518169, 25.759478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314590, 38.884338, 25.856552>,  <33.391651, 39.104042, 25.914797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314590, 38.884338, 25.856552>,  <33.186153, 38.518169, 25.759478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314590, 38.884338, 25.856552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139297, 0.207819, -0.968198,
		-0.936747, 0.344689, -0.060787,
		0.321094, 0.915424, 0.242688,
		33.410919, 39.158966, 25.929359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847965, 38.940166, 25.306358>,  <33.186153, 38.518169, 25.759478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847965, 38.940166, 25.306358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121960, 39.198772, 25.440708>,  <33.286358, 39.353935, 25.521318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121960, 39.198772, 25.440708>,  <32.847965, 38.940166, 25.306358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121960, 39.198772, 25.440708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082814, 0.388930, -0.917538,
		-0.723835, 0.656315, 0.212871,
		0.684985, 0.646517, 0.335873,
		33.327454, 39.392727, 25.541470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744308, 39.479671, 24.950983>,  <32.847965, 38.940166, 25.306358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744308, 39.479671, 24.950983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120121, 39.501751, 25.086174>,  <33.345608, 39.514999, 25.167288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120121, 39.501751, 25.086174>,  <32.744308, 39.479671, 24.950983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120121, 39.501751, 25.086174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290006, 0.396634, -0.870964,
		-0.182130, 0.916316, 0.356643,
		0.939535, 0.055201, 0.337976,
		33.401981, 39.518311, 25.187567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007153, 40.049721, 24.574869>,  <32.744308, 39.479671, 24.950983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007153, 40.049721, 24.574869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330982, 39.846722, 24.692869>,  <33.525280, 39.724922, 24.763668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330982, 39.846722, 24.692869>,  <33.007153, 40.049721, 24.574869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330982, 39.846722, 24.692869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443520, 0.199621, -0.873751,
		0.384543, 0.838208, 0.386696,
		0.809578, -0.507502, 0.294999,
		33.573856, 39.694469, 24.781368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619942, 40.488403, 24.634998>,  <33.007153, 40.049721, 24.574869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619942, 40.488403, 24.634998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772793, 40.124466, 24.570299>,  <33.864506, 39.906105, 24.531479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772793, 40.124466, 24.570299>,  <33.619942, 40.488403, 24.634998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772793, 40.124466, 24.570299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589886, 0.374895, -0.715185,
		0.711344, 0.177880, 0.679962,
		0.382131, -0.909842, -0.161750,
		33.887432, 39.851513, 24.521774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365597, 40.610008, 24.467581>,  <33.619942, 40.488403, 24.634998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365597, 40.610008, 24.467581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286343, 40.235531, 24.351450>,  <34.238789, 40.010845, 24.281773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286343, 40.235531, 24.351450>,  <34.365597, 40.610008, 24.467581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286343, 40.235531, 24.351450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568970, 0.131333, -0.811803,
		0.798131, -0.326037, 0.506642,
		-0.198139, -0.936190, -0.290326,
		34.226902, 39.954674, 24.264353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014996, 40.393215, 24.293549>,  <34.365597, 40.610008, 24.467581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014996, 40.393215, 24.293549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787060, 40.106312, 24.133137>,  <34.650299, 39.934170, 24.036890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787060, 40.106312, 24.133137>,  <35.014996, 40.393215, 24.293549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787060, 40.106312, 24.133137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652031, -0.097636, -0.751879,
		0.500135, -0.689935, 0.523311,
		-0.569842, -0.717256, -0.401028,
		34.616108, 39.891136, 24.012829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473362, 39.861980, 24.152647>,  <35.014996, 40.393215, 24.293549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473362, 39.861980, 24.152647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158703, 39.829788, 23.907795>,  <34.969906, 39.810474, 23.760883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158703, 39.829788, 23.907795>,  <35.473362, 39.861980, 24.152647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158703, 39.829788, 23.907795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617060, -0.069663, -0.783827,
		0.020438, -0.994319, 0.104460,
		-0.786651, -0.080477, -0.612130,
		34.922707, 39.805645, 23.724155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682060, 39.410698, 23.663540>,  <35.473362, 39.861980, 24.152647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682060, 39.410698, 23.663540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366417, 39.599068, 23.505789>,  <35.177029, 39.712090, 23.411139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366417, 39.599068, 23.505789>,  <35.682060, 39.410698, 23.663540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366417, 39.599068, 23.505789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450838, 0.007963, -0.892570,
		-0.417191, -0.882139, -0.218593,
		-0.789112, 0.470922, -0.394380,
		35.129684, 39.740345, 23.387474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427773, 38.955090, 23.166491>,  <35.682060, 39.410698, 23.663540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427773, 38.955090, 23.166491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312328, 39.327351, 23.076525>,  <35.243061, 39.550709, 23.022545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312328, 39.327351, 23.076525>,  <35.427773, 38.955090, 23.166491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312328, 39.327351, 23.076525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422018, -0.087208, -0.902383,
		-0.859422, -0.355352, -0.367585,
		-0.288607, 0.930656, -0.224913,
		35.225746, 39.606548, 23.009050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153114, 38.896629, 22.381945>,  <35.427773, 38.955090, 23.166491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153114, 38.896629, 22.381945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258846, 39.268784, 22.483536>,  <35.322285, 39.492077, 22.544491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258846, 39.268784, 22.483536>,  <35.153114, 38.896629, 22.381945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258846, 39.268784, 22.483536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582146, 0.056035, -0.811151,
		-0.768919, 0.362263, -0.526811,
		0.264330, 0.930390, 0.253976,
		35.338146, 39.547901, 22.559729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183083, 39.202465, 21.761057>,  <35.153114, 38.896629, 22.381945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183083, 39.202465, 21.761057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368874, 39.494061, 21.962189>,  <35.480350, 39.669018, 22.082869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368874, 39.494061, 21.962189>,  <35.183083, 39.202465, 21.761057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368874, 39.494061, 21.962189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672376, 0.079228, -0.735957,
		-0.576341, 0.679928, -0.453353,
		0.464480, 0.728987, 0.502829,
		35.508217, 39.712757, 22.113037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309883, 39.829052, 21.280214>,  <35.183083, 39.202465, 21.761057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309883, 39.829052, 21.280214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.572823, 39.846149, 21.581163>,  <35.730587, 39.856407, 21.761732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.572823, 39.846149, 21.581163>,  <35.309883, 39.829052, 21.280214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572823, 39.846149, 21.581163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743663, 0.124675, -0.656827,
		-0.121878, 0.991276, 0.050168,
		0.657352, 0.042745, 0.752371,
		35.770027, 39.858974, 21.806875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733295, 40.449585, 21.246058>,  <35.309883, 39.829052, 21.280214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733295, 40.449585, 21.246058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930378, 40.178883, 21.464869>,  <36.048630, 40.016460, 21.596155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930378, 40.178883, 21.464869>,  <35.733295, 40.449585, 21.246058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930378, 40.178883, 21.464869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851117, 0.243876, -0.464891,
		0.181210, 0.694642, 0.696158,
		0.492709, -0.676755, 0.547029,
		36.078190, 39.975857, 21.628977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332958, 40.706543, 21.301308>,  <35.733295, 40.449585, 21.246058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332958, 40.706543, 21.301308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353352, 40.308430, 21.334328>,  <36.365585, 40.069561, 21.354139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353352, 40.308430, 21.334328>,  <36.332958, 40.706543, 21.301308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353352, 40.308430, 21.334328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868716, 0.003417, -0.495300,
		0.492681, 0.096963, 0.864791,
		0.050981, -0.995282, 0.082549,
		36.368645, 40.009846, 21.359093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066982, 40.632481, 21.523066>,  <36.332958, 40.706543, 21.301308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066982, 40.632481, 21.523066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935917, 40.321335, 21.308563>,  <36.857277, 40.134647, 21.179861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935917, 40.321335, 21.308563>,  <37.066982, 40.632481, 21.523066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935917, 40.321335, 21.308563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829490, 0.034884, -0.557431,
		0.452310, -0.627467, 0.633799,
		-0.327660, -0.777862, -0.536256,
		36.837620, 40.087975, 21.147686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620293, 41.111893, 21.721087>,  <37.066982, 40.632481, 21.523066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620293, 41.111893, 21.721087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.738392, 41.487736, 21.790325>,  <37.809250, 41.713242, 21.831867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.738392, 41.487736, 21.790325>,  <37.620293, 41.111893, 21.721087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738392, 41.487736, 21.790325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226307, -0.107239, 0.968135,
		0.928232, -0.325012, 0.180979,
		0.295247, 0.939610, 0.173095,
		37.826965, 41.769619, 21.842255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014553, 41.114708, 22.303616>,  <37.620293, 41.111893, 21.721087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014553, 41.114708, 22.303616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868423, 41.486839, 22.290806>,  <37.780746, 41.710117, 22.283119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868423, 41.486839, 22.290806>,  <38.014553, 41.114708, 22.303616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868423, 41.486839, 22.290806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250304, -0.065038, 0.965980,
		0.896595, 0.360917, 0.256625,
		-0.365329, 0.930328, -0.032026,
		37.758823, 41.765938, 22.281199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180222, 41.378078, 22.984560>,  <38.014553, 41.114708, 22.303616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180222, 41.378078, 22.984560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907330, 41.626583, 22.830368>,  <37.743595, 41.775684, 22.737852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907330, 41.626583, 22.830368>,  <38.180222, 41.378078, 22.984560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907330, 41.626583, 22.830368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446091, 0.064032, 0.892694,
		0.579280, 0.780982, 0.233455,
		-0.682229, 0.621262, -0.385482,
		37.702660, 41.812962, 22.714724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254135, 42.002766, 23.373606>,  <38.180222, 41.378078, 22.984560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254135, 42.002766, 23.373606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883141, 41.989845, 23.224623>,  <37.660545, 41.982094, 23.135233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883141, 41.989845, 23.224623>,  <38.254135, 42.002766, 23.373606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883141, 41.989845, 23.224623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373849, 0.087109, 0.923390,
		0.002615, 0.995675, -0.092869,
		-0.927486, -0.032304, -0.372460,
		37.604897, 41.980152, 23.112885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871540, 42.630054, 23.650551>,  <38.254135, 42.002766, 23.373606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871540, 42.630054, 23.650551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594433, 42.370926, 23.523808>,  <37.428169, 42.215450, 23.447762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594433, 42.370926, 23.523808>,  <37.871540, 42.630054, 23.650551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594433, 42.370926, 23.523808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432140, 0.021157, 0.901558,
		-0.577346, 0.761497, -0.294607,
		-0.692767, -0.647823, -0.316859,
		37.386604, 42.176579, 23.428749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209747, 42.852608, 23.868641>,  <37.871540, 42.630054, 23.650551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209747, 42.852608, 23.868641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089657, 42.483730, 23.771126>,  <37.017605, 42.262405, 23.712616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089657, 42.483730, 23.771126>,  <37.209747, 42.852608, 23.868641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089657, 42.483730, 23.771126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723708, 0.053724, 0.688012,
		-0.621380, 0.382989, -0.683525,
		-0.300222, -0.922190, -0.243789,
		36.999592, 42.207073, 23.697989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560429, 42.912884, 23.842384>,  <37.209747, 42.852608, 23.868641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560429, 42.912884, 23.842384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580406, 42.514874, 23.876854>,  <36.592392, 42.276066, 23.897535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580406, 42.514874, 23.876854>,  <36.560429, 42.912884, 23.842384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580406, 42.514874, 23.876854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738646, 0.021274, 0.673757,
		-0.672240, -0.097307, -0.733911,
		0.049948, -0.995027, 0.086176,
		36.595390, 42.216366, 23.902706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851738, 42.617931, 23.798267>,  <36.560429, 42.912884, 23.842384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851738, 42.617931, 23.798267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079590, 42.357517, 23.998938>,  <36.216301, 42.201271, 24.119339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079590, 42.357517, 23.998938>,  <35.851738, 42.617931, 23.798267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079590, 42.357517, 23.998938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684019, -0.037107, 0.728520,
		-0.455673, -0.758144, -0.466455,
		0.569632, -0.651031, 0.501676,
		36.250481, 42.162209, 24.149441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438938, 42.096802, 23.837397>,  <35.851738, 42.617931, 23.798267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438938, 42.096802, 23.837397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.704468, 42.032120, 24.129477>,  <35.863785, 41.993313, 24.304726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.704468, 42.032120, 24.129477>,  <35.438938, 42.096802, 23.837397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704468, 42.032120, 24.129477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742728, -0.257053, 0.618287,
		0.087724, -0.952773, -0.290736,
		0.663822, -0.161700, 0.730201,
		35.903614, 41.983608, 24.348537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191826, 41.462322, 24.199343>,  <35.438938, 42.096802, 23.837397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191826, 41.462322, 24.199343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423508, 41.658215, 24.460014>,  <35.562515, 41.775749, 24.616417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423508, 41.658215, 24.460014>,  <35.191826, 41.462322, 24.199343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423508, 41.658215, 24.460014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720908, -0.065473, 0.689931,
		0.380551, -0.869410, 0.315132,
		0.579201, 0.489735, 0.651680,
		35.597267, 41.805134, 24.655518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041431, 41.147499, 24.812258>,  <35.191826, 41.462322, 24.199343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041431, 41.147499, 24.812258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225487, 41.480976, 24.934389>,  <35.335918, 41.681065, 25.007668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225487, 41.480976, 24.934389>,  <35.041431, 41.147499, 24.812258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225487, 41.480976, 24.934389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613935, 0.050342, 0.787749,
		0.641372, -0.549925, 0.534999,
		0.460137, 0.833695, 0.305330,
		35.363529, 41.731083, 25.025988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151524, 40.982742, 25.470024>,  <35.041431, 41.147499, 24.812258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151524, 40.982742, 25.470024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184002, 41.381256, 25.458513>,  <35.203487, 41.620365, 25.451607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184002, 41.381256, 25.458513>,  <35.151524, 40.982742, 25.470024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184002, 41.381256, 25.458513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650694, 0.074857, 0.755641,
		0.754987, -0.042629, 0.654353,
		0.081195, 0.996282, -0.028777,
		35.208359, 41.680141, 25.449881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032883, 41.185581, 26.164433>,  <35.151524, 40.982742, 25.470024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032883, 41.185581, 26.164433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972324, 41.524982, 25.961607>,  <34.935989, 41.728622, 25.839912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972324, 41.524982, 25.961607>,  <35.032883, 41.185581, 26.164433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972324, 41.524982, 25.961607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600078, 0.328739, 0.729272,
		0.785484, 0.414687, 0.459401,
		-0.151396, 0.848508, -0.507064,
		34.926907, 41.779533, 25.809488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121304, 41.733608, 26.632065>,  <35.032883, 41.185581, 26.164433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121304, 41.733608, 26.632065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878822, 41.869087, 26.344231>,  <34.733334, 41.950375, 26.171530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878822, 41.869087, 26.344231>,  <35.121304, 41.733608, 26.632065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878822, 41.869087, 26.344231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676768, 0.255555, 0.690418,
		0.417739, 0.905524, 0.074305,
		-0.606200, 0.338702, -0.719585,
		34.696960, 41.970699, 26.128355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841167, 42.286560, 26.944794>,  <35.121304, 41.733608, 26.632065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841167, 42.286560, 26.944794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603687, 42.189968, 26.637756>,  <34.461197, 42.132011, 26.453533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603687, 42.189968, 26.637756>,  <34.841167, 42.286560, 26.944794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603687, 42.189968, 26.637756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804164, 0.143786, 0.576755,
		-0.028906, 0.959694, -0.279556,
		-0.593705, -0.241481, -0.767595,
		34.425575, 42.117523, 26.407478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261368, 42.785618, 26.974972>,  <34.841167, 42.286560, 26.944794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261368, 42.785618, 26.974972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.143776, 42.456535, 26.780352>,  <34.073223, 42.259087, 26.663580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.143776, 42.456535, 26.780352>,  <34.261368, 42.785618, 26.974972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143776, 42.456535, 26.780352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837588, -0.023491, 0.545797,
		-0.460461, 0.567978, -0.682185,
		-0.293976, -0.822709, -0.486548,
		34.055584, 42.209724, 26.634388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563839, 42.884911, 26.969692>,  <34.261368, 42.785618, 26.974972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563839, 42.884911, 26.969692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582333, 42.495136, 26.881741>,  <33.593430, 42.261272, 26.828970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582333, 42.495136, 26.881741>,  <33.563839, 42.884911, 26.969692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582333, 42.495136, 26.881741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870401, -0.147305, 0.469791,
		-0.490168, 0.169663, -0.854956,
		0.046233, -0.974431, -0.219879,
		33.596203, 42.202808, 26.815777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887379, 42.656773, 26.792532>,  <33.563839, 42.884911, 26.969692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887379, 42.656773, 26.792532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.073257, 42.332363, 26.934683>,  <33.184784, 42.137718, 27.019974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.073257, 42.332363, 26.934683>,  <32.887379, 42.656773, 26.792532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073257, 42.332363, 26.934683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683396, -0.073291, 0.726360,
		-0.563052, -0.580398, -0.588312,
		0.464696, -0.811028, 0.355375,
		33.212666, 42.089054, 27.041296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345566, 42.269703, 27.114080>,  <32.887379, 42.656773, 26.792532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345566, 42.269703, 27.114080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685532, 42.134010, 27.275358>,  <32.889511, 42.052593, 27.372124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685532, 42.134010, 27.275358>,  <32.345566, 42.269703, 27.114080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685532, 42.134010, 27.275358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420302, 0.025028, 0.907039,
		-0.317791, -0.940368, -0.121310,
		0.849915, -0.339236, 0.403192,
		32.940506, 42.032242, 27.396317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102936, 41.782814, 27.571020>,  <32.345566, 42.269703, 27.114080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102936, 41.782814, 27.571020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463505, 41.838085, 27.735142>,  <32.679844, 41.871246, 27.833614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463505, 41.838085, 27.735142>,  <32.102936, 41.782814, 27.571020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463505, 41.838085, 27.735142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374037, -0.228715, 0.898769,
		0.218033, -0.963637, -0.154485,
		0.901420, 0.138178, 0.410303,
		32.733932, 41.879539, 27.858232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.604397, 36.448174, 30.630928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.764198, 36.807980, 30.701668>,  <30.860079, 37.023861, 30.744112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.764198, 36.807980, 30.701668>,  <30.604397, 36.448174, 30.630928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764198, 36.807980, 30.701668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217518, -0.094393, 0.971481,
		0.890553, -0.426577, 0.157950,
		0.399502, 0.899512, 0.176850,
		30.884048, 37.077835, 30.754723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155508, 36.361717, 31.167286>,  <30.604397, 36.448174, 30.630928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155508, 36.361717, 31.167286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.015667, 36.736473, 31.165512>,  <30.931763, 36.961327, 31.164448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.015667, 36.736473, 31.165512>,  <31.155508, 36.361717, 31.167286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015667, 36.736473, 31.165512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212815, -0.074802, 0.974225,
		0.912408, 0.341534, 0.225535,
		-0.349602, 0.936888, -0.004434,
		30.910786, 37.017540, 31.164183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413200, 36.592670, 31.740057>,  <31.155508, 36.361717, 31.167286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413200, 36.592670, 31.740057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.112808, 36.846252, 31.666161>,  <30.932573, 36.998402, 31.621822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.112808, 36.846252, 31.666161>,  <31.413200, 36.592670, 31.740057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112808, 36.846252, 31.666161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296710, -0.074035, 0.952093,
		0.589909, 0.769816, 0.243700,
		-0.750979, 0.633957, -0.184739,
		30.887514, 37.036438, 31.610739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407995, 37.112602, 32.184036>,  <31.413200, 36.592670, 31.740057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407995, 37.112602, 32.184036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.020763, 37.131870, 32.085648>,  <30.788425, 37.143433, 32.026615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.020763, 37.131870, 32.085648>,  <31.407995, 37.112602, 32.184036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020763, 37.131870, 32.085648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248725, -0.063300, 0.966503,
		0.030988, 0.996831, 0.073261,
		-0.968078, 0.048172, -0.245976,
		30.730339, 37.146320, 32.011856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170368, 37.540508, 32.688107>,  <31.407995, 37.112602, 32.184036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170368, 37.540508, 32.688107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.848667, 37.363785, 32.529121>,  <30.655645, 37.257751, 32.433731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.848667, 37.363785, 32.529121>,  <31.170368, 37.540508, 32.688107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848667, 37.363785, 32.529121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479698, 0.087820, 0.873028,
		-0.350807, 0.892800, -0.282565,
		-0.804254, -0.441810, -0.397467,
		30.607391, 37.231243, 32.409882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526478, 37.917156, 32.997227>,  <31.170368, 37.540508, 32.688107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526478, 37.917156, 32.997227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.362274, 37.584538, 32.847553>,  <30.263752, 37.384968, 32.757751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.362274, 37.584538, 32.847553>,  <30.526478, 37.917156, 32.997227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362274, 37.584538, 32.847553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527928, -0.117845, 0.841073,
		-0.743488, 0.542808, -0.390621,
		-0.410509, -0.831548, -0.374180,
		30.239122, 37.335072, 32.735298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758253, 38.003201, 33.052452>,  <30.526478, 37.917156, 32.997227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758253, 38.003201, 33.052452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.874954, 37.621658, 33.080868>,  <29.944975, 37.392735, 33.097916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.874954, 37.621658, 33.080868>,  <29.758253, 38.003201, 33.052452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874954, 37.621658, 33.080868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487483, -0.084382, 0.869045,
		-0.822946, -0.288178, -0.489606,
		0.291754, -0.953852, 0.071040,
		29.962481, 37.335503, 33.102180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304033, 37.757881, 33.654804>,  <29.758253, 38.003201, 33.052452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304033, 37.757881, 33.654804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.528023, 37.432201, 33.593479>,  <29.662416, 37.236794, 33.556683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.528023, 37.432201, 33.593479>,  <29.304033, 37.757881, 33.654804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528023, 37.432201, 33.593479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404588, -0.430209, 0.806987,
		-0.723008, -0.389862, -0.570322,
		0.559972, -0.814204, -0.153311,
		29.696014, 37.187939, 33.547485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911982, 37.117542, 33.698372>,  <29.304033, 37.757881, 33.654804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911982, 37.117542, 33.698372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.277925, 36.969246, 33.762344>,  <29.497492, 36.880268, 33.800728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.277925, 36.969246, 33.762344>,  <28.911982, 37.117542, 33.698372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277925, 36.969246, 33.762344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361878, -0.577198, 0.732043,
		-0.179091, -0.727592, -0.662221,
		0.914861, -0.370745, 0.159928,
		29.552383, 36.858021, 33.810322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825590, 36.400604, 33.782116>,  <28.911982, 37.117542, 33.698372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825590, 36.400604, 33.782116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.176338, 36.505520, 33.943264>,  <29.386787, 36.568470, 34.039951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.176338, 36.505520, 33.943264>,  <28.825590, 36.400604, 33.782116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176338, 36.505520, 33.943264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261411, -0.443144, 0.857489,
		0.403437, -0.857221, -0.320015,
		0.876871, 0.262288, 0.402868,
		29.439400, 36.584206, 34.064125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984579, 35.851749, 34.121689>,  <28.825590, 36.400604, 33.782116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984579, 35.851749, 34.121689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.211718, 36.133671, 34.291771>,  <29.348000, 36.302822, 34.393822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.211718, 36.133671, 34.291771>,  <28.984579, 35.851749, 34.121689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211718, 36.133671, 34.291771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245245, -0.348250, 0.904752,
		0.785753, -0.618039, -0.024902,
		0.567844, 0.704805, 0.425210,
		29.382071, 36.345112, 34.419334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386633, 35.540989, 34.688519>,  <28.984579, 35.851749, 34.121689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386633, 35.540989, 34.688519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.399147, 35.930244, 34.779751>,  <29.406654, 36.163799, 34.834492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.399147, 35.930244, 34.779751>,  <29.386633, 35.540989, 34.688519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399147, 35.930244, 34.779751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393172, -0.197815, 0.897934,
		0.918932, -0.117766, 0.376423,
		0.031284, 0.973139, 0.228081,
		29.408533, 36.222187, 34.848175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732719, 35.690338, 35.386200>,  <29.386633, 35.540989, 34.688519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732719, 35.690338, 35.386200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.504484, 36.011162, 35.315620>,  <29.367542, 36.203655, 35.273273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.504484, 36.011162, 35.315620>,  <29.732719, 35.690338, 35.386200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504484, 36.011162, 35.315620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424242, -0.103910, 0.899568,
		0.703169, 0.588141, 0.399555,
		-0.570590, 0.802056, -0.176448,
		29.333307, 36.251778, 35.262688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961535, 35.203869, 35.865459>,  <29.732719, 35.690338, 35.386200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961535, 35.203869, 35.865459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.116158, 34.978401, 36.157444>,  <30.208931, 34.843121, 36.332634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.116158, 34.978401, 36.157444>,  <29.961535, 35.203869, 35.865459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116158, 34.978401, 36.157444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793560, -0.200012, -0.574681,
		0.469933, 0.801417, 0.369991,
		0.386556, -0.563671, 0.729965,
		30.232124, 34.809299, 36.376434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640556, 35.454956, 36.328300>,  <29.961535, 35.203869, 35.865459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640556, 35.454956, 36.328300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.614920, 35.061436, 36.261326>,  <30.599537, 34.825325, 36.221142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.614920, 35.061436, 36.261326>,  <30.640556, 35.454956, 36.328300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614920, 35.061436, 36.261326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736117, 0.066682, -0.673562,
		0.673813, -0.166427, 0.719915,
		-0.064094, -0.983797, -0.167441,
		30.595692, 34.766296, 36.211094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142132, 35.254120, 35.902851>,  <30.640556, 35.454956, 36.328300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142132, 35.254120, 35.902851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.957825, 34.900402, 35.872601>,  <30.847240, 34.688171, 35.854450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.957825, 34.900402, 35.872601>,  <31.142132, 35.254120, 35.902851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957825, 34.900402, 35.872601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617580, -0.258257, -0.742899,
		0.637408, -0.389011, 0.665118,
		-0.460767, -0.884293, -0.075631,
		30.819595, 34.635113, 35.849911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638008, 34.683750, 35.826908>,  <31.142132, 35.254120, 35.902851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638008, 34.683750, 35.826908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.313427, 34.498272, 35.684620>,  <31.118679, 34.386986, 35.599247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.313427, 34.498272, 35.684620>,  <31.638008, 34.683750, 35.826908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313427, 34.498272, 35.684620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480540, -0.182970, -0.857673,
		0.332610, -0.866898, 0.371294,
		-0.811450, -0.463692, -0.355721,
		31.069992, 34.359165, 35.577904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776510, 33.954380, 35.565662>,  <31.638008, 34.683750, 35.826908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776510, 33.954380, 35.565662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.441013, 34.052517, 35.371212>,  <31.239716, 34.111401, 35.254539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.441013, 34.052517, 35.371212>,  <31.776510, 33.954380, 35.565662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441013, 34.052517, 35.371212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390577, -0.351002, -0.851027,
		-0.379429, -0.903661, 0.198572,
		-0.838739, 0.245346, -0.486129,
		31.189390, 34.126122, 35.225372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763494, 33.390076, 35.119999>,  <31.776510, 33.954380, 35.565662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763494, 33.390076, 35.119999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.521603, 33.666538, 34.961704>,  <31.376467, 33.832417, 34.866726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.521603, 33.666538, 34.961704>,  <31.763494, 33.390076, 35.119999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521603, 33.666538, 34.961704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418788, -0.146694, -0.896157,
		-0.677436, -0.707662, -0.200737,
		-0.604729, 0.691155, -0.395735,
		31.340183, 33.873886, 34.842983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878019, 33.263977, 34.500950>,  <31.763494, 33.390076, 35.119999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878019, 33.263977, 34.500950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.724821, 33.630390, 34.453289>,  <31.632902, 33.850239, 34.424694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.724821, 33.630390, 34.453289>,  <31.878019, 33.263977, 34.500950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724821, 33.630390, 34.453289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370585, 0.034211, -0.928168,
		-0.846156, -0.399643, -0.352570,
		-0.382997, 0.916032, -0.119154,
		31.609922, 33.905201, 34.417542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629625, 33.292984, 33.725964>,  <31.878019, 33.263977, 34.500950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629625, 33.292984, 33.725964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.662582, 33.667599, 33.862259>,  <31.682356, 33.892368, 33.944035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.662582, 33.667599, 33.862259>,  <31.629625, 33.292984, 33.725964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662582, 33.667599, 33.862259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411232, 0.279489, -0.867626,
		-0.907799, 0.211607, -0.362108,
		0.082391, 0.936541, 0.340739,
		31.687300, 33.948563, 33.964481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394344, 33.653954, 33.096149>,  <31.629625, 33.292984, 33.725964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394344, 33.653954, 33.096149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.590530, 33.910217, 33.332455>,  <31.708242, 34.063976, 33.474236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.590530, 33.910217, 33.332455>,  <31.394344, 33.653954, 33.096149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590530, 33.910217, 33.332455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384344, 0.449382, -0.806434,
		-0.782127, 0.622584, -0.025826,
		0.490467, 0.640659, 0.590760,
		31.737671, 34.102417, 33.509682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336697, 34.310062, 32.789124>,  <31.394344, 33.653954, 33.096149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336697, 34.310062, 32.789124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.648138, 34.362347, 33.034626>,  <31.835003, 34.393719, 33.181927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.648138, 34.362347, 33.034626>,  <31.336697, 34.310062, 32.789124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648138, 34.362347, 33.034626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441215, 0.581452, -0.683551,
		-0.446216, 0.803012, 0.395048,
		0.778601, 0.130711, 0.613755,
		31.881718, 34.401562, 33.218754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509150, 35.001686, 32.882755>,  <31.336697, 34.310062, 32.789124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509150, 35.001686, 32.882755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.849411, 34.807495, 32.963451>,  <32.053570, 34.690979, 33.011868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.849411, 34.807495, 32.963451>,  <31.509150, 35.001686, 32.882755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849411, 34.807495, 32.963451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434999, 0.434473, -0.788675,
		0.295234, 0.758646, 0.580769,
		0.850654, -0.485478, 0.201739,
		32.104607, 34.661850, 33.023972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073109, 35.496483, 32.866741>,  <31.509150, 35.001686, 32.882755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073109, 35.496483, 32.866741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.264099, 35.146935, 32.830147>,  <32.378693, 34.937206, 32.808189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.264099, 35.146935, 32.830147>,  <32.073109, 35.496483, 32.866741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264099, 35.146935, 32.830147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502230, 0.356874, -0.787659,
		0.720957, 0.330146, 0.609282,
		0.477479, -0.873868, -0.091482,
		32.407345, 34.884773, 32.802704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667870, 35.738049, 32.676384>,  <32.073109, 35.496483, 32.866741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667870, 35.738049, 32.676384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.684994, 35.352730, 32.570377>,  <32.695267, 35.121540, 32.506775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.684994, 35.352730, 32.570377>,  <32.667870, 35.738049, 32.676384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684994, 35.352730, 32.570377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547161, 0.244546, -0.800507,
		0.835932, -0.110740, 0.537545,
		0.042807, -0.963293, -0.265016,
		32.697834, 35.063744, 32.490871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353607, 35.602837, 32.521420>,  <32.667870, 35.738049, 32.676384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353607, 35.602837, 32.521420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.141678, 35.311062, 32.348351>,  <33.014519, 35.135998, 32.244511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.141678, 35.311062, 32.348351>,  <33.353607, 35.602837, 32.521420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141678, 35.311062, 32.348351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430170, 0.208537, -0.878332,
		0.730918, -0.651483, 0.203295,
		-0.529824, -0.729439, -0.432672,
		32.982731, 35.092232, 32.218548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838963, 35.230854, 32.080368>,  <33.353607, 35.602837, 32.521420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838963, 35.230854, 32.080368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.496902, 35.112312, 31.910248>,  <33.291664, 35.041187, 31.808174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.496902, 35.112312, 31.910248>,  <33.838963, 35.230854, 32.080368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496902, 35.112312, 31.910248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357724, 0.256402, -0.897937,
		0.375159, -0.920016, -0.113250,
		-0.855155, -0.296357, -0.425303,
		33.240356, 35.023403, 31.782658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468441, 34.910557, 32.361958>,  <33.838963, 35.230854, 32.080368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468441, 34.910557, 32.361958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.644920, 35.250820, 32.476307>,  <34.750809, 35.454979, 32.544918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.644920, 35.250820, 32.476307>,  <34.468441, 34.910557, 32.361958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644920, 35.250820, 32.476307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589028, 0.034170, 0.807390,
		0.677042, -0.524612, 0.516135,
		0.441203, 0.850656, 0.285877,
		34.777283, 35.506016, 32.562069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606865, 34.876427, 33.035114>,  <34.468441, 34.910557, 32.361958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606865, 34.876427, 33.035114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.648239, 35.271133, 32.985172>,  <34.673065, 35.507957, 32.955208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.648239, 35.271133, 32.985172>,  <34.606865, 34.876427, 33.035114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648239, 35.271133, 32.985172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474197, 0.159267, 0.865893,
		0.874321, -0.030363, 0.484397,
		0.103439, 0.986768, -0.124853,
		34.679272, 35.567165, 32.947716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823635, 35.109325, 33.677288>,  <34.606865, 34.876427, 33.035114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823635, 35.109325, 33.677288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.650822, 35.415089, 33.485859>,  <34.547134, 35.598545, 33.371002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.650822, 35.415089, 33.485859>,  <34.823635, 35.109325, 33.677288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650822, 35.415089, 33.485859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610422, 0.142767, 0.779104,
		0.663876, 0.628729, 0.404930,
		-0.432035, 0.764407, -0.478569,
		34.521210, 35.644409, 33.342289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930733, 35.685596, 34.075977>,  <34.823635, 35.109325, 33.677288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930733, 35.685596, 34.075977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.624699, 35.771042, 33.832989>,  <34.441078, 35.822311, 33.687195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.624699, 35.771042, 33.832989>,  <34.930733, 35.685596, 34.075977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624699, 35.771042, 33.832989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602771, 0.094293, 0.792323,
		0.226533, 0.972357, 0.056620,
		-0.765082, 0.213616, -0.607468,
		34.395176, 35.835125, 33.650749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687450, 36.263969, 34.310844>,  <34.930733, 35.685596, 34.075977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687450, 36.263969, 34.310844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.384003, 36.097958, 34.109947>,  <34.201935, 35.998352, 33.989410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.384003, 36.097958, 34.109947>,  <34.687450, 36.263969, 34.310844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384003, 36.097958, 34.109947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541062, -0.028146, 0.840512,
		-0.362972, 0.909373, -0.203204,
		-0.758619, -0.415028, -0.502244,
		34.156418, 35.973450, 33.959274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147072, 36.577614, 34.666397>,  <34.687450, 36.263969, 34.310844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147072, 36.577614, 34.666397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.981190, 36.282402, 34.453484>,  <33.881660, 36.105274, 34.325737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.981190, 36.282402, 34.453484>,  <34.147072, 36.577614, 34.666397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981190, 36.282402, 34.453484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696427, -0.119065, 0.707682,
		-0.585669, 0.664176, -0.464609,
		-0.414707, -0.738034, -0.532283,
		33.856777, 36.060993, 34.293800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383587, 36.819592, 34.453827>,  <34.147072, 36.577614, 34.666397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383587, 36.819592, 34.453827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.413731, 36.420902, 34.465546>,  <33.431816, 36.181686, 34.472576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.413731, 36.420902, 34.465546>,  <33.383587, 36.819592, 34.453827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413731, 36.420902, 34.465546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740315, -0.036239, 0.671283,
		-0.668024, -0.072274, -0.740622,
		0.075355, -0.996726, 0.029297,
		33.436337, 36.121883, 34.474335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734089, 36.611965, 34.590611>,  <33.383587, 36.819592, 34.453827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734089, 36.611965, 34.590611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.951565, 36.291294, 34.689972>,  <33.082050, 36.098892, 34.749588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.951565, 36.291294, 34.689972>,  <32.734089, 36.611965, 34.590611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951565, 36.291294, 34.689972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696433, -0.265763, 0.666596,
		-0.468380, -0.535423, -0.702810,
		0.543692, -0.801681, 0.248408,
		33.114674, 36.050789, 34.764496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226929, 36.039196, 34.687672>,  <32.734089, 36.611965, 34.590611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226929, 36.039196, 34.687672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.565521, 35.947662, 34.879963>,  <32.768677, 35.892742, 34.995338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.565521, 35.947662, 34.879963>,  <32.226929, 36.039196, 34.687672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565521, 35.947662, 34.879963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531425, -0.418087, 0.736743,
		0.032392, -0.879112, -0.475514,
		0.846486, -0.228835, 0.480725,
		32.819466, 35.879013, 35.024181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067226, 35.459488, 35.128532>,  <32.226929, 36.039196, 34.687672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067226, 35.459488, 35.128532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.421654, 35.555279, 35.287292>,  <32.634312, 35.612755, 35.382549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.421654, 35.555279, 35.287292>,  <32.067226, 35.459488, 35.128532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421654, 35.555279, 35.287292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306573, -0.339482, 0.889250,
		0.347698, -0.909616, -0.227387,
		0.886070, 0.239480, 0.396901,
		32.687473, 35.627121, 35.406364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527420, 34.868725, 35.432777>,  <32.067226, 35.459488, 35.128532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527420, 34.868725, 35.432777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.604626, 35.206673, 35.632355>,  <32.650948, 35.409439, 35.752102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.604626, 35.206673, 35.632355>,  <32.527420, 34.868725, 35.432777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604626, 35.206673, 35.632355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281702, -0.439385, 0.852986,
		0.939888, -0.305193, 0.153193,
		0.193015, 0.844866, 0.498946,
		32.662529, 35.460133, 35.782040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842644, 34.641262, 36.091385>,  <32.527420, 34.868725, 35.432777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842644, 34.641262, 36.091385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.690254, 35.005943, 36.152901>,  <32.598820, 35.224754, 36.189812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.690254, 35.005943, 36.152901>,  <32.842644, 34.641262, 36.091385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690254, 35.005943, 36.152901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441597, -0.325561, 0.836064,
		0.812314, 0.250601, 0.526636,
		-0.380971, 0.911707, 0.153794,
		32.575962, 35.279457, 36.199039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.648411, 35.764153, 29.678455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359364, 36.040100, 29.695879>,  <37.185936, 36.205669, 29.706333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359364, 36.040100, 29.695879>,  <37.648411, 35.764153, 29.678455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359364, 36.040100, 29.695879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267174, -0.336864, 0.902851,
		0.637524, 0.640781, 0.427740,
		-0.722621, 0.689871, 0.043559,
		37.142578, 36.247063, 29.708946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576618, 35.945778, 30.410881>,  <37.648411, 35.764153, 29.678455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576618, 35.945778, 30.410881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237690, 36.108242, 30.274015>,  <37.034332, 36.205723, 30.191896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237690, 36.108242, 30.274015>,  <37.576618, 35.945778, 30.410881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237690, 36.108242, 30.274015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435021, -0.161244, 0.885865,
		0.304633, 0.899463, 0.313315,
		-0.847323, 0.406162, -0.342165,
		36.983494, 36.230091, 30.171366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262634, 36.281712, 31.002291>,  <37.576618, 35.945778, 30.410881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262634, 36.281712, 31.002291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962734, 36.243431, 30.740385>,  <36.782795, 36.220463, 30.583241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962734, 36.243431, 30.740385>,  <37.262634, 36.281712, 31.002291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962734, 36.243431, 30.740385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638819, -0.153402, 0.753909,
		-0.172595, 0.983519, 0.053874,
		-0.749748, -0.095705, -0.654766,
		36.737808, 36.214718, 30.543955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855473, 36.794376, 31.238955>,  <37.262634, 36.281712, 31.002291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855473, 36.794376, 31.238955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638657, 36.538582, 31.020874>,  <36.508568, 36.385105, 30.890026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638657, 36.538582, 31.020874>,  <36.855473, 36.794376, 31.238955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638657, 36.538582, 31.020874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661792, -0.075004, 0.745926,
		-0.517904, 0.765132, -0.382554,
		-0.542039, -0.639490, -0.545203,
		36.476044, 36.346733, 30.857313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222134, 37.063110, 31.195393>,  <36.855473, 36.794376, 31.238955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222134, 37.063110, 31.195393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150501, 36.675072, 31.129864>,  <36.107521, 36.442249, 31.090548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150501, 36.675072, 31.129864>,  <36.222134, 37.063110, 31.195393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150501, 36.675072, 31.129864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740770, 0.023373, 0.671352,
		-0.647450, 0.241577, -0.722807,
		-0.179078, -0.970100, -0.163820,
		36.096779, 36.384041, 31.080717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511017, 36.936859, 31.269474>,  <36.222134, 37.063110, 31.195393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511017, 36.936859, 31.269474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637970, 36.559628, 31.309210>,  <35.714142, 36.333290, 31.333052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637970, 36.559628, 31.309210>,  <35.511017, 36.936859, 31.269474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637970, 36.559628, 31.309210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713047, -0.168275, 0.680623,
		-0.625165, -0.286852, -0.725868,
		0.317383, -0.943080, 0.099339,
		35.733185, 36.276703, 31.339012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900059, 36.443756, 31.264843>,  <35.511017, 36.936859, 31.269474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900059, 36.443756, 31.264843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177414, 36.213856, 31.438681>,  <35.343826, 36.075916, 31.542984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177414, 36.213856, 31.438681>,  <34.900059, 36.443756, 31.264843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177414, 36.213856, 31.438681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640004, -0.214129, 0.737932,
		-0.331068, -0.789816, -0.516319,
		0.693389, -0.574752, 0.434594,
		35.385429, 36.041431, 31.569059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496658, 35.996330, 31.490728>,  <34.900059, 36.443756, 31.264843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496658, 35.996330, 31.490728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834396, 35.945156, 31.698847>,  <35.037041, 35.914452, 31.823717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834396, 35.945156, 31.698847>,  <34.496658, 35.996330, 31.490728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834396, 35.945156, 31.698847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530948, -0.330088, 0.780471,
		0.071895, -0.935240, -0.346636,
		0.844349, -0.127934, 0.520296,
		35.087700, 35.906776, 31.854935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443672, 35.359028, 31.693356>,  <34.496658, 35.996330, 31.490728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443672, 35.359028, 31.693356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697231, 35.556278, 31.931681>,  <34.849365, 35.674629, 32.074677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697231, 35.556278, 31.931681>,  <34.443672, 35.359028, 31.693356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697231, 35.556278, 31.931681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621848, -0.133086, 0.771747,
		0.459866, -0.859716, 0.222289,
		0.633899, 0.493130, 0.595814,
		34.887402, 35.704216, 32.110424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000141, 34.798374, 31.490585>,  <34.443672, 35.359028, 31.693356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000141, 34.798374, 31.490585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635075, 34.936714, 31.403467>,  <33.416035, 35.019718, 31.351196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635075, 34.936714, 31.403467>,  <34.000141, 34.798374, 31.490585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635075, 34.936714, 31.403467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281634, 0.145993, -0.948350,
		-0.296187, -0.926864, -0.230644,
		-0.912664, 0.345846, -0.217795,
		33.361275, 35.040466, 31.338129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759090, 34.562977, 30.763973>,  <34.000141, 34.798374, 31.490585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759090, 34.562977, 30.763973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483646, 34.847733, 30.819151>,  <33.318378, 35.018585, 30.852259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483646, 34.847733, 30.819151>,  <33.759090, 34.562977, 30.763973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483646, 34.847733, 30.819151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008274, 0.182510, -0.983169,
		-0.725085, -0.678162, -0.119788,
		-0.688610, 0.711890, 0.137946,
		33.277061, 35.061298, 30.860535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156120, 34.388885, 30.356743>,  <33.759090, 34.562977, 30.763973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156120, 34.388885, 30.356743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148415, 34.778790, 30.445709>,  <33.143791, 35.012733, 30.499090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148415, 34.778790, 30.445709>,  <33.156120, 34.388885, 30.356743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148415, 34.778790, 30.445709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038150, 0.221579, -0.974396,
		-0.999086, -0.027256, 0.032919,
		-0.019265, 0.974761, 0.222417,
		33.142635, 35.071217, 30.512434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672432, 34.756279, 29.816479>,  <33.156120, 34.388885, 30.356743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672432, 34.756279, 29.816479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909599, 35.043030, 29.963192>,  <33.051899, 35.215080, 30.051220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909599, 35.043030, 29.963192>,  <32.672432, 34.756279, 29.816479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909599, 35.043030, 29.963192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246032, 0.272429, -0.930189,
		-0.766755, 0.641768, -0.014846,
		0.592920, 0.716880, 0.366782,
		33.087475, 35.258095, 30.073227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534534, 35.367779, 29.408539>,  <32.672432, 34.756279, 29.816479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534534, 35.367779, 29.408539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884068, 35.430359, 29.592686>,  <33.093788, 35.467907, 29.703175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884068, 35.430359, 29.592686>,  <32.534534, 35.367779, 29.408539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884068, 35.430359, 29.592686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384462, 0.357308, -0.851187,
		-0.297664, 0.920789, 0.252077,
		0.873833, 0.156454, 0.460367,
		33.146217, 35.477295, 29.730795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855331, 35.962440, 29.138763>,  <32.534534, 35.367779, 29.408539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855331, 35.962440, 29.138763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178104, 35.759037, 29.258953>,  <33.371769, 35.636993, 29.331068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178104, 35.759037, 29.258953>,  <32.855331, 35.962440, 29.138763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178104, 35.759037, 29.258953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490832, 0.294323, -0.820036,
		0.328557, 0.809194, 0.487089,
		0.806929, -0.508507, 0.300476,
		33.420181, 35.606483, 29.349096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441532, 36.394966, 28.980019>,  <32.855331, 35.962440, 29.138763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441532, 36.394966, 28.980019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580021, 36.020622, 29.006243>,  <33.663116, 35.796017, 29.021978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580021, 36.020622, 29.006243>,  <33.441532, 36.394966, 28.980019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580021, 36.020622, 29.006243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669670, 0.197595, -0.715890,
		0.657017, 0.291764, 0.695128,
		0.346225, -0.935858, 0.065562,
		33.683887, 35.739864, 29.025911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192108, 36.460342, 29.110882>,  <33.441532, 36.394966, 28.980019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192108, 36.460342, 29.110882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124378, 36.098564, 28.954266>,  <34.083740, 35.881496, 28.860296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124378, 36.098564, 28.954266>,  <34.192108, 36.460342, 29.110882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124378, 36.098564, 28.954266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858179, 0.060047, -0.509826,
		0.484622, -0.422336, 0.766011,
		-0.169321, -0.904448, -0.391540,
		34.073582, 35.827229, 28.836803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944321, 36.159172, 29.033768>,  <34.192108, 36.460342, 29.110882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944321, 36.159172, 29.033768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721962, 35.935905, 28.787376>,  <34.588547, 35.801945, 28.639542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721962, 35.935905, 28.787376>,  <34.944321, 36.159172, 29.033768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721962, 35.935905, 28.787376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755755, -0.030803, -0.654130,
		0.346140, -0.829157, 0.438961,
		-0.555898, -0.558167, -0.615977,
		34.555191, 35.768456, 28.602583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382801, 35.644665, 28.714790>,  <34.944321, 36.159172, 29.033768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382801, 35.644665, 28.714790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064137, 35.666756, 28.474033>,  <34.872936, 35.680012, 28.329580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064137, 35.666756, 28.474033>,  <35.382801, 35.644665, 28.714790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064137, 35.666756, 28.474033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603496, 0.017637, -0.797171,
		-0.033412, -0.998318, -0.047382,
		-0.796666, 0.055229, -0.601892,
		34.825138, 35.683323, 28.293467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425537, 35.185535, 28.126301>,  <35.382801, 35.644665, 28.714790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425537, 35.185535, 28.126301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185646, 35.461330, 27.963852>,  <35.041710, 35.626808, 27.866383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185646, 35.461330, 27.963852>,  <35.425537, 35.185535, 28.126301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185646, 35.461330, 27.963852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518529, -0.051697, -0.853496,
		-0.609468, -0.722452, -0.326514,
		-0.599730, 0.689485, -0.406120,
		35.005726, 35.668175, 27.842016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490322, 35.007458, 27.423862>,  <35.425537, 35.185535, 28.126301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490322, 35.007458, 27.423862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263069, 35.335827, 27.400812>,  <35.126717, 35.532848, 27.386982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263069, 35.335827, 27.400812>,  <35.490322, 35.007458, 27.423862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263069, 35.335827, 27.400812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290284, 0.134390, -0.947457,
		-0.770041, -0.555006, -0.314650,
		-0.568130, 0.820919, -0.057623,
		35.092628, 35.582104, 27.383526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115154, 34.899914, 26.812208>,  <35.490322, 35.007458, 27.423862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115154, 34.899914, 26.812208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137089, 35.292004, 26.888269>,  <35.150249, 35.527256, 26.933907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137089, 35.292004, 26.888269>,  <35.115154, 34.899914, 26.812208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137089, 35.292004, 26.888269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228404, 0.173075, -0.958059,
		-0.972021, 0.095971, -0.214395,
		0.054839, 0.980222, 0.190152,
		35.153542, 35.586071, 26.945314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743168, 35.275650, 26.204247>,  <35.115154, 34.899914, 26.812208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743168, 35.275650, 26.204247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983459, 35.535042, 26.391266>,  <35.127636, 35.690678, 26.503477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983459, 35.535042, 26.391266>,  <34.743168, 35.275650, 26.204247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983459, 35.535042, 26.391266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332908, 0.328803, -0.883776,
		-0.726839, 0.686562, -0.018361,
		0.600731, 0.648476, 0.467549,
		35.163677, 35.729584, 26.531530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.045799, 43.736446, 28.592352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095528, 43.344215, 28.653021>,  <36.125366, 43.108875, 28.689423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095528, 43.344215, 28.653021>,  <36.045799, 43.736446, 28.592352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095528, 43.344215, 28.653021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720160, 0.015982, 0.693624,
		-0.682579, -0.195462, -0.704188,
		0.124323, -0.980581, 0.151673,
		36.132824, 43.050041, 28.698523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374866, 43.411682, 28.501751>,  <36.045799, 43.736446, 28.592352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374866, 43.411682, 28.501751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598934, 43.157730, 28.714594>,  <35.733376, 43.005360, 28.842300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598934, 43.157730, 28.714594>,  <35.374866, 43.411682, 28.501751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598934, 43.157730, 28.714594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722074, -0.059421, 0.689259,
		-0.405977, -0.770324, -0.491715,
		0.560171, -0.634878, 0.532107,
		35.766987, 42.967266, 28.874226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952377, 42.837067, 28.669466>,  <35.374866, 43.411682, 28.501751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952377, 42.837067, 28.669466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.248539, 42.840824, 28.938303>,  <35.426235, 42.843079, 29.099606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.248539, 42.840824, 28.938303>,  <34.952377, 42.837067, 28.669466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248539, 42.840824, 28.938303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652628, -0.229234, 0.722169,
		0.160850, -0.973326, -0.163596,
		0.740408, 0.009394, 0.672092,
		35.470661, 42.843643, 29.139931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871460, 42.132046, 29.000792>,  <34.952377, 42.837067, 28.669466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871460, 42.132046, 29.000792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097256, 42.363750, 29.236015>,  <35.232731, 42.502773, 29.377150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097256, 42.363750, 29.236015>,  <34.871460, 42.132046, 29.000792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097256, 42.363750, 29.236015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633027, -0.153419, 0.758775,
		0.529750, -0.800573, 0.280087,
		0.564485, 0.579263, 0.588057,
		35.266602, 42.537529, 29.412432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925499, 41.763203, 29.586086>,  <34.871460, 42.132046, 29.000792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925499, 41.763203, 29.586086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035614, 42.121883, 29.724737>,  <35.101681, 42.337090, 29.807928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035614, 42.121883, 29.724737>,  <34.925499, 41.763203, 29.586086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035614, 42.121883, 29.724737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474860, -0.186673, 0.860036,
		0.835899, -0.401354, 0.374418,
		0.275285, 0.896699, 0.346626,
		35.118198, 42.390892, 29.828726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203342, 41.605705, 30.244759>,  <34.925499, 41.763203, 29.586086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203342, 41.605705, 30.244759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117363, 41.996185, 30.256311>,  <35.065777, 42.230473, 30.263243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117363, 41.996185, 30.256311>,  <35.203342, 41.605705, 30.244759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117363, 41.996185, 30.256311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352214, -0.105069, 0.930003,
		0.910903, 0.189728, 0.366415,
		-0.214946, 0.976198, 0.028883,
		35.052879, 42.289043, 30.264977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413628, 41.833946, 30.951530>,  <35.203342, 41.605705, 30.244759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413628, 41.833946, 30.951530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.202171, 42.142635, 30.810116>,  <35.075298, 42.327847, 30.725267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.202171, 42.142635, 30.810116>,  <35.413628, 41.833946, 30.951530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202171, 42.142635, 30.810116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359973, 0.173374, 0.916712,
		0.768740, 0.611873, 0.186147,
		-0.528638, 0.771721, -0.353537,
		35.043579, 42.374153, 30.704054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527317, 42.470261, 31.394043>,  <35.413628, 41.833946, 30.951530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527317, 42.470261, 31.394043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.173862, 42.463531, 31.206898>,  <34.961788, 42.459496, 31.094610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.173862, 42.463531, 31.206898>,  <35.527317, 42.470261, 31.394043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173862, 42.463531, 31.206898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463485, 0.172392, 0.869173,
		0.066038, 0.984885, -0.160128,
		-0.883640, -0.016818, -0.467864,
		34.908772, 42.458485, 31.066538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095913, 43.026039, 31.672215>,  <35.527317, 42.470261, 31.394043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095913, 43.026039, 31.672215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.829662, 42.771244, 31.516680>,  <34.669914, 42.618366, 31.423359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.829662, 42.771244, 31.516680>,  <35.095913, 43.026039, 31.672215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829662, 42.771244, 31.516680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584508, 0.121030, 0.802311,
		-0.464002, 0.761313, -0.452885,
		-0.665622, -0.636988, -0.388835,
		34.629974, 42.580147, 31.400028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523705, 43.247673, 32.015659>,  <35.095913, 43.026039, 31.672215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523705, 43.247673, 32.015659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.427990, 42.888283, 31.868427>,  <34.370560, 42.672649, 31.780088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.427990, 42.888283, 31.868427>,  <34.523705, 43.247673, 32.015659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427990, 42.888283, 31.868427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739172, -0.077238, 0.669073,
		-0.629576, 0.432172, -0.645648,
		-0.239287, -0.898477, -0.368077,
		34.356205, 42.618740, 31.758005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809288, 43.343807, 32.015961>,  <34.523705, 43.247673, 32.015659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809288, 43.343807, 32.015961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.907627, 42.956089, 32.017902>,  <33.966633, 42.723457, 32.019070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.907627, 42.956089, 32.017902>,  <33.809288, 43.343807, 32.015961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907627, 42.956089, 32.017902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794972, -0.198764, 0.573160,
		-0.554596, -0.144773, -0.819429,
		0.245851, -0.969295, 0.004857,
		33.981384, 42.665298, 32.019360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221722, 42.971405, 31.861261>,  <33.809288, 43.343807, 32.015961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221722, 42.971405, 31.861261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456848, 42.694469, 32.028660>,  <33.597923, 42.528309, 32.129101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456848, 42.694469, 32.028660>,  <33.221722, 42.971405, 31.861261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456848, 42.694469, 32.028660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677292, -0.138244, 0.722609,
		-0.442438, -0.708204, -0.550179,
		0.587813, -0.692341, 0.418497,
		33.633194, 42.486767, 32.154209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817760, 42.427326, 31.863365>,  <33.221722, 42.971405, 31.861261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817760, 42.427326, 31.863365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.070679, 42.327999, 32.156906>,  <33.222431, 42.268402, 32.333031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.070679, 42.327999, 32.156906>,  <32.817760, 42.427326, 31.863365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070679, 42.327999, 32.156906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774716, -0.197948, 0.600527,
		-0.003854, -0.948239, -0.317534,
		0.632298, -0.248313, 0.733853,
		33.260368, 42.253506, 32.377064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472614, 41.886368, 32.193550>,  <32.817760, 42.427326, 31.863365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472614, 41.886368, 32.193550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.756092, 41.998219, 32.452641>,  <32.926178, 42.065331, 32.608097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.756092, 41.998219, 32.452641>,  <32.472614, 41.886368, 32.193550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756092, 41.998219, 32.452641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553778, -0.348356, 0.756293,
		0.437124, -0.894681, -0.092026,
		0.708699, 0.279631, 0.647729,
		32.968700, 42.082108, 32.646957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295528, 41.141388, 31.903458>,  <32.472614, 41.886368, 32.193550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295528, 41.141388, 31.903458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.946348, 41.114647, 31.710173>,  <31.736841, 41.098602, 31.594202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.946348, 41.114647, 31.710173>,  <32.295528, 41.141388, 31.903458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946348, 41.114647, 31.710173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448515, 0.279534, -0.848938,
		0.191824, -0.957806, -0.214036,
		-0.872948, -0.066848, -0.483211,
		31.684464, 41.094593, 31.565208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406635, 40.651367, 31.387064>,  <32.295528, 41.141388, 31.903458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406635, 40.651367, 31.387064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.087009, 40.869373, 31.285515>,  <31.895233, 41.000175, 31.224585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.087009, 40.869373, 31.285515>,  <32.406635, 40.651367, 31.387064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087009, 40.869373, 31.285515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444669, 0.251508, -0.859659,
		-0.404673, -0.799816, -0.443322,
		-0.799068, 0.545013, -0.253875,
		31.847290, 41.032879, 31.209352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290398, 40.557701, 30.665480>,  <32.406635, 40.651367, 31.387064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290398, 40.557701, 30.665480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.099449, 40.904335, 30.723642>,  <31.984880, 41.112316, 30.758541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.099449, 40.904335, 30.723642>,  <32.290398, 40.557701, 30.665480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099449, 40.904335, 30.723642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290891, 0.312003, -0.904454,
		-0.829155, -0.389463, -0.401024,
		-0.477372, 0.866587, 0.145408,
		31.956238, 41.164310, 30.767265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794695, 40.673817, 30.014122>,  <32.290398, 40.557701, 30.665480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794695, 40.673817, 30.014122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.871664, 41.015694, 30.206985>,  <31.917845, 41.220818, 30.322704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.871664, 41.015694, 30.206985>,  <31.794695, 40.673817, 30.014122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871664, 41.015694, 30.206985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222611, 0.440515, -0.869707,
		-0.955729, 0.274686, -0.105498,
		0.192423, 0.854690, 0.482161,
		31.929390, 41.272102, 30.351633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439423, 41.159184, 29.656458>,  <31.794695, 40.673817, 30.014122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439423, 41.159184, 29.656458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.738914, 41.352322, 29.838123>,  <31.918610, 41.468204, 29.947123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.738914, 41.352322, 29.838123>,  <31.439423, 41.159184, 29.656458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738914, 41.352322, 29.838123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125191, 0.569808, -0.812186,
		-0.650947, 0.664964, 0.366184,
		0.748729, 0.482847, 0.454162,
		31.963533, 41.497177, 29.974373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364565, 41.853596, 29.481546>,  <31.439423, 41.159184, 29.656458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364565, 41.853596, 29.481546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.746908, 41.820023, 29.594183>,  <31.976315, 41.799881, 29.661764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.746908, 41.820023, 29.594183>,  <31.364565, 41.853596, 29.481546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746908, 41.820023, 29.594183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276080, 0.584597, -0.762907,
		-0.100588, 0.806971, 0.581962,
		0.955857, -0.083928, 0.281592,
		32.033665, 41.794846, 29.678661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609777, 42.502419, 29.289330>,  <31.364565, 41.853596, 29.481546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609777, 42.502419, 29.289330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.926575, 42.262497, 29.334915>,  <32.116653, 42.118546, 29.362267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.926575, 42.262497, 29.334915>,  <31.609777, 42.502419, 29.289330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926575, 42.262497, 29.334915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329033, 0.262087, -0.907220,
		0.514283, 0.756008, 0.404925,
		0.791991, -0.599802, 0.113964,
		32.164173, 42.082558, 29.369104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262169, 42.909904, 29.143118>,  <31.609777, 42.502419, 29.289330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262169, 42.909904, 29.143118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.323704, 42.516800, 29.102110>,  <32.360626, 42.280937, 29.077505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.323704, 42.516800, 29.102110>,  <32.262169, 42.909904, 29.143118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323704, 42.516800, 29.102110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448734, 0.161923, -0.878874,
		0.880325, 0.089199, 0.465909,
		0.153837, -0.982764, -0.102518,
		32.369854, 42.221970, 29.071354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746300, 42.923573, 28.625019>,  <32.262169, 42.909904, 29.143118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746300, 42.923573, 28.625019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.719433, 42.529423, 28.687670>,  <32.703312, 42.292934, 28.725260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.719433, 42.529423, 28.687670>,  <32.746300, 42.923573, 28.625019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719433, 42.529423, 28.687670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561003, -0.167112, -0.810771,
		0.825085, 0.033415, 0.564020,
		-0.067163, -0.985372, 0.156627,
		32.699284, 42.233810, 28.734657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389935, 42.643311, 28.634682>,  <32.746300, 42.923573, 28.625019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389935, 42.643311, 28.634682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.151783, 42.344730, 28.515795>,  <33.008892, 42.165581, 28.444462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.151783, 42.344730, 28.515795>,  <33.389935, 42.643311, 28.634682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151783, 42.344730, 28.515795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556413, -0.116206, -0.822740,
		0.579596, -0.655216, 0.484521,
		-0.595377, -0.746450, -0.297218,
		32.973171, 42.120796, 28.426630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849186, 42.271606, 28.356625>,  <33.389935, 42.643311, 28.634682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849186, 42.271606, 28.356625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.506470, 42.144924, 28.193842>,  <33.300842, 42.068916, 28.096172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.506470, 42.144924, 28.193842>,  <33.849186, 42.271606, 28.356625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506470, 42.144924, 28.193842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452894, -0.084776, -0.887524,
		0.246580, -0.944729, 0.216068,
		-0.856787, -0.316702, -0.406958,
		33.249432, 42.049915, 28.071754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028763, 41.634529, 27.948538>,  <33.849186, 42.271606, 28.356625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028763, 41.634529, 27.948538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682804, 41.747307, 27.782421>,  <33.475231, 41.814972, 27.682751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682804, 41.747307, 27.782421>,  <34.028763, 41.634529, 27.948538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682804, 41.747307, 27.782421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396418, -0.123865, -0.909676,
		-0.307917, -0.951402, -0.004638,
		-0.864893, 0.281943, -0.415293,
		33.423336, 41.831890, 27.657833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849739, 41.086594, 27.452105>,  <34.028763, 41.634529, 27.948538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849739, 41.086594, 27.452105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.664116, 41.417309, 27.324936>,  <33.552742, 41.615738, 27.248634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.664116, 41.417309, 27.324936>,  <33.849739, 41.086594, 27.452105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664116, 41.417309, 27.324936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483912, -0.063996, -0.872774,
		-0.741946, -0.558859, -0.370396,
		-0.464053, 0.826790, -0.317921,
		33.524899, 41.665344, 27.229559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572697, 40.947071, 26.725073>,  <33.849739, 41.086594, 27.452105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572697, 40.947071, 26.725073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.614910, 41.343697, 26.755161>,  <33.640240, 41.581673, 26.773214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.614910, 41.343697, 26.755161>,  <33.572697, 40.947071, 26.725073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614910, 41.343697, 26.755161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498748, 0.012662, -0.866655,
		-0.860298, 0.128977, -0.493206,
		0.105533, 0.991567, 0.075220,
		33.646568, 41.641167, 26.777727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167965, 40.371563, 26.573978>,  <33.572697, 40.947071, 26.725073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167965, 40.371563, 26.573978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.253426, 39.990219, 26.488701>,  <33.304703, 39.761414, 26.437534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.253426, 39.990219, 26.488701>,  <33.167965, 40.371563, 26.573978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253426, 39.990219, 26.488701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401034, -0.284589, 0.870736,
		-0.890800, -0.100537, -0.443134,
		0.213652, -0.953363, -0.213194,
		33.317520, 39.704208, 26.424744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516693, 40.082783, 26.723995>,  <33.167965, 40.371563, 26.573978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516693, 40.082783, 26.723995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.769806, 39.773853, 26.701740>,  <32.921673, 39.588493, 26.688387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.769806, 39.773853, 26.701740>,  <32.516693, 40.082783, 26.723995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769806, 39.773853, 26.701740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495292, -0.458938, 0.737606,
		-0.595206, -0.439189, -0.672936,
		0.632784, -0.772327, -0.055636,
		32.959641, 39.542156, 26.685049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081577, 39.524807, 26.780979>,  <32.516693, 40.082783, 26.723995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081577, 39.524807, 26.780979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.449005, 39.405529, 26.884752>,  <32.669464, 39.333961, 26.947016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.449005, 39.405529, 26.884752>,  <32.081577, 39.524807, 26.780979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449005, 39.405529, 26.884752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387455, -0.549634, 0.740122,
		-0.078105, -0.780375, -0.620415,
		0.918574, -0.298190, 0.259432,
		32.724579, 39.316071, 26.962582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068081, 38.887207, 26.854206>,  <32.081577, 39.524807, 26.780979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068081, 38.887207, 26.854206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.384872, 38.985870, 27.077610>,  <32.574947, 39.045071, 27.211653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.384872, 38.985870, 27.077610>,  <32.068081, 38.887207, 26.854206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384872, 38.985870, 27.077610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356384, -0.555995, 0.750906,
		0.495750, -0.793743, -0.352427,
		0.791974, 0.246662, 0.558511,
		32.622463, 39.059868, 27.245163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272591, 38.259296, 27.067833>,  <32.068081, 38.887207, 26.854206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272591, 38.259296, 27.067833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.414852, 38.537571, 27.317482>,  <32.500210, 38.704536, 27.467272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.414852, 38.537571, 27.317482>,  <32.272591, 38.259296, 27.067833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414852, 38.537571, 27.317482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357928, -0.515491, 0.778560,
		0.863366, -0.500287, 0.065672,
		0.355650, 0.695688, 0.624124,
		32.521545, 38.746277, 27.504719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701416, 37.903797, 27.455608>,  <32.272591, 38.259296, 27.067833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701416, 37.903797, 27.455608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.580746, 38.231152, 27.651257>,  <32.508343, 38.427563, 27.768644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.580746, 38.231152, 27.651257>,  <32.701416, 37.903797, 27.455608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580746, 38.231152, 27.651257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297017, -0.568163, 0.767445,
		0.905964, 0.086246, 0.414477,
		-0.301679, 0.818384, 0.489118,
		32.490242, 38.476665, 27.797993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760712, 37.779663, 28.172401>,  <32.701416, 37.903797, 27.455608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760712, 37.779663, 28.172401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.561050, 38.126019, 28.185524>,  <32.441254, 38.333832, 28.193398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.561050, 38.126019, 28.185524>,  <32.760712, 37.779663, 28.172401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561050, 38.126019, 28.185524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413695, -0.271405, 0.869020,
		0.761382, 0.420202, 0.493688,
		-0.499154, 0.865892, 0.032807,
		32.411304, 38.385788, 28.195366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006660, 38.179131, 28.751554>,  <32.760712, 37.779663, 28.172401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006660, 38.179131, 28.751554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.629337, 38.273861, 28.658539>,  <32.402943, 38.330700, 28.602730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.629337, 38.273861, 28.658539>,  <33.006660, 38.179131, 28.751554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629337, 38.273861, 28.658539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287069, -0.230510, 0.929762,
		0.166593, 0.943810, 0.285429,
		-0.943312, 0.236830, -0.232537,
		32.346344, 38.344910, 28.588778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662441, 38.759953, 29.230370>,  <33.006660, 38.179131, 28.751554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662441, 38.759953, 29.230370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.389919, 38.516701, 29.067392>,  <32.226406, 38.370750, 28.969606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.389919, 38.516701, 29.067392>,  <32.662441, 38.759953, 29.230370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389919, 38.516701, 29.067392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200020, -0.380769, 0.902777,
		-0.704143, 0.696562, 0.137782,
		-0.681303, -0.608125, -0.407442,
		32.185528, 38.334263, 28.945160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117840, 38.843910, 29.582100>,  <32.662441, 38.759953, 29.230370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117840, 38.843910, 29.582100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.064491, 38.489471, 29.404537>,  <32.032482, 38.276810, 29.298000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.064491, 38.489471, 29.404537>,  <32.117840, 38.843910, 29.582100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064491, 38.489471, 29.404537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464390, -0.339816, 0.817843,
		-0.875531, 0.315222, -0.366171,
		-0.133372, -0.886093, -0.443905,
		32.024479, 38.223644, 29.271366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477264, 38.578915, 29.846214>,  <32.117840, 38.843910, 29.582100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477264, 38.578915, 29.846214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.597307, 38.252201, 29.649118>,  <31.669333, 38.056171, 29.530861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.597307, 38.252201, 29.649118>,  <31.477264, 38.578915, 29.846214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597307, 38.252201, 29.649118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550356, -0.570166, 0.609934,
		-0.779131, 0.088139, -0.620634,
		0.300106, -0.816788, -0.492742,
		31.687338, 38.007164, 29.501295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844082, 38.176346, 29.550482>,  <31.477264, 38.578915, 29.846214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844082, 38.176346, 29.550482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.174679, 37.976143, 29.653559>,  <31.373037, 37.856022, 29.715405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.174679, 37.976143, 29.653559>,  <30.844082, 38.176346, 29.550482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174679, 37.976143, 29.653559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485186, -0.401165, 0.776957,
		-0.285492, -0.767178, -0.574397,
		0.826492, -0.500504, 0.257694,
		31.422626, 37.825993, 29.730867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485081, 37.657455, 29.762558>,  <30.844082, 38.176346, 29.550482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485081, 37.657455, 29.762558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.861786, 37.599545, 29.883963>,  <31.087809, 37.564800, 29.956806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.861786, 37.599545, 29.883963>,  <30.485081, 37.657455, 29.762558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861786, 37.599545, 29.883963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313682, -0.703457, 0.637771,
		0.121175, -0.695837, -0.707904,
		0.941764, -0.144774, 0.303513,
		31.144316, 37.556110, 29.975016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577227, 36.874462, 29.872787>,  <30.485081, 37.657455, 29.762558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577227, 36.874462, 29.872787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.821356, 37.091309, 30.103827>,  <30.967833, 37.221416, 30.242451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.821356, 37.091309, 30.103827>,  <30.577227, 36.874462, 29.872787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821356, 37.091309, 30.103827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361550, -0.458140, 0.812028,
		0.704833, -0.704429, -0.083611,
		0.610321, 0.542115, 0.577599,
		31.004452, 37.253944, 30.277105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.469646, 36.141087, 26.078867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857231, 36.129944, 26.177114>,  <35.089783, 36.123260, 26.236063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857231, 36.129944, 26.177114>,  <34.469646, 36.141087, 26.078867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857231, 36.129944, 26.177114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236301, 0.396093, -0.887284,
		-0.072575, 0.917788, 0.390382,
		0.968966, -0.027853, 0.245621,
		35.147923, 36.121590, 26.250801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851597, 36.703278, 25.773901>,  <34.469646, 36.141087, 26.078867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851597, 36.703278, 25.773901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174648, 36.486118, 25.865980>,  <35.368481, 36.355824, 25.921228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174648, 36.486118, 25.865980>,  <34.851597, 36.703278, 25.773901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174648, 36.486118, 25.865980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443888, 0.302720, -0.843400,
		0.388198, 0.783338, 0.485473,
		0.807630, -0.542902, 0.230199,
		35.416939, 36.323246, 25.935040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418365, 37.223324, 25.770540>,  <34.851597, 36.703278, 25.773901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418365, 37.223324, 25.770540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614468, 36.875679, 25.744333>,  <35.732128, 36.667091, 25.728609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614468, 36.875679, 25.744333>,  <35.418365, 37.223324, 25.770540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614468, 36.875679, 25.744333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535242, 0.359545, -0.764359,
		0.687868, 0.339667, 0.641454,
		0.490259, -0.869111, -0.065515,
		35.761547, 36.614944, 25.724678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094494, 37.379726, 25.534586>,  <35.418365, 37.223324, 25.770540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094494, 37.379726, 25.534586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027004, 37.000935, 25.425211>,  <35.986511, 36.773659, 25.359587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027004, 37.000935, 25.425211>,  <36.094494, 37.379726, 25.534586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027004, 37.000935, 25.425211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194810, 0.239905, -0.951049,
		0.966220, -0.213733, 0.144003,
		-0.168724, -0.946976, -0.273438,
		35.976387, 36.716843, 25.343180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602451, 37.226540, 24.999220>,  <36.094494, 37.379726, 25.534586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602451, 37.226540, 24.999220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321339, 36.945534, 24.954359>,  <36.152672, 36.776932, 24.927443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321339, 36.945534, 24.954359>,  <36.602451, 37.226540, 24.999220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321339, 36.945534, 24.954359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079854, 0.078752, -0.993691,
		0.706911, -0.707302, 0.000753,
		-0.702780, -0.702511, -0.112151,
		36.110504, 36.734779, 24.920713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927204, 36.646679, 24.679554>,  <36.602451, 37.226540, 24.999220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927204, 36.646679, 24.679554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538746, 36.627312, 24.586138>,  <36.305672, 36.615692, 24.530088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538746, 36.627312, 24.586138>,  <36.927204, 36.646679, 24.679554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538746, 36.627312, 24.586138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226922, 0.113858, -0.967235,
		0.073413, -0.992317, -0.099587,
		-0.971142, -0.048409, -0.233538,
		36.247402, 36.612785, 24.516077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819485, 36.172848, 24.067493>,  <36.927204, 36.646679, 24.679554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819485, 36.172848, 24.067493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478020, 36.380260, 24.087021>,  <36.273140, 36.504707, 24.098738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478020, 36.380260, 24.087021>,  <36.819485, 36.172848, 24.067493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478020, 36.380260, 24.087021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007622, 0.081287, -0.996661,
		-0.520769, -0.851186, -0.065439,
		-0.853663, 0.518532, 0.048820,
		36.221920, 36.535820, 24.101667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581287, 35.959999, 23.456841>,  <36.819485, 36.172848, 24.067493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581287, 35.959999, 23.456841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.370090, 36.273483, 23.587698>,  <36.243374, 36.461575, 23.666212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.370090, 36.273483, 23.587698>,  <36.581287, 35.959999, 23.456841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370090, 36.273483, 23.587698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022748, 0.372024, -0.927944,
		-0.848946, -0.497387, -0.178597,
		-0.527990, 0.783712, 0.327143,
		36.211693, 36.508598, 23.685841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156956, 36.140148, 22.849209>,  <36.581287, 35.959999, 23.456841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156956, 36.140148, 22.849209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.176815, 36.461102, 23.087107>,  <36.188732, 36.653671, 23.229845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.176815, 36.461102, 23.087107>,  <36.156956, 36.140148, 22.849209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176815, 36.461102, 23.087107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119428, 0.586437, -0.801142,
		-0.991601, 0.110803, -0.066712,
		0.049647, 0.802380, 0.594744,
		36.191708, 36.701817, 23.265530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753521, 36.684662, 22.501493>,  <36.156956, 36.140148, 22.849209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753521, 36.684662, 22.501493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.955841, 36.885990, 22.781733>,  <36.077232, 37.006786, 22.949877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.955841, 36.885990, 22.781733>,  <35.753521, 36.684662, 22.501493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955841, 36.885990, 22.781733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319572, 0.645038, -0.694118,
		-0.801276, 0.574975, 0.165412,
		0.505797, 0.503319, 0.700599,
		36.107582, 37.036987, 22.991913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529018, 37.419350, 22.491087>,  <35.753521, 36.684662, 22.501493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529018, 37.419350, 22.491087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893440, 37.401775, 22.655064>,  <36.112095, 37.391232, 22.753448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893440, 37.401775, 22.655064>,  <35.529018, 37.419350, 22.491087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893440, 37.401775, 22.655064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344062, 0.628864, -0.697245,
		-0.227162, 0.776272, 0.588046,
		0.911054, -0.043937, 0.409940,
		36.166756, 37.388596, 22.778046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606846, 38.171974, 22.656782>,  <35.529018, 37.419350, 22.491087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606846, 38.171974, 22.656782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952892, 37.981430, 22.593987>,  <36.160522, 37.867104, 22.556309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952892, 37.981430, 22.593987>,  <35.606846, 38.171974, 22.656782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952892, 37.981430, 22.593987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202056, 0.617479, -0.760193,
		0.459066, 0.625937, 0.630445,
		0.865120, -0.476364, -0.156989,
		36.212429, 37.838520, 22.546890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175339, 38.627201, 22.589083>,  <35.606846, 38.171974, 22.656782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175339, 38.627201, 22.589083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.302094, 38.297276, 22.401777>,  <36.378147, 38.099319, 22.289394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.302094, 38.297276, 22.401777>,  <36.175339, 38.627201, 22.589083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302094, 38.297276, 22.401777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297730, 0.555258, -0.776560,
		0.900520, 0.106669, 0.421527,
		0.316892, -0.824809, -0.468262,
		36.397160, 38.049831, 22.261299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806740, 38.714901, 22.322224>,  <36.175339, 38.627201, 22.589083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806740, 38.714901, 22.322224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.609673, 38.464157, 22.080784>,  <36.491432, 38.313709, 21.935921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.609673, 38.464157, 22.080784>,  <36.806740, 38.714901, 22.322224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609673, 38.464157, 22.080784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139268, 0.627880, -0.765749,
		0.859003, -0.461319, -0.222033,
		-0.492664, -0.626859, -0.603598,
		36.461872, 38.276100, 21.899704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918278, 39.478310, 22.304474>,  <36.806740, 38.714901, 22.322224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918278, 39.478310, 22.304474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660496, 39.710518, 22.105406>,  <36.505829, 39.849842, 21.985966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660496, 39.710518, 22.105406>,  <36.918278, 39.478310, 22.304474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660496, 39.710518, 22.105406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632697, -0.039355, 0.773399,
		0.429390, 0.813292, 0.392658,
		-0.644452, 0.580523, -0.497669,
		36.467159, 39.884674, 21.956104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654346, 40.000824, 22.804916>,  <36.918278, 39.478310, 22.304474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654346, 40.000824, 22.804916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386677, 39.970276, 22.509251>,  <36.226074, 39.951946, 22.331850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386677, 39.970276, 22.509251>,  <36.654346, 40.000824, 22.804916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386677, 39.970276, 22.509251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742177, 0.019082, 0.669932,
		-0.037061, 0.996897, -0.069453,
		-0.669178, -0.076375, -0.739166,
		36.185925, 39.947365, 22.287500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241947, 40.584469, 22.720461>,  <36.654346, 40.000824, 22.804916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241947, 40.584469, 22.720461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.014343, 40.297459, 22.559767>,  <35.877781, 40.125252, 22.463350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.014343, 40.297459, 22.559767>,  <36.241947, 40.584469, 22.720461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014343, 40.297459, 22.559767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749872, 0.252223, 0.611617,
		-0.337523, 0.649264, -0.681568,
		-0.569008, -0.717524, -0.401734,
		35.843639, 40.082203, 22.439247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595356, 40.868439, 22.744755>,  <36.241947, 40.584469, 22.720461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595356, 40.868439, 22.744755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537399, 40.476315, 22.691082>,  <35.502625, 40.241039, 22.658878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537399, 40.476315, 22.691082>,  <35.595356, 40.868439, 22.744755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537399, 40.476315, 22.691082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805605, 0.038146, 0.591224,
		-0.574462, 0.193762, -0.795267,
		-0.144893, -0.980307, -0.134182,
		35.493931, 40.182224, 22.650827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867840, 40.829788, 22.736729>,  <35.595356, 40.868439, 22.744755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867840, 40.829788, 22.736729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940704, 40.440166, 22.790447>,  <34.984425, 40.206394, 22.822678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940704, 40.440166, 22.790447>,  <34.867840, 40.829788, 22.736729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940704, 40.440166, 22.790447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687950, -0.028676, 0.725191,
		-0.702524, -0.224493, -0.675324,
		0.182166, -0.974054, 0.134294,
		34.995354, 40.147949, 22.830736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246250, 40.453411, 22.815208>,  <34.867840, 40.829788, 22.736729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246250, 40.453411, 22.815208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514717, 40.219795, 22.997826>,  <34.675797, 40.079624, 23.107395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514717, 40.219795, 22.997826>,  <34.246250, 40.453411, 22.815208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514717, 40.219795, 22.997826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703939, -0.309061, 0.639493,
		-0.232390, -0.750585, -0.618560,
		0.671167, -0.584041, 0.456544,
		34.716068, 40.044582, 23.134789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988068, 39.721764, 22.865540>,  <34.246250, 40.453411, 22.815208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988068, 39.721764, 22.865540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259457, 39.768333, 23.155678>,  <34.422291, 39.796276, 23.329760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259457, 39.768333, 23.155678>,  <33.988068, 39.721764, 22.865540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259457, 39.768333, 23.155678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633001, -0.408419, 0.657651,
		0.372812, -0.905339, -0.203402,
		0.678470, 0.116426, 0.725344,
		34.462997, 39.803261, 23.373281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962826, 39.126968, 23.222511>,  <33.988068, 39.721764, 22.865540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962826, 39.126968, 23.222511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136192, 39.380283, 23.478979>,  <34.240211, 39.532272, 23.632860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136192, 39.380283, 23.478979>,  <33.962826, 39.126968, 23.222511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136192, 39.380283, 23.478979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634461, -0.290839, 0.716151,
		0.640004, -0.717191, 0.275739,
		0.433421, 0.633285, 0.641168,
		34.266220, 39.570271, 23.671329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921513, 38.765831, 23.947374>,  <33.962826, 39.126968, 23.222511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921513, 38.765831, 23.947374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075096, 39.120010, 24.052107>,  <34.167248, 39.332516, 24.114946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075096, 39.120010, 24.052107>,  <33.921513, 38.765831, 23.947374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075096, 39.120010, 24.052107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255814, -0.170458, 0.951579,
		0.887204, -0.432352, 0.161060,
		0.383963, 0.885447, 0.261833,
		34.190285, 39.385643, 24.130657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382431, 38.693569, 24.556618>,  <33.921513, 38.765831, 23.947374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382431, 38.693569, 24.556618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236961, 39.065483, 24.533817>,  <34.149681, 39.288631, 24.520138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236961, 39.065483, 24.533817>,  <34.382431, 38.693569, 24.556618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236961, 39.065483, 24.533817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458570, -0.125430, 0.879762,
		0.810838, 0.346081, 0.471985,
		-0.363670, 0.929782, -0.057000,
		34.127861, 39.344418, 24.516718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495834, 38.865940, 25.208982>,  <34.382431, 38.693569, 24.556618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495834, 38.865940, 25.208982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230377, 39.126106, 25.061178>,  <34.071102, 39.282207, 24.972496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230377, 39.126106, 25.061178>,  <34.495834, 38.865940, 25.208982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230377, 39.126106, 25.061178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373665, 0.139692, 0.916985,
		0.648042, 0.746620, 0.150334,
		-0.663638, 0.650419, -0.369512,
		34.031284, 39.321232, 24.950325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605679, 39.546707, 25.572672>,  <34.495834, 38.865940, 25.208982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605679, 39.546707, 25.572672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.218845, 39.528519, 25.472532>,  <33.986744, 39.517605, 25.412449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.218845, 39.528519, 25.472532>,  <34.605679, 39.546707, 25.572672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218845, 39.528519, 25.472532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249687, 0.359000, 0.899320,
		0.048982, 0.932229, -0.358538,
		-0.967087, -0.045472, -0.250350,
		33.928719, 39.514877, 25.397427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370075, 40.071972, 25.921804>,  <34.605679, 39.546707, 25.572672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370075, 40.071972, 25.921804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042637, 39.870163, 25.811998>,  <33.846172, 39.749077, 25.746115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042637, 39.870163, 25.811998>,  <34.370075, 40.071972, 25.921804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042637, 39.870163, 25.811998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338722, 0.038055, 0.940116,
		-0.463862, 0.862560, -0.202044,
		-0.818596, -0.504521, -0.274516,
		33.797058, 39.718807, 25.729643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841656, 40.382687, 26.260025>,  <34.370075, 40.071972, 25.921804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841656, 40.382687, 26.260025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725723, 40.007935, 26.181786>,  <33.656162, 39.783085, 26.134842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725723, 40.007935, 26.181786>,  <33.841656, 40.382687, 26.260025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725723, 40.007935, 26.181786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496732, -0.027437, 0.867470,
		-0.818078, 0.348584, -0.457424,
		-0.289836, -0.936876, -0.195598,
		33.638771, 39.726871, 26.123106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634064, 41.141525, 26.022324>,  <33.841656, 40.382687, 26.260025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634064, 41.141525, 26.022324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.765060, 41.471100, 26.207314>,  <33.843658, 41.668842, 26.318308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.765060, 41.471100, 26.207314>,  <33.634064, 41.141525, 26.022324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765060, 41.471100, 26.207314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502442, 0.262660, -0.823748,
		-0.800187, 0.502139, -0.327959,
		0.327494, 0.823934, 0.462473,
		33.863308, 41.718281, 26.346056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545368, 41.751564, 25.496294>,  <33.634064, 41.141525, 26.022324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545368, 41.751564, 25.496294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.824200, 41.844627, 25.767570>,  <33.991501, 41.900467, 25.930336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.824200, 41.844627, 25.767570>,  <33.545368, 41.751564, 25.496294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824200, 41.844627, 25.767570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659931, 0.161585, -0.733745,
		-0.280297, 0.959042, -0.040899,
		0.697083, 0.232657, 0.678193,
		34.033325, 41.914425, 25.971029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900482, 42.281326, 25.183399>,  <33.545368, 41.751564, 25.496294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900482, 42.281326, 25.183399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161854, 42.186905, 25.471098>,  <34.318676, 42.130253, 25.643717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161854, 42.186905, 25.471098>,  <33.900482, 42.281326, 25.183399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161854, 42.186905, 25.471098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754782, 0.130632, -0.642837,
		0.057788, 0.962919, 0.263528,
		0.653425, -0.236055, 0.719245,
		34.357880, 42.116089, 25.686871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490803, 42.793533, 25.162273>,  <33.900482, 42.281326, 25.183399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490803, 42.793533, 25.162273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640797, 42.474400, 25.351099>,  <34.730793, 42.282917, 25.464394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640797, 42.474400, 25.351099>,  <34.490803, 42.793533, 25.162273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640797, 42.474400, 25.351099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860118, 0.109479, -0.498207,
		0.345807, 0.592850, 0.727287,
		0.374985, -0.797837, 0.472063,
		34.753292, 42.235050, 25.492718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254704, 42.998901, 25.269567>,  <34.490803, 42.793533, 25.162273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254704, 42.998901, 25.269567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.234379, 42.604153, 25.330889>,  <35.222183, 42.367302, 25.367682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.234379, 42.604153, 25.330889>,  <35.254704, 42.998901, 25.269567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234379, 42.604153, 25.330889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837926, -0.125648, -0.531124,
		0.543413, 0.101469, 0.833310,
		-0.050811, -0.986872, 0.153303,
		35.219135, 42.308090, 25.376879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901905, 42.787479, 25.513899>,  <35.254704, 42.998901, 25.269567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901905, 42.787479, 25.513899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.743252, 42.453281, 25.361780>,  <35.648060, 42.252762, 25.270510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.743252, 42.453281, 25.361780>,  <35.901905, 42.787479, 25.513899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743252, 42.453281, 25.361780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856837, -0.188297, -0.479974,
		0.329408, -0.516226, 0.790570,
		-0.396637, -0.835497, -0.380295,
		35.624260, 42.202633, 25.247692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426853, 42.351692, 25.551258>,  <35.901905, 42.787479, 25.513899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426853, 42.351692, 25.551258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.188362, 42.190750, 25.273375>,  <36.045269, 42.094185, 25.106644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.188362, 42.190750, 25.273375>,  <36.426853, 42.351692, 25.551258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188362, 42.190750, 25.273375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800536, -0.232815, -0.552212,
		0.060450, -0.885384, 0.460913,
		-0.596227, -0.402359, -0.694708,
		36.009495, 42.070042, 25.064962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891193, 42.191040, 26.193163>,  <36.426853, 42.351692, 25.551258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891193, 42.191040, 26.193163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.241650, 42.329895, 26.326954>,  <37.451923, 42.413208, 26.407228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.241650, 42.329895, 26.326954>,  <36.891193, 42.191040, 26.193163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241650, 42.329895, 26.326954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385316, 0.087356, 0.918640,
		0.289680, -0.933735, 0.210296,
		0.876137, 0.347142, 0.334478,
		37.504490, 42.434036, 26.427298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122723, 41.738369, 26.697277>,  <36.891193, 42.191040, 26.193163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122723, 41.738369, 26.697277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.271656, 42.106255, 26.747070>,  <37.361015, 42.326984, 26.776947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.271656, 42.106255, 26.747070>,  <37.122723, 41.738369, 26.697277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271656, 42.106255, 26.747070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515688, 0.093500, 0.851660,
		0.771642, -0.381299, 0.509097,
		0.372337, 0.919711, 0.124482,
		37.383358, 42.382168, 26.784414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410427, 41.796684, 27.344900>,  <37.122723, 41.738369, 26.697277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410427, 41.796684, 27.344900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370823, 42.185287, 27.258774>,  <37.347061, 42.418449, 27.207098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370823, 42.185287, 27.258774>,  <37.410427, 41.796684, 27.344900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370823, 42.185287, 27.258774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464941, 0.146145, 0.873196,
		0.879788, 0.186563, 0.437226,
		-0.099008, 0.971512, -0.215318,
		37.341122, 42.476742, 27.194178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664787, 42.054077, 27.972723>,  <37.410427, 41.796684, 27.344900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664787, 42.054077, 27.972723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.442654, 42.330669, 27.787914>,  <37.309376, 42.496624, 27.677029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.442654, 42.330669, 27.787914>,  <37.664787, 42.054077, 27.972723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442654, 42.330669, 27.787914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399658, 0.265300, 0.877433,
		0.729302, 0.671915, 0.129027,
		-0.555330, 0.691481, -0.462020,
		37.276054, 42.538113, 27.649309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685352, 42.729279, 28.347385>,  <37.664787, 42.054077, 27.972723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685352, 42.729279, 28.347385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.369556, 42.799091, 28.112015>,  <37.180080, 42.840981, 27.970793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.369556, 42.799091, 28.112015>,  <37.685352, 42.729279, 28.347385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369556, 42.799091, 28.112015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510975, 0.344213, 0.787669,
		0.340017, 0.922527, -0.182572,
		-0.789489, 0.174531, -0.588426,
		37.132710, 42.851452, 27.935488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334423, 43.378963, 28.641743>,  <37.685352, 42.729279, 28.347385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334423, 43.378963, 28.641743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.069633, 43.165104, 28.431625>,  <36.910759, 43.036789, 28.305555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.069633, 43.165104, 28.431625>,  <37.334423, 43.378963, 28.641743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069633, 43.165104, 28.431625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652133, 0.065374, 0.755281,
		-0.369470, 0.842542, -0.391938,
		-0.661978, -0.534649, -0.525295,
		36.871040, 43.004707, 28.274036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791103, 43.655220, 28.921322>,  <37.334423, 43.378963, 28.641743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791103, 43.655220, 28.921322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.665436, 43.329594, 28.725941>,  <36.590034, 43.134216, 28.608713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.665436, 43.329594, 28.725941>,  <36.791103, 43.655220, 28.921322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665436, 43.329594, 28.725941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764705, -0.087900, 0.638357,
		-0.562602, 0.574076, -0.594908,
		-0.314173, -0.814070, -0.488452,
		36.571182, 43.085373, 28.579405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.835369, 38.646683, 23.487936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.543289, 38.380810, 23.424686>,  <38.368042, 38.221287, 23.386736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.543289, 38.380810, 23.424686>,  <38.835369, 38.646683, 23.487936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543289, 38.380810, 23.424686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075687, -0.151317, 0.985584,
		-0.679028, 0.731641, 0.060183,
		-0.730200, -0.664684, -0.158124,
		38.324230, 38.181404, 23.377249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154465, 38.825115, 23.778524>,  <38.835369, 38.646683, 23.487936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154465, 38.825115, 23.778524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.216015, 38.430115, 23.764902>,  <38.252945, 38.193115, 23.756729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.216015, 38.430115, 23.764902>,  <38.154465, 38.825115, 23.778524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216015, 38.430115, 23.764902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109371, -0.051279, 0.992677,
		-0.982018, -0.149024, -0.115895,
		0.153875, -0.987503, -0.034058,
		38.262177, 38.133865, 23.754684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585106, 38.624886, 24.088354>,  <38.154465, 38.825115, 23.778524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585106, 38.624886, 24.088354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841629, 38.318520, 24.106699>,  <37.995544, 38.134701, 24.117706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841629, 38.318520, 24.106699>,  <37.585106, 38.624886, 24.088354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841629, 38.318520, 24.106699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121136, -0.042044, 0.991745,
		-0.757661, -0.641570, -0.119742,
		0.641308, -0.765911, 0.045862,
		38.034023, 38.088745, 24.120459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284180, 38.171417, 24.497684>,  <37.585106, 38.624886, 24.088354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284180, 38.171417, 24.497684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.672245, 38.074444, 24.496841>,  <37.905083, 38.016258, 24.496336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.672245, 38.074444, 24.496841>,  <37.284180, 38.171417, 24.497684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672245, 38.074444, 24.496841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003040, -0.020861, 0.999778,
		-0.242429, -0.969942, -0.020976,
		0.970164, -0.242439, -0.002109,
		37.963295, 38.001713, 24.496208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410397, 37.492081, 24.776739>,  <37.284180, 38.171417, 24.497684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410397, 37.492081, 24.776739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.753361, 37.694443, 24.814503>,  <37.959137, 37.815861, 24.837160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.753361, 37.694443, 24.814503>,  <37.410397, 37.492081, 24.776739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753361, 37.694443, 24.814503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039800, -0.117714, 0.992250,
		0.513099, -0.854519, -0.080793,
		0.857406, 0.505906, 0.094409,
		38.010582, 37.846214, 24.842825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756393, 37.114876, 25.284533>,  <37.410397, 37.492081, 24.776739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756393, 37.114876, 25.284533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931858, 37.474281, 25.278261>,  <38.037136, 37.689926, 25.274498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931858, 37.474281, 25.278261>,  <37.756393, 37.114876, 25.284533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931858, 37.474281, 25.278261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072464, -0.017979, 0.997209,
		0.895726, -0.438574, -0.072997,
		0.438662, 0.898516, -0.015676,
		38.063457, 37.743835, 25.273558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249722, 36.949490, 25.724888>,  <37.756393, 37.114876, 25.284533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249722, 36.949490, 25.724888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.204178, 37.345764, 25.695044>,  <38.176853, 37.583530, 25.677137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.204178, 37.345764, 25.695044>,  <38.249722, 36.949490, 25.724888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204178, 37.345764, 25.695044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124945, 0.088784, 0.988183,
		0.985609, 0.103192, -0.133891,
		-0.113860, 0.990691, -0.074613,
		38.170021, 37.642971, 25.672659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708035, 37.141911, 26.168938>,  <38.249722, 36.949490, 25.724888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708035, 37.141911, 26.168938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.479877, 37.467426, 26.124388>,  <38.342983, 37.662735, 26.097658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.479877, 37.467426, 26.124388>,  <38.708035, 37.141911, 26.168938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479877, 37.467426, 26.124388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004595, 0.132434, 0.991181,
		0.821359, 0.565875, -0.071800,
		-0.570394, 0.813785, -0.111376,
		38.308758, 37.711563, 26.090975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989483, 37.629257, 26.727800>,  <38.708035, 37.141911, 26.168938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989483, 37.629257, 26.727800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.611832, 37.721405, 26.633526>,  <38.385239, 37.776691, 26.576962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.611832, 37.721405, 26.633526>,  <38.989483, 37.629257, 26.727800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611832, 37.721405, 26.633526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235982, 0.026688, 0.971391,
		0.230066, 0.972738, 0.029165,
		-0.944130, 0.230366, -0.235689,
		38.328594, 37.790516, 26.562819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856796, 37.915157, 27.278654>,  <38.989483, 37.629257, 26.727800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856796, 37.915157, 27.278654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.497543, 37.900631, 27.103367>,  <38.281990, 37.891914, 26.998194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.497543, 37.900631, 27.103367>,  <38.856796, 37.915157, 27.278654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497543, 37.900631, 27.103367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422411, -0.205603, 0.882778,
		-0.122159, 0.977961, 0.169318,
		-0.898135, -0.036317, -0.438218,
		38.228104, 37.889736, 26.971901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302021, 38.329334, 27.650702>,  <38.856796, 37.915157, 27.278654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302021, 38.329334, 27.650702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.105698, 38.043980, 27.450630>,  <37.987904, 37.872765, 27.330587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.105698, 38.043980, 27.450630>,  <38.302021, 38.329334, 27.650702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105698, 38.043980, 27.450630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359968, -0.356758, 0.862059,
		-0.793426, 0.603159, -0.081696,
		-0.490813, -0.713389, -0.500179,
		37.958454, 37.829964, 27.300577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646549, 38.341728, 27.909332>,  <38.302021, 38.329334, 27.650702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646549, 38.341728, 27.909332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.701504, 37.972523, 27.765570>,  <37.734478, 37.750999, 27.679312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.701504, 37.972523, 27.765570>,  <37.646549, 38.341728, 27.909332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701504, 37.972523, 27.765570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465789, -0.380429, 0.798946,
		-0.874165, 0.057642, -0.482195,
		0.137388, -0.923012, -0.359407,
		37.742722, 37.695618, 27.657747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422394, 39.009331, 28.040405>,  <37.646549, 38.341728, 27.909332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422394, 39.009331, 28.040405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.510082, 39.198593, 28.381712>,  <37.562695, 39.312149, 28.586496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.510082, 39.198593, 28.381712>,  <37.422394, 39.009331, 28.040405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510082, 39.198593, 28.381712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884553, 0.272654, -0.378453,
		-0.411713, 0.837727, -0.358757,
		0.219224, 0.473153, 0.853268,
		37.575848, 39.340538, 28.637693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704689, 39.652489, 27.781597>,  <37.422394, 39.009331, 28.040405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704689, 39.652489, 27.781597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.818054, 39.650085, 28.165190>,  <37.886074, 39.648643, 28.395346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.818054, 39.650085, 28.165190>,  <37.704689, 39.652489, 27.781597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818054, 39.650085, 28.165190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850676, 0.463246, -0.248504,
		-0.442750, 0.886210, 0.136399,
		0.283413, -0.006006, 0.958979,
		37.903076, 39.648285, 28.452883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990746, 40.318565, 27.826799>,  <37.704689, 39.652489, 27.781597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990746, 40.318565, 27.826799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.148800, 40.166027, 28.161091>,  <38.243633, 40.074505, 28.361666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.148800, 40.166027, 28.161091>,  <37.990746, 40.318565, 27.826799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148800, 40.166027, 28.161091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901440, 0.336105, -0.272837,
		-0.176848, 0.861167, 0.476566,
		0.395134, -0.381345, 0.835730,
		38.267342, 40.051624, 28.411810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477993, 40.888893, 28.177765>,  <37.990746, 40.318565, 27.826799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477993, 40.888893, 28.177765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.591587, 40.524330, 28.296888>,  <38.659744, 40.305592, 28.368362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.591587, 40.524330, 28.296888>,  <38.477993, 40.888893, 28.177765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591587, 40.524330, 28.296888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903304, 0.150150, -0.401867,
		0.321548, 0.383136, 0.865918,
		0.283987, -0.911407, 0.297808,
		38.676785, 40.250908, 28.386230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140198, 40.956387, 28.458267>,  <38.477993, 40.888893, 28.177765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140198, 40.956387, 28.458267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.127853, 40.565254, 28.375423>,  <39.120449, 40.330574, 28.325718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.127853, 40.565254, 28.375423>,  <39.140198, 40.956387, 28.458267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127853, 40.565254, 28.375423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912276, 0.057113, -0.405575,
		0.408412, -0.201455, 0.890289,
		-0.030858, -0.977831, -0.207108,
		39.118595, 40.271904, 28.313292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785908, 40.702400, 28.653814>,  <39.140198, 40.956387, 28.458267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785908, 40.702400, 28.653814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633514, 40.440994, 28.392199>,  <39.542080, 40.284149, 28.235229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633514, 40.440994, 28.392199>,  <39.785908, 40.702400, 28.653814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633514, 40.440994, 28.392199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889944, -0.067387, -0.451064,
		0.250706, -0.753904, 0.607269,
		-0.380981, -0.653519, -0.654038,
		39.519218, 40.244938, 28.195988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325600, 40.341908, 28.622612>,  <39.785908, 40.702400, 28.653814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325600, 40.341908, 28.622612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.119854, 40.255054, 28.290762>,  <39.996407, 40.202942, 28.091652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.119854, 40.255054, 28.290762>,  <40.325600, 40.341908, 28.622612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119854, 40.255054, 28.290762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845289, 0.034771, -0.533176,
		0.144618, -0.975522, 0.165655,
		-0.514365, -0.217133, -0.829628,
		39.965546, 40.189915, 28.041874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742847, 39.820660, 28.248764>,  <40.325600, 40.341908, 28.622612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742847, 39.820660, 28.248764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.492279, 39.961655, 27.970671>,  <40.341938, 40.046249, 27.803814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.492279, 39.961655, 27.970671>,  <40.742847, 39.820660, 28.248764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492279, 39.961655, 27.970671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708779, -0.113604, -0.696223,
		-0.324389, -0.928897, -0.178670,
		-0.626422, 0.352485, -0.695234,
		40.304352, 40.067398, 27.762100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851707, 39.432537, 27.584017>,  <40.742847, 39.820660, 28.248764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851707, 39.432537, 27.584017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.688972, 39.787247, 27.496275>,  <40.591331, 40.000072, 27.443630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.688972, 39.787247, 27.496275>,  <40.851707, 39.432537, 27.584017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688972, 39.787247, 27.496275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635329, 0.102132, -0.765458,
		-0.656386, -0.450777, -0.604944,
		-0.406836, 0.886774, -0.219353,
		40.566921, 40.053280, 27.430470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800095, 39.407200, 26.894863>,  <40.851707, 39.432537, 27.584017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800095, 39.407200, 26.894863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.735088, 39.795341, 26.966427>,  <40.696083, 40.028225, 27.009365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.735088, 39.795341, 26.966427>,  <40.800095, 39.407200, 26.894863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735088, 39.795341, 26.966427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570219, 0.240337, -0.785550,
		-0.805257, -0.025648, -0.592371,
		-0.162516, 0.970351, 0.178908,
		40.686333, 40.086445, 27.020100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612328, 39.764980, 26.189526>,  <40.800095, 39.407200, 26.894863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612328, 39.764980, 26.189526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.728756, 40.069073, 26.421844>,  <40.798611, 40.251530, 26.561235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.728756, 40.069073, 26.421844>,  <40.612328, 39.764980, 26.189526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728756, 40.069073, 26.421844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488765, 0.403714, -0.773385,
		-0.822428, 0.508981, -0.254067,
		0.291068, 0.760233, 0.580798,
		40.816074, 40.297142, 26.596085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557522, 40.248367, 25.713755>,  <40.612328, 39.764980, 26.189526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557522, 40.248367, 25.713755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784149, 40.422020, 25.993904>,  <40.920128, 40.526211, 26.161993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784149, 40.422020, 25.993904>,  <40.557522, 40.248367, 25.713755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784149, 40.422020, 25.993904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704136, 0.186404, -0.685161,
		-0.428003, 0.881353, -0.200077,
		0.566573, 0.434133, 0.700374,
		40.954121, 40.552261, 26.204016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725407, 40.817871, 25.383575>,  <40.557522, 40.248367, 25.713755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725407, 40.817871, 25.383575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988186, 40.787960, 25.683662>,  <41.145855, 40.770012, 25.863714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988186, 40.787960, 25.683662>,  <40.725407, 40.817871, 25.383575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988186, 40.787960, 25.683662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744498, 0.221271, -0.629890,
		-0.118900, 0.972341, 0.201036,
		0.656951, -0.074777, 0.750216,
		41.185272, 40.765526, 25.908728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098362, 41.432518, 25.330076>,  <40.725407, 40.817871, 25.383575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098362, 41.432518, 25.330076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.321186, 41.154335, 25.511637>,  <41.454880, 40.987427, 25.620573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.321186, 41.154335, 25.511637>,  <41.098362, 41.432518, 25.330076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321186, 41.154335, 25.511637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765970, 0.219067, -0.604400,
		0.320901, 0.684359, 0.654733,
		0.557057, -0.695459, 0.453899,
		41.488304, 40.945698, 25.647806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229210, 41.444618, 25.441959>,  <41.098362, 41.432518, 25.330076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229210, 41.444618, 25.441959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.030155, 41.641983, 25.156610>,  <39.910721, 41.760403, 24.985401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.030155, 41.641983, 25.156610>,  <40.229210, 41.444618, 25.441959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030155, 41.641983, 25.156610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699067, 0.258727, 0.666608,
		0.513480, 0.830426, 0.216174,
		-0.497639, 0.493410, -0.713374,
		39.880863, 41.790005, 24.942598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979984, 42.121174, 25.785835>,  <40.229210, 41.444618, 25.441959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979984, 42.121174, 25.785835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.737934, 42.071499, 25.471281>,  <39.592705, 42.041695, 25.282549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.737934, 42.071499, 25.471281>,  <39.979984, 42.121174, 25.785835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737934, 42.071499, 25.471281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750910, 0.417195, 0.511940,
		0.264497, 0.900291, -0.345712,
		-0.605124, -0.124192, -0.786385,
		39.556396, 42.034241, 25.235365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774994, 42.787266, 25.622822>,  <39.979984, 42.121174, 25.785835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774994, 42.787266, 25.622822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.506931, 42.525654, 25.482456>,  <39.346092, 42.368687, 25.398237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.506931, 42.525654, 25.482456>,  <39.774994, 42.787266, 25.622822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506931, 42.525654, 25.482456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735601, 0.522259, 0.431435,
		-0.098902, 0.547262, -0.831097,
		-0.670156, -0.654026, -0.350914,
		39.305885, 42.329445, 25.377182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151283, 43.100704, 25.459152>,  <39.774994, 42.787266, 25.622822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151283, 43.100704, 25.459152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.013584, 42.725525, 25.475897>,  <38.930965, 42.500420, 25.485943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.013584, 42.725525, 25.475897>,  <39.151283, 43.100704, 25.459152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013584, 42.725525, 25.475897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782489, 0.311263, 0.539283,
		-0.518847, 0.152894, -0.841084,
		-0.344251, -0.937944, 0.041860,
		38.910309, 42.444141, 25.488455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433441, 43.140823, 25.348757>,  <39.151283, 43.100704, 25.459152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433441, 43.140823, 25.348757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.495972, 42.790874, 25.532133>,  <38.533489, 42.580906, 25.642159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.495972, 42.790874, 25.532133>,  <38.433441, 43.140823, 25.348757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495972, 42.790874, 25.532133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743333, 0.201430, 0.637873,
		-0.650398, -0.440491, -0.618830,
		0.156326, -0.874868, 0.458441,
		38.542870, 42.528416, 25.669666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754616, 42.884315, 25.372265>,  <38.433441, 43.140823, 25.348757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754616, 42.884315, 25.372265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.969830, 42.642357, 25.607084>,  <38.098957, 42.497181, 25.747976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.969830, 42.642357, 25.607084>,  <37.754616, 42.884315, 25.372265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969830, 42.642357, 25.607084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732017, 0.010016, 0.681213,
		-0.417943, -0.796242, -0.437405,
		0.538029, -0.604896, 0.587048,
		38.131237, 42.460888, 25.783199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240002, 42.485222, 25.639704>,  <37.754616, 42.884315, 25.372265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240002, 42.485222, 25.639704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.558460, 42.469666, 25.881247>,  <37.749535, 42.460331, 26.026173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.558460, 42.469666, 25.881247>,  <37.240002, 42.485222, 25.639704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558460, 42.469666, 25.881247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604201, 0.003516, 0.796824,
		-0.033121, -0.999237, -0.020705,
		0.796143, -0.038901, 0.603857,
		37.797302, 42.457996, 26.062403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891708, 41.857899, 25.226490>,  <37.240002, 42.485222, 25.639704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891708, 41.857899, 25.226490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.592533, 41.866409, 24.961121>,  <36.413029, 41.871513, 24.801899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.592533, 41.866409, 24.961121>,  <36.891708, 41.857899, 25.226490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592533, 41.866409, 24.961121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634346, -0.271352, -0.723860,
		-0.195420, -0.962245, 0.189461,
		-0.747942, 0.021273, -0.663424,
		36.368153, 41.872791, 24.762093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920910, 41.286270, 24.819529>,  <36.891708, 41.857899, 25.226490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920910, 41.286270, 24.819529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.701271, 41.542629, 24.604963>,  <36.569489, 41.696445, 24.476223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.701271, 41.542629, 24.604963>,  <36.920910, 41.286270, 24.819529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701271, 41.542629, 24.604963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563823, -0.189706, -0.803813,
		-0.616923, -0.743816, -0.257185,
		-0.549100, 0.640897, -0.536415,
		36.536541, 41.734898, 24.444038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779938, 40.976463, 24.116518>,  <36.920910, 41.286270, 24.819529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779938, 40.976463, 24.116518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.721771, 41.367058, 24.052853>,  <36.686871, 41.601414, 24.014652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.721771, 41.367058, 24.052853>,  <36.779938, 40.976463, 24.116518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721771, 41.367058, 24.052853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339248, -0.101911, -0.935161,
		-0.929390, -0.189980, -0.316451,
		-0.145412, 0.976484, -0.159165,
		36.678146, 41.660004, 24.005102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707096, 40.953648, 23.429195>,  <36.779938, 40.976463, 24.116518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707096, 40.953648, 23.429195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.783459, 41.339813, 23.500225>,  <36.829277, 41.571514, 23.542843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.783459, 41.339813, 23.500225>,  <36.707096, 40.953648, 23.429195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783459, 41.339813, 23.500225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399996, 0.088693, -0.912215,
		-0.896414, 0.245175, -0.369230,
		0.190904, 0.965413, 0.177575,
		36.840729, 41.629436, 23.553497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415359, 41.343792, 22.842367>,  <36.707096, 40.953648, 23.429195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415359, 41.343792, 22.842367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.670429, 41.606831, 23.002838>,  <36.823471, 41.764652, 23.099121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.670429, 41.606831, 23.002838>,  <36.415359, 41.343792, 22.842367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670429, 41.606831, 23.002838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180166, 0.379037, -0.907673,
		-0.748941, 0.651079, 0.123226,
		0.637674, 0.657592, 0.401179,
		36.861732, 41.804108, 23.123192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418201, 41.909077, 22.533554>,  <36.415359, 41.343792, 22.842367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418201, 41.909077, 22.533554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.777946, 41.935444, 22.706434>,  <36.993793, 41.951263, 22.810162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.777946, 41.935444, 22.706434>,  <36.418201, 41.909077, 22.533554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777946, 41.935444, 22.706434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398636, 0.282308, -0.872577,
		-0.179528, 0.957057, 0.227623,
		0.899366, 0.065913, 0.432200,
		37.047756, 41.955219, 22.836094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716839, 42.512600, 22.307087>,  <36.418201, 41.909077, 22.533554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716839, 42.512600, 22.307087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.037663, 42.300819, 22.417637>,  <37.230156, 42.173752, 22.483967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.037663, 42.300819, 22.417637>,  <36.716839, 42.512600, 22.307087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037663, 42.300819, 22.417637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443515, 0.218074, -0.869332,
		0.400003, 0.819829, 0.409729,
		0.802055, -0.529456, 0.276376,
		37.278278, 42.141983, 22.500549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295540, 42.971054, 22.164568>,  <36.716839, 42.512600, 22.307087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295540, 42.971054, 22.164568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.448769, 42.602997, 22.197037>,  <37.540707, 42.382160, 22.216518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.448769, 42.602997, 22.197037>,  <37.295540, 42.971054, 22.164568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448769, 42.602997, 22.197037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477374, 0.121972, -0.870194,
		0.790805, 0.372094, 0.485977,
		0.383069, -0.920146, 0.081172,
		37.563690, 42.326954, 22.221388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017014, 43.034523, 21.861595>,  <37.295540, 42.971054, 22.164568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017014, 43.034523, 21.861595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953846, 42.639603, 21.868570>,  <37.915947, 42.402653, 21.872755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953846, 42.639603, 21.868570>,  <38.017014, 43.034523, 21.861595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953846, 42.639603, 21.868570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411690, -0.081882, -0.907638,
		0.897538, -0.136150, 0.419392,
		-0.157915, -0.987299, 0.017440,
		37.906471, 42.343414, 21.873802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.382633, 39.168743, 35.999660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273121, 38.893898, 35.730461>,  <30.207413, 38.728992, 35.568943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273121, 38.893898, 35.730461>,  <30.382633, 39.168743, 35.999660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273121, 38.893898, 35.730461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512976, 0.487579, -0.706486,
		0.813572, -0.538654, 0.218982,
		-0.273781, -0.687110, -0.672997,
		30.190987, 38.687767, 35.528561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947084, 38.988525, 35.563885>,  <30.382633, 39.168743, 35.999660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947084, 38.988525, 35.563885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.639246, 38.881550, 35.331955>,  <30.454542, 38.817364, 35.192795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.639246, 38.881550, 35.331955>,  <30.947084, 38.988525, 35.563885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639246, 38.881550, 35.331955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391027, 0.520489, -0.759071,
		0.504789, -0.810909, -0.295997,
		-0.769601, -0.267428, -0.579825,
		30.408367, 38.801319, 35.158009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252380, 38.718689, 34.858150>,  <30.947084, 38.988525, 35.563885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252380, 38.718689, 34.858150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.868248, 38.816803, 34.805080>,  <30.637768, 38.875671, 34.773239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.868248, 38.816803, 34.805080>,  <31.252380, 38.718689, 34.858150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868248, 38.816803, 34.805080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258484, 0.604403, -0.753580,
		-0.104651, -0.757980, -0.643828,
		-0.960330, 0.245282, -0.132675,
		30.580149, 38.890388, 34.765278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014040, 38.565510, 34.135864>,  <31.252380, 38.718689, 34.858150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014040, 38.565510, 34.135864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731604, 38.823616, 34.252533>,  <30.562141, 38.978477, 34.322533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731604, 38.823616, 34.252533>,  <31.014040, 38.565510, 34.135864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731604, 38.823616, 34.252533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053396, 0.459239, -0.886706,
		-0.706107, -0.610519, -0.358719,
		-0.706089, 0.645264, 0.291673,
		30.519777, 39.017197, 34.340034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522665, 38.625687, 33.579048>,  <31.014040, 38.565510, 34.135864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522665, 38.625687, 33.579048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.487013, 38.978336, 33.764431>,  <30.465622, 39.189926, 33.875660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.487013, 38.978336, 33.764431>,  <30.522665, 38.625687, 33.579048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487013, 38.978336, 33.764431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013320, 0.466319, -0.884516,
		-0.995931, -0.072665, -0.053307,
		-0.089131, 0.881627, 0.463454,
		30.460274, 39.242825, 33.903469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221333, 38.951111, 33.048389>,  <30.522665, 38.625687, 33.579048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221333, 38.951111, 33.048389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.311785, 39.251152, 33.296974>,  <30.366056, 39.431175, 33.446125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.311785, 39.251152, 33.296974>,  <30.221333, 38.951111, 33.048389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311785, 39.251152, 33.296974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225626, 0.580302, -0.782524,
		-0.947607, 0.317168, -0.038019,
		0.226129, 0.750103, 0.621459,
		30.379623, 39.476181, 33.483414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753832, 39.512676, 32.893131>,  <30.221333, 38.951111, 33.048389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753832, 39.512676, 32.893131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.060396, 39.674595, 33.092632>,  <30.244335, 39.771744, 33.212334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.060396, 39.674595, 33.092632>,  <29.753832, 39.512676, 32.893131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060396, 39.674595, 33.092632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067418, 0.721471, -0.689155,
		-0.638802, 0.561802, 0.525653,
		0.766412, 0.404794, 0.498752,
		30.290319, 39.796032, 33.242256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588043, 40.191570, 32.952808>,  <29.753832, 39.512676, 32.893131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588043, 40.191570, 32.952808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.984301, 40.143303, 32.978329>,  <30.222055, 40.114342, 32.993641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.984301, 40.143303, 32.978329>,  <29.588043, 40.191570, 32.952808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984301, 40.143303, 32.978329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124514, 0.607441, -0.784545,
		0.055915, 0.785147, 0.616781,
		0.990641, -0.120666, 0.063797,
		30.281492, 40.107101, 32.997467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823202, 40.767990, 32.627567>,  <29.588043, 40.191570, 32.952808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823202, 40.767990, 32.627567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.184383, 40.600571, 32.666542>,  <30.401093, 40.500118, 32.689926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.184383, 40.600571, 32.666542>,  <29.823202, 40.767990, 32.627567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184383, 40.600571, 32.666542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339415, 0.555521, -0.759074,
		0.263576, 0.718481, 0.643671,
		0.902953, -0.418545, 0.097441,
		30.455269, 40.475006, 32.695774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342415, 41.258797, 32.795040>,  <29.823202, 40.767990, 32.627567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342415, 41.258797, 32.795040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.537617, 40.967224, 32.602993>,  <30.654737, 40.792282, 32.487762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.537617, 40.967224, 32.602993>,  <30.342415, 41.258797, 32.795040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537617, 40.967224, 32.602993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382913, 0.673098, -0.632706,
		0.784364, 0.124920, 0.607592,
		0.488006, -0.728927, -0.480120,
		30.684019, 40.748547, 32.458958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009283, 41.538120, 32.525993>,  <30.342415, 41.258797, 32.795040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009283, 41.538120, 32.525993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.024412, 41.191650, 32.326672>,  <31.033489, 40.983768, 32.207077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.024412, 41.191650, 32.326672>,  <31.009283, 41.538120, 32.525993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024412, 41.191650, 32.326672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473607, 0.454640, -0.754320,
		0.879924, -0.207472, 0.427422,
		0.037823, -0.866174, -0.498309,
		31.035759, 40.931797, 32.177177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764614, 41.375263, 32.431278>,  <31.009283, 41.538120, 32.525993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764614, 41.375263, 32.431278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553459, 41.180416, 32.152985>,  <31.426765, 41.063507, 31.986008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553459, 41.180416, 32.152985>,  <31.764614, 41.375263, 32.431278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553459, 41.180416, 32.152985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485781, 0.498773, -0.717804,
		0.696672, -0.716894, -0.026662,
		-0.527887, -0.487122, -0.695735,
		31.395094, 41.034279, 31.944263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413776, 41.343380, 32.657501>,  <31.764614, 41.375263, 32.431278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413776, 41.343380, 32.657501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633755, 41.596466, 32.875576>,  <32.765739, 41.748318, 33.006420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633755, 41.596466, 32.875576>,  <32.413776, 41.343380, 32.657501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633755, 41.596466, 32.875576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474537, -0.300453, 0.827371,
		0.687297, -0.713718, 0.135017,
		0.549943, 0.632720, 0.545186,
		32.798737, 41.786282, 33.039131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709339, 41.006939, 33.189648>,  <32.413776, 41.343380, 32.657501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709339, 41.006939, 33.189648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.720531, 41.386429, 33.315590>,  <32.727245, 41.614124, 33.391155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.720531, 41.386429, 33.315590>,  <32.709339, 41.006939, 33.189648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720531, 41.386429, 33.315590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081189, -0.311778, 0.946680,
		0.996306, -0.052051, 0.068302,
		0.027980, 0.948728, 0.314852,
		32.728924, 41.671047, 33.410046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918617, 40.855911, 33.745174>,  <32.709339, 41.006939, 33.189648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918617, 40.855911, 33.745174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807755, 41.236168, 33.800976>,  <32.741238, 41.464321, 33.834457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807755, 41.236168, 33.800976>,  <32.918617, 40.855911, 33.745174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807755, 41.236168, 33.800976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273667, -0.217277, 0.936962,
		0.921028, 0.221507, 0.320380,
		-0.277155, 0.950645, 0.139499,
		32.724609, 41.521362, 33.842827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244537, 41.171741, 34.258434>,  <32.918617, 40.855911, 33.745174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244537, 41.171741, 34.258434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911575, 41.390682, 34.223774>,  <32.711800, 41.522049, 34.202976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911575, 41.390682, 34.223774>,  <33.244537, 41.171741, 34.258434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911575, 41.390682, 34.223774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140520, -0.057217, 0.988423,
		0.536059, 0.834943, 0.124542,
		-0.832403, 0.547354, -0.086654,
		32.661854, 41.554890, 34.197777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233696, 41.738457, 34.828754>,  <33.244537, 41.171741, 34.258434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233696, 41.738457, 34.828754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848957, 41.704659, 34.724674>,  <32.618114, 41.684380, 34.662228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848957, 41.704659, 34.724674>,  <33.233696, 41.738457, 34.828754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848957, 41.704659, 34.724674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249772, -0.116807, 0.961234,
		-0.111616, 0.989553, 0.091246,
		-0.961850, -0.084499, -0.260200,
		32.560402, 41.679310, 34.646614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846817, 42.025185, 35.310570>,  <33.233696, 41.738457, 34.828754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846817, 42.025185, 35.310570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563454, 41.797672, 35.143406>,  <32.393436, 41.661163, 35.043110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563454, 41.797672, 35.143406>,  <32.846817, 42.025185, 35.310570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563454, 41.797672, 35.143406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417334, -0.139949, 0.897912,
		-0.569201, 0.810495, -0.138231,
		-0.708408, -0.568781, -0.417907,
		32.350933, 41.627037, 35.018032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275856, 42.160744, 35.681160>,  <32.846817, 42.025185, 35.310570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275856, 42.160744, 35.681160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209053, 41.807858, 35.505070>,  <32.168972, 41.596127, 35.399414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209053, 41.807858, 35.505070>,  <32.275856, 42.160744, 35.681160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209053, 41.807858, 35.505070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348016, -0.365009, 0.863512,
		-0.922493, 0.297417, -0.246068,
		-0.167006, -0.882220, -0.440225,
		32.158951, 41.543190, 35.373001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719141, 41.910587, 35.954334>,  <32.275856, 42.160744, 35.681160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719141, 41.910587, 35.954334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892738, 41.586212, 35.797344>,  <31.996897, 41.391586, 35.703152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892738, 41.586212, 35.797344>,  <31.719141, 41.910587, 35.954334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892738, 41.586212, 35.797344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246827, -0.525998, 0.813881,
		-0.866445, -0.256345, -0.428440,
		0.433993, -0.810934, -0.392476,
		32.022938, 41.342934, 35.679600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281553, 41.453369, 36.169895>,  <31.719141, 41.910587, 35.954334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281553, 41.453369, 36.169895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.611605, 41.253880, 36.063732>,  <31.809635, 41.134186, 36.000034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.611605, 41.253880, 36.063732>,  <31.281553, 41.453369, 36.169895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611605, 41.253880, 36.063732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180290, -0.677684, 0.712909,
		-0.535406, -0.540391, -0.649091,
		0.825128, -0.498720, -0.265408,
		31.859142, 41.104263, 35.984108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997379, 40.847286, 35.923496>,  <31.281553, 41.453369, 36.169895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997379, 40.847286, 35.923496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.377106, 40.789684, 36.035252>,  <31.604942, 40.755123, 36.102306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.377106, 40.789684, 36.035252>,  <30.997379, 40.847286, 35.923496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377106, 40.789684, 36.035252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270412, -0.827283, 0.492422,
		0.160225, -0.543016, -0.824295,
		0.949318, -0.144000, 0.279389,
		31.661901, 40.746483, 36.119068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162333, 40.122135, 35.773090>,  <30.997379, 40.847286, 35.923496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162333, 40.122135, 35.773090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.403015, 40.261589, 36.060535>,  <31.547424, 40.345261, 36.233002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.403015, 40.261589, 36.060535>,  <31.162333, 40.122135, 35.773090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403015, 40.261589, 36.060535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299392, -0.735660, 0.607593,
		0.740482, -0.580739, -0.338273,
		0.601707, 0.348636, 0.718611,
		31.583527, 40.366180, 36.276119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595558, 39.607029, 35.978512>,  <31.162333, 40.122135, 35.773090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595558, 39.607029, 35.978512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637966, 39.828022, 36.309212>,  <31.663410, 39.960617, 36.507633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637966, 39.828022, 36.309212>,  <31.595558, 39.607029, 35.978512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637966, 39.828022, 36.309212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007467, -0.830972, 0.556264,
		0.994336, -0.065149, -0.083975,
		0.106021, 0.552486, 0.826752,
		31.669773, 39.993767, 36.557236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994341, 39.182236, 36.445702>,  <31.595558, 39.607029, 35.978512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994341, 39.182236, 36.445702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.841291, 39.450958, 36.699402>,  <31.749462, 39.612194, 36.851620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.841291, 39.450958, 36.699402>,  <31.994341, 39.182236, 36.445702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841291, 39.450958, 36.699402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042707, -0.698614, 0.714223,
		0.922916, 0.246193, 0.295998,
		-0.382625, 0.671810, 0.634248,
		31.726503, 39.652500, 36.889675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256512, 38.848579, 36.939220>,  <31.994341, 39.182236, 36.445702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256512, 38.848579, 36.939220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.964085, 39.091679, 37.063267>,  <31.788628, 39.237537, 37.137695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.964085, 39.091679, 37.063267>,  <32.256512, 38.848579, 36.939220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964085, 39.091679, 37.063267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285125, -0.685050, 0.670380,
		0.619869, 0.401675, 0.674107,
		-0.731072, 0.607753, 0.310114,
		31.744762, 39.274006, 37.156300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280041, 39.027958, 37.634464>,  <32.256512, 38.848579, 36.939220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280041, 39.027958, 37.634464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.894686, 39.036129, 37.527534>,  <31.663471, 39.041031, 37.463379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.894686, 39.036129, 37.527534>,  <32.280041, 39.027958, 37.634464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894686, 39.036129, 37.527534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180322, -0.787235, 0.589699,
		-0.198397, 0.616315, 0.762099,
		-0.963391, 0.020429, -0.267320,
		31.605669, 39.042259, 37.447338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847267, 38.488384, 37.612267>,  <32.280041, 39.027958, 37.634464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847267, 38.488384, 37.612267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948101, 38.105965, 37.672169>,  <33.008602, 37.876514, 37.708111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948101, 38.105965, 37.672169>,  <32.847267, 38.488384, 37.612267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948101, 38.105965, 37.672169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304051, -0.068662, -0.950178,
		0.918698, 0.285060, 0.273378,
		0.252087, -0.956047, 0.149752,
		33.023727, 37.819149, 37.717094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475674, 38.374504, 37.322361>,  <32.847267, 38.488384, 37.612267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475674, 38.374504, 37.322361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315136, 38.008286, 37.332981>,  <33.218815, 37.788555, 37.339355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315136, 38.008286, 37.332981>,  <33.475674, 38.374504, 37.322361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315136, 38.008286, 37.332981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440155, -0.218210, -0.871004,
		0.803235, -0.337885, 0.490558,
		-0.401344, -0.915542, 0.026552,
		33.194733, 37.733624, 37.340946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017105, 37.887135, 37.284077>,  <33.475674, 38.374504, 37.322361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017105, 37.887135, 37.284077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676563, 37.722462, 37.154018>,  <33.472240, 37.623657, 37.075985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676563, 37.722462, 37.154018>,  <34.017105, 37.887135, 37.284077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676563, 37.722462, 37.154018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365913, -0.021890, -0.930392,
		0.375908, -0.911065, 0.169276,
		-0.851353, -0.411682, -0.325142,
		33.421158, 37.598957, 37.056477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176533, 37.328568, 36.785667>,  <34.017105, 37.887135, 37.284077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176533, 37.328568, 36.785667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824162, 37.487789, 36.683285>,  <33.612740, 37.583321, 36.621857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824162, 37.487789, 36.683285>,  <34.176533, 37.328568, 36.785667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824162, 37.487789, 36.683285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302064, 0.056591, -0.951607,
		-0.364302, -0.915616, -0.170089,
		-0.880932, 0.398050, -0.255958,
		33.559883, 37.607204, 36.606499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089901, 37.041374, 36.061607>,  <34.176533, 37.328568, 36.785667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089901, 37.041374, 36.061607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835686, 37.344521, 36.120571>,  <33.683159, 37.526409, 36.155949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835686, 37.344521, 36.120571>,  <34.089901, 37.041374, 36.061607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835686, 37.344521, 36.120571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044321, 0.226421, -0.973021,
		-0.770798, -0.611857, -0.177488,
		-0.635537, 0.757869, 0.147407,
		33.645023, 37.571880, 36.164795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556328, 36.957558, 35.597755>,  <34.089901, 37.041374, 36.061607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556328, 36.957558, 35.597755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.547462, 37.344681, 35.698040>,  <33.542145, 37.576954, 35.758209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.547462, 37.344681, 35.698040>,  <33.556328, 36.957558, 35.597755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547462, 37.344681, 35.698040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049154, 0.249413, -0.967149,
		-0.998545, -0.033758, 0.042044,
		-0.022163, 0.967809, 0.250710,
		33.540813, 37.635025, 35.773254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042389, 37.274918, 35.215767>,  <33.556328, 36.957558, 35.597755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042389, 37.274918, 35.215767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252987, 37.603733, 35.302528>,  <33.379345, 37.801022, 35.354584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252987, 37.603733, 35.302528>,  <33.042389, 37.274918, 35.215767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252987, 37.603733, 35.302528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077257, 0.300331, -0.950701,
		-0.846660, 0.483784, 0.221632,
		0.526497, 0.822043, 0.216902,
		33.410934, 37.850346, 35.367599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710274, 37.916481, 34.914288>,  <33.042389, 37.274918, 35.215767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710274, 37.916481, 34.914288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093243, 38.005276, 34.988117>,  <33.323025, 38.058552, 35.032417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093243, 38.005276, 34.988117>,  <32.710274, 37.916481, 34.914288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093243, 38.005276, 34.988117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082605, 0.401980, -0.911915,
		-0.276626, 0.888333, 0.366527,
		0.957421, 0.221982, 0.184579,
		33.380470, 38.071869, 35.043491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707130, 38.474659, 34.576584>,  <32.710274, 37.916481, 34.914288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707130, 38.474659, 34.576584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091221, 38.378773, 34.633850>,  <33.321674, 38.321239, 34.668209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091221, 38.378773, 34.633850>,  <32.707130, 38.474659, 34.576584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091221, 38.378773, 34.633850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238472, 0.437391, -0.867076,
		0.145233, 0.866732, 0.477161,
		0.960228, -0.239717, 0.143168,
		33.379288, 38.306858, 34.676800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085514, 38.975815, 34.389027>,  <32.707130, 38.474659, 34.576584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085514, 38.975815, 34.389027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380215, 38.705818, 34.373135>,  <33.557037, 38.543819, 34.363598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380215, 38.705818, 34.373135>,  <33.085514, 38.975815, 34.389027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380215, 38.705818, 34.373135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208791, 0.283000, -0.936118,
		0.643115, 0.681395, 0.349434,
		0.736756, -0.674990, -0.039732,
		33.601242, 38.503323, 34.361214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678902, 39.381348, 34.205833>,  <33.085514, 38.975815, 34.389027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678902, 39.381348, 34.205833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751602, 38.997391, 34.120445>,  <33.795223, 38.767017, 34.069214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751602, 38.997391, 34.120445>,  <33.678902, 39.381348, 34.205833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751602, 38.997391, 34.120445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249243, 0.254968, -0.934275,
		0.951233, 0.116600, 0.285588,
		0.181752, -0.959894, -0.213472,
		33.806129, 38.709423, 34.056404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366646, 39.369663, 33.853485>,  <33.678902, 39.381348, 34.205833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366646, 39.369663, 33.853485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187389, 39.027981, 33.748032>,  <34.079834, 38.822971, 33.684757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187389, 39.027981, 33.748032>,  <34.366646, 39.369663, 33.853485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187389, 39.027981, 33.748032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314702, 0.125287, -0.940885,
		0.836739, -0.504616, 0.212674,
		-0.448141, -0.854205, -0.263637,
		34.052948, 38.771721, 33.668941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865646, 38.937588, 33.457783>,  <34.366646, 39.369663, 33.853485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865646, 38.937588, 33.457783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496418, 38.814995, 33.364822>,  <34.274879, 38.741440, 33.309048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496418, 38.814995, 33.364822>,  <34.865646, 38.937588, 33.457783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496418, 38.814995, 33.364822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312143, -0.243879, -0.918199,
		0.224732, -0.920105, 0.320783,
		-0.923072, -0.306479, -0.232397,
		34.219498, 38.723053, 33.295105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994377, 38.329491, 33.102638>,  <34.865646, 38.937588, 33.457783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994377, 38.329491, 33.102638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627132, 38.453487, 33.003868>,  <34.406784, 38.527885, 32.944607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627132, 38.453487, 33.003868>,  <34.994377, 38.329491, 33.102638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627132, 38.453487, 33.003868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204174, -0.164053, -0.965091,
		-0.339684, -0.936477, 0.087326,
		-0.918111, 0.309996, -0.246930,
		34.351700, 38.546486, 32.929790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874069, 37.938286, 32.523468>,  <34.994377, 38.329491, 33.102638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874069, 37.938286, 32.523468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594681, 38.222801, 32.491978>,  <34.427048, 38.393513, 32.473083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594681, 38.222801, 32.491978>,  <34.874069, 37.938286, 32.523468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594681, 38.222801, 32.491978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169731, 0.057790, -0.983795,
		-0.695216, -0.700517, -0.161093,
		-0.698475, 0.711292, -0.078723,
		34.385139, 38.436188, 32.468361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425171, 37.881687, 31.845957>,  <34.874069, 37.938286, 32.523468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425171, 37.881687, 31.845957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415424, 38.263313, 31.965403>,  <34.409576, 38.492287, 32.037071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415424, 38.263313, 31.965403>,  <34.425171, 37.881687, 31.845957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415424, 38.263313, 31.965403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056986, 0.299545, -0.952379,
		-0.998078, -0.006191, -0.061668,
		-0.024369, 0.954062, 0.298616,
		34.408115, 38.549534, 32.054989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227425, 38.257046, 31.228924>,  <34.425171, 37.881687, 31.845957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227425, 38.257046, 31.228924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363346, 38.551147, 31.463509>,  <34.444901, 38.727608, 31.604259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363346, 38.551147, 31.463509>,  <34.227425, 38.257046, 31.228924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363346, 38.551147, 31.463509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381542, 0.462179, -0.800510,
		-0.859627, 0.495776, -0.123480,
		0.339804, 0.735253, 0.586461,
		34.465286, 38.771725, 31.639446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035503, 38.858803, 30.839560>,  <34.227425, 38.257046, 31.228924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035503, 38.858803, 30.839560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365406, 38.946209, 31.048182>,  <34.563347, 38.998653, 31.173355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365406, 38.946209, 31.048182>,  <34.035503, 38.858803, 30.839560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365406, 38.946209, 31.048182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426205, 0.365946, -0.827304,
		-0.371643, 0.904617, 0.208684,
		0.824761, 0.218519, 0.521554,
		34.612835, 39.011765, 31.204647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178024, 39.411263, 30.596661>,  <34.035503, 38.858803, 30.839560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178024, 39.411263, 30.596661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525982, 39.338875, 30.780195>,  <34.734756, 39.295444, 30.890316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525982, 39.338875, 30.780195>,  <34.178024, 39.411263, 30.596661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525982, 39.338875, 30.780195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490876, 0.226778, -0.841197,
		0.048176, 0.956986, 0.286106,
		0.869897, -0.180968, 0.458836,
		34.786949, 39.284584, 30.917847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714355, 39.989708, 30.397951>,  <34.178024, 39.411263, 30.596661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714355, 39.989708, 30.397951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955196, 39.713421, 30.558144>,  <35.099701, 39.547649, 30.654259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955196, 39.713421, 30.558144>,  <34.714355, 39.989708, 30.397951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955196, 39.713421, 30.558144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712782, 0.239000, -0.659410,
		0.359751, 0.682486, 0.636233,
		0.602098, -0.690719, 0.400483,
		35.135826, 39.506207, 30.678288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340782, 40.364525, 30.566374>,  <34.714355, 39.989708, 30.397951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340782, 40.364525, 30.566374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407734, 39.972561, 30.522982>,  <35.447906, 39.737385, 30.496946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407734, 39.972561, 30.522982>,  <35.340782, 40.364525, 30.566374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407734, 39.972561, 30.522982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598955, 0.188470, -0.778288,
		0.783095, 0.065292, 0.618466,
		0.167378, -0.979906, -0.108483,
		35.457947, 39.678589, 30.490437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994007, 40.339260, 30.365049>,  <35.340782, 40.364525, 30.566374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994007, 40.339260, 30.365049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869305, 39.975262, 30.255713>,  <35.794483, 39.756863, 30.190111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869305, 39.975262, 30.255713>,  <35.994007, 40.339260, 30.365049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869305, 39.975262, 30.255713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707810, -0.030503, -0.705745,
		0.633886, -0.413496, 0.653613,
		-0.311759, -0.909995, -0.273341,
		35.775776, 39.702263, 30.173710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514301, 39.819572, 30.514156>,  <35.994007, 40.339260, 30.365049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514301, 39.819572, 30.514156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299011, 39.623623, 30.239834>,  <36.169838, 39.506054, 30.075239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299011, 39.623623, 30.239834>,  <36.514301, 39.819572, 30.514156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299011, 39.623623, 30.239834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818612, -0.110311, -0.563655,
		0.200470, -0.864784, 0.460392,
		-0.538226, -0.489878, -0.685808,
		36.137543, 39.476658, 30.034092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908661, 39.209602, 30.317568>,  <36.514301, 39.819572, 30.514156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908661, 39.209602, 30.317568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650791, 39.285973, 30.021473>,  <36.496071, 39.331795, 29.843817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650791, 39.285973, 30.021473>,  <36.908661, 39.209602, 30.317568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650791, 39.285973, 30.021473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715034, -0.191935, -0.672226,
		-0.270421, -0.962658, -0.012782,
		-0.644670, 0.190924, -0.740236,
		36.457390, 39.343250, 29.799402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825344, 38.507214, 29.826958>,  <36.908661, 39.209602, 30.317568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825344, 38.507214, 29.826958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724312, 38.839527, 29.628565>,  <36.663692, 39.038918, 29.509529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724312, 38.839527, 29.628565>,  <36.825344, 38.507214, 29.826958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724312, 38.839527, 29.628565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730191, -0.172663, -0.661066,
		-0.634842, -0.529133, -0.563022,
		-0.252579, 0.830786, -0.495982,
		36.648537, 39.088764, 29.479771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986790, 38.324108, 29.186146>,  <36.825344, 38.507214, 29.826958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986790, 38.324108, 29.186146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935982, 38.720634, 29.172583>,  <36.905499, 38.958549, 29.164446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935982, 38.720634, 29.172583>,  <36.986790, 38.324108, 29.186146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935982, 38.720634, 29.172583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729680, 0.070230, -0.680173,
		-0.671888, -0.111136, -0.732267,
		-0.127019, 0.991320, -0.033907,
		36.897877, 39.018032, 29.162411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257717, 38.472069, 28.523394>,  <36.986790, 38.324108, 29.186146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257717, 38.472069, 28.523394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273903, 38.817142, 28.725039>,  <37.283615, 39.024189, 28.846025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273903, 38.817142, 28.725039>,  <37.257717, 38.472069, 28.523394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273903, 38.817142, 28.725039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904496, 0.182748, -0.385343,
		-0.424557, 0.471564, -0.772903,
		0.040468, 0.862688, 0.504115,
		37.286041, 39.075951, 28.876272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993767, 38.043598, 27.953081>,  <37.257717, 38.472069, 28.523394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993767, 38.043598, 27.953081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237339, 37.726440, 27.943970>,  <37.383484, 37.536144, 27.938503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237339, 37.726440, 27.943970>,  <36.993767, 38.043598, 27.953081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237339, 37.726440, 27.943970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444804, -0.365099, 0.817834,
		-0.656775, -0.487871, -0.575003,
		0.608931, -0.792896, -0.022781,
		37.420017, 37.488571, 27.937136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599697, 37.428474, 28.061914>,  <36.993767, 38.043598, 27.953081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599697, 37.428474, 28.061914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.962414, 37.292572, 28.161755>,  <37.180042, 37.211029, 28.221659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.962414, 37.292572, 28.161755>,  <36.599697, 37.428474, 28.061914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962414, 37.292572, 28.161755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402565, -0.521990, 0.751976,
		-0.125199, -0.782363, -0.610109,
		0.906789, -0.339755, 0.249600,
		37.234451, 37.190647, 28.236635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553890, 36.719685, 28.252394>,  <36.599697, 37.428474, 28.061914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553890, 36.719685, 28.252394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900673, 36.805916, 28.432133>,  <37.108742, 36.857655, 28.539976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900673, 36.805916, 28.432133>,  <36.553890, 36.719685, 28.252394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900673, 36.805916, 28.432133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295173, -0.504372, 0.811469,
		0.401574, -0.836143, -0.373635,
		0.866955, 0.215578, 0.449350,
		37.160759, 36.870590, 28.566938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815891, 36.058132, 28.503973>,  <36.553890, 36.719685, 28.252394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815891, 36.058132, 28.503973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022717, 36.323338, 28.720510>,  <37.146812, 36.482460, 28.850433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022717, 36.323338, 28.720510>,  <36.815891, 36.058132, 28.503973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022717, 36.323338, 28.720510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200307, -0.521158, 0.829621,
		0.832179, -0.537403, -0.136665,
		0.517065, 0.663018, 0.541343,
		37.177837, 36.522243, 28.882914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232582, 35.668537, 29.065950>,  <36.815891, 36.058132, 28.503973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232582, 35.668537, 29.065950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197170, 36.042763, 29.202705>,  <37.175922, 36.267296, 29.284760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197170, 36.042763, 29.202705>,  <37.232582, 35.668537, 29.065950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197170, 36.042763, 29.202705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140069, -0.351518, 0.925644,
		0.986176, 0.034056, 0.162161,
		-0.088526, 0.935562, 0.341888,
		37.170612, 36.323433, 29.305271>
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
