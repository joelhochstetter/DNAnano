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
	<24.515783, 34.913593, 34.771263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326159, 34.964851, 35.119709>,  <24.212383, 34.995605, 35.328777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326159, 34.964851, 35.119709>,  <24.515783, 34.913593, 34.771263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326159, 34.964851, 35.119709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864100, 0.257725, 0.432329,
		-0.169106, 0.957683, -0.232910,
		-0.474061, 0.128148, 0.871117,
		24.183941, 35.003296, 35.381042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.464556, 35.679047, 35.046715>,  <24.515783, 34.913593, 34.771263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.464556, 35.679047, 35.046715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467030, 36.056030, 34.913010>,  <24.468513, 36.282219, 34.832787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467030, 36.056030, 34.913010>,  <24.464556, 35.679047, 35.046715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.467030, 36.056030, 34.913010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954153, 0.094473, 0.284018,
		0.299254, -0.320696, -0.898666,
		0.006184, 0.942459, -0.334265,
		24.468885, 36.338768, 34.812729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105345, 35.787647, 34.736961>,  <24.464556, 35.679047, 35.046715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105345, 35.787647, 34.736961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013691, 36.172783, 34.794147>,  <24.958698, 36.403866, 34.828461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013691, 36.172783, 34.794147>,  <25.105345, 35.787647, 34.736961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013691, 36.172783, 34.794147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954064, 0.193024, 0.229135,
		0.193024, 0.188900, -0.962839,
		-0.229135, 0.962839, 0.142964,
		24.944950, 36.461636, 34.837036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584229, 36.203712, 34.407436>,  <25.105345, 35.787647, 34.736961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584229, 36.203712, 34.407436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422478, 36.418095, 34.703876>,  <25.325428, 36.546726, 34.881741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422478, 36.418095, 34.703876>,  <25.584229, 36.203712, 34.407436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422478, 36.418095, 34.703876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914459, 0.223081, 0.337640,
		0.015635, 0.814238, -0.580320,
		-0.404377, 0.535958, 0.741099,
		25.301165, 36.578880, 34.926205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347614, 36.475155, 34.517925>,  <25.584229, 36.203712, 34.407436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347614, 36.475155, 34.517925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098951, 36.218838, 34.698112>,  <25.949753, 36.065048, 34.806225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098951, 36.218838, 34.698112>,  <26.347614, 36.475155, 34.517925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098951, 36.218838, 34.698112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543429, 0.061351, 0.837210,
		-0.564117, 0.765257, 0.310087,
		-0.621657, -0.640794, 0.450472,
		25.912455, 36.026600, 34.833256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575867, 36.102005, 33.863098>,  <26.347614, 36.475155, 34.517925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575867, 36.102005, 33.863098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841249, 35.867954, 34.049625>,  <27.000479, 35.727524, 34.161541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841249, 35.867954, 34.049625>,  <26.575867, 36.102005, 33.863098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841249, 35.867954, 34.049625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235603, 0.754915, 0.612042,
		-0.710151, -0.296198, 0.638711,
		0.663458, -0.585124, 0.466318,
		27.040287, 35.692417, 34.189522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641598, 35.526104, 33.403473>,  <26.575867, 36.102005, 33.863098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641598, 35.526104, 33.403473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365110, 35.342484, 33.626717>,  <26.199219, 35.232311, 33.760662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365110, 35.342484, 33.626717>,  <26.641598, 35.526104, 33.403473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365110, 35.342484, 33.626717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467267, -0.873058, -0.139394,
		0.551252, 0.164434, 0.817975,
		-0.691218, -0.459054, 0.558110,
		26.157745, 35.204769, 33.794151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219955, 35.007179, 33.168964>,  <26.641598, 35.526104, 33.403473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219955, 35.007179, 33.168964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466326, 35.119781, 32.874645>,  <27.614147, 35.187344, 32.698055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466326, 35.119781, 32.874645>,  <27.219955, 35.007179, 33.168964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466326, 35.119781, 32.874645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287692, -0.789103, -0.542725,
		-0.733397, 0.545959, -0.405040,
		0.615924, 0.281506, -0.735793,
		27.651102, 35.204235, 32.653908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540464, 34.329765, 33.241444>,  <27.219955, 35.007179, 33.168964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540464, 34.329765, 33.241444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895506, 34.153343, 33.188335>,  <28.108530, 34.047489, 33.156471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895506, 34.153343, 33.188335>,  <27.540464, 34.329765, 33.241444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895506, 34.153343, 33.188335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342253, 0.438624, 0.830947,
		-0.308261, -0.782991, 0.540278,
		0.887603, -0.441060, -0.132770,
		28.161787, 34.021027, 33.148506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748526, 33.975700, 33.927284>,  <27.540464, 34.329765, 33.241444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748526, 33.975700, 33.927284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078550, 34.000050, 33.702583>,  <28.276566, 34.014660, 33.567764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078550, 34.000050, 33.702583>,  <27.748526, 33.975700, 33.927284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078550, 34.000050, 33.702583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431743, 0.573441, 0.696249,
		0.364513, -0.816982, 0.446845,
		0.825063, 0.060870, -0.561753,
		28.326069, 34.018311, 33.534058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408331, 33.681625, 34.090599>,  <27.748526, 33.975700, 33.927284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408331, 33.681625, 34.090599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512880, 33.991493, 33.860271>,  <28.575609, 34.177414, 33.722076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512880, 33.991493, 33.860271>,  <28.408331, 33.681625, 34.090599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512880, 33.991493, 33.860271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598917, 0.337667, 0.726140,
		0.756956, -0.534659, -0.375709,
		0.261373, 0.774674, -0.575816,
		28.591291, 34.223896, 33.687527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198479, 33.676075, 34.093716>,  <28.408331, 33.681625, 34.090599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198479, 33.676075, 34.093716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072857, 34.043232, 33.996689>,  <28.997484, 34.263527, 33.938473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072857, 34.043232, 33.996689>,  <29.198479, 33.676075, 34.093716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072857, 34.043232, 33.996689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648698, 0.394018, 0.651108,
		0.693225, 0.047128, -0.719179,
		-0.314055, 0.917894, -0.242571,
		28.978642, 34.318600, 33.923916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741747, 34.026257, 33.848011>,  <29.198479, 33.676075, 34.093716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741747, 34.026257, 33.848011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456079, 34.254448, 34.010254>,  <29.284679, 34.391365, 34.107601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456079, 34.254448, 34.010254>,  <29.741747, 34.026257, 33.848011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456079, 34.254448, 34.010254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587900, 0.174348, 0.789922,
		0.379919, 0.802593, -0.459899,
		-0.714168, 0.570481, 0.405606,
		29.241829, 34.425591, 34.131935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095045, 34.548969, 34.061817>,  <29.741747, 34.026257, 33.848011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095045, 34.548969, 34.061817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757744, 34.571629, 34.275623>,  <29.555363, 34.585224, 34.403908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757744, 34.571629, 34.275623>,  <30.095045, 34.548969, 34.061817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757744, 34.571629, 34.275623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537002, 0.132155, 0.833165,
		-0.023440, 0.989609, -0.141862,
		-0.843255, 0.056651, 0.534519,
		29.504766, 34.588623, 34.435978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148108, 35.108215, 34.562206>,  <30.095045, 34.548969, 34.061817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148108, 35.108215, 34.562206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930103, 34.799706, 34.693718>,  <29.799301, 34.614601, 34.772625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930103, 34.799706, 34.693718>,  <30.148108, 35.108215, 34.562206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930103, 34.799706, 34.693718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460022, 0.052766, 0.886338,
		-0.700959, 0.634311, 0.326046,
		-0.545010, -0.771275, 0.328784,
		29.766600, 34.568321, 34.792355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777958, 35.235344, 35.205482>,  <30.148108, 35.108215, 34.562206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777958, 35.235344, 35.205482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865381, 34.845947, 35.178535>,  <29.917835, 34.612309, 35.162369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865381, 34.845947, 35.178535>,  <29.777958, 35.235344, 35.205482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865381, 34.845947, 35.178535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429697, 0.034031, 0.902332,
		-0.876124, -0.226157, 0.425746,
		0.218557, -0.973496, -0.067363,
		29.930948, 34.553898, 35.158325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381624, 34.732353, 35.536442>,  <29.777958, 35.235344, 35.205482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381624, 34.732353, 35.536442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775908, 34.665672, 35.526749>,  <30.012478, 34.625664, 35.520931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775908, 34.665672, 35.526749>,  <29.381624, 34.732353, 35.536442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775908, 34.665672, 35.526749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075289, 0.307250, 0.948646,
		-0.150697, -0.936913, 0.315410,
		0.985709, -0.166705, -0.024237,
		30.071621, 34.615662, 35.519478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479183, 34.380894, 36.112812>,  <29.381624, 34.732353, 35.536442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479183, 34.380894, 36.112812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826441, 34.543163, 35.998440>,  <30.034796, 34.640526, 35.929817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826441, 34.543163, 35.998440>,  <29.479183, 34.380894, 36.112812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826441, 34.543163, 35.998440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234277, 0.172943, 0.956663,
		0.437542, -0.897508, 0.055100,
		0.868143, 0.405672, -0.285935,
		30.086884, 34.664864, 35.912659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032232, 34.318489, 36.698158>,  <29.479183, 34.380894, 36.112812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032232, 34.318489, 36.698158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092815, 34.625927, 36.449539>,  <30.129166, 34.810390, 36.300365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092815, 34.625927, 36.449539>,  <30.032232, 34.318489, 36.698158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092815, 34.625927, 36.449539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454079, 0.504430, 0.734413,
		0.877993, -0.393468, -0.272601,
		0.151460, 0.768592, -0.621552,
		30.138254, 34.856506, 36.263073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743685, 34.425304, 36.598873>,  <30.032232, 34.318489, 36.698158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743685, 34.425304, 36.598873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516851, 34.754074, 36.577522>,  <30.380751, 34.951336, 36.564713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516851, 34.754074, 36.577522>,  <30.743685, 34.425304, 36.598873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516851, 34.754074, 36.577522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609480, 0.462332, 0.644036,
		0.554030, 0.332690, -0.763131,
		-0.567084, 0.821928, -0.053378,
		30.346725, 35.000652, 36.561508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136169, 35.028618, 36.413311>,  <30.743685, 34.425304, 36.598873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136169, 35.028618, 36.413311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806368, 35.192383, 36.569553>,  <30.608486, 35.290642, 36.663300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806368, 35.192383, 36.569553>,  <31.136169, 35.028618, 36.413311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806368, 35.192383, 36.569553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565691, 0.612959, 0.551611,
		-0.013592, 0.675770, -0.736987,
		-0.824505, 0.409410, 0.390609,
		30.559017, 35.315205, 36.686737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709101, 35.442795, 36.375301>,  <31.136169, 35.028618, 36.413311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709101, 35.442795, 36.375301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377981, 35.632965, 36.494442>,  <31.179310, 35.747066, 36.565926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377981, 35.632965, 36.494442>,  <31.709101, 35.442795, 36.375301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377981, 35.632965, 36.494442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532503, 0.832965, 0.150369,
		-0.176613, 0.283083, -0.942694,
		-0.827798, 0.475430, 0.297855,
		31.129642, 35.775593, 36.583797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499044, 36.094650, 36.002659>,  <31.709101, 35.442795, 36.375301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499044, 36.094650, 36.002659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357986, 36.099918, 36.376926>,  <31.273352, 36.103077, 36.601486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357986, 36.099918, 36.376926>,  <31.499044, 36.094650, 36.002659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357986, 36.099918, 36.376926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537260, 0.821522, 0.190928,
		-0.766155, 0.570025, -0.296781,
		-0.352646, 0.013167, 0.935664,
		31.252193, 36.103870, 36.657627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292561, 36.721992, 36.149067>,  <31.499044, 36.094650, 36.002659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292561, 36.721992, 36.149067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364227, 36.571930, 36.512859>,  <31.407227, 36.481892, 36.731136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364227, 36.571930, 36.512859>,  <31.292561, 36.721992, 36.149067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364227, 36.571930, 36.512859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542473, 0.808882, 0.226789,
		-0.820745, 0.452737, 0.348435,
		0.179167, -0.375153, 0.909483,
		31.417978, 36.459385, 36.785706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029814, 37.222042, 36.567898>,  <31.292561, 36.721992, 36.149067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029814, 37.222042, 36.567898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346796, 37.034801, 36.724304>,  <31.536985, 36.922459, 36.818150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346796, 37.034801, 36.724304>,  <31.029814, 37.222042, 36.567898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346796, 37.034801, 36.724304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430782, 0.883395, 0.184500,
		-0.431790, 0.022237, 0.901700,
		0.792454, -0.468102, 0.391020,
		31.584532, 36.894371, 36.841610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152866, 37.521900, 37.185421>,  <31.029814, 37.222042, 36.567898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152866, 37.521900, 37.185421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479748, 37.388329, 36.997520>,  <31.675877, 37.308186, 36.884781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479748, 37.388329, 36.997520>,  <31.152866, 37.521900, 37.185421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479748, 37.388329, 36.997520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396362, 0.917331, 0.037436,
		0.418417, -0.216785, 0.882005,
		0.817206, -0.333929, -0.469752,
		31.724909, 37.288151, 36.856594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592869, 37.973541, 37.456131>,  <31.152866, 37.521900, 37.185421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592869, 37.973541, 37.456131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800081, 37.795361, 37.164043>,  <31.924410, 37.688454, 36.988792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800081, 37.795361, 37.164043>,  <31.592869, 37.973541, 37.456131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800081, 37.795361, 37.164043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556771, 0.823683, -0.107481,
		0.649345, -0.350885, 0.674708,
		0.518032, -0.445450, -0.730217,
		31.955490, 37.661724, 36.944977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216507, 38.248566, 37.596283>,  <31.592869, 37.973541, 37.456131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216507, 38.248566, 37.596283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211906, 38.099983, 37.224930>,  <32.209148, 38.010834, 37.002117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211906, 38.099983, 37.224930>,  <32.216507, 38.248566, 37.596283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211906, 38.099983, 37.224930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734816, 0.626544, -0.259786,
		0.678170, -0.685176, 0.265744,
		-0.011499, -0.371452, -0.928381,
		32.208458, 37.988548, 36.946415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875156, 38.436649, 37.393715>,  <32.216507, 38.248566, 37.596283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875156, 38.436649, 37.393715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717754, 38.277287, 37.062313>,  <32.623314, 38.181667, 36.863472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717754, 38.277287, 37.062313>,  <32.875156, 38.436649, 37.393715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717754, 38.277287, 37.062313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645185, 0.522313, -0.557607,
		0.654895, -0.753962, 0.051515,
		-0.393508, -0.398411, -0.828505,
		32.599701, 38.157764, 36.813763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379311, 38.005604, 37.038250>,  <32.875156, 38.436649, 37.393715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379311, 38.005604, 37.038250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128723, 38.180363, 36.780052>,  <32.978371, 38.285217, 36.625134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128723, 38.180363, 36.780052>,  <33.379311, 38.005604, 37.038250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128723, 38.180363, 36.780052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778646, 0.313251, -0.543676,
		-0.035330, -0.843205, -0.536430,
		-0.626467, 0.436898, -0.645491,
		32.940784, 38.311432, 36.586403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453865, 37.736839, 36.325264>,  <33.379311, 38.005604, 37.038250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453865, 37.736839, 36.325264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360065, 38.125519, 36.336613>,  <33.303787, 38.358727, 36.343422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360065, 38.125519, 36.336613>,  <33.453865, 37.736839, 36.325264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360065, 38.125519, 36.336613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881474, 0.224846, -0.415269,
		-0.409897, -0.072374, -0.909256,
		-0.234498, 0.971703, 0.028368,
		33.289715, 38.417030, 36.345123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508324, 38.008488, 35.666027>,  <33.453865, 37.736839, 36.325264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508324, 38.008488, 35.666027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594719, 38.287880, 35.938927>,  <33.646557, 38.455517, 36.102669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594719, 38.287880, 35.938927>,  <33.508324, 38.008488, 35.666027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594719, 38.287880, 35.938927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951601, 0.005878, -0.307279,
		-0.218640, 0.715602, -0.663409,
		0.215990, 0.698484, 0.682253,
		33.659515, 38.497425, 36.143604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912792, 38.667847, 35.564659>,  <33.508324, 38.008488, 35.666027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912792, 38.667847, 35.564659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696827, 38.764900, 35.242264>,  <33.567249, 38.823132, 35.048824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696827, 38.764900, 35.242264>,  <33.912792, 38.667847, 35.564659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696827, 38.764900, 35.242264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752184, 0.290680, 0.591375,
		0.377771, 0.925546, 0.025562,
		-0.539914, 0.242632, -0.805991,
		33.534851, 38.837688, 35.000465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497723, 39.016380, 35.486378>,  <33.912792, 38.667847, 35.564659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497723, 39.016380, 35.486378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482075, 39.319645, 35.746735>,  <34.472687, 39.501606, 35.902946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482075, 39.319645, 35.746735>,  <34.497723, 39.016380, 35.486378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482075, 39.319645, 35.746735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281338, -0.616680, 0.735224,
		0.958811, 0.211878, -0.189179,
		-0.039115, 0.758164, 0.650890,
		34.470341, 39.547092, 35.942001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110561, 39.137699, 35.851070>,  <34.497723, 39.016380, 35.486378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110561, 39.137699, 35.851070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834549, 39.279308, 36.103584>,  <34.668941, 39.364273, 36.255093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834549, 39.279308, 36.103584>,  <35.110561, 39.137699, 35.851070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834549, 39.279308, 36.103584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240125, -0.710834, 0.661101,
		0.682786, 0.607768, 0.405488,
		-0.690031, 0.354023, 0.631288,
		34.627541, 39.385517, 36.292973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347507, 39.033356, 36.535706>,  <35.110561, 39.137699, 35.851070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347507, 39.033356, 36.535706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947525, 39.037090, 36.535503>,  <34.707535, 39.039330, 36.535381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947525, 39.037090, 36.535503>,  <35.347507, 39.033356, 36.535706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947525, 39.037090, 36.535503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007009, -0.713085, 0.701043,
		0.006184, 0.701016, 0.713119,
		-0.999956, 0.009334, -0.000504,
		34.647537, 39.039890, 36.535351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976784, 39.276409, 37.269062>,  <35.347507, 39.033356, 36.535706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976784, 39.276409, 37.269062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781296, 39.012444, 37.040794>,  <34.664001, 38.854065, 36.903831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781296, 39.012444, 37.040794>,  <34.976784, 39.276409, 37.269062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781296, 39.012444, 37.040794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052639, -0.675222, 0.735734,
		-0.870851, 0.329529, 0.364732,
		-0.488720, -0.659914, -0.570671,
		34.634678, 38.814468, 36.869595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390911, 39.007866, 37.573441>,  <34.976784, 39.276409, 37.269062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390911, 39.007866, 37.573441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562538, 38.731968, 37.340149>,  <34.665516, 38.566429, 37.200172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562538, 38.731968, 37.340149>,  <34.390911, 39.007866, 37.573441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562538, 38.731968, 37.340149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040680, -0.630273, 0.775307,
		-0.902355, -0.356386, -0.242372,
		0.429069, -0.689743, -0.583228,
		34.691257, 38.525043, 37.165180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003819, 38.416000, 37.567196>,  <34.390911, 39.007866, 37.573441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003819, 38.416000, 37.567196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369556, 38.279636, 37.479782>,  <34.589001, 38.197819, 37.427334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369556, 38.279636, 37.479782>,  <34.003819, 38.416000, 37.567196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369556, 38.279636, 37.479782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050586, -0.631606, 0.773638,
		-0.401765, -0.696317, -0.594750,
		0.914345, -0.340906, -0.218533,
		34.643860, 38.177364, 37.414223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006519, 37.755020, 37.871689>,  <34.003819, 38.416000, 37.567196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006519, 37.755020, 37.871689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379890, 37.890236, 37.823631>,  <34.603912, 37.971367, 37.794796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379890, 37.890236, 37.823631>,  <34.006519, 37.755020, 37.871689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379890, 37.890236, 37.823631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248807, -0.368709, 0.895627,
		0.258463, -0.865898, -0.428272,
		0.933430, 0.338044, -0.120144,
		34.659920, 37.991650, 37.787586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395508, 37.150166, 37.875710>,  <34.006519, 37.755020, 37.871689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395508, 37.150166, 37.875710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602600, 37.473583, 37.987579>,  <34.726856, 37.667633, 38.054703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602600, 37.473583, 37.987579>,  <34.395508, 37.150166, 37.875710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602600, 37.473583, 37.987579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236373, -0.449353, 0.861516,
		0.822245, -0.379922, -0.423760,
		0.517727, 0.808543, 0.279676,
		34.757919, 37.716145, 38.071484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964188, 36.986851, 38.346298>,  <34.395508, 37.150166, 37.875710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964188, 36.986851, 38.346298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958168, 37.371178, 38.457016>,  <34.954556, 37.601772, 38.523445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958168, 37.371178, 38.457016>,  <34.964188, 36.986851, 38.346298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958168, 37.371178, 38.457016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054830, -0.275612, 0.959704,
		0.998382, 0.029619, -0.048534,
		-0.015049, 0.960812, 0.276790,
		34.953655, 37.659420, 38.540054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599155, 36.331444, 38.558475>,  <34.964188, 36.986851, 38.346298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599155, 36.331444, 38.558475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925343, 36.280727, 38.332577>,  <35.121056, 36.250298, 38.197037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925343, 36.280727, 38.332577>,  <34.599155, 36.331444, 38.558475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925343, 36.280727, 38.332577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141328, -0.902563, 0.406701,
		-0.561282, -0.411466, -0.718093,
		0.815468, -0.126787, -0.564745,
		35.169983, 36.242691, 38.163155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617775, 35.686787, 38.017941>,  <34.599155, 36.331444, 38.558475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617775, 35.686787, 38.017941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982792, 35.762684, 38.162865>,  <35.201801, 35.808224, 38.249817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982792, 35.762684, 38.162865>,  <34.617775, 35.686787, 38.017941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982792, 35.762684, 38.162865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173494, -0.981804, 0.077202,
		0.370365, -0.007592, -0.928855,
		0.912540, 0.189744, 0.362309,
		35.256554, 35.819607, 38.271557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044582, 35.057369, 37.782372>,  <34.617775, 35.686787, 38.017941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044582, 35.057369, 37.782372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191006, 35.229553, 38.112392>,  <35.278858, 35.332863, 38.310406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191006, 35.229553, 38.112392>,  <35.044582, 35.057369, 37.782372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191006, 35.229553, 38.112392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431564, -0.864007, 0.259315,
		0.824474, 0.261138, -0.502046,
		0.366054, 0.430463, 0.825049,
		35.300823, 35.358692, 38.359905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726124, 34.813694, 37.870022>,  <35.044582, 35.057369, 37.782372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726124, 34.813694, 37.870022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641308, 34.934124, 38.241913>,  <35.590420, 35.006382, 38.465046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641308, 34.934124, 38.241913>,  <35.726124, 34.813694, 37.870022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641308, 34.934124, 38.241913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531788, -0.762624, 0.368248,
		0.819903, 0.572500, 0.001596,
		-0.212039, 0.301079, 0.929726,
		35.577698, 35.024448, 38.520832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379738, 34.973770, 38.166332>,  <35.726124, 34.813694, 37.870022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379738, 34.973770, 38.166332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090622, 34.872143, 38.423401>,  <35.917152, 34.811169, 38.577641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090622, 34.872143, 38.423401>,  <36.379738, 34.973770, 38.166332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090622, 34.872143, 38.423401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622851, -0.642374, 0.446556,
		0.299378, 0.723054, 0.622548,
		-0.722793, -0.254065, 0.642667,
		35.873783, 34.795921, 38.616199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501778, 35.121365, 38.886189>,  <36.379738, 34.973770, 38.166332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501778, 35.121365, 38.886189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318665, 34.773705, 38.811344>,  <36.208797, 34.565109, 38.766438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318665, 34.773705, 38.811344>,  <36.501778, 35.121365, 38.886189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318665, 34.773705, 38.811344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725966, -0.486921, 0.485676,
		-0.513237, 0.086493, 0.853877,
		-0.457779, -0.869153, -0.187115,
		36.181332, 34.512959, 38.755211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832966, 35.608364, 38.417377>,  <36.501778, 35.121365, 38.886189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832966, 35.608364, 38.417377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763199, 35.998337, 38.362110>,  <36.721340, 36.232319, 38.328949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763199, 35.998337, 38.362110>,  <36.832966, 35.608364, 38.417377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763199, 35.998337, 38.362110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856762, 0.081094, -0.509296,
		-0.485323, -0.207207, -0.849427,
		-0.174413, 0.974930, -0.138170,
		36.710876, 36.290817, 38.320660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657970, 35.661964, 37.740353>,  <36.832966, 35.608364, 38.417377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657970, 35.661964, 37.740353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779095, 36.024185, 37.859200>,  <36.851768, 36.241520, 37.930508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779095, 36.024185, 37.859200>,  <36.657970, 35.661964, 37.740353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779095, 36.024185, 37.859200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669238, 0.019925, -0.742781,
		-0.678548, 0.423764, -0.599997,
		0.302809, 0.905554, 0.297119,
		36.869938, 36.295853, 37.948334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776962, 36.183384, 37.297867>,  <36.657970, 35.661964, 37.740353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776962, 36.183384, 37.297867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068218, 36.278679, 37.554947>,  <37.242970, 36.335857, 37.709194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068218, 36.278679, 37.554947>,  <36.776962, 36.183384, 37.297867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068218, 36.278679, 37.554947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674392, -0.081384, -0.733875,
		-0.122531, 0.967791, -0.219924,
		0.728136, 0.238237, 0.642698,
		37.286659, 36.350151, 37.747757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016884, 36.917305, 37.041294>,  <36.776962, 36.183384, 37.297867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016884, 36.917305, 37.041294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241749, 36.663475, 37.253441>,  <37.376667, 36.511177, 37.380730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241749, 36.663475, 37.253441>,  <37.016884, 36.917305, 37.041294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241749, 36.663475, 37.253441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666980, -0.031308, -0.744418,
		0.488994, 0.772226, 0.405650,
		0.562159, -0.634576, 0.530369,
		37.410397, 36.473103, 37.412552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724728, 37.231750, 37.043163>,  <37.016884, 36.917305, 37.041294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724728, 37.231750, 37.043163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727020, 36.834000, 37.085453>,  <37.728394, 36.595348, 37.110828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727020, 36.834000, 37.085453>,  <37.724728, 37.231750, 37.043163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727020, 36.834000, 37.085453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606851, -0.080578, -0.790721,
		0.794795, 0.068691, 0.602978,
		0.005728, -0.994379, 0.105728,
		37.728737, 36.535686, 37.117172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460407, 36.900566, 37.013981>,  <37.724728, 37.231750, 37.043163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460407, 36.900566, 37.013981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194878, 36.628361, 36.889893>,  <38.035561, 36.465038, 36.815441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194878, 36.628361, 36.889893>,  <38.460407, 36.900566, 37.013981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194878, 36.628361, 36.889893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659740, -0.337461, -0.671463,
		0.352254, -0.650398, 0.672978,
		-0.663823, -0.680516, -0.310222,
		37.995731, 36.424206, 36.796825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862999, 36.309563, 36.700806>,  <38.460407, 36.900566, 37.013981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862999, 36.309563, 36.700806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491970, 36.281944, 36.553921>,  <38.269352, 36.265373, 36.465790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491970, 36.281944, 36.553921>,  <38.862999, 36.309563, 36.700806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491970, 36.281944, 36.553921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370104, -0.304829, -0.877555,
		-0.051347, -0.949901, 0.308304,
		-0.927570, -0.069044, -0.367215,
		38.213699, 36.261230, 36.443756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702126, 35.584850, 36.420097>,  <38.862999, 36.309563, 36.700806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702126, 35.584850, 36.420097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518028, 35.889500, 36.237629>,  <38.407570, 36.072289, 36.128147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518028, 35.889500, 36.237629>,  <38.702126, 35.584850, 36.420097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518028, 35.889500, 36.237629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320625, -0.336555, -0.885398,
		-0.827872, -0.553763, -0.089298,
		-0.460247, 0.761628, -0.456175,
		38.379955, 36.117989, 36.100777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388195, 34.977707, 35.976540>,  <38.702126, 35.584850, 36.420097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388195, 34.977707, 35.976540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276619, 35.358810, 35.928467>,  <38.209671, 35.587471, 35.899624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276619, 35.358810, 35.928467>,  <38.388195, 34.977707, 35.976540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276619, 35.358810, 35.928467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203813, -0.181033, -0.962126,
		-0.938430, -0.243885, 0.244682,
		-0.278944, 0.952758, -0.120180,
		38.192936, 35.644638, 35.892414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867775, 35.014717, 35.396549>,  <38.388195, 34.977707, 35.976540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867775, 35.014717, 35.396549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942120, 35.405006, 35.442890>,  <37.986725, 35.639179, 35.470695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942120, 35.405006, 35.442890>,  <37.867775, 35.014717, 35.396549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942120, 35.405006, 35.442890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013864, 0.115295, -0.993235,
		-0.982478, 0.186210, 0.007902,
		0.185862, 0.975722, 0.115856,
		37.997879, 35.697723, 35.477646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396214, 35.442390, 34.931870>,  <37.867775, 35.014717, 35.396549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396214, 35.442390, 34.931870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693760, 35.694084, 35.021957>,  <37.872288, 35.845100, 35.076012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693760, 35.694084, 35.021957>,  <37.396214, 35.442390, 34.931870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693760, 35.694084, 35.021957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017135, 0.318926, -0.947625,
		-0.668105, 0.708768, 0.226457,
		0.743870, 0.629232, 0.225221,
		37.916920, 35.882854, 35.089523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167793, 36.015427, 34.576424>,  <37.396214, 35.442390, 34.931870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167793, 36.015427, 34.576424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565048, 36.050819, 34.607006>,  <37.803402, 36.072056, 34.625355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565048, 36.050819, 34.607006>,  <37.167793, 36.015427, 34.576424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565048, 36.050819, 34.607006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043527, 0.327167, -0.943964,
		-0.108536, 0.940815, 0.321071,
		0.993139, 0.088479, 0.076460,
		37.862991, 36.077362, 34.629944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510132, 35.778439, 34.736660>,  <37.167793, 36.015427, 34.576424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510132, 35.778439, 34.736660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208809, 35.755314, 34.998707>,  <36.028015, 35.741440, 35.155937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208809, 35.755314, 34.998707>,  <36.510132, 35.778439, 34.736660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208809, 35.755314, 34.998707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624260, -0.250586, -0.739937,
		0.206939, -0.966367, 0.152681,
		-0.753310, -0.057809, 0.655120,
		35.982815, 35.737972, 35.195244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127403, 35.092304, 34.683765>,  <36.510132, 35.778439, 34.736660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127403, 35.092304, 34.683765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890068, 35.384315, 34.819420>,  <35.747665, 35.559521, 34.900814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890068, 35.384315, 34.819420>,  <36.127403, 35.092304, 34.683765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890068, 35.384315, 34.819420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548414, -0.058207, -0.834179,
		-0.589230, -0.680938, 0.434892,
		-0.593338, 0.730024, 0.339138,
		35.712067, 35.603321, 34.921162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281040, 35.475147, 34.126644>,  <36.127403, 35.092304, 34.683765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281040, 35.475147, 34.126644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127247, 35.679779, 34.434010>,  <36.034969, 35.802559, 34.618427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127247, 35.679779, 34.434010>,  <36.281040, 35.475147, 34.126644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127247, 35.679779, 34.434010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806217, 0.591542, 0.009577,
		-0.449649, 0.623190, -0.639882,
		-0.384486, 0.511578, 0.768413,
		36.011902, 35.833252, 34.664532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369194, 35.892754, 33.532139>,  <36.281040, 35.475147, 34.126644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369194, 35.892754, 33.532139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550018, 35.579994, 33.360424>,  <36.658512, 35.392338, 33.257397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550018, 35.579994, 33.360424>,  <36.369194, 35.892754, 33.532139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550018, 35.579994, 33.360424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816826, -0.556235, 0.152964,
		-0.358384, 0.281502, -0.890122,
		0.452058, -0.781895, -0.429284,
		36.685635, 35.345425, 33.231640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865620, 35.594234, 33.066971>,  <36.369194, 35.892754, 33.532139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865620, 35.594234, 33.066971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120865, 35.311237, 33.188477>,  <36.274010, 35.141438, 33.261379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120865, 35.311237, 33.188477>,  <35.865620, 35.594234, 33.066971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120865, 35.311237, 33.188477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743239, -0.669019, 0.003095,
		0.201032, -0.227741, -0.952743,
		0.638109, -0.707493, 0.303760,
		36.312298, 35.098988, 33.279606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858429, 35.016747, 32.614799>,  <35.865620, 35.594234, 33.066971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858429, 35.016747, 32.614799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945221, 34.939445, 32.997543>,  <35.997295, 34.893063, 33.227188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945221, 34.939445, 32.997543>,  <35.858429, 35.016747, 32.614799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945221, 34.939445, 32.997543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815921, -0.574021, 0.069086,
		0.535904, -0.795708, -0.282233,
		0.216980, -0.193257, 0.956855,
		36.010315, 34.881470, 33.284599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117836, 34.837887, 32.508476>,  <35.858429, 35.016747, 32.614799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117836, 34.837887, 32.508476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011875, 35.170486, 32.703793>,  <34.948299, 35.370049, 32.820984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011875, 35.170486, 32.703793>,  <35.117836, 34.837887, 32.508476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011875, 35.170486, 32.703793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903953, -0.037844, -0.425955,
		-0.335704, -0.554229, 0.761665,
		-0.264901, 0.831504, 0.488292,
		34.932404, 35.419937, 32.850281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538418, 34.554783, 32.974976>,  <35.117836, 34.837887, 32.508476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538418, 34.554783, 32.974976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552502, 34.931301, 32.840675>,  <34.560951, 35.157211, 32.760094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552502, 34.931301, 32.840675>,  <34.538418, 34.554783, 32.974976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552502, 34.931301, 32.840675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903936, -0.113280, -0.412392,
		-0.426216, 0.318018, 0.846879,
		0.035214, 0.941293, -0.335750,
		34.563065, 35.213688, 32.739952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889221, 34.978138, 33.153130>,  <34.538418, 34.554783, 32.974976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889221, 34.978138, 33.153130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028679, 35.203449, 32.853485>,  <34.112354, 35.338638, 32.673698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028679, 35.203449, 32.853485>,  <33.889221, 34.978138, 33.153130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028679, 35.203449, 32.853485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895290, -0.036338, -0.443999,
		-0.277317, 0.825466, 0.491631,
		0.348641, 0.563281, -0.749109,
		34.133270, 35.372433, 32.628754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439732, 35.440750, 33.034374>,  <33.889221, 34.978138, 33.153130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439732, 35.440750, 33.034374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641144, 35.466785, 32.689766>,  <33.761993, 35.482407, 32.483002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641144, 35.466785, 32.689766>,  <33.439732, 35.440750, 33.034374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641144, 35.466785, 32.689766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863752, 0.015193, -0.503688,
		-0.019693, 0.997764, 0.063867,
		0.503532, 0.065084, -0.861521,
		33.792202, 35.486309, 32.431309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242134, 36.105000, 32.555988>,  <33.439732, 35.440750, 33.034374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242134, 36.105000, 32.555988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401276, 35.839958, 32.302162>,  <33.496761, 35.680935, 32.149868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401276, 35.839958, 32.302162>,  <33.242134, 36.105000, 32.555988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401276, 35.839958, 32.302162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802429, 0.083999, -0.590806,
		0.444773, 0.744244, -0.498274,
		0.397849, -0.662604, -0.634564,
		33.520630, 35.641178, 32.111794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098568, 36.443531, 31.922117>,  <33.242134, 36.105000, 32.555988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098568, 36.443531, 31.922117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157688, 36.058590, 31.830872>,  <33.193161, 35.827625, 31.776123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157688, 36.058590, 31.830872>,  <33.098568, 36.443531, 31.922117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157688, 36.058590, 31.830872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685316, 0.066648, -0.725189,
		0.713090, 0.263513, -0.649664,
		0.147798, -0.962350, -0.228115,
		33.202026, 35.769886, 31.762438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290573, 36.406818, 31.287048>,  <33.098568, 36.443531, 31.922117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290573, 36.406818, 31.287048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159683, 36.032574, 31.340050>,  <33.081150, 35.808025, 31.371851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159683, 36.032574, 31.340050>,  <33.290573, 36.406818, 31.287048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159683, 36.032574, 31.340050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530827, 0.065993, -0.844907,
		0.781760, -0.346807, -0.518243,
		-0.327220, -0.935612, 0.132504,
		33.061516, 35.751888, 31.379801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154156, 36.146057, 30.615723>,  <33.290573, 36.406818, 31.287048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154156, 36.146057, 30.615723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937862, 35.890396, 30.834476>,  <32.808086, 35.737000, 30.965729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937862, 35.890396, 30.834476>,  <33.154156, 36.146057, 30.615723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937862, 35.890396, 30.834476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679750, -0.050962, -0.731671,
		0.495523, -0.767385, -0.406911,
		-0.540737, -0.639158, 0.546883,
		32.775642, 35.698650, 30.998541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044781, 35.622913, 30.237633>,  <33.154156, 36.146057, 30.615723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044781, 35.622913, 30.237633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733067, 35.616814, 30.488224>,  <32.546036, 35.613152, 30.638578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733067, 35.616814, 30.488224>,  <33.044781, 35.622913, 30.237633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733067, 35.616814, 30.488224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622367, -0.098045, -0.776561,
		0.073271, -0.995065, 0.066911,
		-0.779289, -0.015256, 0.626479,
		32.499279, 35.612236, 30.676168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472595, 35.267906, 29.941217>,  <33.044781, 35.622913, 30.237633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472595, 35.267906, 29.941217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261520, 35.434570, 30.237309>,  <32.134876, 35.534569, 30.414963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261520, 35.434570, 30.237309>,  <32.472595, 35.267906, 29.941217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261520, 35.434570, 30.237309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819968, -0.022321, -0.571974,
		-0.221798, -0.908786, 0.353430,
		-0.527691, 0.416664, 0.740225,
		32.103214, 35.559570, 30.459375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945309, 34.818661, 29.921885>,  <32.472595, 35.267906, 29.941217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945309, 34.818661, 29.921885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842829, 35.157116, 30.108822>,  <31.781342, 35.360191, 30.220984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842829, 35.157116, 30.108822>,  <31.945309, 34.818661, 29.921885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842829, 35.157116, 30.108822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748136, 0.132577, -0.650165,
		-0.612091, -0.516206, 0.599063,
		-0.256197, 0.846141, 0.467342,
		31.765970, 35.410957, 30.249025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284622, 34.779057, 29.977610>,  <31.945309, 34.818661, 29.921885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284622, 34.779057, 29.977610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350586, 35.167236, 30.048065>,  <31.390165, 35.400146, 30.090340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350586, 35.167236, 30.048065>,  <31.284622, 34.779057, 29.977610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350586, 35.167236, 30.048065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779041, 0.237688, -0.580173,
		-0.604897, -0.041543, 0.795220,
		0.164912, 0.970453, 0.176140,
		31.400059, 35.458374, 30.100906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555517, 35.067619, 30.039671>,  <31.284622, 34.779057, 29.977610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555517, 35.067619, 30.039671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818388, 35.355125, 29.948902>,  <30.976110, 35.527630, 29.894440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818388, 35.355125, 29.948902>,  <30.555517, 35.067619, 30.039671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818388, 35.355125, 29.948902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561809, 0.266405, -0.783198,
		-0.502480, 0.642189, 0.578884,
		0.657179, 0.718764, -0.226924,
		31.015541, 35.570755, 29.880825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266737, 35.764561, 29.992638>,  <30.555517, 35.067619, 30.039671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266737, 35.764561, 29.992638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584509, 35.807892, 29.753592>,  <30.775173, 35.833893, 29.610165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584509, 35.807892, 29.753592>,  <30.266737, 35.764561, 29.992638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584509, 35.807892, 29.753592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594606, 0.339267, -0.728932,
		0.123784, 0.934431, 0.333939,
		0.794431, 0.108332, -0.597615,
		30.822838, 35.840393, 29.574306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135675, 36.353878, 29.642885>,  <30.266737, 35.764561, 29.992638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135675, 36.353878, 29.642885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435337, 36.184601, 29.439053>,  <30.615135, 36.083035, 29.316753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435337, 36.184601, 29.439053>,  <30.135675, 36.353878, 29.642885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435337, 36.184601, 29.439053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372580, 0.366854, -0.852410,
		0.547676, 0.828448, 0.117158,
		0.749156, -0.423194, -0.509580,
		30.660084, 36.057644, 29.286179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542313, 36.856941, 29.309118>,  <30.135675, 36.353878, 29.642885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542313, 36.856941, 29.309118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593670, 36.520287, 29.099297>,  <30.624483, 36.318295, 28.973404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593670, 36.520287, 29.099297>,  <30.542313, 36.856941, 29.309118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593670, 36.520287, 29.099297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194445, 0.497303, -0.845506,
		0.972474, 0.210553, -0.099802,
		0.128392, -0.841639, -0.524556,
		30.632187, 36.267796, 28.941931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872614, 37.011070, 28.654354>,  <30.542313, 36.856941, 29.309118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872614, 37.011070, 28.654354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686642, 36.670334, 28.557852>,  <30.575058, 36.465893, 28.499950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686642, 36.670334, 28.557852>,  <30.872614, 37.011070, 28.654354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686642, 36.670334, 28.557852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128528, 0.334550, -0.933572,
		0.875968, -0.403038, -0.265028,
		-0.464931, -0.851843, -0.241254,
		30.547163, 36.414780, 28.485476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116972, 36.812611, 28.010597>,  <30.872614, 37.011070, 28.654354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116972, 36.812611, 28.010597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758171, 36.639626, 28.047176>,  <30.542891, 36.535835, 28.069124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758171, 36.639626, 28.047176>,  <31.116972, 36.812611, 28.010597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758171, 36.639626, 28.047176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256358, 0.340437, -0.904645,
		0.360100, -0.834909, -0.416239,
		-0.897000, -0.432469, 0.091444,
		30.489071, 36.509888, 28.074610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056805, 36.521717, 27.363953>,  <31.116972, 36.812611, 28.010597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056805, 36.521717, 27.363953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682587, 36.501064, 27.503719>,  <30.458055, 36.488670, 27.587580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682587, 36.501064, 27.503719>,  <31.056805, 36.521717, 27.363953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682587, 36.501064, 27.503719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353021, 0.169080, -0.920211,
		-0.011564, -0.984249, -0.176410,
		-0.935544, -0.051635, 0.349415,
		30.401924, 36.485573, 27.608543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762741, 36.019058, 26.990992>,  <31.056805, 36.521717, 27.363953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762741, 36.019058, 26.990992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438927, 36.194618, 27.146948>,  <30.244638, 36.299953, 27.240520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438927, 36.194618, 27.146948>,  <30.762741, 36.019058, 26.990992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438927, 36.194618, 27.146948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374940, 0.124502, -0.918651,
		-0.451741, -0.889867, 0.063774,
		-0.809537, 0.438904, 0.389889,
		30.196066, 36.326290, 27.263914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242605, 35.840630, 26.517548>,  <30.762741, 36.019058, 26.990992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242605, 35.840630, 26.517548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108610, 36.156666, 26.722889>,  <30.028214, 36.346287, 26.846094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108610, 36.156666, 26.722889>,  <30.242605, 35.840630, 26.517548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108610, 36.156666, 26.722889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502767, 0.310899, -0.806578,
		-0.796874, -0.528291, 0.293086,
		-0.334988, 0.790095, 0.513354,
		30.008114, 36.393696, 26.876896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532248, 35.902851, 26.392044>,  <30.242605, 35.840630, 26.517548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532248, 35.902851, 26.392044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625477, 36.267792, 26.526678>,  <29.681414, 36.486755, 26.607458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625477, 36.267792, 26.526678>,  <29.532248, 35.902851, 26.392044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625477, 36.267792, 26.526678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363693, 0.402782, -0.839937,
		-0.901890, 0.073352, 0.425693,
		0.233072, 0.912352, 0.336587,
		29.695398, 36.541496, 26.627655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930111, 36.294880, 26.503052>,  <29.532248, 35.902851, 26.392044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930111, 36.294880, 26.503052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227039, 36.556145, 26.443260>,  <29.405197, 36.712902, 26.407385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227039, 36.556145, 26.443260>,  <28.930111, 36.294880, 26.503052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227039, 36.556145, 26.443260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416716, 0.275334, -0.866336,
		-0.524698, 0.705390, 0.476568,
		0.742320, 0.653158, -0.149481,
		29.449736, 36.752090, 26.398417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585651, 37.023762, 26.356522>,  <28.930111, 36.294880, 26.503052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585651, 37.023762, 26.356522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955948, 37.040371, 26.206171>,  <29.178125, 37.050335, 26.115961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955948, 37.040371, 26.206171>,  <28.585651, 37.023762, 26.356522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955948, 37.040371, 26.206171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355326, 0.435681, -0.826998,
		0.129425, 0.899143, 0.418080,
		0.925739, 0.041521, -0.375877,
		29.233669, 37.052826, 26.093409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574339, 37.740940, 26.177055>,  <28.585651, 37.023762, 26.356522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574339, 37.740940, 26.177055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852318, 37.542583, 25.968769>,  <29.019104, 37.423569, 25.843798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852318, 37.542583, 25.968769>,  <28.574339, 37.740940, 26.177055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852318, 37.542583, 25.968769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436290, 0.284840, -0.853532,
		0.571579, 0.820341, -0.018404,
		0.694945, -0.495890, -0.520715,
		29.060801, 37.393818, 25.812555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764498, 38.193649, 25.691128>,  <28.574339, 37.740940, 26.177055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764498, 38.193649, 25.691128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863798, 37.835384, 25.543531>,  <28.923378, 37.620426, 25.454973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863798, 37.835384, 25.543531>,  <28.764498, 38.193649, 25.691128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863798, 37.835384, 25.543531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407310, 0.249095, -0.878664,
		0.878903, 0.368424, -0.302975,
		0.248252, -0.895665, -0.368993,
		28.938274, 37.566685, 25.432833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991379, 38.512600, 24.962240>,  <28.764498, 38.193649, 25.691128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991379, 38.512600, 24.962240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960009, 38.114208, 24.944906>,  <28.941187, 37.875172, 24.934505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960009, 38.114208, 24.944906>,  <28.991379, 38.512600, 24.962240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960009, 38.114208, 24.944906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401624, 0.071349, -0.913021,
		0.912441, -0.054199, -0.405604,
		-0.078425, -0.995978, -0.043334,
		28.936481, 37.815414, 24.931906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228901, 38.380642, 24.304945>,  <28.991379, 38.512600, 24.962240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228901, 38.380642, 24.304945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990137, 38.082577, 24.423893>,  <28.846880, 37.903736, 24.495262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990137, 38.082577, 24.423893>,  <29.228901, 38.380642, 24.304945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990137, 38.082577, 24.423893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527091, 0.084783, -0.845569,
		0.604877, -0.661468, -0.443378,
		-0.596907, -0.745166, 0.297370,
		28.811066, 37.859028, 24.513103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200396, 37.800293, 23.819727>,  <29.228901, 38.380642, 24.304945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200396, 37.800293, 23.819727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855663, 37.760380, 24.018641>,  <28.648825, 37.736431, 24.137989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855663, 37.760380, 24.018641>,  <29.200396, 37.800293, 23.819727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855663, 37.760380, 24.018641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505285, 0.083845, -0.858870,
		0.043992, -0.991472, -0.122672,
		-0.861830, -0.099768, 0.497287,
		28.597115, 37.730446, 24.167826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755680, 37.496899, 23.357523>,  <29.200396, 37.800293, 23.819727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755680, 37.496899, 23.357523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527273, 37.644684, 23.650763>,  <28.390230, 37.733356, 23.826706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527273, 37.644684, 23.650763>,  <28.755680, 37.496899, 23.357523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527273, 37.644684, 23.650763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715969, 0.212789, -0.664913,
		-0.401658, -0.904553, 0.143019,
		-0.571016, 0.369465, 0.733101,
		28.355968, 37.755524, 23.870693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034155, 37.124660, 23.435173>,  <28.755680, 37.496899, 23.357523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034155, 37.124660, 23.435173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006968, 37.505970, 23.552916>,  <27.990656, 37.734756, 23.623562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006968, 37.505970, 23.552916>,  <28.034155, 37.124660, 23.435173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006968, 37.505970, 23.552916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660605, 0.178097, -0.729302,
		-0.747650, -0.244024, 0.617634,
		-0.067969, 0.953275, 0.294358,
		27.986576, 37.791954, 23.641222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392538, 37.336929, 23.223860>,  <28.034155, 37.124660, 23.435173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392538, 37.336929, 23.223860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547842, 37.696468, 23.305180>,  <27.641024, 37.912189, 23.353971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547842, 37.696468, 23.305180>,  <27.392538, 37.336929, 23.223860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547842, 37.696468, 23.305180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482459, 0.386218, -0.786173,
		-0.785167, 0.207155, 0.583609,
		0.388260, 0.898845, 0.203301,
		27.664320, 37.966122, 23.366171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913853, 37.770325, 23.220449>,  <27.392538, 37.336929, 23.223860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913853, 37.770325, 23.220449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215160, 38.023666, 23.149523>,  <27.395947, 38.175671, 23.106968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215160, 38.023666, 23.149523>,  <26.913853, 37.770325, 23.220449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215160, 38.023666, 23.149523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508848, 0.390390, -0.767248,
		-0.416720, 0.668172, 0.616352,
		0.753272, 0.633357, -0.177315,
		27.441141, 38.213673, 23.096329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585573, 38.407726, 23.157679>,  <26.913853, 37.770325, 23.220449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585573, 38.407726, 23.157679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945900, 38.437511, 22.986574>,  <27.162096, 38.455383, 22.883911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945900, 38.437511, 22.986574>,  <26.585573, 38.407726, 23.157679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945900, 38.437511, 22.986574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396072, 0.544606, -0.739277,
		0.177911, 0.835380, 0.520085,
		0.900819, 0.074465, -0.427762,
		27.216146, 38.459850, 22.858246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459412, 38.970657, 22.662354>,  <26.585573, 38.407726, 23.157679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459412, 38.970657, 22.662354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809072, 38.824024, 22.534933>,  <27.018869, 38.736046, 22.458481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809072, 38.824024, 22.534933>,  <26.459412, 38.970657, 22.662354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809072, 38.824024, 22.534933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287123, 0.138909, -0.947768,
		0.391681, 0.919959, 0.016175,
		0.874154, -0.366579, -0.318550,
		27.071320, 38.714050, 22.439367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741558, 39.488785, 22.197363>,  <26.459412, 38.970657, 22.662354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741558, 39.488785, 22.197363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910866, 39.143520, 22.087242>,  <27.012449, 38.936359, 22.021170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910866, 39.143520, 22.087242>,  <26.741558, 39.488785, 22.197363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910866, 39.143520, 22.087242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352194, 0.123207, -0.927782,
		0.834748, 0.489659, -0.251852,
		0.423267, -0.863165, -0.275302,
		27.037846, 38.884571, 22.004652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160967, 39.648273, 21.732403>,  <26.741558, 39.488785, 22.197363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160967, 39.648273, 21.732403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096436, 39.262920, 21.646738>,  <27.057716, 39.031708, 21.595339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096436, 39.262920, 21.646738>,  <27.160967, 39.648273, 21.732403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096436, 39.262920, 21.646738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271482, 0.251953, -0.928879,
		0.948826, -0.091714, -0.302189,
		-0.161328, -0.963384, -0.214161,
		27.048037, 38.973904, 21.582489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418142, 39.586544, 21.020266>,  <27.160967, 39.648273, 21.732403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418142, 39.586544, 21.020266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217602, 39.241467, 21.046810>,  <27.097277, 39.034420, 21.062737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217602, 39.241467, 21.046810>,  <27.418142, 39.586544, 21.020266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217602, 39.241467, 21.046810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383051, 0.152530, -0.911047,
		0.775833, -0.482175, -0.406928,
		-0.501353, -0.862695, 0.066360,
		27.067196, 38.982658, 21.066719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447338, 39.320103, 20.351294>,  <27.418142, 39.586544, 21.020266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447338, 39.320103, 20.351294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130894, 39.146759, 20.523964>,  <26.941027, 39.042755, 20.627565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130894, 39.146759, 20.523964>,  <27.447338, 39.320103, 20.351294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130894, 39.146759, 20.523964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499457, 0.050254, -0.864880,
		0.353108, -0.899820, -0.256200,
		-0.791111, -0.433357, 0.431676,
		26.893560, 39.016750, 20.653467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289492, 38.820717, 19.865610>,  <27.447338, 39.320103, 20.351294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289492, 38.820717, 19.865610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978065, 38.911533, 20.099630>,  <26.791210, 38.966022, 20.240044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978065, 38.911533, 20.099630>,  <27.289492, 38.820717, 19.865610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978065, 38.911533, 20.099630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562383, 0.161296, -0.810993,
		-0.278494, -0.960436, 0.002103,
		-0.778567, 0.227039, 0.585052,
		26.744495, 38.979645, 20.275146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793642, 38.576599, 19.446100>,  <27.289492, 38.820717, 19.865610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793642, 38.576599, 19.446100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583412, 38.795872, 19.706337>,  <26.457273, 38.927433, 19.862478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583412, 38.795872, 19.706337>,  <26.793642, 38.576599, 19.446100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583412, 38.795872, 19.706337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579500, 0.329199, -0.745525,
		-0.622856, -0.768848, 0.144651,
		-0.525577, 0.548180, 0.650591,
		26.425739, 38.960327, 19.901514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100441, 38.389217, 19.308617>,  <26.793642, 38.576599, 19.446100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100441, 38.389217, 19.308617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097258, 38.752968, 19.474977>,  <26.095346, 38.971218, 19.574795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097258, 38.752968, 19.474977>,  <26.100441, 38.389217, 19.308617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097258, 38.752968, 19.474977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549830, 0.343421, -0.761412,
		-0.835239, -0.234737, 0.497267,
		-0.007960, 0.909373, 0.415904,
		26.094870, 39.025780, 19.599749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351297, 38.568714, 19.426405>,  <26.100441, 38.389217, 19.308617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351297, 38.568714, 19.426405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556604, 38.911831, 19.437359>,  <25.679789, 39.117702, 19.443932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556604, 38.911831, 19.437359>,  <25.351297, 38.568714, 19.426405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556604, 38.911831, 19.437359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651014, 0.409936, -0.638853,
		-0.559230, 0.310073, 0.768841,
		0.513267, 0.857792, 0.027387,
		25.710585, 39.169170, 19.445576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.924274, 39.145329, 19.729740>,  <25.351297, 38.568714, 19.426405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.924274, 39.145329, 19.729740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216269, 39.251701, 19.477898>,  <25.391466, 39.315525, 19.326792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216269, 39.251701, 19.477898>,  <24.924274, 39.145329, 19.729740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216269, 39.251701, 19.477898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683247, 0.306988, -0.662519,
		0.017098, 0.913806, 0.405792,
		0.729987, 0.265928, -0.629604,
		25.435265, 39.331478, 19.289017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810537, 39.839218, 19.455160>,  <24.924274, 39.145329, 19.729740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810537, 39.839218, 19.455160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025692, 39.660580, 19.169159>,  <25.154785, 39.553394, 18.997559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025692, 39.660580, 19.169159>,  <24.810537, 39.839218, 19.455160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025692, 39.660580, 19.169159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635506, 0.342463, -0.691990,
		0.553904, 0.826601, -0.099609,
		0.537887, -0.446598, -0.715001,
		25.187057, 39.526600, 18.954659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.094189, 40.471916, 19.023226>,  <24.810537, 39.839218, 19.455160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.094189, 40.471916, 19.023226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028896, 40.114433, 18.856068>,  <24.989721, 39.899944, 18.755774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028896, 40.114433, 18.856068>,  <25.094189, 40.471916, 19.023226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028896, 40.114433, 18.856068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537959, 0.435692, -0.721646,
		0.827016, 0.107014, -0.551899,
		-0.163232, -0.893712, -0.417894,
		24.979927, 39.846321, 18.730700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347353, 40.564133, 18.377010>,  <25.094189, 40.471916, 19.023226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347353, 40.564133, 18.377010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060858, 40.285042, 18.371618>,  <24.888960, 40.117588, 18.368383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060858, 40.285042, 18.371618>,  <25.347353, 40.564133, 18.377010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060858, 40.285042, 18.371618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340488, 0.366257, -0.865981,
		0.609154, -0.615660, -0.499895,
		-0.716240, -0.697724, -0.013482,
		24.845985, 40.075726, 18.367575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.968117, 41.282696, 18.443121>,  <25.347353, 40.564133, 18.377010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.968117, 41.282696, 18.443121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225145, 41.571922, 18.341707>,  <25.379362, 41.745457, 18.280859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225145, 41.571922, 18.341707>,  <24.968117, 41.282696, 18.443121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225145, 41.571922, 18.341707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228469, -0.496640, -0.837347,
		-0.731372, 0.480130, -0.484325,
		0.642570, 0.723065, -0.253534,
		25.417917, 41.788841, 18.265648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425558, 41.318600, 18.975079>,  <24.968117, 41.282696, 18.443121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425558, 41.318600, 18.975079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548023, 41.221771, 18.606804>,  <25.621502, 41.163673, 18.385839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548023, 41.221771, 18.606804>,  <25.425558, 41.318600, 18.975079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548023, 41.221771, 18.606804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872537, -0.315416, 0.373085,
		-0.380714, -0.917558, 0.114651,
		0.306165, -0.242076, -0.920686,
		25.639874, 41.149147, 18.330599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822556, 40.730225, 18.921885>,  <25.425558, 41.318600, 18.975079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822556, 40.730225, 18.921885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949497, 40.906300, 18.585903>,  <26.025661, 41.011944, 18.384314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949497, 40.906300, 18.585903>,  <25.822556, 40.730225, 18.921885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949497, 40.906300, 18.585903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944430, -0.066693, 0.321876,
		0.085665, -0.895427, -0.436889,
		0.317354, 0.440184, -0.839955,
		26.044703, 41.038353, 18.333916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352684, 40.340424, 18.597824>,  <25.822556, 40.730225, 18.921885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352684, 40.340424, 18.597824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388729, 40.732895, 18.529505>,  <26.410357, 40.968376, 18.488512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388729, 40.732895, 18.529505>,  <26.352684, 40.340424, 18.597824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388729, 40.732895, 18.529505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915532, -0.014106, 0.401998,
		0.392021, -0.192598, -0.899569,
		0.090113, 0.981176, -0.170800,
		26.415764, 41.027248, 18.478266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018204, 40.473564, 18.676777>,  <26.352684, 40.340424, 18.597824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018204, 40.473564, 18.676777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911766, 40.859020, 18.686554>,  <26.847904, 41.090294, 18.692421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911766, 40.859020, 18.686554>,  <27.018204, 40.473564, 18.676777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911766, 40.859020, 18.686554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731752, 0.185426, 0.655863,
		0.627482, 0.192406, -0.754484,
		-0.266093, 0.963638, 0.024442,
		26.831938, 41.148113, 18.693886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590977, 40.983620, 18.563387>,  <27.018204, 40.473564, 18.676777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590977, 40.983620, 18.563387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299685, 41.146599, 18.783812>,  <27.124910, 41.244389, 18.916065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299685, 41.146599, 18.783812>,  <27.590977, 40.983620, 18.563387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299685, 41.146599, 18.783812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652774, 0.167488, 0.738806,
		0.208731, 0.897737, -0.387942,
		-0.728229, 0.407450, 0.551059,
		27.081215, 41.268833, 18.949129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078743, 41.311401, 18.988773>,  <27.590977, 40.983620, 18.563387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078743, 41.311401, 18.988773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720167, 41.254547, 19.156673>,  <27.505022, 41.220436, 19.257414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720167, 41.254547, 19.156673>,  <28.078743, 41.311401, 18.988773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720167, 41.254547, 19.156673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414263, 0.067668, 0.907638,
		-0.157412, 0.987531, -0.001779,
		-0.896442, -0.142137, 0.419749,
		27.451235, 41.211906, 19.282598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949400, 41.904949, 19.426580>,  <28.078743, 41.311401, 18.988773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949400, 41.904949, 19.426580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732594, 41.592239, 19.549898>,  <27.602509, 41.404613, 19.623888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732594, 41.592239, 19.549898>,  <27.949400, 41.904949, 19.426580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732594, 41.592239, 19.549898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304368, 0.159323, 0.939136,
		-0.783311, 0.602863, 0.151592,
		-0.542018, -0.781775, 0.308292,
		27.569988, 41.357708, 19.642385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522282, 42.059212, 19.990364>,  <27.949400, 41.904949, 19.426580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522282, 42.059212, 19.990364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531893, 41.661686, 20.033730>,  <27.537661, 41.423172, 20.059750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531893, 41.661686, 20.033730>,  <27.522282, 42.059212, 19.990364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531893, 41.661686, 20.033730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210536, 0.111046, 0.971259,
		-0.977291, -0.000513, 0.211902,
		0.024029, -0.993815, 0.108416,
		27.539103, 41.363541, 20.066254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225630, 41.956924, 20.583982>,  <27.522282, 42.059212, 19.990364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225630, 41.956924, 20.583982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432455, 41.619545, 20.525679>,  <27.556549, 41.417118, 20.490696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432455, 41.619545, 20.525679>,  <27.225630, 41.956924, 20.583982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432455, 41.619545, 20.525679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291821, 0.013618, 0.956376,
		-0.804666, -0.537041, 0.253177,
		0.517061, -0.843446, -0.145762,
		27.587574, 41.366512, 20.481951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164747, 41.636177, 21.157743>,  <27.225630, 41.956924, 20.583982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164747, 41.636177, 21.157743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488764, 41.457779, 21.005472>,  <27.683174, 41.350739, 20.914110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488764, 41.457779, 21.005472>,  <27.164747, 41.636177, 21.157743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488764, 41.457779, 21.005472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438519, 0.029784, 0.898228,
		-0.389270, -0.894538, 0.219705,
		0.810043, -0.445998, -0.380678,
		27.731777, 41.323978, 20.891270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301083, 41.221416, 21.690649>,  <27.164747, 41.636177, 21.157743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301083, 41.221416, 21.690649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621494, 41.254082, 21.453436>,  <27.813742, 41.273682, 21.311108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621494, 41.254082, 21.453436>,  <27.301083, 41.221416, 21.690649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621494, 41.254082, 21.453436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598628, -0.109349, 0.793528,
		-0.000044, -0.990643, -0.136478,
		0.801027, 0.081664, -0.593032,
		27.861803, 41.278580, 21.275526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818819, 40.626205, 21.913008>,  <27.301083, 41.221416, 21.690649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818819, 40.626205, 21.913008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022787, 40.925388, 21.743044>,  <28.145168, 41.104897, 21.641066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022787, 40.925388, 21.743044>,  <27.818819, 40.626205, 21.913008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022787, 40.925388, 21.743044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724791, -0.107523, 0.680527,
		0.463315, -0.654985, -0.596938,
		0.509919, 0.747953, -0.424910,
		28.175762, 41.149773, 21.615570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402719, 40.374638, 21.822636>,  <27.818819, 40.626205, 21.913008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402719, 40.374638, 21.822636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488377, 40.764545, 21.797443>,  <28.539770, 40.998489, 21.782328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488377, 40.764545, 21.797443>,  <28.402719, 40.374638, 21.822636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488377, 40.764545, 21.797443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755644, -0.124455, 0.643050,
		0.618988, -0.185294, -0.763230,
		0.214141, 0.974770, -0.062980,
		28.552620, 41.056976, 21.778549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033449, 40.365604, 21.708807>,  <28.402719, 40.374638, 21.822636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033449, 40.365604, 21.708807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987947, 40.739693, 21.842920>,  <28.960646, 40.964146, 21.923388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987947, 40.739693, 21.842920>,  <29.033449, 40.365604, 21.708807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987947, 40.739693, 21.842920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839281, -0.090136, 0.536174,
		0.531664, 0.342390, -0.774663,
		-0.113755, 0.935224, 0.335283,
		28.953821, 41.020260, 21.943506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679819, 40.570797, 21.639311>,  <29.033449, 40.365604, 21.708807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679819, 40.570797, 21.639311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511421, 40.829361, 21.893843>,  <29.410383, 40.984501, 22.046562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511421, 40.829361, 21.893843>,  <29.679819, 40.570797, 21.639311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511421, 40.829361, 21.893843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831981, -0.004283, 0.554788,
		0.361347, 0.762977, -0.535998,
		-0.420995, 0.646411, 0.636330,
		29.385122, 41.023285, 22.084742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158140, 41.085690, 21.882526>,  <29.679819, 40.570797, 21.639311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158140, 41.085690, 21.882526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887800, 41.149605, 22.170330>,  <29.725597, 41.187954, 22.343012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887800, 41.149605, 22.170330>,  <30.158140, 41.085690, 21.882526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887800, 41.149605, 22.170330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733682, 0.052757, 0.677442,
		0.070289, 0.985740, -0.152890,
		-0.675848, 0.159789, 0.719511,
		29.685045, 41.197540, 22.386183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359648, 41.784283, 22.297438>,  <30.158140, 41.085690, 21.882526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359648, 41.784283, 22.297438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142756, 41.541359, 22.529703>,  <30.012621, 41.395607, 22.669062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142756, 41.541359, 22.529703>,  <30.359648, 41.784283, 22.297438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142756, 41.541359, 22.529703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690169, 0.072231, 0.720034,
		-0.479222, 0.791179, 0.379977,
		-0.542230, -0.607305, 0.580661,
		29.980087, 41.359169, 22.703901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393223, 42.053040, 22.909151>,  <30.359648, 41.784283, 22.297438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393223, 42.053040, 22.909151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283339, 41.674606, 22.977816>,  <30.217407, 41.447548, 23.019014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283339, 41.674606, 22.977816>,  <30.393223, 42.053040, 22.909151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283339, 41.674606, 22.977816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568370, -0.015778, 0.822622,
		-0.775557, 0.323550, 0.542058,
		-0.274712, -0.946080, 0.171659,
		30.200926, 41.390781, 23.029314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319880, 42.000904, 23.535738>,  <30.393223, 42.053040, 22.909151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319880, 42.000904, 23.535738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347050, 41.607517, 23.468584>,  <30.363352, 41.371487, 23.428291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347050, 41.607517, 23.468584>,  <30.319880, 42.000904, 23.535738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347050, 41.607517, 23.468584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338240, -0.135608, 0.931238,
		-0.938605, -0.120040, 0.323436,
		0.067926, -0.983464, -0.167885,
		30.367428, 41.312477, 23.418219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937582, 41.632759, 23.987579>,  <30.319880, 42.000904, 23.535738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937582, 41.632759, 23.987579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223377, 41.391899, 23.845076>,  <30.394854, 41.247383, 23.759573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223377, 41.391899, 23.845076>,  <29.937582, 41.632759, 23.987579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223377, 41.391899, 23.845076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246894, -0.259443, 0.933666,
		-0.654637, -0.755052, -0.036701,
		0.714488, -0.602151, -0.356259,
		30.437723, 41.211254, 23.738197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814253, 41.001198, 24.382133>,  <29.937582, 41.632759, 23.987579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814253, 41.001198, 24.382133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189175, 40.996708, 24.242802>,  <30.414127, 40.994015, 24.159203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189175, 40.996708, 24.242802>,  <29.814253, 41.001198, 24.382133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189175, 40.996708, 24.242802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338856, -0.204247, 0.918401,
		-0.081451, -0.978855, -0.187639,
		0.937306, -0.011222, -0.348327,
		30.470366, 40.993340, 24.138304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054625, 40.504837, 24.768559>,  <29.814253, 41.001198, 24.382133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054625, 40.504837, 24.768559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392071, 40.682259, 24.647514>,  <30.594538, 40.788712, 24.574888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392071, 40.682259, 24.647514>,  <30.054625, 40.504837, 24.768559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392071, 40.682259, 24.647514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413303, -0.176635, 0.893298,
		0.342775, -0.878669, -0.332334,
		0.843615, 0.443555, -0.302610,
		30.645155, 40.815327, 24.556732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502657, 40.001324, 24.860800>,  <30.054625, 40.504837, 24.768559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502657, 40.001324, 24.860800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718071, 40.338352, 24.857765>,  <30.847321, 40.540569, 24.855946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718071, 40.338352, 24.857765>,  <30.502657, 40.001324, 24.860800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718071, 40.338352, 24.857765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408246, -0.253040, 0.877101,
		0.737098, -0.475447, -0.480247,
		0.538537, 0.842568, -0.007585,
		30.879633, 40.591122, 24.855490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145472, 39.753067, 25.223139>,  <30.502657, 40.001324, 24.860800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145472, 39.753067, 25.223139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146709, 40.153038, 25.218359>,  <31.147453, 40.393021, 25.215490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146709, 40.153038, 25.218359>,  <31.145472, 39.753067, 25.223139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146709, 40.153038, 25.218359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508726, 0.008713, 0.860885,
		0.860923, -0.008744, -0.508660,
		0.003096, 0.999924, -0.011950,
		31.147638, 40.453014, 25.214773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827051, 39.955120, 25.399380>,  <31.145472, 39.753067, 25.223139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827051, 39.955120, 25.399380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604179, 40.277969, 25.477451>,  <31.470455, 40.471680, 25.524294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604179, 40.277969, 25.477451>,  <31.827051, 39.955120, 25.399380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604179, 40.277969, 25.477451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402445, 0.056874, 0.913676,
		0.726352, 0.587632, -0.356513,
		-0.557181, 0.807127, 0.195179,
		31.437025, 40.520107, 25.536005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231056, 40.425228, 25.720926>,  <31.827051, 39.955120, 25.399380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231056, 40.425228, 25.720926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872887, 40.583038, 25.803450>,  <31.657986, 40.677727, 25.852964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872887, 40.583038, 25.803450>,  <32.231056, 40.425228, 25.720926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872887, 40.583038, 25.803450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310787, 0.222088, 0.924169,
		0.318791, 0.891642, -0.321477,
		-0.895424, 0.394527, 0.206311,
		31.604259, 40.701397, 25.865343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315815, 41.102661, 26.108364>,  <32.231056, 40.425228, 25.720926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315815, 41.102661, 26.108364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954014, 40.977459, 26.224230>,  <31.736933, 40.902340, 26.293749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954014, 40.977459, 26.224230>,  <32.315815, 41.102661, 26.108364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954014, 40.977459, 26.224230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236999, 0.195754, 0.951584,
		-0.354552, 0.929359, -0.102878,
		-0.904502, -0.313003, 0.289663,
		31.682663, 40.883556, 26.311129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038471, 41.635746, 26.611927>,  <32.315815, 41.102661, 26.108364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038471, 41.635746, 26.611927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838909, 41.294823, 26.674734>,  <31.719172, 41.090267, 26.712418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838909, 41.294823, 26.674734>,  <32.038471, 41.635746, 26.611927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838909, 41.294823, 26.674734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154540, 0.090779, 0.983807,
		-0.852765, 0.515095, 0.086426,
		-0.498908, -0.852313, 0.157016,
		31.689238, 41.039127, 26.721838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559267, 41.820339, 27.234360>,  <32.038471, 41.635746, 26.611927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559267, 41.820339, 27.234360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628368, 41.430260, 27.179020>,  <31.669830, 41.196213, 27.145815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628368, 41.430260, 27.179020>,  <31.559267, 41.820339, 27.234360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628368, 41.430260, 27.179020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192761, -0.104273, 0.975690,
		-0.965919, -0.195223, 0.169967,
		0.172754, -0.975200, -0.138351,
		31.680195, 41.137699, 27.137514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107971, 41.462875, 27.750267>,  <31.559267, 41.820339, 27.234360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107971, 41.462875, 27.750267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393501, 41.199692, 27.654312>,  <31.564819, 41.041782, 27.596739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393501, 41.199692, 27.654312>,  <31.107971, 41.462875, 27.750267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393501, 41.199692, 27.654312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159871, -0.180401, 0.970514,
		-0.681832, -0.731128, -0.023586,
		0.713825, -0.657957, -0.239889,
		31.607649, 41.002304, 27.582346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061216, 41.022873, 28.281261>,  <31.107971, 41.462875, 27.750267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061216, 41.022873, 28.281261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420124, 40.921215, 28.136866>,  <31.635469, 40.860218, 28.050228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420124, 40.921215, 28.136866>,  <31.061216, 41.022873, 28.281261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420124, 40.921215, 28.136866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219735, -0.452108, 0.864473,
		-0.382910, -0.854989, -0.349819,
		0.897272, -0.254148, -0.360988,
		31.689306, 40.844971, 28.028568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273911, 40.399185, 28.686825>,  <31.061216, 41.022873, 28.281261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273911, 40.399185, 28.686825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612400, 40.516445, 28.508852>,  <31.815495, 40.586800, 28.402069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612400, 40.516445, 28.508852>,  <31.273911, 40.399185, 28.686825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612400, 40.516445, 28.508852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532694, -0.483883, 0.694330,
		-0.011751, -0.824572, -0.565634,
		0.846226, 0.293151, -0.444931,
		31.866268, 40.604389, 28.375372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731945, 39.727112, 28.639507>,  <31.273911, 40.399185, 28.686825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731945, 39.727112, 28.639507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961012, 40.054867, 28.629257>,  <32.098454, 40.251518, 28.623108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961012, 40.054867, 28.629257>,  <31.731945, 39.727112, 28.639507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961012, 40.054867, 28.629257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638591, -0.426274, 0.640696,
		0.514056, -0.383269, -0.767367,
		0.572668, 0.819387, -0.025623,
		32.132812, 40.300682, 28.621571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373569, 39.490662, 28.512262>,  <31.731945, 39.727112, 28.639507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373569, 39.490662, 28.512262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388458, 39.831528, 28.721041>,  <32.397392, 40.036049, 28.846308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388458, 39.831528, 28.721041>,  <32.373569, 39.490662, 28.512262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388458, 39.831528, 28.721041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518641, -0.462930, 0.718824,
		0.854181, 0.243950, -0.459198,
		0.037219, 0.852165, 0.521948,
		32.399624, 40.087177, 28.877625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095634, 39.579861, 28.637444>,  <32.373569, 39.490662, 28.512262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095634, 39.579861, 28.637444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918724, 39.795658, 28.924036>,  <32.812580, 39.925137, 29.095991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918724, 39.795658, 28.924036>,  <33.095634, 39.579861, 28.637444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918724, 39.795658, 28.924036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661521, -0.343216, 0.666778,
		0.605628, 0.768864, -0.205090,
		-0.442272, 0.539491, 0.716481,
		32.786041, 39.957504, 29.138981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676945, 39.903694, 29.020838>,  <33.095634, 39.579861, 28.637444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676945, 39.903694, 29.020838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364265, 39.946167, 29.266659>,  <33.176659, 39.971653, 29.414152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364265, 39.946167, 29.266659>,  <33.676945, 39.903694, 29.020838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364265, 39.946167, 29.266659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519101, -0.435383, 0.735511,
		0.345665, 0.893961, 0.285217,
		-0.781697, 0.106184, 0.614553,
		33.129757, 39.978024, 29.451025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956173, 40.268864, 29.586378>,  <33.676945, 39.903694, 29.020838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956173, 40.268864, 29.586378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629002, 40.074566, 29.709698>,  <33.432701, 39.957989, 29.783689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629002, 40.074566, 29.709698>,  <33.956173, 40.268864, 29.586378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629002, 40.074566, 29.709698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532115, -0.434963, 0.726403,
		-0.218748, 0.758195, 0.614240,
		-0.817926, -0.485745, 0.308300,
		33.383625, 39.928841, 29.802187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963585, 40.291851, 30.319637>,  <33.956173, 40.268864, 29.586378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963585, 40.291851, 30.319637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684116, 40.008667, 30.278374>,  <33.516434, 39.838757, 30.253616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684116, 40.008667, 30.278374>,  <33.963585, 40.291851, 30.319637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684116, 40.008667, 30.278374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400990, -0.506916, 0.763049,
		-0.592502, 0.491758, 0.638056,
		-0.698676, -0.707962, -0.103159,
		33.474514, 39.796280, 30.247427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777843, 40.031483, 30.932375>,  <33.963585, 40.291851, 30.319637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777843, 40.031483, 30.932375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680115, 39.723576, 30.696491>,  <33.621475, 39.538830, 30.554960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680115, 39.723576, 30.696491>,  <33.777843, 40.031483, 30.932375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680115, 39.723576, 30.696491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410403, -0.633075, 0.656342,
		-0.878564, -0.081657, 0.470593,
		-0.244326, -0.769771, -0.589710,
		33.606815, 39.492645, 30.519579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579395, 39.492397, 31.418440>,  <33.777843, 40.031483, 30.932375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579395, 39.492397, 31.418440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616505, 39.296253, 31.071814>,  <33.638771, 39.178566, 30.863838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616505, 39.296253, 31.071814>,  <33.579395, 39.492397, 31.418440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616505, 39.296253, 31.071814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463139, -0.749185, 0.473524,
		-0.881416, -0.445271, 0.157601,
		0.092774, -0.490362, -0.866566,
		33.644337, 39.149143, 30.811844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243732, 38.716675, 31.537218>,  <33.579395, 39.492397, 31.418440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243732, 38.716675, 31.537218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497086, 38.689510, 31.228876>,  <33.649097, 38.673210, 31.043871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497086, 38.689510, 31.228876>,  <33.243732, 38.716675, 31.537218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497086, 38.689510, 31.228876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552556, -0.657706, 0.511962,
		-0.541764, -0.750207, -0.379052,
		0.633382, -0.067915, -0.770853,
		33.687099, 38.669136, 30.997620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325401, 37.996105, 31.362228>,  <33.243732, 38.716675, 31.537218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325401, 37.996105, 31.362228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652000, 38.175186, 31.216412>,  <33.847961, 38.282635, 31.128922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652000, 38.175186, 31.216412>,  <33.325401, 37.996105, 31.362228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652000, 38.175186, 31.216412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570143, -0.724693, 0.386984,
		-0.090924, -0.523812, -0.846967,
		0.816498, 0.447707, -0.364540,
		33.896950, 38.309498, 31.107050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666550, 37.427208, 31.111067>,  <33.325401, 37.996105, 31.362228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666550, 37.427208, 31.111067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927826, 37.728218, 31.144659>,  <34.084591, 37.908825, 31.164814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927826, 37.728218, 31.144659>,  <33.666550, 37.427208, 31.111067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927826, 37.728218, 31.144659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691619, -0.638089, 0.338388,
		0.308233, -0.162948, -0.937252,
		0.653189, 0.752523, 0.083982,
		34.123783, 37.953976, 31.169853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224064, 37.162327, 30.822342>,  <33.666550, 37.427208, 31.111067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224064, 37.162327, 30.822342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331734, 37.450817, 31.077648>,  <34.396336, 37.623909, 31.230831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331734, 37.450817, 31.077648>,  <34.224064, 37.162327, 30.822342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331734, 37.450817, 31.077648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703695, -0.599753, 0.380933,
		0.657539, 0.346607, -0.668959,
		0.269176, 0.721221, 0.638267,
		34.412487, 37.667183, 31.269129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876736, 37.299408, 30.773241>,  <34.224064, 37.162327, 30.822342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876736, 37.299408, 30.773241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750458, 37.390511, 31.141689>,  <34.674690, 37.445171, 31.362759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750458, 37.390511, 31.141689>,  <34.876736, 37.299408, 30.773241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750458, 37.390511, 31.141689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533715, -0.760014, 0.370847,
		0.784528, 0.608690, 0.118375,
		-0.315697, 0.227761, 0.921119,
		34.655750, 37.458839, 31.418026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531834, 36.927601, 30.945181>,  <34.876736, 37.299408, 30.773241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531834, 36.927601, 30.945181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742477, 36.604778, 31.052019>,  <35.868866, 36.411087, 31.116123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742477, 36.604778, 31.052019>,  <35.531834, 36.927601, 30.945181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742477, 36.604778, 31.052019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767693, -0.316527, 0.557187,
		-0.365139, -0.498468, -0.786259,
		0.526612, -0.807056, 0.267094,
		35.900463, 36.362663, 31.132149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196789, 36.487019, 30.538397>,  <35.531834, 36.927601, 30.945181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196789, 36.487019, 30.538397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160217, 36.114986, 30.396076>,  <35.138275, 35.891769, 30.310684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160217, 36.114986, 30.396076>,  <35.196789, 36.487019, 30.538397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160217, 36.114986, 30.396076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120029, 0.344402, -0.931118,
		0.988552, -0.127836, 0.080149,
		-0.091427, -0.930078, -0.355803,
		35.132790, 35.835964, 30.289335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747040, 36.321941, 30.056044>,  <35.196789, 36.487019, 30.538397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747040, 36.321941, 30.056044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465538, 36.057415, 29.952209>,  <35.296638, 35.898697, 29.889910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465538, 36.057415, 29.952209>,  <35.747040, 36.321941, 30.056044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465538, 36.057415, 29.952209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012428, 0.353869, -0.935212,
		0.710334, -0.661386, -0.240818,
		-0.703755, -0.661320, -0.259585,
		35.254410, 35.859020, 29.874334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941826, 35.985966, 29.410965>,  <35.747040, 36.321941, 30.056044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941826, 35.985966, 29.410965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545345, 35.933044, 29.409506>,  <35.307457, 35.901291, 29.408630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545345, 35.933044, 29.409506>,  <35.941826, 35.985966, 29.410965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545345, 35.933044, 29.409506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025392, 0.217142, -0.975810,
		0.129895, -0.967132, -0.218591,
		-0.991203, -0.132303, -0.003649,
		35.247986, 35.893353, 29.408411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749516, 35.390217, 28.875473>,  <35.941826, 35.985966, 29.410965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749516, 35.390217, 28.875473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435116, 35.629482, 28.937960>,  <35.246475, 35.773041, 28.975452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435116, 35.629482, 28.937960>,  <35.749516, 35.390217, 28.875473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435116, 35.629482, 28.937960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061481, 0.175805, -0.982503,
		-0.615163, -0.781851, -0.101407,
		-0.785999, 0.598165, 0.156218,
		35.199318, 35.808933, 28.984825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545647, 35.366787, 28.275574>,  <35.749516, 35.390217, 28.875473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545647, 35.366787, 28.275574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323231, 35.657288, 28.437256>,  <35.189781, 35.831589, 28.534266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323231, 35.657288, 28.437256>,  <35.545647, 35.366787, 28.275574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323231, 35.657288, 28.437256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141018, 0.396831, -0.906995,
		-0.819103, -0.561328, -0.118240,
		-0.556043, 0.726248, 0.404203,
		35.156418, 35.875160, 28.558517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789883, 35.241253, 28.086021>,  <35.545647, 35.366787, 28.275574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789883, 35.241253, 28.086021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860405, 35.631214, 28.140394>,  <34.902718, 35.865192, 28.173018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860405, 35.631214, 28.140394>,  <34.789883, 35.241253, 28.086021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860405, 35.631214, 28.140394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418663, 0.199251, -0.886014,
		-0.890863, 0.099299, 0.443286,
		0.176305, 0.974905, 0.135933,
		34.913296, 35.923687, 28.181173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379314, 35.561604, 27.616793>,  <34.789883, 35.241253, 28.086021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379314, 35.561604, 27.616793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575722, 35.888336, 27.737917>,  <34.693565, 36.084377, 27.810591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575722, 35.888336, 27.737917>,  <34.379314, 35.561604, 27.616793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575722, 35.888336, 27.737917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159144, 0.425853, -0.890687,
		-0.856492, 0.389150, 0.339093,
		0.491015, 0.816830, 0.302809,
		34.723026, 36.133385, 27.828760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945061, 36.169312, 27.548372>,  <34.379314, 35.561604, 27.616793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945061, 36.169312, 27.548372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333729, 36.261677, 27.528196>,  <34.566929, 36.317097, 27.516090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333729, 36.261677, 27.528196>,  <33.945061, 36.169312, 27.548372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333729, 36.261677, 27.528196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124566, 0.318937, -0.939555,
		-0.200864, 0.919218, 0.338664,
		0.971667, 0.230909, -0.050440,
		34.625229, 36.330948, 27.513063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983608, 36.912495, 27.364445>,  <33.945061, 36.169312, 27.548372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983608, 36.912495, 27.364445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350227, 36.778255, 27.277437>,  <34.570198, 36.697712, 27.225233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350227, 36.778255, 27.277437>,  <33.983608, 36.912495, 27.364445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350227, 36.778255, 27.277437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048171, 0.447300, -0.893086,
		0.397016, 0.829033, 0.393805,
		0.916547, -0.335599, -0.217521,
		34.625191, 36.677574, 27.212181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353855, 37.480888, 27.372011>,  <33.983608, 36.912495, 27.364445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353855, 37.480888, 27.372011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552578, 37.222851, 27.139795>,  <34.671814, 37.068027, 27.000465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552578, 37.222851, 27.139795>,  <34.353855, 37.480888, 27.372011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552578, 37.222851, 27.139795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070954, 0.636503, -0.768004,
		0.864954, 0.422744, 0.270449,
		0.496810, -0.645098, -0.580541,
		34.701622, 37.029320, 26.965633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744930, 37.924358, 26.870401>,  <34.353855, 37.480888, 27.372011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744930, 37.924358, 26.870401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768356, 37.569466, 26.687363>,  <34.782410, 37.356529, 26.577539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768356, 37.569466, 26.687363>,  <34.744930, 37.924358, 26.870401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768356, 37.569466, 26.687363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107071, 0.461320, -0.880750,
		0.992525, 0.002582, 0.122012,
		0.058561, -0.887230, -0.457595,
		34.785923, 37.303295, 26.550083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225861, 38.047230, 26.354603>,  <34.744930, 37.924358, 26.870401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225861, 38.047230, 26.354603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031136, 37.721375, 26.228502>,  <34.914299, 37.525864, 26.152842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031136, 37.721375, 26.228502>,  <35.225861, 38.047230, 26.354603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031136, 37.721375, 26.228502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129439, 0.424194, -0.896273,
		0.863862, -0.395513, -0.311949,
		-0.486815, -0.814635, -0.315250,
		34.885090, 37.476986, 26.133928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467648, 37.766396, 25.733717>,  <35.225861, 38.047230, 26.354603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467648, 37.766396, 25.733717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086449, 37.648048, 25.759823>,  <34.857731, 37.577042, 25.775486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086449, 37.648048, 25.759823>,  <35.467648, 37.766396, 25.733717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086449, 37.648048, 25.759823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202607, 0.462163, -0.863340,
		0.225271, -0.835983, -0.500385,
		-0.952997, -0.295867, 0.065264,
		34.800549, 37.559288, 25.779402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280243, 37.621948, 24.980190>,  <35.467648, 37.766396, 25.733717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280243, 37.621948, 24.980190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942200, 37.644642, 25.192820>,  <34.739372, 37.658260, 25.320396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942200, 37.644642, 25.192820>,  <35.280243, 37.621948, 24.980190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942200, 37.644642, 25.192820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402350, 0.587221, -0.702343,
		-0.352000, -0.807435, -0.473439,
		-0.845110, 0.056737, 0.531573,
		34.688667, 37.661663, 25.352291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690838, 37.564583, 24.487011>,  <35.280243, 37.621948, 24.980190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690838, 37.564583, 24.487011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508007, 37.727329, 24.803373>,  <34.398308, 37.824978, 24.993191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508007, 37.727329, 24.803373>,  <34.690838, 37.564583, 24.487011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508007, 37.727329, 24.803373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591876, 0.524614, -0.611934,
		-0.663899, -0.747821, 0.001028,
		-0.457078, 0.406871, 0.790908,
		34.370884, 37.849392, 25.040646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914776, 37.517323, 24.314297>,  <34.690838, 37.564583, 24.487011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914776, 37.517323, 24.314297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946712, 37.780567, 24.613768>,  <33.965874, 37.938515, 24.793449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946712, 37.780567, 24.613768>,  <33.914776, 37.517323, 24.314297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946712, 37.780567, 24.613768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651221, 0.603070, -0.460671,
		-0.754677, -0.450772, 0.476726,
		0.079841, 0.658112, 0.748675,
		33.970665, 37.978001, 24.838369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263969, 37.611675, 24.676130>,  <33.914776, 37.517323, 24.314297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263969, 37.611675, 24.676130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507252, 37.928246, 24.700560>,  <33.653221, 38.118187, 24.715218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507252, 37.928246, 24.700560>,  <33.263969, 37.611675, 24.676130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507252, 37.928246, 24.700560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718536, 0.581613, -0.381356,
		-0.337338, 0.188057, 0.922409,
		0.608202, 0.791430, 0.061074,
		33.689713, 38.165676, 24.718882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812572, 38.168888, 24.774225>,  <33.263969, 37.611675, 24.676130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812572, 38.168888, 24.774225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136898, 38.383503, 24.680666>,  <33.331493, 38.512272, 24.624531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136898, 38.383503, 24.680666>,  <32.812572, 38.168888, 24.774225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136898, 38.383503, 24.680666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531424, 0.507365, -0.678357,
		-0.245294, 0.674320, 0.696508,
		0.810814, 0.536538, -0.233896,
		33.380142, 38.544464, 24.610497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596272, 38.859871, 24.838154>,  <32.812572, 38.168888, 24.774225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596272, 38.859871, 24.838154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923412, 38.879955, 24.608862>,  <33.119698, 38.892006, 24.471287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923412, 38.879955, 24.608862>,  <32.596272, 38.859871, 24.838154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923412, 38.879955, 24.608862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511193, 0.520765, -0.683729,
		0.264186, 0.852222, 0.451579,
		0.817855, 0.050212, -0.573229,
		33.168770, 38.895020, 24.436893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580101, 39.556492, 24.556911>,  <32.596272, 38.859871, 24.838154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580101, 39.556492, 24.556911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800488, 39.325603, 24.315830>,  <32.932720, 39.187069, 24.171181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800488, 39.325603, 24.315830>,  <32.580101, 39.556492, 24.556911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800488, 39.325603, 24.315830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525215, 0.321402, -0.787941,
		0.648525, 0.750679, -0.126083,
		0.550967, -0.577219, -0.602705,
		32.965778, 39.152439, 24.135019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653545, 39.901211, 23.993160>,  <32.580101, 39.556492, 24.556911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653545, 39.901211, 23.993160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732262, 39.531860, 23.861313>,  <32.779491, 39.310249, 23.782204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732262, 39.531860, 23.861313>,  <32.653545, 39.901211, 23.993160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732262, 39.531860, 23.861313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532841, 0.181488, -0.826524,
		0.823015, 0.338287, -0.456298,
		0.196790, -0.923376, -0.329620,
		32.791298, 39.254848, 23.762426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856499, 39.975811, 23.267347>,  <32.653545, 39.901211, 23.993160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856499, 39.975811, 23.267347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740334, 39.594521, 23.300837>,  <32.670635, 39.365746, 23.320930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740334, 39.594521, 23.300837>,  <32.856499, 39.975811, 23.267347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740334, 39.594521, 23.300837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579144, 0.105442, -0.808377,
		0.761742, -0.283254, -0.582680,
		-0.290415, -0.953231, 0.083725,
		32.653210, 39.308552, 23.325954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921703, 39.683006, 22.567904>,  <32.856499, 39.975811, 23.267347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921703, 39.683006, 22.567904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675053, 39.468918, 22.798834>,  <32.527061, 39.340466, 22.937391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675053, 39.468918, 22.798834>,  <32.921703, 39.683006, 22.567904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675053, 39.468918, 22.798834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706424, 0.052504, -0.705839,
		0.347470, -0.843077, -0.410471,
		-0.616628, -0.535224, 0.577326,
		32.490063, 39.308350, 22.972033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618034, 39.241673, 22.072922>,  <32.921703, 39.683006, 22.567904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618034, 39.241673, 22.072922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359123, 39.156826, 22.365780>,  <32.203777, 39.105919, 22.541494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359123, 39.156826, 22.365780>,  <32.618034, 39.241673, 22.072922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359123, 39.156826, 22.365780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743133, -0.038176, -0.668053,
		0.169656, -0.976498, -0.132921,
		-0.647279, -0.212117, 0.732145,
		32.164940, 39.093193, 22.585424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263577, 38.738174, 21.839516>,  <32.618034, 39.241673, 22.072922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263577, 38.738174, 21.839516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013641, 38.865948, 22.124483>,  <31.863680, 38.942612, 22.295464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013641, 38.865948, 22.124483>,  <32.263577, 38.738174, 21.839516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013641, 38.865948, 22.124483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773670, -0.130675, -0.619967,
		-0.104937, -0.938559, 0.328779,
		-0.624839, 0.319423, 0.712422,
		31.826191, 38.961777, 22.338209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712187, 38.305130, 21.842562>,  <32.263577, 38.738174, 21.839516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712187, 38.305130, 21.842562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552929, 38.618324, 22.033731>,  <31.457375, 38.806240, 22.148434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552929, 38.618324, 22.033731>,  <31.712187, 38.305130, 21.842562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552929, 38.618324, 22.033731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812576, -0.059269, -0.579835,
		-0.425676, -0.619210, 0.659833,
		-0.398147, 0.782985, 0.477926,
		31.433485, 38.853218, 22.177109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007170, 38.113037, 22.009417>,  <31.712187, 38.305130, 21.842562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007170, 38.113037, 22.009417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039803, 38.511574, 21.999279>,  <31.059381, 38.750698, 21.993196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039803, 38.511574, 21.999279>,  <31.007170, 38.113037, 22.009417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039803, 38.511574, 21.999279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824392, 0.053167, -0.563516,
		-0.560109, 0.066865, 0.825716,
		0.081580, 0.996345, -0.025344,
		31.064276, 38.810478, 21.991676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261520, 38.394714, 22.007948>,  <31.007170, 38.113037, 22.009417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261520, 38.394714, 22.007948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493641, 38.686836, 21.863779>,  <30.632914, 38.862110, 21.777279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493641, 38.686836, 21.863779>,  <30.261520, 38.394714, 22.007948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493641, 38.686836, 21.863779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661672, 0.164773, -0.731464,
		-0.474806, 0.662950, 0.578842,
		0.580301, 0.730307, -0.360420,
		30.667730, 38.905930, 21.755653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829596, 38.769726, 21.760252>,  <30.261520, 38.394714, 22.007948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829596, 38.769726, 21.760252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161444, 38.886581, 21.569931>,  <30.360552, 38.956696, 21.455738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161444, 38.886581, 21.569931>,  <29.829596, 38.769726, 21.760252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161444, 38.886581, 21.569931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528198, 0.134483, -0.838404,
		-0.180940, 0.946874, 0.265875,
		0.829619, 0.292135, -0.475804,
		30.410330, 38.974220, 21.427191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686253, 39.447121, 21.487577>,  <29.829596, 38.769726, 21.760252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686253, 39.447121, 21.487577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988529, 39.325035, 21.255795>,  <30.169895, 39.251781, 21.116726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988529, 39.325035, 21.255795>,  <29.686253, 39.447121, 21.487577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988529, 39.325035, 21.255795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531374, 0.231459, -0.814904,
		0.382843, 0.923726, 0.012728,
		0.755694, -0.305217, -0.579456,
		30.215237, 39.233471, 21.081957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756130, 39.967674, 20.919470>,  <29.686253, 39.447121, 21.487577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756130, 39.967674, 20.919470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911142, 39.612770, 20.819391>,  <30.004148, 39.399830, 20.759344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911142, 39.612770, 20.819391>,  <29.756130, 39.967674, 20.919470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911142, 39.612770, 20.819391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483662, 0.035358, -0.874540,
		0.784788, 0.459920, -0.415429,
		0.387529, -0.887256, -0.250194,
		30.027401, 39.346592, 20.744333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053852, 40.123192, 20.307796>,  <29.756130, 39.967674, 20.919470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053852, 40.123192, 20.307796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003475, 39.726440, 20.314856>,  <29.973249, 39.488388, 20.319090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003475, 39.726440, 20.314856>,  <30.053852, 40.123192, 20.307796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003475, 39.726440, 20.314856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524101, 0.051423, -0.850102,
		0.842292, -0.116314, -0.526322,
		-0.125944, -0.991880, 0.017647,
		29.965693, 39.428875, 20.320150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099445, 39.962181, 19.618225>,  <30.053852, 40.123192, 20.307796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099445, 39.962181, 19.618225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930563, 39.640835, 19.786198>,  <29.829233, 39.448025, 19.886980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930563, 39.640835, 19.786198>,  <30.099445, 39.962181, 19.618225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930563, 39.640835, 19.786198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467565, -0.203871, -0.860127,
		0.776611, -0.559495, -0.289552,
		-0.422206, -0.803369, 0.419929,
		29.803902, 39.399826, 19.912176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160254, 39.513863, 19.036985>,  <30.099445, 39.962181, 19.618225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160254, 39.513863, 19.036985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888491, 39.331757, 19.267166>,  <29.725433, 39.222492, 19.405273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888491, 39.331757, 19.267166>,  <30.160254, 39.513863, 19.036985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888491, 39.331757, 19.267166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581007, -0.145203, -0.800842,
		0.448151, -0.878437, -0.165859,
		-0.679406, -0.455263, 0.575451,
		29.684669, 39.195179, 19.439802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829048, 38.910889, 18.682142>,  <30.160254, 39.513863, 19.036985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829048, 38.910889, 18.682142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547941, 38.999306, 18.952625>,  <29.379276, 39.052357, 19.114916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547941, 38.999306, 18.952625>,  <29.829048, 38.910889, 18.682142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547941, 38.999306, 18.952625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705356, -0.092675, -0.702769,
		-0.092675, -0.970851, 0.221044,
		0.702769, -0.221044, -0.676207,
		29.337111, 39.065620, 19.155487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340254, 38.355408, 18.667189>,  <29.829048, 38.910889, 18.682142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340254, 38.355408, 18.667189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149427, 38.673050, 18.817816>,  <29.034931, 38.863636, 18.908192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149427, 38.673050, 18.817816>,  <29.340254, 38.355408, 18.667189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149427, 38.673050, 18.817816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753367, -0.148846, -0.640533,
		-0.452601, -0.589270, 0.669263,
		-0.477064, 0.794107, 0.376569,
		29.006308, 38.911282, 18.930786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709480, 38.120041, 18.859974>,  <29.340254, 38.355408, 18.667189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709480, 38.120041, 18.859974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700226, 38.511887, 18.780151>,  <28.694674, 38.746994, 18.732258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700226, 38.511887, 18.780151>,  <28.709480, 38.120041, 18.859974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700226, 38.511887, 18.780151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702810, -0.157896, -0.693633,
		-0.711001, 0.124203, 0.692135,
		-0.023134, 0.979614, -0.199555,
		28.693285, 38.805771, 18.720285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025608, 38.057423, 18.995119>,  <28.709480, 38.120041, 18.859974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025608, 38.057423, 18.995119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882887, 37.713257, 18.849583>,  <27.797255, 37.506760, 18.762260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882887, 37.713257, 18.849583>,  <28.025608, 38.057423, 18.995119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882887, 37.713257, 18.849583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895119, -0.426333, 0.130390,
		-0.267307, -0.279159, 0.922289,
		-0.356803, -0.860413, -0.363842,
		27.775846, 37.455132, 18.740431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080074, 37.474331, 19.467663>,  <28.025608, 38.057423, 18.995119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080074, 37.474331, 19.467663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094893, 37.353363, 19.086681>,  <28.103783, 37.280781, 18.858091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094893, 37.353363, 19.086681>,  <28.080074, 37.474331, 19.467663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094893, 37.353363, 19.086681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797532, -0.565350, 0.210526,
		-0.602138, -0.767412, 0.220248,
		0.037043, -0.302421, -0.952454,
		28.106005, 37.262638, 18.800945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149700, 36.820778, 19.497623>,  <28.080074, 37.474331, 19.467663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149700, 36.820778, 19.497623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258657, 36.861324, 19.114891>,  <28.324032, 36.885651, 18.885252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258657, 36.861324, 19.114891>,  <28.149700, 36.820778, 19.497623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258657, 36.861324, 19.114891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756722, -0.636771, 0.147967,
		-0.594285, -0.764362, -0.250154,
		0.272391, 0.101363, -0.956833,
		28.340374, 36.891731, 18.827841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251408, 36.138855, 19.156435>,  <28.149700, 36.820778, 19.497623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251408, 36.138855, 19.156435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489483, 36.424194, 19.008446>,  <28.632328, 36.595398, 18.919653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489483, 36.424194, 19.008446>,  <28.251408, 36.138855, 19.156435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489483, 36.424194, 19.008446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801923, -0.556858, 0.216396,
		-0.051656, -0.425487, -0.903489,
		0.595189, 0.713351, -0.369973,
		28.668039, 36.638199, 18.897453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887482, 35.753860, 18.818579>,  <28.251408, 36.138855, 19.156435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887482, 35.753860, 18.818579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989122, 36.140148, 18.839794>,  <29.050108, 36.371922, 18.852524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989122, 36.140148, 18.839794>,  <28.887482, 35.753860, 18.818579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989122, 36.140148, 18.839794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854804, -0.249898, 0.454821,
		0.452485, -0.070233, -0.889002,
		0.254103, 0.965722, 0.053040,
		29.065353, 36.429863, 18.855705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531788, 35.676285, 18.707336>,  <28.887482, 35.753860, 18.818579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531788, 35.676285, 18.707336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497471, 36.042599, 18.864296>,  <29.476881, 36.262386, 18.958471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497471, 36.042599, 18.864296>,  <29.531788, 35.676285, 18.707336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497471, 36.042599, 18.864296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885770, -0.110202, 0.450852,
		0.456127, 0.386254, -0.801721,
		-0.085792, 0.915786, 0.392398,
		29.471733, 36.317333, 18.982016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241045, 36.108231, 18.535460>,  <29.531788, 35.676285, 18.707336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241045, 36.108231, 18.535460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053757, 36.255470, 18.856775>,  <29.941383, 36.343815, 19.049564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053757, 36.255470, 18.856775>,  <30.241045, 36.108231, 18.535460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053757, 36.255470, 18.856775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862945, -0.004983, 0.505273,
		0.189992, 0.929774, -0.315314,
		-0.468219, 0.368097, 0.803291,
		29.913292, 36.365898, 19.097763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634630, 36.658287, 18.644524>,  <30.241045, 36.108231, 18.535460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634630, 36.658287, 18.644524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433382, 36.569351, 18.978575>,  <30.312634, 36.515991, 19.179005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433382, 36.569351, 18.978575>,  <30.634630, 36.658287, 18.644524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433382, 36.569351, 18.978575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864215, -0.130350, 0.485944,
		0.000816, 0.966217, 0.257727,
		-0.503122, -0.222335, 0.835126,
		30.282446, 36.502651, 19.229113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991308, 36.943821, 19.098288>,  <30.634630, 36.658287, 18.644524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991308, 36.943821, 19.098288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753326, 36.726479, 19.335199>,  <30.610537, 36.596073, 19.477346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753326, 36.726479, 19.335199>,  <30.991308, 36.943821, 19.098288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753326, 36.726479, 19.335199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731128, -0.059745, 0.679619,
		-0.333886, 0.837376, 0.432806,
		-0.594955, -0.543352, 0.592281,
		30.574841, 36.563473, 19.512884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066366, 37.321095, 19.840141>,  <30.991308, 36.943821, 19.098288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066366, 37.321095, 19.840141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959949, 36.939114, 19.892744>,  <30.896099, 36.709927, 19.924305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959949, 36.939114, 19.892744>,  <31.066366, 37.321095, 19.840141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959949, 36.939114, 19.892744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703499, -0.099075, 0.703756,
		-0.659023, 0.279741, 0.698164,
		-0.266040, -0.954950, 0.131505,
		30.880138, 36.652630, 19.932196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066698, 37.235607, 20.613356>,  <31.066366, 37.321095, 19.840141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066698, 37.235607, 20.613356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113159, 36.870956, 20.455652>,  <31.141035, 36.652164, 20.361031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113159, 36.870956, 20.455652>,  <31.066698, 37.235607, 20.613356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113159, 36.870956, 20.455652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798575, -0.150310, 0.582825,
		-0.590581, -0.382542, 0.710546,
		0.116153, -0.911629, -0.394259,
		31.148005, 36.597469, 20.337374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011827, 36.640541, 21.147896>,  <31.066698, 37.235607, 20.613356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011827, 36.640541, 21.147896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225342, 36.481377, 20.849436>,  <31.353451, 36.385880, 20.670361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225342, 36.481377, 20.849436>,  <31.011827, 36.640541, 21.147896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225342, 36.481377, 20.849436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742785, -0.201090, 0.638619,
		-0.404156, -0.895115, 0.188222,
		0.533787, -0.397910, -0.746149,
		31.385479, 36.362003, 20.625591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293169, 36.137897, 21.489603>,  <31.011827, 36.640541, 21.147896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293169, 36.137897, 21.489603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506573, 36.174057, 21.153223>,  <31.634615, 36.195751, 20.951395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506573, 36.174057, 21.153223>,  <31.293169, 36.137897, 21.489603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506573, 36.174057, 21.153223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827459, -0.261682, 0.496824,
		-0.175148, -0.960911, -0.214413,
		0.533512, 0.090401, -0.840948,
		31.666626, 36.201176, 20.900938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662006, 35.513515, 21.471409>,  <31.293169, 36.137897, 21.489603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662006, 35.513515, 21.471409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862118, 35.762405, 21.230556>,  <31.982183, 35.911739, 21.086044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862118, 35.762405, 21.230556>,  <31.662006, 35.513515, 21.471409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862118, 35.762405, 21.230556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850515, -0.222766, 0.476445,
		0.162319, -0.750478, -0.640652,
		0.500277, 0.622221, -0.602133,
		32.012199, 35.949070, 21.049917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342430, 35.187073, 21.486576>,  <31.662006, 35.513515, 21.471409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342430, 35.187073, 21.486576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358353, 35.577019, 21.398884>,  <32.367905, 35.810986, 21.346268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358353, 35.577019, 21.398884>,  <32.342430, 35.187073, 21.486576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358353, 35.577019, 21.398884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876173, 0.071421, 0.476677,
		0.480351, -0.211059, -0.851303,
		0.039806, 0.974861, -0.219231,
		32.370296, 35.869476, 21.333115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983734, 35.247463, 21.213951>,  <32.342430, 35.187073, 21.486576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983734, 35.247463, 21.213951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883907, 35.606476, 21.359362>,  <32.824013, 35.821884, 21.446608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883907, 35.606476, 21.359362>,  <32.983734, 35.247463, 21.213951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883907, 35.606476, 21.359362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861882, 0.034739, 0.505918,
		0.441450, 0.439575, -0.782238,
		-0.249563, 0.897534, 0.363526,
		32.809040, 35.875736, 21.468420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584316, 35.601238, 21.350960>,  <32.983734, 35.247463, 21.213951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584316, 35.601238, 21.350960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322834, 35.807888, 21.572147>,  <33.165943, 35.931877, 21.704859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322834, 35.807888, 21.572147>,  <33.584316, 35.601238, 21.350960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322834, 35.807888, 21.572147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729946, 0.237714, 0.640836,
		0.199621, 0.822554, -0.532501,
		-0.653705, 0.516621, 0.552967,
		33.126724, 35.962875, 21.738037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933479, 36.094215, 21.663633>,  <33.584316, 35.601238, 21.350960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933479, 36.094215, 21.663633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600105, 36.113945, 21.883799>,  <33.400082, 36.125782, 22.015898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600105, 36.113945, 21.883799>,  <33.933479, 36.094215, 21.663633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600105, 36.113945, 21.883799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552326, 0.041943, 0.832572,
		0.017980, 0.997902, -0.062201,
		-0.833434, 0.049325, 0.550413,
		33.350075, 36.128742, 22.048922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093544, 36.568562, 22.209375>,  <33.933479, 36.094215, 21.663633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093544, 36.568562, 22.209375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819458, 36.309368, 22.342402>,  <33.655006, 36.153851, 22.422216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819458, 36.309368, 22.342402>,  <34.093544, 36.568562, 22.209375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819458, 36.309368, 22.342402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490435, -0.072911, 0.868422,
		-0.538479, 0.758153, 0.367755,
		-0.685210, -0.647988, 0.332564,
		33.613895, 36.114971, 22.442171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009468, 36.812588, 22.850851>,  <34.093544, 36.568562, 22.209375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009468, 36.812588, 22.850851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865204, 36.439579, 22.843693>,  <33.778645, 36.215775, 22.839397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865204, 36.439579, 22.843693>,  <34.009468, 36.812588, 22.850851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865204, 36.439579, 22.843693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457130, -0.193461, 0.868104,
		-0.812991, 0.304913, 0.496059,
		-0.360664, -0.932524, -0.017898,
		33.757004, 36.159821, 22.838324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643208, 36.564678, 23.532537>,  <34.009468, 36.812588, 22.850851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643208, 36.564678, 23.532537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751228, 36.219185, 23.362341>,  <33.816040, 36.011890, 23.260223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751228, 36.219185, 23.362341>,  <33.643208, 36.564678, 23.532537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751228, 36.219185, 23.362341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462972, -0.270989, 0.843933,
		-0.844234, -0.424892, 0.326703,
		0.270048, -0.863731, -0.425491,
		33.832241, 35.960064, 23.234694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600712, 36.165325, 24.152460>,  <33.643208, 36.564678, 23.532537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600712, 36.165325, 24.152460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806686, 35.969276, 23.871143>,  <33.930271, 35.851646, 23.702353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806686, 35.969276, 23.871143>,  <33.600712, 36.165325, 24.152460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806686, 35.969276, 23.871143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584450, -0.399450, 0.706299,
		-0.627103, -0.774738, 0.080761,
		0.514937, -0.490123, -0.703292,
		33.961166, 35.822239, 23.660156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510860, 35.369217, 24.289745>,  <33.600712, 36.165325, 24.152460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510860, 35.369217, 24.289745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859982, 35.405807, 24.097977>,  <34.069454, 35.427761, 23.982916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859982, 35.405807, 24.097977>,  <33.510860, 35.369217, 24.289745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859982, 35.405807, 24.097977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438636, -0.577782, 0.688307,
		-0.214039, -0.811049, -0.544414,
		0.872803, 0.091475, -0.479423,
		34.121822, 35.433250, 23.954149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738506, 34.800270, 24.377863>,  <33.510860, 35.369217, 24.289745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738506, 34.800270, 24.377863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060806, 35.014900, 24.277576>,  <34.254185, 35.143677, 24.217403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060806, 35.014900, 24.277576>,  <33.738506, 34.800270, 24.377863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060806, 35.014900, 24.277576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491480, -0.369557, 0.788591,
		0.330483, -0.758628, -0.561485,
		0.805747, 0.536574, -0.250718,
		34.302532, 35.175873, 24.202360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372414, 34.413147, 24.392155>,  <33.738506, 34.800270, 24.377863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372414, 34.413147, 24.392155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488873, 34.793987, 24.429529>,  <34.558750, 35.022491, 24.451954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488873, 34.793987, 24.429529>,  <34.372414, 34.413147, 24.392155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488873, 34.793987, 24.429529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644022, -0.267283, 0.716795,
		0.707437, -0.148520, -0.690995,
		0.291150, 0.952104, 0.093436,
		34.576218, 35.079617, 24.457560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094006, 34.467064, 24.260050>,  <34.372414, 34.413147, 24.392155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094006, 34.467064, 24.260050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989132, 34.788784, 24.473352>,  <34.926208, 34.981815, 24.601334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989132, 34.788784, 24.473352>,  <35.094006, 34.467064, 24.260050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989132, 34.788784, 24.473352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675694, -0.241520, 0.696496,
		0.688982, 0.542932, -0.480134,
		-0.262187, 0.804297, 0.533258,
		34.910477, 35.030071, 24.633329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725643, 34.730228, 24.619698>,  <35.094006, 34.467064, 24.260050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725643, 34.730228, 24.619698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434097, 34.877533, 24.850569>,  <35.259171, 34.965916, 24.989092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434097, 34.877533, 24.850569>,  <35.725643, 34.730228, 24.619698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434097, 34.877533, 24.850569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524962, -0.240573, 0.816419,
		0.439506, 0.898060, -0.017975,
		-0.728869, 0.368257, 0.577180,
		35.215435, 34.988010, 25.023724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100754, 34.719173, 25.259218>,  <35.725643, 34.730228, 24.619698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100754, 34.719173, 25.259218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721348, 34.818939, 25.337309>,  <35.493706, 34.878799, 25.384163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721348, 34.818939, 25.337309>,  <36.100754, 34.719173, 25.259218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721348, 34.818939, 25.337309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138534, -0.227600, 0.963850,
		0.284833, 0.941271, 0.181329,
		-0.948514, 0.249416, 0.195226,
		35.436794, 34.893764, 25.395876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133457, 35.225208, 25.815714>,  <36.100754, 34.719173, 25.259218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133457, 35.225208, 25.815714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790367, 35.019798, 25.825460>,  <35.584511, 34.896553, 25.831308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790367, 35.019798, 25.825460>,  <36.133457, 35.225208, 25.815714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790367, 35.019798, 25.825460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165498, -0.230932, 0.958791,
		-0.486738, 0.826414, 0.283065,
		-0.857728, -0.513527, 0.024366,
		35.533051, 34.865742, 25.832769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877384, 35.402824, 26.447466>,  <36.133457, 35.225208, 25.815714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877384, 35.402824, 26.447466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669430, 35.072830, 26.358816>,  <35.544659, 34.874832, 26.305626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669430, 35.072830, 26.358816>,  <35.877384, 35.402824, 26.447466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669430, 35.072830, 26.358816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212002, -0.375930, 0.902071,
		-0.827512, 0.421987, 0.370339,
		-0.519884, -0.824987, -0.221624,
		35.513466, 34.825333, 26.292330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484653, 35.192574, 27.013412>,  <35.877384, 35.402824, 26.447466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484653, 35.192574, 27.013412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492840, 34.849693, 26.807583>,  <35.497749, 34.643963, 26.684086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492840, 34.849693, 26.807583>,  <35.484653, 35.192574, 27.013412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492840, 34.849693, 26.807583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370463, -0.471542, 0.800253,
		-0.928622, -0.207007, 0.307912,
		0.020464, -0.857202, -0.514573,
		35.498978, 34.592533, 26.653212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085632, 34.724773, 27.460651>,  <35.484653, 35.192574, 27.013412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085632, 34.724773, 27.460651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316502, 34.503353, 27.220501>,  <35.455025, 34.370502, 27.076410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316502, 34.503353, 27.220501>,  <35.085632, 34.724773, 27.460651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316502, 34.503353, 27.220501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327072, -0.516950, 0.791067,
		-0.748259, -0.652951, -0.117320,
		0.577176, -0.553551, -0.600374,
		35.489655, 34.337288, 27.040388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955883, 34.030712, 27.707039>,  <35.085632, 34.724773, 27.460651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955883, 34.030712, 27.707039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306084, 34.073425, 27.518532>,  <35.516205, 34.099052, 27.405428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306084, 34.073425, 27.518532>,  <34.955883, 34.030712, 27.707039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306084, 34.073425, 27.518532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452892, -0.521362, 0.723236,
		-0.168472, -0.846629, -0.504815,
		0.875503, 0.106782, -0.471266,
		35.568733, 34.105461, 27.377151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276817, 33.427074, 27.915199>,  <34.955883, 34.030712, 27.707039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276817, 33.427074, 27.915199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573849, 33.657455, 27.778463>,  <35.752068, 33.795685, 27.696423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573849, 33.657455, 27.778463>,  <35.276817, 33.427074, 27.915199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573849, 33.657455, 27.778463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617595, -0.391367, 0.682208,
		0.259135, -0.717712, -0.646326,
		0.742580, 0.575952, -0.341838,
		35.796623, 33.830242, 27.675911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845940, 33.040070, 27.712011>,  <35.276817, 33.427074, 27.915199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845940, 33.040070, 27.712011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017406, 33.386452, 27.815058>,  <36.120285, 33.594280, 27.876886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017406, 33.386452, 27.815058>,  <35.845940, 33.040070, 27.712011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017406, 33.386452, 27.815058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537153, -0.473554, 0.698007,
		0.726438, -0.160832, -0.668147,
		0.428665, 0.865956, 0.257616,
		36.146008, 33.646240, 27.892344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550507, 32.878689, 27.904032>,  <35.845940, 33.040070, 27.712011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550507, 32.878689, 27.904032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495510, 33.240795, 28.064821>,  <36.462513, 33.458061, 28.161295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495510, 33.240795, 28.064821>,  <36.550507, 32.878689, 27.904032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495510, 33.240795, 28.064821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612566, -0.241203, 0.752718,
		0.778370, 0.349725, -0.521376,
		-0.137487, 0.905270, 0.401975,
		36.454266, 33.512375, 28.185413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172562, 33.094151, 28.159792>,  <36.550507, 32.878689, 27.904032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172562, 33.094151, 28.159792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914070, 33.334686, 28.347740>,  <36.758976, 33.479008, 28.460508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914070, 33.334686, 28.347740>,  <37.172562, 33.094151, 28.159792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914070, 33.334686, 28.347740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500518, -0.130809, 0.855786,
		0.576084, 0.788211, -0.216450,
		-0.646226, 0.601342, 0.469871,
		36.720203, 33.515087, 28.488701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633057, 33.544147, 28.538782>,  <37.172562, 33.094151, 28.159792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633057, 33.544147, 28.538782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275051, 33.581985, 28.713139>,  <37.060249, 33.604691, 28.817753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275051, 33.581985, 28.713139>,  <37.633057, 33.544147, 28.538782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275051, 33.581985, 28.713139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440602, 0.035391, 0.897005,
		0.069427, 0.994886, -0.073355,
		-0.895014, 0.094597, 0.435892,
		37.006546, 33.610363, 28.843906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876457, 33.974674, 29.038879>,  <37.633057, 33.544147, 28.538782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876457, 33.974674, 29.038879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516037, 33.834644, 29.141296>,  <37.299786, 33.750626, 29.202747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516037, 33.834644, 29.141296>,  <37.876457, 33.974674, 29.038879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516037, 33.834644, 29.141296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294661, -0.060919, 0.953658,
		-0.318253, 0.934739, 0.158044,
		-0.901049, -0.350074, 0.256044,
		37.245724, 33.729622, 29.218109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796772, 34.358238, 29.536507>,  <37.876457, 33.974674, 29.038879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796772, 34.358238, 29.536507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558731, 34.038689, 29.571508>,  <37.415905, 33.846958, 29.592508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558731, 34.038689, 29.571508>,  <37.796772, 34.358238, 29.536507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558731, 34.038689, 29.571508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401395, -0.201138, 0.893547,
		-0.696229, 0.566875, 0.440361,
		-0.595103, -0.798871, 0.087503,
		37.380199, 33.799026, 29.597759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386272, 34.515827, 30.032566>,  <37.796772, 34.358238, 29.536507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386272, 34.515827, 30.032566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418678, 34.118446, 30.000338>,  <37.438122, 33.880016, 29.981001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418678, 34.118446, 30.000338>,  <37.386272, 34.515827, 30.032566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418678, 34.118446, 30.000338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471668, -0.033000, 0.881158,
		-0.878047, -0.109387, 0.465906,
		0.081012, -0.993451, -0.080570,
		37.442982, 33.820412, 29.976168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408504, 34.360733, 30.656897>,  <37.386272, 34.515827, 30.032566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408504, 34.360733, 30.656897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497375, 34.007240, 30.492138>,  <37.550697, 33.795147, 30.393282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497375, 34.007240, 30.492138>,  <37.408504, 34.360733, 30.656897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497375, 34.007240, 30.492138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362939, -0.317136, 0.876185,
		-0.904938, -0.344161, 0.250279,
		0.222176, -0.883729, -0.411898,
		37.564030, 33.742123, 30.368568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218155, 33.774403, 31.078712>,  <37.408504, 34.360733, 30.656897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218155, 33.774403, 31.078712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522503, 33.628189, 30.864254>,  <37.705112, 33.540459, 30.735579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522503, 33.628189, 30.864254>,  <37.218155, 33.774403, 31.078712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522503, 33.628189, 30.864254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385981, -0.409230, 0.826771,
		-0.521624, -0.836010, -0.170280,
		0.760872, -0.365539, -0.536148,
		37.750763, 33.518528, 30.703409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351715, 32.961296, 31.240957>,  <37.218155, 33.774403, 31.078712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351715, 32.961296, 31.240957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687088, 33.147800, 31.128086>,  <37.888313, 33.259705, 31.060364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687088, 33.147800, 31.128086>,  <37.351715, 32.961296, 31.240957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687088, 33.147800, 31.128086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415650, -0.212177, 0.884430,
		0.352507, -0.858824, -0.371700,
		0.838435, 0.466265, -0.282177,
		37.938618, 33.287682, 31.043432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014271, 32.479820, 31.289469>,  <37.351715, 32.961296, 31.240957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014271, 32.479820, 31.289469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054878, 32.873844, 31.345119>,  <38.079243, 33.110256, 31.378510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054878, 32.873844, 31.345119>,  <38.014271, 32.479820, 31.289469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054878, 32.873844, 31.345119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347495, -0.166151, 0.922844,
		0.932170, -0.045343, -0.359170,
		0.101521, 0.985057, 0.139125,
		38.085335, 33.169361, 31.386856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638199, 32.669952, 31.578213>,  <38.014271, 32.479820, 31.289469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638199, 32.669952, 31.578213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355064, 32.934223, 31.678194>,  <38.185184, 33.092785, 31.738184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355064, 32.934223, 31.678194>,  <38.638199, 32.669952, 31.578213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355064, 32.934223, 31.678194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164955, -0.189470, 0.967931,
		0.686850, 0.726365, 0.025131,
		-0.707833, 0.660678, 0.249955,
		38.142715, 33.132427, 31.753181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851994, 33.201714, 32.129993>,  <38.638199, 32.669952, 31.578213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851994, 33.201714, 32.129993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457375, 33.136784, 32.137737>,  <38.220604, 33.097828, 32.142384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457375, 33.136784, 32.137737>,  <38.851994, 33.201714, 32.129993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457375, 33.136784, 32.137737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062233, -0.263440, 0.962666,
		-0.151161, 0.950921, 0.269998,
		-0.986548, -0.162321, 0.019357,
		38.161411, 33.088089, 32.143543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225723, 33.244328, 31.395317>,  <38.851994, 33.201714, 32.129993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225723, 33.244328, 31.395317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533943, 33.429848, 31.220434>,  <39.718876, 33.541161, 31.115505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533943, 33.429848, 31.220434>,  <39.225723, 33.244328, 31.395317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533943, 33.429848, 31.220434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589516, 0.779386, -0.212198,
		0.242335, 0.421248, 0.873970,
		0.770548, 0.463796, -0.437205,
		39.765106, 33.568985, 31.089273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017952, 33.900032, 31.551382>,  <39.225723, 33.244328, 31.395317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017952, 33.900032, 31.551382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331005, 33.913578, 31.302755>,  <39.518837, 33.921707, 31.153580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331005, 33.913578, 31.302755>,  <39.017952, 33.900032, 31.551382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331005, 33.913578, 31.302755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284337, 0.907715, -0.308556,
		0.553756, 0.418219, 0.720033,
		0.782628, 0.033867, -0.621567,
		39.565792, 33.923737, 31.116285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658321, 34.370972, 31.710777>,  <39.017952, 33.900032, 31.551382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658321, 34.370972, 31.710777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548779, 34.332279, 31.328020>,  <39.483055, 34.309063, 31.098366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548779, 34.332279, 31.328020>,  <39.658321, 34.370972, 31.710777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548779, 34.332279, 31.328020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218910, 0.975084, -0.035921,
		0.936527, 0.199637, -0.288206,
		-0.273853, -0.096732, -0.956895,
		39.466621, 34.303261, 31.040951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380898, 35.035862, 31.511097>,  <39.658321, 34.370972, 31.710777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380898, 35.035862, 31.511097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228271, 34.863964, 31.183750>,  <39.136696, 34.760826, 30.987343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228271, 34.863964, 31.183750>,  <39.380898, 35.035862, 31.511097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228271, 34.863964, 31.183750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651390, 0.753170, -0.091797,
		0.655819, 0.498049, -0.567318,
		-0.381567, -0.429747, -0.818367,
		39.113800, 34.735039, 30.938240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470512, 35.477455, 30.903841>,  <39.380898, 35.035862, 31.511097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470512, 35.477455, 30.903841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145096, 35.245399, 30.887915>,  <38.949844, 35.106167, 30.878359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145096, 35.245399, 30.887915>,  <39.470512, 35.477455, 30.903841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145096, 35.245399, 30.887915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570667, 0.809662, -0.137067,
		0.111755, -0.088789, -0.989761,
		-0.813542, -0.580142, -0.039815,
		38.901031, 35.071358, 30.875971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801296, 35.708527, 31.665527>,  <39.470512, 35.477455, 30.903841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801296, 35.708527, 31.665527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140606, 35.657528, 31.871119>,  <40.344193, 35.626926, 31.994473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140606, 35.657528, 31.871119>,  <39.801296, 35.708527, 31.665527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140606, 35.657528, 31.871119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185783, 0.837241, 0.514308,
		-0.495897, -0.531763, 0.686523,
		0.848275, -0.127500, 0.513978,
		40.395088, 35.619278, 32.025311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193012, 36.090088, 32.147358>,  <39.801296, 35.708527, 31.665527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193012, 36.090088, 32.147358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903549, 36.175400, 31.884808>,  <39.729870, 36.226585, 31.727278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903549, 36.175400, 31.884808>,  <40.193012, 36.090088, 32.147358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903549, 36.175400, 31.884808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603094, 0.266974, 0.751667,
		0.335551, 0.939807, -0.064571,
		-0.723660, 0.213280, -0.656375,
		39.686451, 36.239384, 31.687895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887684, 36.781994, 32.286087>,  <40.193012, 36.090088, 32.147358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887684, 36.781994, 32.286087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585915, 36.578163, 32.120590>,  <39.404854, 36.455864, 32.021294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585915, 36.578163, 32.120590>,  <39.887684, 36.781994, 32.286087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585915, 36.578163, 32.120590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537873, 0.118649, 0.834635,
		-0.376217, 0.852207, -0.363597,
		-0.754423, -0.509573, -0.413741,
		39.359589, 36.425293, 31.996468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228802, 37.193024, 32.305195>,  <39.887684, 36.781994, 32.286087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228802, 37.193024, 32.305195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164448, 36.798672, 32.323780>,  <39.125835, 36.562061, 32.334930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164448, 36.798672, 32.323780>,  <39.228802, 37.193024, 32.305195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164448, 36.798672, 32.323780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394316, 0.107360, 0.912682,
		-0.904782, 0.128516, -0.406020,
		-0.160885, -0.985879, 0.046461,
		39.116184, 36.502907, 32.337719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403210, 36.901978, 32.488853>,  <39.228802, 37.193024, 32.305195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403210, 36.901978, 32.488853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695286, 36.648418, 32.590832>,  <38.870533, 36.496284, 32.652020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695286, 36.648418, 32.590832>,  <38.403210, 36.901978, 32.488853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695286, 36.648418, 32.590832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458362, -0.177759, 0.870808,
		-0.506680, -0.752715, -0.420351,
		0.730191, -0.633894, 0.254949,
		38.914345, 36.458252, 32.667316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104923, 36.246700, 32.807281>,  <38.403210, 36.901978, 32.488853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104923, 36.246700, 32.807281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473717, 36.306644, 32.950108>,  <38.694992, 36.342609, 33.035801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473717, 36.306644, 32.950108>,  <38.104923, 36.246700, 32.807281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473717, 36.306644, 32.950108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353796, -0.048838, 0.934047,
		0.157412, -0.987501, 0.007991,
		0.921982, 0.149857, 0.357061,
		38.750313, 36.351601, 33.057224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032326, 35.822422, 33.297916>,  <38.104923, 36.246700, 32.807281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032326, 35.822422, 33.297916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321304, 36.080235, 33.398037>,  <38.494690, 36.234924, 33.458111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321304, 36.080235, 33.398037>,  <38.032326, 35.822422, 33.297916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321304, 36.080235, 33.398037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309082, -0.022780, 0.950762,
		0.618502, -0.764235, 0.182757,
		0.722443, 0.644535, 0.250301,
		38.538036, 36.273594, 33.473125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502567, 35.584023, 33.829716>,  <38.032326, 35.822422, 33.297916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502567, 35.584023, 33.829716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477264, 35.979420, 33.884689>,  <38.462082, 36.216656, 33.917675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477264, 35.979420, 33.884689>,  <38.502567, 35.584023, 33.829716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477264, 35.979420, 33.884689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333171, -0.150728, 0.930740,
		0.940742, 0.013082, 0.338870,
		-0.063254, 0.988488, 0.137438,
		38.458290, 36.275967, 33.925922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968719, 35.806511, 34.373833>,  <38.502567, 35.584023, 33.829716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968719, 35.806511, 34.373833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653889, 36.049370, 34.330227>,  <38.464989, 36.195084, 34.304062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653889, 36.049370, 34.330227>,  <38.968719, 35.806511, 34.373833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653889, 36.049370, 34.330227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180909, -0.058235, 0.981774,
		0.589732, 0.792453, 0.155674,
		-0.787076, 0.607146, -0.109019,
		38.417767, 36.231514, 34.297520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109425, 36.399372, 34.855515>,  <38.968719, 35.806511, 34.373833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109425, 36.399372, 34.855515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725986, 36.320038, 34.773769>,  <38.495926, 36.272438, 34.724724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725986, 36.320038, 34.773769>,  <39.109425, 36.399372, 34.855515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725986, 36.320038, 34.773769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176059, -0.151317, 0.972680,
		-0.223839, 0.968384, 0.110133,
		-0.958592, -0.198333, -0.204364,
		38.438408, 36.260536, 34.712460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752071, 36.851841, 35.291927>,  <39.109425, 36.399372, 34.855515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752071, 36.851841, 35.291927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497635, 36.553711, 35.212055>,  <38.344975, 36.374832, 35.164131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497635, 36.553711, 35.212055>,  <38.752071, 36.851841, 35.291927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497635, 36.553711, 35.212055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233630, -0.060601, 0.970435,
		-0.735395, 0.663937, -0.135584,
		-0.636091, -0.745329, -0.199681,
		38.306808, 36.330112, 35.152149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006874, 37.043953, 35.590668>,  <38.752071, 36.851841, 35.291927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006874, 37.043953, 35.590668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049450, 36.647057, 35.564960>,  <38.074997, 36.408920, 35.549538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049450, 36.647057, 35.564960>,  <38.006874, 37.043953, 35.590668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049450, 36.647057, 35.564960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130791, -0.078042, 0.988334,
		-0.985680, -0.096792, -0.138082,
		0.106439, -0.992240, -0.064265,
		38.081383, 36.349384, 35.545681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566662, 36.763657, 36.024677>,  <38.006874, 37.043953, 35.590668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566662, 36.763657, 36.024677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773304, 36.426952, 35.961994>,  <37.897289, 36.224930, 35.924385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773304, 36.426952, 35.961994>,  <37.566662, 36.763657, 36.024677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773304, 36.426952, 35.961994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226909, -0.311076, 0.922900,
		-0.825610, -0.441215, -0.351706,
		0.516604, -0.841761, -0.156712,
		37.928284, 36.174423, 35.914982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078651, 36.066734, 35.945374>,  <37.566662, 36.763657, 36.024677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078651, 36.066734, 35.945374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446255, 36.100834, 36.099335>,  <37.666817, 36.121296, 36.191711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446255, 36.100834, 36.099335>,  <37.078651, 36.066734, 35.945374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446255, 36.100834, 36.099335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386365, 0.000701, 0.922346,
		0.078361, -0.996359, 0.033582,
		0.919011, 0.085251, 0.384903,
		37.721958, 36.126411, 36.214806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285835, 35.505352, 36.325081>,  <37.078651, 36.066734, 35.945374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285835, 35.505352, 36.325081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484589, 35.808468, 36.494247>,  <37.603840, 35.990337, 36.595749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484589, 35.808468, 36.494247>,  <37.285835, 35.505352, 36.325081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484589, 35.808468, 36.494247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430250, -0.208115, 0.878392,
		0.753653, -0.618419, 0.222631,
		0.496882, 0.757790, 0.422921,
		37.633652, 36.035805, 36.621124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476433, 35.273624, 37.025555>,  <37.285835, 35.505352, 36.325081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476433, 35.273624, 37.025555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556107, 35.664639, 37.053123>,  <37.603912, 35.899246, 37.069664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556107, 35.664639, 37.053123>,  <37.476433, 35.273624, 37.025555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556107, 35.664639, 37.053123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369105, 0.009686, 0.929337,
		0.907793, -0.210548, 0.362742,
		0.199183, 0.977536, 0.068922,
		37.615860, 35.957901, 37.073799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977772, 35.487740, 37.588501>,  <37.476433, 35.273624, 37.025555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977772, 35.487740, 37.588501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704235, 35.771313, 37.519482>,  <37.540112, 35.941456, 37.478069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704235, 35.771313, 37.519482>,  <37.977772, 35.487740, 37.588501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704235, 35.771313, 37.519482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298103, -0.055616, 0.952912,
		0.665956, 0.703078, 0.249368,
		-0.683841, 0.708934, -0.172552,
		37.499084, 35.983994, 37.467716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337498, 36.113430, 37.838005>,  <37.977772, 35.487740, 37.588501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337498, 36.113430, 37.838005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252834, 36.471684, 37.681526>,  <38.202038, 36.686638, 37.587639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252834, 36.471684, 37.681526>,  <38.337498, 36.113430, 37.838005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252834, 36.471684, 37.681526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824702, 0.051121, 0.563253,
		0.524469, 0.441837, 0.727814,
		-0.211660, 0.895638, -0.391195,
		38.189335, 36.740376, 37.564167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026638, 36.338211, 38.354809>,  <38.337498, 36.113430, 37.838005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026638, 36.338211, 38.354809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910080, 36.530113, 38.023769>,  <37.840145, 36.645256, 37.825146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910080, 36.530113, 38.023769>,  <38.026638, 36.338211, 38.354809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910080, 36.530113, 38.023769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956422, -0.129364, 0.261767,
		0.018522, 0.867814, 0.496544,
		-0.291400, 0.479754, -0.827600,
		37.822659, 36.674038, 37.775490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613590, 36.888416, 38.684414>,  <38.026638, 36.338211, 38.354809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613590, 36.888416, 38.684414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504677, 36.813515, 38.306885>,  <37.439327, 36.768574, 38.080368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504677, 36.813515, 38.306885>,  <37.613590, 36.888416, 38.684414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504677, 36.813515, 38.306885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960373, 0.113574, 0.254529,
		0.059531, 0.975723, -0.210761,
		-0.272287, -0.187257, -0.943819,
		37.422989, 36.757339, 38.023739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243855, 37.474178, 38.333473>,  <37.613590, 36.888416, 38.684414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243855, 37.474178, 38.333473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118992, 37.114624, 38.210468>,  <37.044075, 36.898891, 38.136665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118992, 37.114624, 38.210468>,  <37.243855, 37.474178, 38.333473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118992, 37.114624, 38.210468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893680, 0.168007, 0.416065,
		-0.322330, 0.404694, -0.855761,
		-0.312152, -0.898887, -0.307513,
		37.025345, 36.844959, 38.118214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541664, 37.531925, 37.944332>,  <37.243855, 37.474178, 38.333473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541664, 37.531925, 37.944332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596451, 37.161346, 38.084579>,  <36.629322, 36.938999, 38.168728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596451, 37.161346, 38.084579>,  <36.541664, 37.531925, 37.944332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596451, 37.161346, 38.084579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953962, -0.028025, 0.298617,
		-0.266828, -0.375375, -0.887636,
		0.136969, -0.926449, 0.350616,
		36.637543, 36.883411, 38.189766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688301, 38.340981, 38.140045>,  <36.541664, 37.531925, 37.944332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688301, 38.340981, 38.140045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384785, 38.402699, 38.393166>,  <36.202675, 38.439728, 38.545036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384785, 38.402699, 38.393166>,  <36.688301, 38.340981, 38.140045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384785, 38.402699, 38.393166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363860, -0.705390, 0.608301,
		0.540227, 0.691822, 0.479100,
		-0.758789, 0.154295, 0.632797,
		36.157146, 38.448986, 38.583004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011089, 38.392536, 38.774456>,  <36.688301, 38.340981, 38.140045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011089, 38.392536, 38.774456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638092, 38.255486, 38.820164>,  <36.414291, 38.173256, 38.847588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638092, 38.255486, 38.820164>,  <37.011089, 38.392536, 38.774456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638092, 38.255486, 38.820164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359762, -0.853124, 0.377824,
		-0.031970, 0.393428, 0.918799,
		-0.932496, -0.342628, 0.114266,
		36.358345, 38.152699, 38.854443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944756, 38.108704, 39.328331>,  <37.011089, 38.392536, 38.774456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944756, 38.108704, 39.328331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640762, 37.938488, 39.131821>,  <36.458366, 37.836361, 39.013916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640762, 37.938488, 39.131821>,  <36.944756, 38.108704, 39.328331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640762, 37.938488, 39.131821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405560, -0.901143, 0.153177,
		-0.507892, -0.082831, 0.857429,
		-0.759978, -0.425536, -0.491276,
		36.412769, 37.810825, 38.984436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388302, 37.643757, 39.404449>,  <36.944756, 38.108704, 39.328331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388302, 37.643757, 39.404449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382095, 37.824776, 39.047806>,  <37.378372, 37.933388, 38.833820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382095, 37.824776, 39.047806>,  <37.388302, 37.643757, 39.404449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382095, 37.824776, 39.047806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242180, 0.866860, 0.435776,
		0.970107, -0.209169, -0.123046,
		-0.015512, 0.452549, -0.891604,
		37.377441, 37.960541, 38.780323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812237, 38.217224, 39.200397>,  <37.388302, 37.643757, 39.404449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812237, 38.217224, 39.200397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780704, 38.558884, 39.406010>,  <37.761784, 38.763878, 39.529377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780704, 38.558884, 39.406010>,  <37.812237, 38.217224, 39.200397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780704, 38.558884, 39.406010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148249, -0.499852, 0.853329,
		0.985803, 0.143474, -0.087221,
		-0.078833, 0.854144, 0.514026,
		37.757053, 38.815128, 39.560219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383881, 38.344093, 39.664646>,  <37.812237, 38.217224, 39.200397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383881, 38.344093, 39.664646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080036, 38.554150, 39.818119>,  <37.897728, 38.680183, 39.910202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080036, 38.554150, 39.818119>,  <38.383881, 38.344093, 39.664646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080036, 38.554150, 39.818119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036441, -0.554648, 0.831287,
		0.649356, 0.645436, 0.402180,
		-0.759611, 0.525145, 0.383685,
		37.852154, 38.711693, 39.933224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063221, 38.514324, 40.027687>,  <38.383881, 38.344093, 39.664646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063221, 38.514324, 40.027687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725269, 38.665752, 40.178879>,  <38.522499, 38.756611, 40.269592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725269, 38.665752, 40.178879>,  <39.063221, 38.514324, 40.027687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725269, 38.665752, 40.178879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164324, -0.856048, 0.490082,
		0.509099, 0.351947, 0.785462,
		-0.844876, 0.378570, 0.377980,
		38.471806, 38.779324, 40.292274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746315, 38.027889, 39.987385>,  <39.063221, 38.514324, 40.027687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746315, 38.027889, 39.987385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767212, 38.331799, 39.728149>,  <39.779751, 38.514145, 39.572609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767212, 38.331799, 39.728149>,  <39.746315, 38.027889, 39.987385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767212, 38.331799, 39.728149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946094, 0.170069, 0.275649,
		0.319650, -0.627550, -0.709933,
		0.052247, 0.759774, -0.648084,
		39.782887, 38.559731, 39.533726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260708, 37.969330, 39.431969>,  <39.746315, 38.027889, 39.987385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260708, 37.969330, 39.431969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195484, 38.357132, 39.505157>,  <40.156349, 38.589813, 39.549072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195484, 38.357132, 39.505157>,  <40.260708, 37.969330, 39.431969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195484, 38.357132, 39.505157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977524, 0.133636, 0.163061,
		0.133636, 0.205448, -0.969501,
		-0.163061, 0.969501, 0.182972,
		40.146564, 38.647984, 39.560051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771393, 38.467262, 39.062756>,  <40.260708, 37.969330, 39.431969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771393, 38.467262, 39.062756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622528, 38.650558, 39.385620>,  <40.533211, 38.760536, 39.579338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622528, 38.650558, 39.385620>,  <40.771393, 38.467262, 39.062756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622528, 38.650558, 39.385620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909482, 0.006417, 0.415693,
		0.185307, 0.888806, -0.419148,
		-0.372160, 0.458239, 0.807164,
		40.510880, 38.788029, 39.627769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094913, 39.200058, 39.260277>,  <40.771393, 38.467262, 39.062756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094913, 39.200058, 39.260277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981682, 38.942532, 39.544636>,  <40.913742, 38.788017, 39.715252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981682, 38.942532, 39.544636>,  <41.094913, 39.200058, 39.260277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981682, 38.942532, 39.544636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918556, 0.031233, 0.394055,
		-0.275901, 0.764546, 0.582537,
		-0.283078, -0.643812, 0.710895,
		40.896759, 38.749390, 39.757904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429787, 39.388756, 39.842651>,  <41.094913, 39.200058, 39.260277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429787, 39.388756, 39.842651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358158, 38.996201, 39.870392>,  <41.315182, 38.760666, 39.887035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358158, 38.996201, 39.870392>,  <41.429787, 39.388756, 39.842651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358158, 38.996201, 39.870392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922818, -0.143104, 0.357669,
		-0.341088, 0.128047, 0.931269,
		-0.179067, -0.981389, 0.069353,
		41.304440, 38.701782, 39.891197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873890, 39.074097, 40.385891>,  <41.429787, 39.388756, 39.842651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873890, 39.074097, 40.385891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768246, 38.781174, 40.134819>,  <41.704861, 38.605419, 39.984177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768246, 38.781174, 40.134819>,  <41.873890, 39.074097, 40.385891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768246, 38.781174, 40.134819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962015, -0.246635, -0.117040,
		-0.069098, -0.634744, 0.769627,
		-0.264108, -0.732305, -0.627675,
		41.689014, 38.561481, 39.946518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199436, 38.421051, 40.585892>,  <41.873890, 39.074097, 40.385891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199436, 38.421051, 40.585892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124249, 38.398651, 40.193661>,  <42.079136, 38.385212, 39.958321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124249, 38.398651, 40.193661>,  <42.199436, 38.421051, 40.585892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124249, 38.398651, 40.193661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950736, -0.260954, -0.167343,
		-0.246514, -0.963725, 0.102295,
		-0.187967, -0.056004, -0.980577,
		42.067860, 38.381851, 39.899487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623360, 37.889439, 40.170334>,  <42.199436, 38.421051, 40.585892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623360, 37.889439, 40.170334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567738, 38.189980, 39.912300>,  <42.534367, 38.370304, 39.757481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567738, 38.189980, 39.912300>,  <42.623360, 37.889439, 40.170334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567738, 38.189980, 39.912300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976553, -0.004066, -0.215240,
		-0.164344, -0.659886, -0.733172,
		-0.139053, 0.751355, -0.645082,
		42.526020, 38.415386, 39.718777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000156, 37.742092, 39.477852>,  <42.623360, 37.889439, 40.170334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000156, 37.742092, 39.477852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966541, 38.136860, 39.532875>,  <42.946373, 38.373722, 39.565887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966541, 38.136860, 39.532875>,  <43.000156, 37.742092, 39.477852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966541, 38.136860, 39.532875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986660, 0.101733, -0.127089,
		-0.139421, 0.125040, -0.982307,
		-0.084042, 0.986922, 0.137555,
		42.941330, 38.432938, 39.574142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388969, 38.000996, 38.956284>,  <43.000156, 37.742092, 39.477852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388969, 38.000996, 38.956284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387276, 38.257038, 39.263592>,  <43.386261, 38.410664, 39.447975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387276, 38.257038, 39.263592>,  <43.388969, 38.000996, 38.956284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387276, 38.257038, 39.263592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998895, 0.038663, -0.026710,
		-0.046801, 0.767309, -0.639567,
		-0.004233, 0.640110, 0.768271,
		43.386005, 38.449070, 39.494072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147240, 37.421993, 38.512272>,  <43.388969, 38.000996, 38.956284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147240, 37.421993, 38.512272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435432, 37.554302, 38.268467>,  <43.608349, 37.633686, 38.122185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435432, 37.554302, 38.268467>,  <43.147240, 37.421993, 38.512272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435432, 37.554302, 38.268467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068281, -0.908484, -0.412303,
		-0.690106, 0.255438, -0.677131,
		0.720480, 0.330768, -0.609508,
		43.651577, 37.653534, 38.085613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262104, 36.766186, 38.198536>,  <43.147240, 37.421993, 38.512272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262104, 36.766186, 38.198536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125576, 36.546795, 37.893204>,  <43.043659, 36.415161, 37.710003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125576, 36.546795, 37.893204>,  <43.262104, 36.766186, 38.198536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125576, 36.546795, 37.893204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928340, -0.069477, -0.365182,
		0.147261, -0.833273, 0.532888,
		-0.341320, -0.548479, -0.763330,
		43.023182, 36.382252, 37.664204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684261, 36.234646, 38.192345>,  <43.262104, 36.766186, 38.198536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684261, 36.234646, 38.192345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527405, 36.269997, 37.826084>,  <43.433289, 36.291206, 37.606327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527405, 36.269997, 37.826084>,  <43.684261, 36.234646, 38.192345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527405, 36.269997, 37.826084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883098, -0.242571, -0.401619,
		-0.257605, -0.966100, 0.017073,
		-0.392145, 0.088382, -0.915648,
		43.409760, 36.296513, 37.551392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828842, 35.674774, 37.857597>,  <43.684261, 36.234646, 38.192345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828842, 35.674774, 37.857597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803368, 35.942036, 37.561081>,  <43.788082, 36.102390, 37.383171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803368, 35.942036, 37.561081>,  <43.828842, 35.674774, 37.857597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803368, 35.942036, 37.561081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848307, -0.355012, -0.392864,
		-0.525661, -0.653865, -0.544188,
		-0.063687, 0.668152, -0.741294,
		43.784260, 36.142483, 37.338692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994785, 35.361176, 37.165352>,  <43.828842, 35.674774, 37.857597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994785, 35.361176, 37.165352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104126, 35.744194, 37.201981>,  <44.169731, 35.974007, 37.223957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104126, 35.744194, 37.201981>,  <43.994785, 35.361176, 37.165352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104126, 35.744194, 37.201981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807381, -0.176647, -0.562967,
		-0.522891, 0.227821, -0.821391,
		0.273352, 0.957546, 0.091571,
		44.186131, 36.031456, 37.229450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181210, 35.532639, 36.429859>,  <43.994785, 35.361176, 37.165352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181210, 35.532639, 36.429859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339005, 35.766125, 36.713737>,  <44.433681, 35.906216, 36.884064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339005, 35.766125, 36.713737>,  <44.181210, 35.532639, 36.429859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339005, 35.766125, 36.713737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912050, -0.154571, -0.379834,
		-0.112015, 0.797113, -0.593349,
		0.394485, 0.583711, 0.709693,
		44.457352, 35.941238, 36.926643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583027, 36.110287, 35.991280>,  <44.181210, 35.532639, 36.429859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583027, 36.110287, 35.991280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713982, 35.977032, 36.344967>,  <44.792553, 35.897079, 36.557178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713982, 35.977032, 36.344967>,  <44.583027, 36.110287, 35.991280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713982, 35.977032, 36.344967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900611, -0.173095, -0.398671,
		0.285864, 0.926855, 0.243354,
		0.327387, -0.333133, 0.884217,
		44.812199, 35.877090, 36.610233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227879, 36.283817, 36.285656>,  <44.583027, 36.110287, 35.991280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227879, 36.283817, 36.285656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203312, 35.911694, 36.430294>,  <45.188572, 35.688419, 36.517078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203312, 35.911694, 36.430294>,  <45.227879, 36.283817, 36.285656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203312, 35.911694, 36.430294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738179, -0.286182, -0.610894,
		0.671803, 0.229404, 0.704312,
		-0.061420, -0.930308, 0.361599,
		45.184887, 35.632603, 36.538773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.860661, 36.231129, 36.667065>,  <45.227879, 36.283817, 36.285656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.860661, 36.231129, 36.667065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700844, 35.888432, 36.536617>,  <45.604954, 35.682812, 36.458347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700844, 35.888432, 36.536617>,  <45.860661, 36.231129, 36.667065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700844, 35.888432, 36.536617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763810, -0.114402, -0.635222,
		0.506913, -0.502893, 0.700098,
		-0.399542, -0.856744, -0.326123,
		45.580982, 35.631409, 36.438782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385319, 35.565193, 36.678421>,  <45.860661, 36.231129, 36.667065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385319, 35.565193, 36.678421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143551, 35.501236, 36.366238>,  <45.998489, 35.462860, 36.178928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143551, 35.501236, 36.366238>,  <46.385319, 35.565193, 36.678421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143551, 35.501236, 36.366238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773589, -0.351885, -0.527008,
		-0.190366, -0.922286, 0.336376,
		-0.604418, -0.159893, -0.780457,
		45.962227, 35.453270, 36.132099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.347481, 34.817265, 36.504906>,  <46.385319, 35.565193, 36.678421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.347481, 34.817265, 36.504906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318882, 35.062984, 36.190575>,  <46.301723, 35.210415, 36.001976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318882, 35.062984, 36.190575>,  <46.347481, 34.817265, 36.504906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318882, 35.062984, 36.190575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873505, -0.341789, -0.346654,
		-0.481536, -0.711209, -0.512156,
		-0.071494, 0.614297, -0.785829,
		46.297432, 35.247272, 35.954826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.378082, 34.427486, 35.866276>,  <46.347481, 34.817265, 36.504906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.378082, 34.427486, 35.866276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506996, 34.802212, 35.811844>,  <46.584343, 35.027046, 35.779186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506996, 34.802212, 35.811844>,  <46.378082, 34.427486, 35.866276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.506996, 34.802212, 35.811844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843580, -0.349439, -0.407756,
		-0.429541, 0.016621, -0.902894,
		0.322283, 0.936812, -0.136077,
		46.603680, 35.083256, 35.771019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438183, 34.640141, 35.080933>,  <46.378082, 34.427486, 35.866276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438183, 34.640141, 35.080933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.674461, 34.805950, 35.357845>,  <46.816227, 34.905434, 35.523994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.674461, 34.805950, 35.357845>,  <46.438183, 34.640141, 35.080933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.674461, 34.805950, 35.357845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804872, -0.363431, -0.469147,
		0.057125, 0.834320, -0.548313,
		0.590693, 0.414521, 0.692282,
		46.851669, 34.930305, 35.565529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.962769, 34.996399, 34.735573>,  <46.438183, 34.640141, 35.080933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.962769, 34.996399, 34.735573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093147, 34.904140, 35.102303>,  <47.171375, 34.848785, 35.322338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093147, 34.904140, 35.102303>,  <46.962769, 34.996399, 34.735573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.093147, 34.904140, 35.102303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813772, -0.425148, -0.396263,
		0.481181, 0.875244, 0.049117,
		0.325945, -0.230644, 0.916822,
		47.190929, 34.834946, 35.377350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.554916, 35.332745, 34.887188>,  <46.962769, 34.996399, 34.735573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.554916, 35.332745, 34.887188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536003, 35.000732, 35.109470>,  <47.524654, 34.801525, 35.242840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536003, 35.000732, 35.109470>,  <47.554916, 35.332745, 34.887188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.536003, 35.000732, 35.109470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792527, -0.369798, -0.484923,
		0.608001, 0.417486, 0.675308,
		-0.047279, -0.830033, 0.555706,
		47.521820, 34.751724, 35.276184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.177586, 35.191601, 35.137344>,  <47.554916, 35.332745, 34.887188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.177586, 35.191601, 35.137344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.987885, 34.839554, 35.146019>,  <47.874062, 34.628326, 35.151222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.987885, 34.839554, 35.146019>,  <48.177586, 35.191601, 35.137344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.987885, 34.839554, 35.146019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779971, -0.431459, -0.453307,
		0.408320, -0.198071, 0.891091,
		-0.474256, -0.880120, 0.021683,
		47.845608, 34.575520, 35.152523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.152920, 33.501888, 24.605865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.052416, 33.862324, 24.747234>,  <28.992113, 34.078587, 24.832056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.052416, 33.862324, 24.747234>,  <29.152920, 33.501888, 24.605865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052416, 33.862324, 24.747234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711110, -0.075865, 0.698976,
		0.656651, 0.426948, -0.621711,
		-0.251260, 0.901088, 0.353424,
		28.977037, 34.132648, 24.853262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749725, 33.739178, 24.908699>,  <29.152920, 33.501888, 24.605865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749725, 33.739178, 24.908699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.488842, 33.977261, 25.096466>,  <29.332312, 34.120110, 25.209126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.488842, 33.977261, 25.096466>,  <29.749725, 33.739178, 24.908699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488842, 33.977261, 25.096466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646204, 0.112821, 0.754779,
		0.396290, 0.795613, -0.458208,
		-0.652207, 0.595207, 0.469418,
		29.293180, 34.155823, 25.237291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087826, 34.448105, 24.955210>,  <29.749725, 33.739178, 24.908699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087826, 34.448105, 24.955210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.805779, 34.369328, 25.227686>,  <29.636551, 34.322060, 25.391172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.805779, 34.369328, 25.227686>,  <30.087826, 34.448105, 24.955210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805779, 34.369328, 25.227686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682447, 0.072373, 0.727343,
		-0.192548, 0.977739, 0.083374,
		-0.705118, -0.196947, 0.681191,
		29.594244, 34.310242, 25.432043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272747, 34.878136, 25.628351>,  <30.087826, 34.448105, 24.955210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272747, 34.878136, 25.628351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.990152, 34.653389, 25.800484>,  <29.820597, 34.518539, 25.903763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.990152, 34.653389, 25.800484>,  <30.272747, 34.878136, 25.628351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990152, 34.653389, 25.800484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457442, 0.101436, 0.883435,
		-0.540023, 0.820985, 0.185358,
		-0.706486, -0.561866, 0.430331,
		29.778206, 34.484829, 25.929583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053242, 35.153683, 26.343985>,  <30.272747, 34.878136, 25.628351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053242, 35.153683, 26.343985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.952204, 34.766678, 26.348307>,  <29.891581, 34.534473, 26.350901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.952204, 34.766678, 26.348307>,  <30.053242, 35.153683, 26.343985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952204, 34.766678, 26.348307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563671, -0.138066, 0.814379,
		-0.786429, 0.211798, 0.580233,
		-0.252594, -0.967512, 0.010806,
		29.876425, 34.476425, 26.351549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731295, 34.961605, 26.924589>,  <30.053242, 35.153683, 26.343985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731295, 34.961605, 26.924589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.881002, 34.610466, 26.805048>,  <29.970827, 34.399784, 26.733324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.881002, 34.610466, 26.805048>,  <29.731295, 34.961605, 26.924589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881002, 34.610466, 26.805048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606550, -0.012029, 0.794955,
		-0.701441, -0.478796, 0.527954,
		0.374270, -0.877844, -0.298851,
		29.993284, 34.347115, 26.715393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826746, 34.596634, 27.529549>,  <29.731295, 34.961605, 26.924589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826746, 34.596634, 27.529549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.049480, 34.376427, 27.280754>,  <30.183121, 34.244305, 27.131477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.049480, 34.376427, 27.280754>,  <29.826746, 34.596634, 27.529549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049480, 34.376427, 27.280754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670540, -0.144005, 0.727763,
		-0.490214, -0.822310, 0.288956,
		0.556836, -0.550516, -0.621985,
		30.216532, 34.211273, 27.094158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916010, 33.928726, 27.805124>,  <29.826746, 34.596634, 27.529549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916010, 33.928726, 27.805124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.226896, 33.996342, 27.562683>,  <30.413427, 34.036911, 27.417217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.226896, 33.996342, 27.562683>,  <29.916010, 33.928726, 27.805124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226896, 33.996342, 27.562683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611594, 0.023546, 0.790821,
		0.147949, -0.985328, -0.085081,
		0.777216, 0.169037, -0.606105,
		30.460060, 34.047054, 27.380852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323658, 33.406151, 27.964849>,  <29.916010, 33.928726, 27.805124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323658, 33.406151, 27.964849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.592745, 33.639343, 27.782606>,  <30.754198, 33.779259, 27.673260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.592745, 33.639343, 27.782606>,  <30.323658, 33.406151, 27.964849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592745, 33.639343, 27.782606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691380, -0.275983, 0.667703,
		0.263520, -0.764175, -0.588723,
		0.672719, 0.582984, -0.455608,
		30.794561, 33.814240, 27.645924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979000, 33.023975, 27.948858>,  <30.323658, 33.406151, 27.964849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979000, 33.023975, 27.948858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.066666, 33.414055, 27.936548>,  <31.119265, 33.648102, 27.929163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.066666, 33.414055, 27.936548>,  <30.979000, 33.023975, 27.948858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066666, 33.414055, 27.936548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741836, -0.146064, 0.654480,
		0.633756, -0.166267, -0.755453,
		0.219163, 0.975203, -0.030774,
		31.132414, 33.706615, 27.927317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716742, 33.092220, 27.646990>,  <30.979000, 33.023975, 27.948858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716742, 33.092220, 27.646990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.660095, 33.419632, 27.869684>,  <31.626106, 33.616077, 28.003302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.660095, 33.419632, 27.869684>,  <31.716742, 33.092220, 27.646990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660095, 33.419632, 27.869684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849939, -0.187782, 0.492282,
		0.507492, 0.542909, -0.669105,
		-0.141618, 0.818528, 0.556738,
		31.617609, 33.665192, 28.036705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464958, 33.479595, 27.638447>,  <31.716742, 33.092220, 27.646990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464958, 33.479595, 27.638447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.260853, 33.631977, 27.946863>,  <32.138390, 33.723408, 28.131912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.260853, 33.631977, 27.946863>,  <32.464958, 33.479595, 27.638447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260853, 33.631977, 27.946863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719964, -0.301164, 0.625261,
		0.470405, 0.874171, -0.120600,
		-0.510265, 0.380953, 0.771041,
		32.107773, 33.746262, 28.178175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803207, 33.943447, 27.967495>,  <32.464958, 33.479595, 27.638447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803207, 33.943447, 27.967495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539051, 33.880653, 28.261227>,  <32.380558, 33.842976, 28.437466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539051, 33.880653, 28.261227>,  <32.803207, 33.943447, 27.967495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539051, 33.880653, 28.261227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747027, -0.037863, 0.663715,
		-0.076390, 0.986875, 0.142277,
		-0.660391, -0.156986, 0.734329,
		32.340935, 33.833557, 28.481525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905121, 34.526146, 28.542173>,  <32.803207, 33.943447, 27.967495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905121, 34.526146, 28.542173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751110, 34.201851, 28.718565>,  <32.658703, 34.007275, 28.824400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751110, 34.201851, 28.718565>,  <32.905121, 34.526146, 28.542173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751110, 34.201851, 28.718565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758411, -0.005667, 0.651752,
		-0.525900, 0.585384, 0.617053,
		-0.385022, -0.810736, 0.440981,
		32.635605, 33.958630, 28.850859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973846, 34.604561, 29.233503>,  <32.905121, 34.526146, 28.542173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973846, 34.604561, 29.233503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.923435, 34.208733, 29.205614>,  <32.893188, 33.971233, 29.188881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.923435, 34.208733, 29.205614>,  <32.973846, 34.604561, 29.233503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923435, 34.208733, 29.205614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708960, -0.139006, 0.691413,
		-0.693896, 0.037710, 0.719087,
		-0.126030, -0.989573, -0.069721,
		32.885628, 33.911861, 29.184698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203209, 34.474754, 29.814476>,  <32.973846, 34.604561, 29.233503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203209, 34.474754, 29.814476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196793, 34.115749, 29.638199>,  <33.192944, 33.900345, 29.532433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196793, 34.115749, 29.638199>,  <33.203209, 34.474754, 29.814476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196793, 34.115749, 29.638199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682920, -0.331760, 0.650812,
		-0.730317, -0.290520, 0.618252,
		-0.016038, -0.897515, -0.440692,
		33.191982, 33.846497, 29.505991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020859, 33.929028, 30.361044>,  <33.203209, 34.474754, 29.814476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020859, 33.929028, 30.361044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.223656, 33.786106, 30.047281>,  <33.345333, 33.700352, 29.859024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.223656, 33.786106, 30.047281>,  <33.020859, 33.929028, 30.361044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223656, 33.786106, 30.047281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726161, -0.313234, 0.612025,
		-0.464382, -0.879897, 0.100654,
		0.506991, -0.357304, -0.784407,
		33.375751, 33.678913, 29.811958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163086, 33.256245, 30.493898>,  <33.020859, 33.929028, 30.361044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163086, 33.256245, 30.493898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439465, 33.372887, 30.229303>,  <33.605289, 33.442871, 30.070547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439465, 33.372887, 30.229303>,  <33.163086, 33.256245, 30.493898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439465, 33.372887, 30.229303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687444, -0.548124, 0.476424,
		-0.223647, -0.783916, -0.579187,
		0.690943, 0.291608, -0.661485,
		33.646748, 33.460369, 30.030857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458118, 32.711559, 30.276627>,  <33.163086, 33.256245, 30.493898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458118, 32.711559, 30.276627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741787, 32.980137, 30.190620>,  <33.911987, 33.141285, 30.139017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741787, 32.980137, 30.190620>,  <33.458118, 32.711559, 30.276627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741787, 32.980137, 30.190620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666599, -0.539248, 0.514643,
		0.229609, -0.508301, -0.830006,
		0.709173, 0.671448, -0.215017,
		33.954540, 33.181572, 30.126116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025490, 32.277443, 30.107765>,  <33.458118, 32.711559, 30.276627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025490, 32.277443, 30.107765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.165169, 32.646435, 30.173601>,  <34.248978, 32.867832, 30.213102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.165169, 32.646435, 30.173601>,  <34.025490, 32.277443, 30.107765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165169, 32.646435, 30.173601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785843, -0.383969, 0.484788,
		0.510405, -0.039945, -0.859006,
		0.349196, 0.922482, 0.164589,
		34.269928, 32.923180, 30.222979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669785, 32.201183, 29.905531>,  <34.025490, 32.277443, 30.107765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669785, 32.201183, 29.905531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653107, 32.527706, 30.135979>,  <34.643101, 32.723618, 30.274246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653107, 32.527706, 30.135979>,  <34.669785, 32.201183, 29.905531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653107, 32.527706, 30.135979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847291, -0.276693, 0.453364,
		0.529490, 0.507041, -0.680110,
		-0.041692, 0.816303, 0.576118,
		34.640598, 32.772598, 30.308813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660797, 31.420282, 29.943253>,  <34.669785, 32.201183, 29.905531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660797, 31.420282, 29.943253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988705, 31.525524, 29.739779>,  <35.185448, 31.588669, 29.617693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988705, 31.525524, 29.739779>,  <34.660797, 31.420282, 29.943253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988705, 31.525524, 29.739779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354722, -0.464071, -0.811671,
		-0.449620, 0.845822, -0.287101,
		0.819765, 0.263103, -0.508687,
		35.234634, 31.604454, 29.587172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446026, 31.759130, 29.251417>,  <34.660797, 31.420282, 29.943253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446026, 31.759130, 29.251417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.817509, 31.610907, 29.245779>,  <35.040398, 31.521973, 29.242395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.817509, 31.610907, 29.245779>,  <34.446026, 31.759130, 29.251417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817509, 31.610907, 29.245779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158879, -0.363262, -0.918040,
		0.335066, 0.854826, -0.396236,
		0.928703, -0.370558, -0.014098,
		35.096119, 31.499739, 29.241550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729279, 31.866627, 28.537231>,  <34.446026, 31.759130, 29.251417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729279, 31.866627, 28.537231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949017, 31.579477, 28.708290>,  <35.080860, 31.407188, 28.810926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949017, 31.579477, 28.708290>,  <34.729279, 31.866627, 28.537231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949017, 31.579477, 28.708290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030831, -0.528853, -0.848153,
		0.835029, 0.452741, -0.312654,
		0.549342, -0.717872, 0.427649,
		35.113819, 31.364117, 28.836584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133499, 31.704401, 28.003439>,  <34.729279, 31.866627, 28.537231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133499, 31.704401, 28.003439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161037, 31.397722, 28.258760>,  <35.177563, 31.213715, 28.411953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161037, 31.397722, 28.258760>,  <35.133499, 31.704401, 28.003439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161037, 31.397722, 28.258760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304276, -0.625475, -0.718469,
		0.950092, -0.144754, -0.276352,
		0.068850, -0.766699, 0.638304,
		35.181694, 31.167713, 28.450253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453079, 31.141016, 27.672319>,  <35.133499, 31.704401, 28.003439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453079, 31.141016, 27.672319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231583, 30.973951, 27.960466>,  <35.098686, 30.873713, 28.133354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231583, 30.973951, 27.960466>,  <35.453079, 31.141016, 27.672319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231583, 30.973951, 27.960466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414613, -0.611946, -0.673511,
		0.722126, -0.671625, 0.165692,
		-0.553741, -0.417662, 0.720367,
		35.065460, 30.848652, 28.176577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375309, 30.415728, 27.441824>,  <35.453079, 31.141016, 27.672319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375309, 30.415728, 27.441824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084286, 30.482458, 27.708004>,  <34.909672, 30.522495, 27.867712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084286, 30.482458, 27.708004>,  <35.375309, 30.415728, 27.441824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084286, 30.482458, 27.708004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682474, -0.274824, -0.677274,
		0.069896, -0.946912, 0.313804,
		-0.727560, 0.166824, 0.665452,
		34.866016, 30.532505, 27.907640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760860, 29.911591, 27.295710>,  <35.375309, 30.415728, 27.441824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760860, 29.911591, 27.295710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.601719, 30.212362, 27.505974>,  <34.506233, 30.392826, 27.632132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.601719, 30.212362, 27.505974>,  <34.760860, 29.911591, 27.295710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601719, 30.212362, 27.505974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848332, -0.083330, -0.522866,
		-0.349355, -0.653956, 0.671039,
		-0.397849, 0.751930, 0.525660,
		34.482365, 30.437941, 27.663671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078465, 29.671484, 27.148657>,  <34.760860, 29.911591, 27.295710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078465, 29.671484, 27.148657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040615, 30.048050, 27.278141>,  <34.017906, 30.273989, 27.355831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040615, 30.048050, 27.278141>,  <34.078465, 29.671484, 27.148657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040615, 30.048050, 27.278141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935240, 0.027362, -0.352957,
		-0.341135, -0.336143, 0.877858,
		-0.094624, 0.941413, 0.323708,
		34.012226, 30.330475, 27.375254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354198, 29.701591, 27.488523>,  <34.078465, 29.671484, 27.148657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354198, 29.701591, 27.488523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.507912, 30.046726, 27.357172>,  <33.600140, 30.253807, 27.278360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.507912, 30.046726, 27.357172>,  <33.354198, 29.701591, 27.488523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507912, 30.046726, 27.357172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900226, 0.271333, -0.340547,
		-0.204736, 0.426484, 0.881019,
		0.384288, 0.862838, -0.328380,
		33.623199, 30.305578, 27.258657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915493, 30.154373, 27.648220>,  <33.354198, 29.701591, 27.488523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915493, 30.154373, 27.648220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116688, 30.339569, 27.356291>,  <33.237404, 30.450687, 27.181133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116688, 30.339569, 27.356291>,  <32.915493, 30.154373, 27.648220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116688, 30.339569, 27.356291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864238, 0.278811, -0.418756,
		0.009603, 0.841371, 0.540373,
		0.502991, 0.462990, -0.729822,
		33.267586, 30.478466, 27.137344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537853, 30.873852, 27.554316>,  <32.915493, 30.154373, 27.648220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537853, 30.873852, 27.554316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.771137, 30.823662, 27.233286>,  <32.911106, 30.793549, 27.040668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.771137, 30.823662, 27.233286>,  <32.537853, 30.873852, 27.554316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771137, 30.823662, 27.233286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672482, 0.479638, -0.563662,
		0.455670, 0.868449, 0.195350,
		0.583209, -0.125474, -0.802573,
		32.946098, 30.786020, 26.992514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617153, 31.503942, 27.337135>,  <32.537853, 30.873852, 27.554316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617153, 31.503942, 27.337135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.687714, 31.263292, 27.025513>,  <32.730049, 31.118902, 26.838539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.687714, 31.263292, 27.025513>,  <32.617153, 31.503942, 27.337135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687714, 31.263292, 27.025513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537924, 0.603904, -0.588165,
		0.824331, 0.522825, -0.217100,
		0.176400, -0.601625, -0.779057,
		32.740635, 31.082804, 26.791796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944714, 31.927744, 26.754707>,  <32.617153, 31.503942, 27.337135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944714, 31.927744, 26.754707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.791100, 31.591131, 26.602736>,  <32.698933, 31.389164, 26.511553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.791100, 31.591131, 26.602736>,  <32.944714, 31.927744, 26.754707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791100, 31.591131, 26.602736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429089, 0.527008, -0.733584,
		0.817558, -0.118697, -0.563480,
		-0.384033, -0.841530, -0.379928,
		32.675888, 31.338673, 26.488756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002304, 32.003399, 26.061167>,  <32.944714, 31.927744, 26.754707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002304, 32.003399, 26.061167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.717773, 31.724445, 26.096224>,  <32.547054, 31.557074, 26.117258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.717773, 31.724445, 26.096224>,  <33.002304, 32.003399, 26.061167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717773, 31.724445, 26.096224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539556, 0.461872, -0.703956,
		0.450428, -0.548044, -0.704814,
		-0.711332, -0.697368, 0.087660,
		32.504375, 31.515232, 26.122517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847466, 31.752848, 25.411926>,  <33.002304, 32.003399, 26.061167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847466, 31.752848, 25.411926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.520008, 31.629702, 25.605852>,  <32.323536, 31.555813, 25.722208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.520008, 31.629702, 25.605852>,  <32.847466, 31.752848, 25.411926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520008, 31.629702, 25.605852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561855, 0.254509, -0.787111,
		0.118936, -0.916757, -0.381328,
		-0.818641, -0.307867, 0.484814,
		32.274414, 31.537342, 25.751297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389141, 31.267591, 24.884052>,  <32.847466, 31.752848, 25.411926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389141, 31.267591, 24.884052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.133274, 31.378714, 25.170729>,  <31.979753, 31.445387, 25.342735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.133274, 31.378714, 25.170729>,  <32.389141, 31.267591, 24.884052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133274, 31.378714, 25.170729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706408, 0.155082, -0.690606,
		-0.303001, -0.948036, 0.097044,
		-0.639670, 0.277807, 0.716691,
		31.941374, 31.462055, 25.385736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818260, 30.880308, 24.791777>,  <32.389141, 31.267591, 24.884052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818260, 30.880308, 24.791777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.698256, 31.189833, 25.014921>,  <31.626253, 31.375547, 25.148808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.698256, 31.189833, 25.014921>,  <31.818260, 30.880308, 24.791777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698256, 31.189833, 25.014921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699018, 0.219611, -0.680548,
		-0.649128, -0.594127, 0.475022,
		-0.300012, 0.773811, 0.557861,
		31.608252, 31.421976, 25.182280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052753, 30.827940, 24.742224>,  <31.818260, 30.880308, 24.791777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052753, 30.827940, 24.742224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.165983, 31.203300, 24.821493>,  <31.233921, 31.428516, 24.869055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.165983, 31.203300, 24.821493>,  <31.052753, 30.827940, 24.742224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165983, 31.203300, 24.821493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627064, 0.337426, -0.702093,
		-0.725714, 0.074475, 0.683953,
		0.283072, 0.938401, 0.198175,
		31.250904, 31.484821, 24.880945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590269, 31.218325, 24.477955>,  <31.052753, 30.827940, 24.742224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590269, 31.218325, 24.477955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.849173, 31.513117, 24.555841>,  <31.004515, 31.689993, 24.602573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.849173, 31.513117, 24.555841>,  <30.590269, 31.218325, 24.477955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849173, 31.513117, 24.555841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546451, 0.626703, -0.555549,
		-0.531458, 0.253181, 0.808363,
		0.647258, 0.736982, 0.194716,
		31.043350, 31.734211, 24.614256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.188881, 31.801853, 24.610207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.554361, 31.930866, 24.511316>,  <30.773649, 32.008274, 24.451982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.554361, 31.930866, 24.511316>,  <30.188881, 31.801853, 24.610207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554361, 31.930866, 24.511316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404432, 0.662131, -0.630886,
		-0.039787, 0.676427, 0.735434,
		0.913702, 0.322534, -0.247225,
		30.828472, 32.027626, 24.437149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022949, 32.481453, 24.586750>,  <30.188881, 31.801853, 24.610207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022949, 32.481453, 24.586750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.357277, 32.446362, 24.369970>,  <30.557875, 32.425308, 24.239902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.357277, 32.446362, 24.369970>,  <30.022949, 32.481453, 24.586750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357277, 32.446362, 24.369970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370034, 0.639208, -0.674157,
		0.405561, 0.764013, 0.501801,
		0.835820, -0.087729, -0.541949,
		30.608023, 32.420044, 24.207386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154524, 33.131767, 24.326937>,  <30.022949, 32.481453, 24.586750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154524, 33.131767, 24.326937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.356722, 32.878948, 24.091991>,  <30.478041, 32.727257, 23.951023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.356722, 32.878948, 24.091991>,  <30.154524, 33.131767, 24.326937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356722, 32.878948, 24.091991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364087, 0.460919, -0.809317,
		0.782251, 0.622956, 0.002872,
		0.505493, -0.632044, -0.587365,
		30.508369, 32.689335, 23.915783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350136, 33.587025, 23.857115>,  <30.154524, 33.131767, 24.326937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350136, 33.587025, 23.857115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.358145, 33.217278, 23.704723>,  <30.362949, 32.995430, 23.613289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.358145, 33.217278, 23.704723>,  <30.350136, 33.587025, 23.857115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358145, 33.217278, 23.704723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321756, 0.354824, -0.877823,
		0.946611, 0.140157, -0.290317,
		0.020021, -0.924368, -0.380976,
		30.364151, 32.939968, 23.590431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753918, 33.606693, 23.259207>,  <30.350136, 33.587025, 23.857115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753918, 33.606693, 23.259207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.520864, 33.286880, 23.200840>,  <30.381033, 33.094994, 23.165819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.520864, 33.286880, 23.200840>,  <30.753918, 33.606693, 23.259207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520864, 33.286880, 23.200840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284444, 0.368781, -0.884925,
		0.761335, -0.474080, -0.442285,
		-0.582632, -0.799530, -0.145917,
		30.346075, 33.047020, 23.157064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703444, 33.395966, 22.501095>,  <30.753918, 33.606693, 23.259207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703444, 33.395966, 22.501095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377735, 33.207848, 22.637201>,  <30.182310, 33.094975, 22.718866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377735, 33.207848, 22.637201>,  <30.703444, 33.395966, 22.501095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377735, 33.207848, 22.637201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497898, 0.264496, -0.825917,
		0.298433, -0.841937, -0.449534,
		-0.814270, -0.470303, 0.340264,
		30.133453, 33.066757, 22.739281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442518, 33.215412, 21.882183>,  <30.703444, 33.395966, 22.501095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442518, 33.215412, 21.882183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132687, 33.156063, 22.128115>,  <29.946789, 33.120453, 22.275673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132687, 33.156063, 22.128115>,  <30.442518, 33.215412, 21.882183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132687, 33.156063, 22.128115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631769, 0.135480, -0.763225,
		0.029942, -0.979608, -0.198674,
		-0.774578, -0.148369, 0.614830,
		29.900312, 33.111549, 22.312563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989475, 32.816250, 21.579197>,  <30.442518, 33.215412, 21.882183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989475, 32.816250, 21.579197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.767540, 33.003212, 21.854496>,  <29.634378, 33.115391, 22.019674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.767540, 33.003212, 21.854496>,  <29.989475, 32.816250, 21.579197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767540, 33.003212, 21.854496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575922, 0.381215, -0.723180,
		-0.600391, -0.797624, 0.057678,
		-0.554838, 0.467408, 0.688247,
		29.601088, 33.143433, 22.060970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294765, 32.641460, 21.454815>,  <29.989475, 32.816250, 21.579197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294765, 32.641460, 21.454815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.279554, 32.982056, 21.664011>,  <29.270428, 33.186413, 21.789528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.279554, 32.982056, 21.664011>,  <29.294765, 32.641460, 21.454815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279554, 32.982056, 21.664011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595692, 0.400892, -0.696015,
		-0.802312, -0.338009, 0.491981,
		-0.038028, 0.851490, 0.522990,
		29.268147, 33.237503, 21.820908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647976, 32.809166, 21.381121>,  <29.294765, 32.641460, 21.454815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647976, 32.809166, 21.381121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.806498, 33.152531, 21.511396>,  <28.901611, 33.358547, 21.589561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.806498, 33.152531, 21.511396>,  <28.647976, 32.809166, 21.381121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806498, 33.152531, 21.511396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537139, 0.504470, -0.676011,
		-0.744596, 0.092966, 0.661010,
		0.396306, 0.858410, 0.325691,
		28.925390, 33.410053, 21.609104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084410, 33.291580, 21.388355>,  <28.647976, 32.809166, 21.381121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084410, 33.291580, 21.388355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.418875, 33.510891, 21.394413>,  <28.619555, 33.642475, 21.398048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.418875, 33.510891, 21.394413>,  <28.084410, 33.291580, 21.388355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418875, 33.510891, 21.394413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330884, 0.526262, -0.783303,
		-0.437434, 0.649958, 0.621455,
		0.836162, 0.548273, 0.015145,
		28.669724, 33.675373, 21.398956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957031, 34.064114, 21.380760>,  <28.084410, 33.291580, 21.388355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957031, 34.064114, 21.380760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.322876, 34.032196, 21.222206>,  <28.542383, 34.013046, 21.127073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.322876, 34.032196, 21.222206>,  <27.957031, 34.064114, 21.380760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322876, 34.032196, 21.222206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225188, 0.713704, -0.663262,
		0.335825, 0.695888, 0.634793,
		0.914610, -0.079792, -0.396385,
		28.597260, 34.008259, 21.103291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350428, 34.739033, 21.406830>,  <27.957031, 34.064114, 21.380760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350428, 34.739033, 21.406830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.506893, 34.518440, 21.112114>,  <28.600773, 34.386086, 20.935284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.506893, 34.518440, 21.112114>,  <28.350428, 34.739033, 21.406830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506893, 34.518440, 21.112114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155092, 0.749632, -0.643427,
		0.907159, 0.365956, 0.207700,
		0.391164, -0.551478, -0.736792,
		28.624243, 34.352997, 20.891077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746201, 35.153046, 21.046112>,  <28.350428, 34.739033, 21.406830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746201, 35.153046, 21.046112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.686195, 34.855087, 20.786074>,  <28.650192, 34.676311, 20.630051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.686195, 34.855087, 20.786074>,  <28.746201, 35.153046, 21.046112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686195, 34.855087, 20.786074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202122, 0.666757, -0.717343,
		0.967803, 0.023788, -0.250582,
		-0.150013, -0.744895, -0.650098,
		28.641191, 34.631618, 20.591043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843184, 35.429409, 20.383123>,  <28.746201, 35.153046, 21.046112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843184, 35.429409, 20.383123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.667973, 35.085289, 20.278811>,  <28.562845, 34.878815, 20.216223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.667973, 35.085289, 20.278811>,  <28.843184, 35.429409, 20.383123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667973, 35.085289, 20.278811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522683, 0.479751, -0.704728,
		0.731392, -0.172383, -0.659810,
		-0.438028, -0.860304, -0.260784,
		28.536564, 34.827198, 20.200575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860785, 35.434200, 19.707111>,  <28.843184, 35.429409, 20.383123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860785, 35.434200, 19.707111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.564617, 35.177906, 19.788342>,  <28.386917, 35.024128, 19.837080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.564617, 35.177906, 19.788342>,  <28.860785, 35.434200, 19.707111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564617, 35.177906, 19.788342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485350, 0.300650, -0.821003,
		0.464991, -0.706447, -0.533587,
		-0.740418, -0.640735, 0.203075,
		28.342491, 34.985687, 19.849264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781446, 35.046467, 19.070169>,  <28.860785, 35.434200, 19.707111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781446, 35.046467, 19.070169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.438807, 34.993286, 19.269592>,  <28.233223, 34.961376, 19.389246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.438807, 34.993286, 19.269592>,  <28.781446, 35.046467, 19.070169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438807, 34.993286, 19.269592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514166, 0.138976, -0.846356,
		0.043233, -0.981331, -0.187404,
		-0.856600, -0.132948, 0.498559,
		28.181826, 34.953400, 19.419159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430115, 34.585548, 18.672638>,  <28.781446, 35.046467, 19.070169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430115, 34.585548, 18.672638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137306, 34.723644, 18.907570>,  <27.961620, 34.806499, 19.048529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137306, 34.723644, 18.907570>,  <28.430115, 34.585548, 18.672638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137306, 34.723644, 18.907570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547794, 0.214288, -0.808704,
		-0.405052, -0.913724, 0.032256,
		-0.732021, 0.345237, 0.587331,
		27.917700, 34.827213, 19.083769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778437, 34.247040, 18.433561>,  <28.430115, 34.585548, 18.672638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778437, 34.247040, 18.433561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.651529, 34.576485, 18.621607>,  <27.575384, 34.774151, 18.734434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.651529, 34.576485, 18.621607>,  <27.778437, 34.247040, 18.433561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651529, 34.576485, 18.621607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490723, 0.281615, -0.824551,
		-0.811499, -0.492301, 0.314816,
		-0.317270, 0.823610, 0.470114,
		27.556349, 34.823566, 18.762642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099588, 34.325077, 18.213333>,  <27.778437, 34.247040, 18.433561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099588, 34.325077, 18.213333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.205448, 34.687893, 18.344324>,  <27.268965, 34.905582, 18.422918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.205448, 34.687893, 18.344324>,  <27.099588, 34.325077, 18.213333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205448, 34.687893, 18.344324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578774, 0.421020, -0.698400,
		-0.771350, -0.004703, 0.636394,
		0.264650, 0.907039, 0.327476,
		27.284843, 34.960003, 18.442568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497311, 34.608860, 18.202526>,  <27.099588, 34.325077, 18.213333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497311, 34.608860, 18.202526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.765257, 34.905506, 18.216894>,  <26.926025, 35.083492, 18.225515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.765257, 34.905506, 18.216894>,  <26.497311, 34.608860, 18.202526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765257, 34.905506, 18.216894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551670, 0.529513, -0.644419,
		-0.496930, 0.411859, 0.763828,
		0.669867, 0.741612, 0.035921,
		26.966217, 35.127991, 18.227671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115438, 35.146679, 18.435070>,  <26.497311, 34.608860, 18.202526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115438, 35.146679, 18.435070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.430428, 35.258343, 18.215267>,  <26.619421, 35.325340, 18.083385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.430428, 35.258343, 18.215267>,  <26.115438, 35.146679, 18.435070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430428, 35.258343, 18.215267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585384, 0.617785, -0.525041,
		0.192908, 0.735128, 0.649903,
		0.787472, 0.279157, -0.549508,
		26.666670, 35.342091, 18.050415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197577, 35.870480, 18.381598>,  <26.115438, 35.146679, 18.435070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197577, 35.870480, 18.381598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.314449, 35.689568, 18.044535>,  <26.384573, 35.581020, 17.842297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.314449, 35.689568, 18.044535>,  <26.197577, 35.870480, 18.381598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314449, 35.689568, 18.044535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671535, 0.530327, -0.517489,
		0.680933, 0.717076, -0.148767,
		0.292184, -0.452278, -0.842658,
		26.402105, 35.553883, 17.791737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107019, 36.570312, 18.588367>,  <26.197577, 35.870480, 18.381598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107019, 36.570312, 18.588367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.351294, 36.419235, 18.866768>,  <26.497858, 36.328590, 19.033808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.351294, 36.419235, 18.866768>,  <26.107019, 36.570312, 18.588367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351294, 36.419235, 18.866768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085631, 0.905269, 0.416119,
		-0.787231, -0.194518, 0.585175,
		0.610684, -0.377691, 0.695999,
		26.534498, 36.305927, 19.075567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553730, 37.052052, 18.293482>,  <26.107019, 36.570312, 18.588367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553730, 37.052052, 18.293482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.358023, 37.291462, 18.547216>,  <25.240599, 37.435108, 18.699457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.358023, 37.291462, 18.547216>,  <25.553730, 37.052052, 18.293482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358023, 37.291462, 18.547216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627872, -0.263078, 0.732507,
		0.605304, 0.756675, -0.247081,
		-0.489268, 0.598525, 0.634337,
		25.211243, 37.471020, 18.737518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047573, 37.328304, 18.703709>,  <25.553730, 37.052052, 18.293482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047573, 37.328304, 18.703709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.711283, 37.353733, 18.918795>,  <25.509508, 37.368992, 19.047846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.711283, 37.353733, 18.918795>,  <26.047573, 37.328304, 18.703709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711283, 37.353733, 18.918795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499391, -0.292749, 0.815418,
		0.209253, 0.954074, 0.214375,
		-0.840727, 0.063572, 0.537715,
		25.459064, 37.372807, 19.080109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282280, 37.613628, 19.228924>,  <26.047573, 37.328304, 18.703709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282280, 37.613628, 19.228924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.931305, 37.456467, 19.338997>,  <25.720720, 37.362171, 19.405041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.931305, 37.456467, 19.338997>,  <26.282280, 37.613628, 19.228924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931305, 37.456467, 19.338997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425146, -0.371310, 0.825458,
		-0.222150, 0.841281, 0.492844,
		-0.877440, -0.392906, 0.275181,
		25.668074, 37.338596, 19.421551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230968, 37.789356, 19.916136>,  <26.282280, 37.613628, 19.228924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230968, 37.789356, 19.916136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.972998, 37.490540, 19.851648>,  <25.818214, 37.311249, 19.812956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.972998, 37.490540, 19.851648>,  <26.230968, 37.789356, 19.916136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972998, 37.490540, 19.851648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349002, -0.475559, 0.807491,
		-0.679902, 0.464507, 0.567421,
		-0.644927, -0.747046, -0.161220,
		25.779520, 37.266426, 19.803282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873358, 37.789436, 20.528635>,  <26.230968, 37.789356, 19.916136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873358, 37.789436, 20.528635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.872490, 37.440254, 20.333517>,  <25.871969, 37.230743, 20.216446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.872490, 37.440254, 20.333517>,  <25.873358, 37.789436, 20.528635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872490, 37.440254, 20.333517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292592, -0.467003, 0.834445,
		-0.956235, -0.140916, 0.256432,
		-0.002168, -0.872955, -0.487796,
		25.871840, 37.178368, 20.187178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599665, 37.225506, 21.030582>,  <25.873358, 37.789436, 20.528635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599665, 37.225506, 21.030582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.806656, 37.034576, 20.746504>,  <25.930851, 36.920021, 20.576056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.806656, 37.034576, 20.746504>,  <25.599665, 37.225506, 21.030582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806656, 37.034576, 20.746504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477244, -0.527900, 0.702538,
		-0.710249, -0.702486, -0.045379,
		0.517479, -0.477320, -0.710198,
		25.961899, 36.891380, 20.533445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.665539, 36.599770, 21.287928>,  <25.599665, 37.225506, 21.030582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.665539, 36.599770, 21.287928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.955812, 36.623390, 21.013731>,  <26.129976, 36.637562, 20.849213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.955812, 36.623390, 21.013731>,  <25.665539, 36.599770, 21.287928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955812, 36.623390, 21.013731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624543, -0.474547, 0.620283,
		-0.288669, -0.878248, -0.381250,
		0.725684, 0.059051, -0.685490,
		26.173517, 36.641106, 20.808084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975407, 35.950241, 21.346514>,  <25.665539, 36.599770, 21.287928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975407, 35.950241, 21.346514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.248415, 36.156303, 21.139135>,  <26.412220, 36.279942, 21.014709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.248415, 36.156303, 21.139135>,  <25.975407, 35.950241, 21.346514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248415, 36.156303, 21.139135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729929, -0.444508, 0.519246,
		0.037040, -0.732822, -0.679412,
		0.682519, 0.515155, -0.518443,
		26.453171, 36.310848, 20.983603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434605, 35.445206, 21.069519>,  <25.975407, 35.950241, 21.346514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434605, 35.445206, 21.069519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.627504, 35.795105, 21.088499>,  <26.743244, 36.005043, 21.099886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.627504, 35.795105, 21.088499>,  <26.434605, 35.445206, 21.069519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627504, 35.795105, 21.088499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778897, -0.452937, 0.433783,
		0.400941, -0.172235, -0.899767,
		0.482250, 0.874748, 0.047448,
		26.772179, 36.057529, 21.102734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125874, 35.354282, 20.806393>,  <26.434605, 35.445206, 21.069519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125874, 35.354282, 20.806393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.163401, 35.685192, 21.027958>,  <27.185917, 35.883736, 21.160896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.163401, 35.685192, 21.027958>,  <27.125874, 35.354282, 20.806393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163401, 35.685192, 21.027958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621210, -0.483419, 0.616769,
		0.778008, 0.286231, -0.559264,
		0.093820, 0.827272, 0.553913,
		27.191547, 35.933372, 21.194132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751654, 35.283588, 21.018270>,  <27.125874, 35.354282, 20.806393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751654, 35.283588, 21.018270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.585123, 35.526371, 21.289053>,  <27.485205, 35.672043, 21.451523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.585123, 35.526371, 21.289053>,  <27.751654, 35.283588, 21.018270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585123, 35.526371, 21.289053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522228, -0.449852, 0.724507,
		0.744277, 0.655159, -0.129685,
		-0.416328, 0.606959, 0.676957,
		27.460224, 35.708458, 21.492140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326635, 35.517895, 21.527771>,  <27.751654, 35.283588, 21.018270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326635, 35.517895, 21.527771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.985504, 35.603622, 21.718245>,  <27.780825, 35.655060, 21.832529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.985504, 35.603622, 21.718245>,  <28.326635, 35.517895, 21.527771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985504, 35.603622, 21.718245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369501, -0.396683, 0.840304,
		0.368986, 0.892586, 0.259112,
		-0.852830, 0.214318, 0.476182,
		27.729654, 35.667919, 21.861099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527006, 35.907562, 22.057503>,  <28.326635, 35.517895, 21.527771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527006, 35.907562, 22.057503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.164984, 35.766434, 22.152491>,  <27.947771, 35.681755, 22.209484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.164984, 35.766434, 22.152491>,  <28.527006, 35.907562, 22.057503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164984, 35.766434, 22.152491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386679, -0.450176, 0.804874,
		-0.177074, 0.820280, 0.543862,
		-0.905055, -0.352822, 0.237470,
		27.893467, 35.660587, 22.223732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472635, 35.960033, 22.757767>,  <28.527006, 35.907562, 22.057503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472635, 35.960033, 22.757767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.176073, 35.697571, 22.701519>,  <27.998135, 35.540092, 22.667770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.176073, 35.697571, 22.701519>,  <28.472635, 35.960033, 22.757767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176073, 35.697571, 22.701519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213618, -0.429422, 0.877476,
		-0.636147, 0.620528, 0.458543,
		-0.741407, -0.656157, -0.140619,
		27.953651, 35.500725, 22.659334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071669, 35.971127, 23.430031>,  <28.472635, 35.960033, 22.757767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071669, 35.971127, 23.430031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.000202, 35.627441, 23.238266>,  <27.957321, 35.421230, 23.123207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.000202, 35.627441, 23.238266>,  <28.071669, 35.971127, 23.430031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000202, 35.627441, 23.238266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293378, -0.511612, 0.807578,
		-0.939152, 0.003638, 0.343482,
		-0.178667, -0.859209, -0.479414,
		27.946602, 35.369678, 23.094442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682840, 35.578354, 23.841869>,  <28.071669, 35.971127, 23.430031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682840, 35.578354, 23.841869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.838066, 35.316490, 23.582382>,  <27.931202, 35.159374, 23.426691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.838066, 35.316490, 23.582382>,  <27.682840, 35.578354, 23.841869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838066, 35.316490, 23.582382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283628, -0.584888, 0.759909,
		-0.876906, -0.478886, -0.041294,
		0.388062, -0.654656, -0.648716,
		27.954485, 35.120094, 23.387768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296968, 34.942150, 23.861828>,  <27.682840, 35.578354, 23.841869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296968, 34.942150, 23.861828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.675165, 34.875660, 23.749817>,  <27.902082, 34.835766, 23.682610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.675165, 34.875660, 23.749817>,  <27.296968, 34.942150, 23.861828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675165, 34.875660, 23.749817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188032, -0.423415, 0.886208,
		-0.265877, -0.890556, -0.369079,
		0.945491, -0.166224, -0.280029,
		27.958813, 34.825794, 23.665808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379576, 34.372829, 24.173487>,  <27.296968, 34.942150, 23.861828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379576, 34.372829, 24.173487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.756275, 34.469303, 24.079735>,  <27.982296, 34.527187, 24.023483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.756275, 34.469303, 24.079735>,  <27.379576, 34.372829, 24.173487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756275, 34.469303, 24.079735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323407, -0.458262, 0.827891,
		0.092270, -0.855467, -0.509571,
		0.941751, 0.241188, -0.234380,
		28.038801, 34.541660, 24.009420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795637, 33.768379, 24.311768>,  <27.379576, 34.372829, 24.173487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795637, 33.768379, 24.311768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.053734, 34.073929, 24.306789>,  <28.208591, 34.257259, 24.303802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.053734, 34.073929, 24.306789>,  <27.795637, 33.768379, 24.311768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053734, 34.073929, 24.306789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401673, -0.325344, 0.856044,
		0.649862, -0.557355, -0.516754,
		0.645243, 0.763876, -0.012446,
		28.247307, 34.303093, 24.303055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459789, 33.528767, 24.449873>,  <27.795637, 33.768379, 24.311768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459789, 33.528767, 24.449873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.518070, 33.903664, 24.576590>,  <28.553040, 34.128601, 24.652618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.518070, 33.903664, 24.576590>,  <28.459789, 33.528767, 24.449873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518070, 33.903664, 24.576590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481927, -0.346886, 0.804622,
		0.864012, 0.035434, -0.502223,
		0.145703, 0.937238, 0.316790,
		28.561781, 34.184834, 24.671627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.238747, 30.209295, 25.926815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.381416, 30.550518, 26.079172>,  <32.467018, 30.755251, 26.170588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.381416, 30.550518, 26.079172>,  <32.238747, 30.209295, 25.926815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381416, 30.550518, 26.079172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696336, -0.514557, 0.500347,
		0.622815, 0.086769, -0.777543,
		0.356676, 0.853055, 0.380894,
		32.488419, 30.806435, 26.193439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006859, 30.193254, 25.866772>,  <32.238747, 30.209295, 25.926815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006859, 30.193254, 25.866772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.921913, 30.481846, 26.130400>,  <32.870945, 30.655001, 26.288576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.921913, 30.481846, 26.130400>,  <33.006859, 30.193254, 25.866772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921913, 30.481846, 26.130400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904511, -0.110116, 0.411989,
		0.369815, 0.683626, -0.629200,
		-0.212362, 0.721478, 0.659069,
		32.858204, 30.698290, 26.328121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670979, 30.639359, 25.884464>,  <33.006859, 30.193254, 25.866772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670979, 30.639359, 25.884464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.447483, 30.689108, 26.212450>,  <33.313385, 30.718958, 26.409241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.447483, 30.689108, 26.212450>,  <33.670979, 30.639359, 25.884464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447483, 30.689108, 26.212450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809224, -0.134683, 0.571854,
		0.181557, 0.983052, -0.025392,
		-0.558743, 0.124372, 0.819962,
		33.279861, 30.726419, 26.458439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962887, 31.160688, 26.289215>,  <33.670979, 30.639359, 25.884464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962887, 31.160688, 26.289215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.747585, 30.943750, 26.547253>,  <33.618404, 30.813587, 26.702076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.747585, 30.943750, 26.547253>,  <33.962887, 31.160688, 26.289215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747585, 30.943750, 26.547253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764600, 0.007728, 0.644459,
		-0.354506, 0.840119, 0.410519,
		-0.538249, -0.542347, 0.645095,
		33.586109, 30.781046, 26.740782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927246, 31.490498, 26.966263>,  <33.962887, 31.160688, 26.289215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927246, 31.490498, 26.966263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.849854, 31.106564, 27.047529>,  <33.803417, 30.876204, 27.096289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.849854, 31.106564, 27.047529>,  <33.927246, 31.490498, 26.966263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849854, 31.106564, 27.047529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469863, 0.091136, 0.878022,
		-0.861274, 0.265343, 0.433358,
		-0.193482, -0.959837, 0.203168,
		33.791809, 30.818613, 27.108480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912163, 31.540676, 27.691917>,  <33.927246, 31.490498, 26.966263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912163, 31.540676, 27.691917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951881, 31.146088, 27.639738>,  <33.975712, 30.909334, 27.608431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951881, 31.146088, 27.639738>,  <33.912163, 31.540676, 27.691917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951881, 31.146088, 27.639738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568469, -0.051359, 0.821100,
		-0.816691, -0.155684, 0.555678,
		0.099293, -0.986471, -0.130446,
		33.981670, 30.850147, 27.600605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764763, 31.249067, 28.290663>,  <33.912163, 31.540676, 27.691917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764763, 31.249067, 28.290663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.986473, 30.977686, 28.097797>,  <34.119499, 30.814857, 27.982079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.986473, 30.977686, 28.097797>,  <33.764763, 31.249067, 28.290663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986473, 30.977686, 28.097797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661509, 0.007495, 0.749899,
		-0.505159, -0.734604, 0.452959,
		0.554274, -0.678455, -0.482161,
		34.152756, 30.774149, 27.953150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878101, 30.674688, 28.761641>,  <33.764763, 31.249067, 28.290663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878101, 30.674688, 28.761641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.188629, 30.650518, 28.510668>,  <34.374947, 30.636017, 28.360085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.188629, 30.650518, 28.510668>,  <33.878101, 30.674688, 28.761641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188629, 30.650518, 28.510668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615435, -0.142497, 0.775199,
		-0.136242, -0.987950, -0.073441,
		0.776323, -0.060417, -0.627433,
		34.421524, 30.632391, 28.322437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376987, 30.106527, 28.939878>,  <33.878101, 30.674688, 28.761641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376987, 30.106527, 28.939878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.577271, 30.378347, 28.725401>,  <34.697441, 30.541439, 28.596714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.577271, 30.378347, 28.725401>,  <34.376987, 30.106527, 28.939878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577271, 30.378347, 28.725401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591194, 0.183998, 0.785261,
		0.632282, -0.710182, -0.309616,
		0.500709, 0.679549, -0.536193,
		34.727482, 30.582212, 28.564543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959194, 30.327333, 29.324375>,  <34.376987, 30.106527, 28.939878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959194, 30.327333, 29.324375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062885, 30.572275, 29.025625>,  <35.125099, 30.719240, 28.846375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062885, 30.572275, 29.025625>,  <34.959194, 30.327333, 29.324375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062885, 30.572275, 29.025625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479765, 0.589510, 0.649849,
		0.838229, -0.526782, -0.140971,
		0.259225, 0.612356, -0.746876,
		35.140652, 30.755981, 28.801563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743706, 30.367189, 29.230732>,  <34.959194, 30.327333, 29.324375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743706, 30.367189, 29.230732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.566006, 30.702776, 29.105013>,  <35.459385, 30.904127, 29.029581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.566006, 30.702776, 29.105013>,  <35.743706, 30.367189, 29.230732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566006, 30.702776, 29.105013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542441, 0.531084, 0.650928,
		0.713024, 0.118685, -0.691022,
		-0.444246, 0.838965, -0.314296,
		35.432732, 30.954466, 29.010723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286884, 30.865213, 29.323956>,  <35.743706, 30.367189, 29.230732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286884, 30.865213, 29.323956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.942116, 31.064659, 29.287123>,  <35.735256, 31.184326, 29.265022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.942116, 31.064659, 29.287123>,  <36.286884, 30.865213, 29.323956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942116, 31.064659, 29.287123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327486, 0.686074, 0.649658,
		0.387105, 0.529797, -0.754629,
		-0.861918, 0.498616, -0.092082,
		35.683540, 31.214245, 29.259499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447701, 31.621525, 29.090906>,  <36.286884, 30.865213, 29.323956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447701, 31.621525, 29.090906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.089306, 31.612017, 29.268286>,  <35.874271, 31.606312, 29.374714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.089306, 31.612017, 29.268286>,  <36.447701, 31.621525, 29.090906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089306, 31.612017, 29.268286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352425, 0.569513, 0.742598,
		-0.270202, 0.821639, -0.501897,
		-0.895984, -0.023770, 0.443450,
		35.820511, 31.604885, 29.401321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390003, 32.288925, 29.409840>,  <36.447701, 31.621525, 29.090906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390003, 32.288925, 29.409840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.152599, 32.027565, 29.597805>,  <36.010159, 31.870750, 29.710585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.152599, 32.027565, 29.597805>,  <36.390003, 32.288925, 29.409840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152599, 32.027565, 29.597805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246612, 0.408139, 0.878979,
		-0.766112, 0.637570, -0.081100,
		-0.593511, -0.653396, 0.469913,
		35.974545, 31.831547, 29.738779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612503, 32.764915, 29.859047>,  <36.390003, 32.288925, 29.409840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612503, 32.764915, 29.859047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.824486, 33.097729, 29.793474>,  <36.951675, 33.297417, 29.754131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.824486, 33.097729, 29.793474>,  <36.612503, 32.764915, 29.859047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824486, 33.097729, 29.793474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548164, 0.188605, -0.814828,
		-0.647043, 0.521684, 0.556041,
		0.529955, 0.832030, -0.163932,
		36.983471, 33.347340, 29.744295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098553, 33.209209, 29.656101>,  <36.612503, 32.764915, 29.859047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098553, 33.209209, 29.656101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437820, 33.376003, 29.525415>,  <36.641380, 33.476078, 29.447004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437820, 33.376003, 29.525415>,  <36.098553, 33.209209, 29.656101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437820, 33.376003, 29.525415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452709, 0.250289, -0.855810,
		-0.275084, 0.873774, 0.401057,
		0.848165, 0.416982, -0.326715,
		36.692268, 33.501099, 29.427401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829845, 33.746391, 29.360464>,  <36.098553, 33.209209, 29.656101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829845, 33.746391, 29.360464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.197289, 33.719463, 29.204706>,  <36.417755, 33.703308, 29.111252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.197289, 33.719463, 29.204706>,  <35.829845, 33.746391, 29.360464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197289, 33.719463, 29.204706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347519, 0.331476, -0.877128,
		0.188121, 0.941059, 0.281102,
		0.918608, -0.067318, -0.389394,
		36.472870, 33.699268, 29.087889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019337, 34.427502, 29.085072>,  <35.829845, 33.746391, 29.360464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019337, 34.427502, 29.085072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.248341, 34.146709, 28.915623>,  <36.385742, 33.978233, 28.813953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.248341, 34.146709, 28.915623>,  <36.019337, 34.427502, 29.085072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248341, 34.146709, 28.915623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285793, 0.313412, -0.905591,
		0.768479, 0.639524, -0.021191,
		0.572506, -0.701984, -0.423622,
		36.420094, 33.936115, 28.788536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458374, 34.755924, 28.593864>,  <36.019337, 34.427502, 29.085072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458374, 34.755924, 28.593864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448429, 34.374519, 28.473736>,  <36.442463, 34.145676, 28.401659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448429, 34.374519, 28.473736>,  <36.458374, 34.755924, 28.593864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448429, 34.374519, 28.473736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223588, 0.298108, -0.927976,
		0.974367, 0.044082, -0.220605,
		-0.024857, -0.953514, -0.300322,
		36.440971, 34.088467, 28.383638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883244, 34.680698, 27.936094>,  <36.458374, 34.755924, 28.593864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883244, 34.680698, 27.936094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.619270, 34.381012, 27.958603>,  <36.460888, 34.201202, 27.972109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.619270, 34.381012, 27.958603>,  <36.883244, 34.680698, 27.936094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619270, 34.381012, 27.958603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366250, 0.255402, -0.894780,
		0.656010, -0.611104, -0.442948,
		-0.659933, -0.749214, 0.056271,
		36.421291, 34.156246, 27.975485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771267, 34.541286, 27.198286>,  <36.883244, 34.680698, 27.936094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771267, 34.541286, 27.198286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475525, 34.326546, 27.360836>,  <36.298080, 34.197701, 27.458366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475525, 34.326546, 27.360836>,  <36.771267, 34.541286, 27.198286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475525, 34.326546, 27.360836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506807, 0.046381, -0.860811,
		0.443278, -0.842402, -0.306372,
		-0.739358, -0.536850, 0.406375,
		36.253716, 34.165489, 27.482748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676228, 34.039795, 26.696041>,  <36.771267, 34.541286, 27.198286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676228, 34.039795, 26.696041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.335312, 34.040432, 26.905268>,  <36.130764, 34.040813, 27.030804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.335312, 34.040432, 26.905268>,  <36.676228, 34.039795, 26.696041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335312, 34.040432, 26.905268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518403, 0.130725, -0.845086,
		-0.069726, -0.991417, -0.110588,
		-0.852289, 0.001596, 0.523068,
		36.079624, 34.040909, 27.062189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233238, 33.512009, 26.363310>,  <36.676228, 34.039795, 26.696041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233238, 33.512009, 26.363310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.027260, 33.790325, 26.563595>,  <35.903675, 33.957314, 26.683765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.027260, 33.790325, 26.563595>,  <36.233238, 33.512009, 26.363310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027260, 33.790325, 26.563595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375970, 0.341615, -0.861363,
		-0.770376, -0.631807, 0.085682,
		-0.514944, 0.695787, 0.500713,
		35.872776, 33.999062, 26.713808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666729, 33.516117, 25.963556>,  <36.233238, 33.512009, 26.363310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666729, 33.516117, 25.963556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629745, 33.843979, 26.189693>,  <35.607555, 34.040695, 26.325375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629745, 33.843979, 26.189693>,  <35.666729, 33.516117, 25.963556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629745, 33.843979, 26.189693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370798, 0.498595, -0.783526,
		-0.924100, -0.282069, 0.257830,
		-0.092455, 0.819659, 0.565342,
		35.602009, 34.089878, 26.359297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966503, 33.650558, 25.983362>,  <35.666729, 33.516117, 25.963556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966503, 33.650558, 25.983362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105064, 34.015896, 26.068968>,  <35.188202, 34.235100, 26.120331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105064, 34.015896, 26.068968>,  <34.966503, 33.650558, 25.983362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105064, 34.015896, 26.068968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554306, 0.383339, -0.738780,
		-0.756803, 0.137286, 0.639064,
		0.346402, 0.913347, 0.214013,
		35.208984, 34.289902, 26.133171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465958, 34.196857, 26.015787>,  <34.966503, 33.650558, 25.983362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465958, 34.196857, 26.015787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.794521, 34.413456, 25.944160>,  <34.991661, 34.543415, 25.901184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.794521, 34.413456, 25.944160>,  <34.465958, 34.196857, 26.015787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794521, 34.413456, 25.944160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469564, 0.463880, -0.751216,
		-0.323711, 0.701144, 0.635302,
		0.821414, 0.541492, -0.179069,
		35.040947, 34.575905, 25.890440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176018, 34.857639, 25.786123>,  <34.465958, 34.196857, 26.015787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176018, 34.857639, 25.786123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.558002, 34.879562, 25.669479>,  <34.787193, 34.892715, 25.599493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.558002, 34.879562, 25.669479>,  <34.176018, 34.857639, 25.786123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558002, 34.879562, 25.669479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275586, 0.528055, -0.803250,
		0.109963, 0.847440, 0.519379,
		0.954966, 0.054806, -0.291609,
		34.844494, 34.896004, 25.581997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241558, 35.638790, 25.676722>,  <34.176018, 34.857639, 25.786123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241558, 35.638790, 25.676722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.550873, 35.468304, 25.488947>,  <34.736462, 35.366013, 25.376282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.550873, 35.468304, 25.488947>,  <34.241558, 35.638790, 25.676722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550873, 35.468304, 25.488947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279867, 0.434910, -0.855878,
		0.568950, 0.793218, 0.217026,
		0.773285, -0.426214, -0.469438,
		34.782860, 35.340439, 25.348116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767689, 36.145088, 26.104485>,  <34.241558, 35.638790, 25.676722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767689, 36.145088, 26.104485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.813820, 36.520397, 26.234926>,  <34.841499, 36.745583, 26.313190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.813820, 36.520397, 26.234926>,  <34.767689, 36.145088, 26.104485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813820, 36.520397, 26.234926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423275, -0.343418, 0.838393,
		0.898631, 0.041342, -0.436753,
		0.115328, 0.938272, 0.326105,
		34.848419, 36.801880, 26.332758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405247, 36.182476, 26.319244>,  <34.767689, 36.145088, 26.104485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405247, 36.182476, 26.319244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.200329, 36.454987, 26.528402>,  <35.077377, 36.618492, 26.653896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.200329, 36.454987, 26.528402>,  <35.405247, 36.182476, 26.319244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200329, 36.454987, 26.528402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365549, -0.377971, 0.850595,
		0.777131, 0.626895, -0.055410,
		-0.512290, 0.681279, 0.522893,
		35.046642, 36.659370, 26.685270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800617, 36.217556, 26.984337>,  <35.405247, 36.182476, 26.319244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800617, 36.217556, 26.984337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.446999, 36.394402, 27.044987>,  <35.234825, 36.500507, 27.081377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.446999, 36.394402, 27.044987>,  <35.800617, 36.217556, 26.984337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446999, 36.394402, 27.044987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042071, -0.247819, 0.967892,
		0.465495, 0.862044, 0.200484,
		-0.884050, 0.442115, 0.151626,
		35.181782, 36.527035, 27.090475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938911, 36.648285, 27.602066>,  <35.800617, 36.217556, 26.984337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938911, 36.648285, 27.602066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.547020, 36.571354, 27.579628>,  <35.311886, 36.525196, 27.566166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.547020, 36.571354, 27.579628>,  <35.938911, 36.648285, 27.602066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547020, 36.571354, 27.579628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016009, -0.203946, 0.978851,
		-0.199697, 0.959905, 0.196732,
		-0.979727, -0.192324, -0.056094,
		35.253101, 36.513657, 27.562799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566254, 37.031033, 28.136799>,  <35.938911, 36.648285, 27.602066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566254, 37.031033, 28.136799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.317932, 36.732922, 28.039501>,  <35.168938, 36.554054, 27.981123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.317932, 36.732922, 28.039501>,  <35.566254, 37.031033, 28.136799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317932, 36.732922, 28.039501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067434, -0.258362, 0.963692,
		-0.781060, 0.614667, 0.110135,
		-0.620804, -0.745275, -0.243246,
		35.131691, 36.509338, 27.966528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919853, 37.264244, 28.478609>,  <35.566254, 37.031033, 28.136799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919853, 37.264244, 28.478609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.972469, 36.872066, 28.420067>,  <35.004040, 36.636761, 28.384941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.972469, 36.872066, 28.420067>,  <34.919853, 37.264244, 28.478609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972469, 36.872066, 28.420067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196811, -0.170530, 0.965497,
		-0.971577, -0.098201, -0.215395,
		0.131544, -0.980447, -0.146356,
		35.011932, 36.577934, 28.376160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550529, 36.978653, 28.947416>,  <34.919853, 37.264244, 28.478609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550529, 36.978653, 28.947416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.730488, 36.641895, 28.828211>,  <34.838463, 36.439842, 28.756687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.730488, 36.641895, 28.828211>,  <34.550529, 36.978653, 28.947416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730488, 36.641895, 28.828211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128138, -0.391089, 0.911389,
		-0.883843, -0.371839, -0.283825,
		0.449891, -0.841894, -0.298015,
		34.865456, 36.389328, 28.738806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087040, 36.425529, 29.241808>,  <34.550529, 36.978653, 28.947416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087040, 36.425529, 29.241808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.434238, 36.241505, 29.167053>,  <34.642559, 36.131092, 29.122200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.434238, 36.241505, 29.167053>,  <34.087040, 36.425529, 29.241808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434238, 36.241505, 29.167053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099916, -0.530470, 0.841795,
		-0.486411, -0.712003, -0.506414,
		0.867998, -0.460058, -0.186886,
		34.694637, 36.103485, 29.110987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985016, 35.639683, 29.411612>,  <34.087040, 36.425529, 29.241808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985016, 35.639683, 29.411612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.377594, 35.715927, 29.420002>,  <34.613140, 35.761673, 29.425035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.377594, 35.715927, 29.420002>,  <33.985016, 35.639683, 29.411612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377594, 35.715927, 29.420002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093917, -0.573146, 0.814053,
		0.167188, -0.796976, -0.580411,
		0.981441, 0.190610, 0.020974,
		34.672028, 35.773109, 29.426294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335907, 34.976894, 29.514803>,  <33.985016, 35.639683, 29.411612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335907, 34.976894, 29.514803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.605122, 35.249130, 29.630615>,  <34.766651, 35.412472, 29.700102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.605122, 35.249130, 29.630615>,  <34.335907, 34.976894, 29.514803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605122, 35.249130, 29.630615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124241, -0.489934, 0.862861,
		0.729100, -0.544765, -0.414300,
		0.673036, 0.680585, 0.289529,
		34.807034, 35.453304, 29.717474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972443, 34.633148, 29.718727>,  <34.335907, 34.976894, 29.514803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972443, 34.633148, 29.718727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.002926, 34.990715, 29.895407>,  <35.021217, 35.205257, 30.001413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.002926, 34.990715, 29.895407>,  <34.972443, 34.633148, 29.718727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002926, 34.990715, 29.895407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169905, -0.448150, 0.877664,
		0.982509, 0.008158, -0.186036,
		0.076212, 0.893921, 0.441697,
		35.025791, 35.258892, 30.027916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607365, 34.746078, 30.019472>,  <34.972443, 34.633148, 29.718727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607365, 34.746078, 30.019472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.288624, 34.906631, 30.200098>,  <35.097378, 35.002964, 30.308474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.288624, 34.906631, 30.200098>,  <35.607365, 34.746078, 30.019472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288624, 34.906631, 30.200098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217803, -0.506309, 0.834394,
		0.563547, 0.763242, 0.316032,
		-0.796854, 0.401387, 0.451565,
		35.049568, 35.027046, 30.335567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.763569, 38.595711, 23.264160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535286, 38.779995, 23.536057>,  <33.398315, 38.890564, 23.699194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535286, 38.779995, 23.536057>,  <33.763569, 38.595711, 23.264160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535286, 38.779995, 23.536057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654405, -0.244867, 0.715398,
		0.496035, 0.853105, -0.161743,
		-0.570704, 0.460707, 0.679739,
		33.364075, 38.918205, 23.739979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226627, 38.946205, 23.732571>,  <33.763569, 38.595711, 23.264160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226627, 38.946205, 23.732571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891674, 38.932175, 23.950769>,  <33.690704, 38.923756, 24.081688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891674, 38.932175, 23.950769>,  <34.226627, 38.946205, 23.732571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891674, 38.932175, 23.950769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535013, -0.257177, 0.804750,
		0.112061, 0.965728, 0.234121,
		-0.837379, -0.035076, 0.545496,
		33.640461, 38.921650, 24.114418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556435, 39.139847, 24.386322>,  <34.226627, 38.946205, 23.732571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556435, 39.139847, 24.386322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195122, 38.990089, 24.470131>,  <33.978333, 38.900234, 24.520416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195122, 38.990089, 24.470131>,  <34.556435, 39.139847, 24.386322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195122, 38.990089, 24.470131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383385, -0.485164, 0.785896,
		-0.192585, 0.790217, 0.581781,
		-0.903287, -0.374398, 0.209522,
		33.924137, 38.877769, 24.532988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332867, 39.209534, 25.126053>,  <34.556435, 39.139847, 24.386322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332867, 39.209534, 25.126053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120972, 38.905792, 24.974915>,  <33.993835, 38.723549, 24.884232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120972, 38.905792, 24.974915>,  <34.332867, 39.209534, 25.126053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120972, 38.905792, 24.974915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272209, -0.574133, 0.772187,
		-0.803295, 0.306202, 0.510841,
		-0.529736, -0.759349, -0.377847,
		33.962051, 38.677986, 24.861561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137962, 38.938801, 25.740097>,  <34.332867, 39.209534, 25.126053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137962, 38.938801, 25.740097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076759, 38.660294, 25.459583>,  <34.040039, 38.493191, 25.291275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076759, 38.660294, 25.459583>,  <34.137962, 38.938801, 25.740097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076759, 38.660294, 25.459583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385717, -0.695430, 0.606300,
		-0.909841, -0.177729, 0.374968,
		-0.153007, -0.696269, -0.701284,
		34.030857, 38.451412, 25.249199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855652, 38.304699, 26.086718>,  <34.137962, 38.938801, 25.740097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855652, 38.304699, 26.086718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992374, 38.164364, 25.737988>,  <34.074409, 38.080162, 25.528749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992374, 38.164364, 25.737988>,  <33.855652, 38.304699, 26.086718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992374, 38.164364, 25.737988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282139, -0.846595, 0.451302,
		-0.896417, -0.400235, -0.190389,
		0.341809, -0.350839, -0.871825,
		34.094917, 38.059113, 25.476440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477207, 37.641911, 25.920849>,  <33.855652, 38.304699, 26.086718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477207, 37.641911, 25.920849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851879, 37.680855, 25.786295>,  <34.076683, 37.704220, 25.705563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851879, 37.680855, 25.786295>,  <33.477207, 37.641911, 25.920849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851879, 37.680855, 25.786295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278955, -0.788133, 0.548662,
		-0.211698, -0.607756, -0.765386,
		0.936679, 0.097357, -0.336383,
		34.132881, 37.710060, 25.685381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635841, 36.986187, 25.799217>,  <33.477207, 37.641911, 25.920849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635841, 36.986187, 25.799217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997940, 37.155926, 25.807703>,  <34.215199, 37.257771, 25.812794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997940, 37.155926, 25.807703>,  <33.635841, 36.986187, 25.799217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997940, 37.155926, 25.807703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354032, -0.780970, 0.514535,
		0.234910, -0.458273, -0.857206,
		0.905250, 0.424348, 0.021215,
		34.269516, 37.283230, 25.814068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198517, 36.456913, 25.805731>,  <33.635841, 36.986187, 25.799217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198517, 36.456913, 25.805731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421211, 36.775097, 25.901466>,  <34.554829, 36.966007, 25.958908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421211, 36.775097, 25.901466>,  <34.198517, 36.456913, 25.805731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421211, 36.775097, 25.901466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462198, -0.536041, 0.706423,
		0.690227, -0.282671, -0.666096,
		0.556740, 0.795460, 0.239340,
		34.588234, 37.013737, 25.973269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691124, 36.205040, 25.186541>,  <34.198517, 36.456913, 25.805731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691124, 36.205040, 25.186541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764534, 35.845959, 25.026318>,  <34.808578, 35.630508, 24.930183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764534, 35.845959, 25.026318>,  <34.691124, 36.205040, 25.186541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764534, 35.845959, 25.026318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326026, 0.328830, -0.886328,
		0.927376, 0.293254, -0.232327,
		0.183523, -0.897705, -0.400558,
		34.819592, 35.576649, 24.906151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024246, 36.315666, 24.456478>,  <34.691124, 36.205040, 25.186541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024246, 36.315666, 24.456478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877544, 35.944328, 24.432251>,  <34.789524, 35.721527, 24.417715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877544, 35.944328, 24.432251>,  <35.024246, 36.315666, 24.456478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877544, 35.944328, 24.432251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146880, 0.122070, -0.981593,
		0.918650, -0.351107, -0.181125,
		-0.366754, -0.928344, -0.060569,
		34.767517, 35.665825, 24.414080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199226, 36.071129, 23.793785>,  <35.024246, 36.315666, 24.456478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199226, 36.071129, 23.793785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951187, 35.781452, 23.914467>,  <34.802364, 35.607647, 23.986876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951187, 35.781452, 23.914467>,  <35.199226, 36.071129, 23.793785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951187, 35.781452, 23.914467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494770, 0.062547, -0.866770,
		0.608838, -0.686755, -0.397094,
		-0.620096, -0.724193, 0.301705,
		34.765160, 35.564194, 24.004978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153664, 35.664249, 23.269976>,  <35.199226, 36.071129, 23.793785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153664, 35.664249, 23.269976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821728, 35.580696, 23.476948>,  <34.622566, 35.530563, 23.601131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821728, 35.580696, 23.476948>,  <35.153664, 35.664249, 23.269976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821728, 35.580696, 23.476948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551724, 0.168433, -0.816842,
		0.083469, -0.963327, -0.255016,
		-0.829839, -0.208879, 0.517432,
		34.572777, 35.518032, 23.632177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714832, 35.121967, 22.899023>,  <35.153664, 35.664249, 23.269976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714832, 35.121967, 22.899023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472271, 35.324902, 23.143936>,  <34.326736, 35.446663, 23.290884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472271, 35.324902, 23.143936>,  <34.714832, 35.121967, 22.899023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472271, 35.324902, 23.143936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650845, 0.125688, -0.748734,
		-0.456815, -0.852535, 0.253978,
		-0.606400, 0.507333, 0.612284,
		34.290352, 35.477100, 23.327621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021973, 34.760941, 22.845930>,  <34.714832, 35.121967, 22.899023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021973, 34.760941, 22.845930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987183, 35.148438, 22.938854>,  <33.966309, 35.380936, 22.994610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987183, 35.148438, 22.938854>,  <34.021973, 34.760941, 22.845930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987183, 35.148438, 22.938854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692103, 0.108972, -0.713526,
		-0.716540, -0.222840, 0.660993,
		-0.086972, 0.968745, 0.232311,
		33.961090, 35.439060, 23.008547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333900, 34.895741, 22.813728>,  <34.021973, 34.760941, 22.845930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333900, 34.895741, 22.813728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451473, 35.278046, 22.818163>,  <33.522015, 35.507427, 22.820824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451473, 35.278046, 22.818163>,  <33.333900, 34.895741, 22.813728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451473, 35.278046, 22.818163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718759, 0.228656, -0.656584,
		-0.630073, 0.185021, 0.754172,
		0.293928, 0.955764, 0.011084,
		33.539650, 35.564774, 22.821487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654263, 35.376259, 22.881437>,  <33.333900, 34.895741, 22.813728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654263, 35.376259, 22.881437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968670, 35.579342, 22.740351>,  <33.157314, 35.701191, 22.655699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968670, 35.579342, 22.740351>,  <32.654263, 35.376259, 22.881437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968670, 35.579342, 22.740351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551541, 0.318200, -0.771071,
		-0.279245, 0.800613, 0.530133,
		0.786018, 0.507708, -0.352715,
		33.204475, 35.731655, 22.634537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360435, 35.954815, 22.799427>,  <32.654263, 35.376259, 22.881437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360435, 35.954815, 22.799427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683258, 35.985649, 22.565258>,  <32.876953, 36.004150, 22.424757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683258, 35.985649, 22.565258>,  <32.360435, 35.954815, 22.799427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683258, 35.985649, 22.565258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589128, 0.172022, -0.789517,
		0.039848, 0.982073, 0.184243,
		0.807057, 0.077082, -0.585421,
		32.925377, 36.008774, 22.389631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284763, 36.635410, 22.448301>,  <32.360435, 35.954815, 22.799427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284763, 36.635410, 22.448301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545918, 36.437237, 22.219114>,  <32.702610, 36.318333, 22.081602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545918, 36.437237, 22.219114>,  <32.284763, 36.635410, 22.448301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545918, 36.437237, 22.219114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598631, 0.125980, -0.791056,
		0.464098, 0.859462, -0.214332,
		0.652881, -0.495433, -0.572968,
		32.741783, 36.288609, 22.047224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417831, 37.037819, 21.818779>,  <32.284763, 36.635410, 22.448301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417831, 37.037819, 21.818779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551014, 36.679073, 21.702311>,  <32.630924, 36.463825, 21.632429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551014, 36.679073, 21.702311>,  <32.417831, 37.037819, 21.818779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551014, 36.679073, 21.702311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573606, 0.052442, -0.817451,
		0.748410, 0.439193, -0.496983,
		0.332956, -0.896861, -0.291172,
		32.650902, 36.410015, 21.614960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427902, 37.098557, 21.086002>,  <32.417831, 37.037819, 21.818779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427902, 37.098557, 21.086002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403385, 36.710644, 21.180460>,  <32.388676, 36.477898, 21.237135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403385, 36.710644, 21.180460>,  <32.427902, 37.098557, 21.086002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403385, 36.710644, 21.180460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651442, -0.140382, -0.745598,
		0.756218, -0.199536, -0.623153,
		-0.061294, -0.969783, 0.236146,
		32.384998, 36.419708, 21.251305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532478, 36.903141, 20.361595>,  <32.427902, 37.098557, 21.086002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532478, 36.903141, 20.361595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389893, 36.595753, 20.574154>,  <32.304340, 36.411320, 20.701689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389893, 36.595753, 20.574154>,  <32.532478, 36.903141, 20.361595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389893, 36.595753, 20.574154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817225, -0.019217, -0.575998,
		0.452851, -0.639594, -0.621165,
		-0.356468, -0.768473, 0.531394,
		32.282951, 36.365211, 20.733572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364609, 36.438862, 19.834814>,  <32.532478, 36.903141, 20.361595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364609, 36.438862, 19.834814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146717, 36.381477, 20.165314>,  <32.015984, 36.347046, 20.363613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146717, 36.381477, 20.165314>,  <32.364609, 36.438862, 19.834814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146717, 36.381477, 20.165314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833857, -0.012129, -0.551847,
		0.089192, -0.989581, -0.113021,
		-0.544727, -0.143464, 0.826251,
		31.983299, 36.338440, 20.413189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.522774, 37.439308, 24.871687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.850515, 37.513523, 24.654715>,  <28.047161, 37.558052, 24.524532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.850515, 37.513523, 24.654715>,  <27.522774, 37.439308, 24.871687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850515, 37.513523, 24.654715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573100, -0.241037, 0.783236,
		0.014578, -0.952615, -0.303830,
		0.819356, 0.185543, -0.542429,
		28.096323, 37.569187, 24.491985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970713, 36.898270, 24.986973>,  <27.522774, 37.439308, 24.871687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970713, 36.898270, 24.986973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.220558, 37.181286, 24.854765>,  <28.370464, 37.351097, 24.775440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.220558, 37.181286, 24.854765>,  <27.970713, 36.898270, 24.986973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220558, 37.181286, 24.854765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613760, -0.183070, 0.767974,
		0.482866, -0.682546, -0.548609,
		0.624612, 0.707542, -0.330521,
		28.407942, 37.393547, 24.755608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607651, 36.532986, 24.828506>,  <27.970713, 36.898270, 24.986973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607651, 36.532986, 24.828506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.716883, 36.914558, 24.878204>,  <28.782423, 37.143501, 24.908022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.716883, 36.914558, 24.878204>,  <28.607651, 36.532986, 24.828506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716883, 36.914558, 24.878204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762674, -0.293402, 0.576406,
		0.586306, -0.062649, -0.807663,
		0.273081, 0.953934, 0.124243,
		28.798807, 37.200737, 24.915478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406990, 36.687084, 24.683907>,  <28.607651, 36.532986, 24.828506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406990, 36.687084, 24.683907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.257097, 36.963009, 24.931690>,  <29.167162, 37.128563, 25.080360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.257097, 36.963009, 24.931690>,  <29.406990, 36.687084, 24.683907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257097, 36.963009, 24.931690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577172, -0.349315, 0.738140,
		0.725566, 0.634142, -0.267242,
		-0.374734, 0.689814, 0.619460,
		29.144676, 37.169952, 25.117529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977613, 36.744011, 25.108639>,  <29.406990, 36.687084, 24.683907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977613, 36.744011, 25.108639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.713963, 36.965054, 25.312670>,  <29.555773, 37.097679, 25.435089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.713963, 36.965054, 25.312670>,  <29.977613, 36.744011, 25.108639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713963, 36.965054, 25.312670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514481, -0.163363, 0.841797,
		0.548509, 0.817277, -0.176627,
		-0.659127, 0.552604, 0.510079,
		29.516224, 37.130836, 25.465694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404396, 37.266113, 25.608795>,  <29.977613, 36.744011, 25.108639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404396, 37.266113, 25.608795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.044878, 37.198109, 25.770420>,  <29.829168, 37.157307, 25.867395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.044878, 37.198109, 25.770420>,  <30.404396, 37.266113, 25.608795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044878, 37.198109, 25.770420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435828, -0.247403, 0.865359,
		-0.047152, 0.953881, 0.296458,
		-0.898794, -0.170008, 0.404063,
		29.775240, 37.147106, 25.891640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430693, 37.570473, 26.300121>,  <30.404396, 37.266113, 25.608795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430693, 37.570473, 26.300121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.127813, 37.310188, 26.322842>,  <29.946085, 37.154018, 26.336473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.127813, 37.310188, 26.322842>,  <30.430693, 37.570473, 26.300121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127813, 37.310188, 26.322842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285650, -0.251677, 0.924696,
		-0.587412, 0.716405, 0.376445,
		-0.757199, -0.650709, 0.056803,
		29.900654, 37.114975, 26.339882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018314, 37.743191, 26.900572>,  <30.430693, 37.570473, 26.300121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018314, 37.743191, 26.900572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.966686, 37.358337, 26.804541>,  <29.935709, 37.127426, 26.746922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.966686, 37.358337, 26.804541>,  <30.018314, 37.743191, 26.900572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966686, 37.358337, 26.804541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313158, -0.269262, 0.910731,
		-0.940890, 0.042364, 0.336053,
		-0.129068, -0.962135, -0.240080,
		29.927965, 37.069698, 26.732517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593077, 37.516342, 27.425228>,  <30.018314, 37.743191, 26.900572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593077, 37.516342, 27.425228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.712324, 37.173130, 27.257942>,  <29.783873, 36.967201, 27.157570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.712324, 37.173130, 27.257942>,  <29.593077, 37.516342, 27.425228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712324, 37.173130, 27.257942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069594, -0.417433, 0.906039,
		-0.951988, -0.299212, -0.064731,
		0.298119, -0.858034, -0.418215,
		29.801760, 36.915718, 27.132477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146254, 36.982071, 27.716291>,  <29.593077, 37.516342, 27.425228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146254, 36.982071, 27.716291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.459721, 36.771660, 27.584135>,  <29.647800, 36.645412, 27.504841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.459721, 36.771660, 27.584135>,  <29.146254, 36.982071, 27.716291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459721, 36.771660, 27.584135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121005, -0.392415, 0.911794,
		-0.609281, -0.754523, -0.243870,
		0.783667, -0.526029, -0.330392,
		29.694820, 36.613850, 27.485018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231426, 36.401810, 28.141657>,  <29.146254, 36.982071, 27.716291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231426, 36.401810, 28.141657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.589663, 36.403080, 27.963709>,  <29.804604, 36.403843, 27.856941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.589663, 36.403080, 27.963709>,  <29.231426, 36.401810, 28.141657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589663, 36.403080, 27.963709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377354, -0.535060, 0.755854,
		-0.235632, -0.844808, -0.480392,
		0.895590, 0.003175, -0.444869,
		29.858339, 36.404034, 27.830248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495012, 35.713009, 28.164852>,  <29.231426, 36.401810, 28.141657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495012, 35.713009, 28.164852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.810751, 35.955479, 28.125906>,  <30.000195, 36.100960, 28.102537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.810751, 35.955479, 28.125906>,  <29.495012, 35.713009, 28.164852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810751, 35.955479, 28.125906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430422, -0.433295, 0.791829,
		0.437800, -0.666936, -0.602932,
		0.789346, 0.606178, -0.097367,
		30.047554, 36.137333, 28.096695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072046, 35.265427, 28.292915>,  <29.495012, 35.713009, 28.164852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072046, 35.265427, 28.292915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.211414, 35.634628, 28.358238>,  <30.295034, 35.856148, 28.397432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.211414, 35.634628, 28.358238>,  <30.072046, 35.265427, 28.292915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211414, 35.634628, 28.358238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557169, -0.344043, 0.755776,
		0.753769, -0.172336, -0.634140,
		0.348418, 0.923003, 0.163309,
		30.315939, 35.911530, 28.407230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869301, 35.148472, 28.299822>,  <30.072046, 35.265427, 28.292915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869301, 35.148472, 28.299822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.799946, 35.487099, 28.501120>,  <30.758333, 35.690277, 28.621899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.799946, 35.487099, 28.501120>,  <30.869301, 35.148472, 28.299822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799946, 35.487099, 28.501120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579771, -0.325318, 0.747016,
		0.796117, 0.421289, -0.434411,
		-0.173388, 0.846572, 0.503242,
		30.747929, 35.741070, 28.652092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491062, 34.960865, 27.869326>,  <30.869301, 35.148472, 28.299822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491062, 34.960865, 27.869326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.387255, 34.575417, 27.894867>,  <31.324970, 34.344147, 27.910192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.387255, 34.575417, 27.894867>,  <31.491062, 34.960865, 27.869326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387255, 34.575417, 27.894867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760101, 0.163025, -0.629023,
		0.595733, -0.211777, -0.774760,
		-0.259518, -0.963625, 0.063853,
		31.309399, 34.286327, 27.914022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645269, 34.650448, 27.159334>,  <31.491062, 34.960865, 27.869326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645269, 34.650448, 27.159334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.383654, 34.385635, 27.305727>,  <31.226685, 34.226749, 27.393562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.383654, 34.385635, 27.305727>,  <31.645269, 34.650448, 27.159334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383654, 34.385635, 27.305727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528234, 0.053388, -0.847419,
		0.541479, -0.747571, -0.384626,
		-0.654041, -0.662032, 0.365984,
		31.187441, 34.187027, 27.415522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448137, 34.212395, 26.543184>,  <31.645269, 34.650448, 27.159334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448137, 34.212395, 26.543184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.147417, 34.162193, 26.802120>,  <30.966986, 34.132072, 26.957481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.147417, 34.162193, 26.802120>,  <31.448137, 34.212395, 26.543184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147417, 34.162193, 26.802120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645335, -0.061589, -0.761413,
		0.135431, -0.990179, -0.034691,
		-0.751798, -0.125506, 0.647339,
		30.921877, 34.124542, 26.996323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058609, 33.632057, 26.297594>,  <31.448137, 34.212395, 26.543184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058609, 33.632057, 26.297594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.811693, 33.827244, 26.544445>,  <30.663544, 33.944355, 26.692554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.811693, 33.827244, 26.544445>,  <31.058609, 33.632057, 26.297594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811693, 33.827244, 26.544445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706129, 0.002233, -0.708080,
		-0.346898, -0.872859, 0.343190,
		-0.617287, 0.487967, 0.617126,
		30.626507, 33.973633, 26.729584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428221, 33.180237, 26.340452>,  <31.058609, 33.632057, 26.297594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428221, 33.180237, 26.340452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.314743, 33.552177, 26.434174>,  <30.246656, 33.775341, 26.490406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.314743, 33.552177, 26.434174>,  <30.428221, 33.180237, 26.340452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314743, 33.552177, 26.434174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705951, -0.037160, -0.707285,
		-0.648962, -0.366059, 0.666970,
		-0.283692, 0.929850, 0.234304,
		30.229635, 33.831131, 26.504465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711428, 33.215244, 26.216009>,  <30.428221, 33.180237, 26.340452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711428, 33.215244, 26.216009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.751110, 33.609936, 26.267426>,  <29.774920, 33.846752, 26.298275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.751110, 33.609936, 26.267426>,  <29.711428, 33.215244, 26.216009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751110, 33.609936, 26.267426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601693, 0.162370, -0.782049,
		-0.792542, 0.000242, 0.609817,
		0.099205, 0.986730, 0.128539,
		29.780872, 33.905956, 26.305986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013945, 33.565269, 26.403620>,  <29.711428, 33.215244, 26.216009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013945, 33.565269, 26.403620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.255032, 33.830860, 26.226593>,  <29.399685, 33.990215, 26.120377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.255032, 33.830860, 26.226593>,  <29.013945, 33.565269, 26.403620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255032, 33.830860, 26.226593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730939, 0.236920, -0.639998,
		-0.320091, 0.709227, 0.628123,
		0.602719, 0.663977, -0.442566,
		29.435846, 34.030052, 26.093822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686211, 34.195786, 26.401787>,  <29.013945, 33.565269, 26.403620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686211, 34.195786, 26.401787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.951345, 34.223316, 26.103550>,  <29.110426, 34.239834, 25.924608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.951345, 34.223316, 26.103550>,  <28.686211, 34.195786, 26.401787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951345, 34.223316, 26.103550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732463, 0.266237, -0.626591,
		0.155380, 0.961447, 0.226883,
		0.662839, 0.068824, -0.745593,
		29.150196, 34.243965, 25.879871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372469, 34.724762, 25.920084>,  <28.686211, 34.195786, 26.401787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372469, 34.724762, 25.920084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.662666, 34.566074, 25.695131>,  <28.836784, 34.470863, 25.560160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.662666, 34.566074, 25.695131>,  <28.372469, 34.724762, 25.920084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662666, 34.566074, 25.695131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539414, 0.179717, -0.822639,
		0.427425, 0.900176, -0.083611,
		0.725493, -0.396718, -0.562383,
		28.880314, 34.447060, 25.526417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525192, 35.250031, 25.444555>,  <28.372469, 34.724762, 25.920084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525192, 35.250031, 25.444555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.659258, 34.912975, 25.275972>,  <28.739697, 34.710743, 25.174824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.659258, 34.912975, 25.275972>,  <28.525192, 35.250031, 25.444555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659258, 34.912975, 25.275972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380935, 0.287935, -0.878625,
		0.861715, 0.455031, -0.224485,
		0.335164, -0.842639, -0.421456,
		28.759808, 34.660183, 25.149536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993301, 35.362915, 24.920971>,  <28.525192, 35.250031, 25.444555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993301, 35.362915, 24.920971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.850037, 34.999031, 24.836918>,  <28.764078, 34.780701, 24.786486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.850037, 34.999031, 24.836918>,  <28.993301, 35.362915, 24.920971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850037, 34.999031, 24.836918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229146, 0.303829, -0.924760,
		0.905104, -0.283062, -0.317275,
		-0.358161, -0.909706, -0.210134,
		28.742588, 34.726120, 24.773878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190273, 35.208202, 24.269508>,  <28.993301, 35.362915, 24.920971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190273, 35.208202, 24.269508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.897524, 34.936874, 24.295570>,  <28.721874, 34.774078, 24.311207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.897524, 34.936874, 24.295570>,  <29.190273, 35.208202, 24.269508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897524, 34.936874, 24.295570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173570, 0.093103, -0.980411,
		0.658963, -0.728848, -0.185875,
		-0.731876, -0.678316, 0.065154,
		28.677961, 34.733379, 24.315117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314056, 34.814449, 23.779827>,  <29.190273, 35.208202, 24.269508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314056, 34.814449, 23.779827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.926306, 34.747879, 23.852068>,  <28.693655, 34.707939, 23.895412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.926306, 34.747879, 23.852068>,  <29.314056, 34.814449, 23.779827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926306, 34.747879, 23.852068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220527, 0.266239, -0.938341,
		0.108076, -0.949432, -0.294786,
		-0.969375, -0.166420, 0.180602,
		28.635494, 34.697952, 23.906248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104742, 34.480492, 23.211193>,  <29.314056, 34.814449, 23.779827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104742, 34.480492, 23.211193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.750603, 34.599754, 23.353886>,  <28.538118, 34.671310, 23.439501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.750603, 34.599754, 23.353886>,  <29.104742, 34.480492, 23.211193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750603, 34.599754, 23.353886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235844, 0.373226, -0.897262,
		-0.400666, -0.878524, -0.260117,
		-0.885350, 0.298156, 0.356734,
		28.484999, 34.689201, 23.460905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919735, 33.727421, 23.039080>,  <29.104742, 34.480492, 23.211193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919735, 33.727421, 23.039080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.097038, 33.526756, 22.741930>,  <29.203421, 33.406357, 22.563641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.097038, 33.526756, 22.741930>,  <28.919735, 33.727421, 23.039080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097038, 33.526756, 22.741930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490317, -0.558079, 0.669431,
		-0.750407, -0.660975, -0.001403,
		0.443260, -0.501657, -0.742873,
		29.230017, 33.376259, 22.519068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929544, 32.966656, 23.225834>,  <28.919735, 33.727421, 23.039080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929544, 32.966656, 23.225834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.222321, 33.048306, 22.965803>,  <29.397985, 33.097298, 22.809786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.222321, 33.048306, 22.965803>,  <28.929544, 32.966656, 23.225834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222321, 33.048306, 22.965803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638032, -0.540157, 0.548767,
		-0.239123, -0.816433, -0.525602,
		0.731939, 0.204128, -0.650075,
		29.441902, 33.109543, 22.770781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177811, 32.286144, 22.962162>,  <28.929544, 32.966656, 23.225834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177811, 32.286144, 22.962162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.471476, 32.555557, 22.927864>,  <29.647675, 32.717205, 22.907286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.471476, 32.555557, 22.927864>,  <29.177811, 32.286144, 22.962162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471476, 32.555557, 22.927864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557380, -0.525747, 0.642586,
		0.387726, -0.519555, -0.761401,
		0.734163, 0.673537, -0.085744,
		29.691725, 32.757618, 22.902142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773705, 31.882294, 23.051281>,  <29.177811, 32.286144, 22.962162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773705, 31.882294, 23.051281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.941031, 32.245579, 23.056368>,  <30.041426, 32.463551, 23.059420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.941031, 32.245579, 23.056368>,  <29.773705, 31.882294, 23.051281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941031, 32.245579, 23.056368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745370, -0.351242, 0.566615,
		0.519074, -0.227545, -0.823884,
		0.418313, 0.908214, 0.012715,
		30.066525, 32.518044, 23.060183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556780, 31.833107, 22.861170>,  <29.773705, 31.882294, 23.051281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556780, 31.833107, 22.861170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.489162, 32.159756, 23.081915>,  <30.448591, 32.355743, 23.214361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.489162, 32.159756, 23.081915>,  <30.556780, 31.833107, 22.861170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489162, 32.159756, 23.081915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708985, -0.288203, 0.643645,
		0.684663, 0.500067, -0.530254,
		-0.169045, 0.816622, 0.551862,
		30.438450, 32.404743, 23.247473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233503, 31.913977, 23.139141>,  <30.556780, 31.833107, 22.861170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233503, 31.913977, 23.139141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.009804, 32.149418, 23.372648>,  <30.875584, 32.290684, 23.512753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.009804, 32.149418, 23.372648>,  <31.233503, 31.913977, 23.139141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009804, 32.149418, 23.372648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584792, -0.219009, 0.781059,
		0.587585, 0.778190, -0.221731,
		-0.559251, 0.588605, 0.583766,
		30.842028, 32.326000, 23.547777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666824, 32.356297, 23.504000>,  <31.233503, 31.913977, 23.139141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666824, 32.356297, 23.504000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.335148, 32.366314, 23.727360>,  <31.136141, 32.372326, 23.861376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.335148, 32.366314, 23.727360>,  <31.666824, 32.356297, 23.504000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335148, 32.366314, 23.727360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502455, -0.404299, 0.764252,
		0.244904, 0.914284, 0.322657,
		-0.829193, 0.025048, 0.558401,
		31.086390, 32.373829, 23.894880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915051, 32.673447, 24.144712>,  <31.666824, 32.356297, 23.504000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915051, 32.673447, 24.144712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.587193, 32.460907, 24.230358>,  <31.390478, 32.333382, 24.281746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.587193, 32.460907, 24.230358>,  <31.915051, 32.673447, 24.144712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587193, 32.460907, 24.230358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448352, -0.362343, 0.817122,
		-0.356595, 0.765750, 0.535225,
		-0.819646, -0.531351, 0.214115,
		31.341299, 32.301502, 24.294592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988993, 32.596737, 24.843458>,  <31.915051, 32.673447, 24.144712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988993, 32.596737, 24.843458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.690180, 32.339108, 24.777590>,  <31.510893, 32.184532, 24.738068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.690180, 32.339108, 24.777590>,  <31.988993, 32.596737, 24.843458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690180, 32.339108, 24.777590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176961, -0.431425, 0.884623,
		-0.640804, 0.631700, 0.436263,
		-0.747031, -0.644071, -0.164672,
		31.466070, 32.145885, 24.728188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406239, 32.750458, 25.286541>,  <31.988993, 32.596737, 24.843458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406239, 32.750458, 25.286541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.371597, 32.371853, 25.162207>,  <31.350813, 32.144691, 25.087606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.371597, 32.371853, 25.162207>,  <31.406239, 32.750458, 25.286541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371597, 32.371853, 25.162207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258443, -0.322672, 0.910544,
		-0.962137, -0.001479, 0.272563,
		-0.086602, -0.946510, -0.310837,
		31.345617, 32.087898, 25.068956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371496, 32.446198, 25.910290>,  <31.406239, 32.750458, 25.286541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371496, 32.446198, 25.910290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.426056, 32.120701, 25.684292>,  <31.458792, 31.925404, 25.548693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.426056, 32.120701, 25.684292>,  <31.371496, 32.446198, 25.910290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426056, 32.120701, 25.684292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332451, -0.499651, 0.799891,
		-0.933205, -0.296937, 0.202377,
		0.136399, -0.813742, -0.564994,
		31.466976, 31.876577, 25.514793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126446, 31.843859, 26.314299>,  <31.371496, 32.446198, 25.910290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126446, 31.843859, 26.314299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.393625, 31.732567, 26.038202>,  <31.553932, 31.665792, 25.872545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.393625, 31.732567, 26.038202>,  <31.126446, 31.843859, 26.314299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393625, 31.732567, 26.038202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548275, -0.443185, 0.709212,
		-0.503230, -0.852158, -0.143477,
		0.667948, -0.278232, -0.690241,
		31.594009, 31.649097, 25.831129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245531, 31.116669, 26.471096>,  <31.126446, 31.843859, 26.314299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245531, 31.116669, 26.471096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.548252, 31.241743, 26.241495>,  <31.729885, 31.316788, 26.103735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.548252, 31.241743, 26.241495>,  <31.245531, 31.116669, 26.471096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548252, 31.241743, 26.241495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630095, -0.582586, 0.513394,
		-0.173874, -0.750213, -0.637925,
		0.756801, 0.312687, -0.574002,
		31.775293, 31.335548, 26.069294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658684, 30.539890, 26.379166>,  <31.245531, 31.116669, 26.471096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658684, 30.539890, 26.379166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.917057, 30.823410, 26.265760>,  <32.072083, 30.993521, 26.197718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.917057, 30.823410, 26.265760>,  <31.658684, 30.539890, 26.379166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917057, 30.823410, 26.265760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714423, -0.430387, 0.551695,
		0.269021, -0.558904, -0.784382,
		0.645931, 0.708798, -0.283511,
		32.110836, 31.036049, 26.180708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.919434, 35.978928, 19.508667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.767771, 36.104286, 19.856926>,  <31.676773, 36.179501, 20.065882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.767771, 36.104286, 19.856926>,  <31.919434, 35.978928, 19.508667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767771, 36.104286, 19.856926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915454, 0.010078, -0.402297,
		-0.134852, -0.949570, 0.283077,
		-0.379156, 0.313395, 0.870646,
		31.654024, 36.198303, 20.118120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301208, 35.459114, 19.728159>,  <31.919434, 35.978928, 19.508667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301208, 35.459114, 19.728159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.250166, 35.814724, 19.904045>,  <31.219540, 36.028091, 20.009577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.250166, 35.814724, 19.904045>,  <31.301208, 35.459114, 19.728159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250166, 35.814724, 19.904045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940228, 0.032700, -0.338973,
		-0.315735, -0.456687, 0.831715,
		-0.127608, 0.889026, 0.439714,
		31.211884, 36.081432, 20.035959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662275, 35.374866, 19.992659>,  <31.301208, 35.459114, 19.728159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662275, 35.374866, 19.992659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.709764, 35.772011, 19.987890>,  <30.738258, 36.010296, 19.985029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.709764, 35.772011, 19.987890>,  <30.662275, 35.374866, 19.992659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709764, 35.772011, 19.987890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942316, 0.108877, -0.316523,
		-0.312964, 0.048813, 0.948510,
		0.118721, 0.992856, -0.011923,
		30.745380, 36.069866, 19.984314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949041, 35.664356, 20.109581>,  <30.662275, 35.374866, 19.992659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949041, 35.664356, 20.109581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.158489, 35.963238, 19.945869>,  <30.284157, 36.142567, 19.847643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.158489, 35.963238, 19.945869>,  <29.949041, 35.664356, 20.109581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158489, 35.963238, 19.945869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830628, 0.340931, -0.440253,
		-0.189423, 0.570484, 0.799166,
		0.523618, 0.747204, -0.409280,
		30.315575, 36.187401, 19.823086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611717, 36.228954, 20.262856>,  <29.949041, 35.664356, 20.109581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611717, 36.228954, 20.262856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.833347, 36.324287, 19.943808>,  <29.966326, 36.381489, 19.752378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.833347, 36.324287, 19.943808>,  <29.611717, 36.228954, 20.262856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833347, 36.324287, 19.943808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792367, 0.444781, -0.417522,
		0.255256, 0.863346, 0.435290,
		0.554075, 0.238335, -0.797620,
		29.999569, 36.395786, 19.704521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376120, 36.875309, 20.142744>,  <29.611717, 36.228954, 20.262856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376120, 36.875309, 20.142744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.563450, 36.731976, 19.819691>,  <29.675848, 36.645977, 19.625858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.563450, 36.731976, 19.819691>,  <29.376120, 36.875309, 20.142744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563450, 36.731976, 19.819691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817945, 0.169832, -0.549657,
		0.334122, 0.918017, -0.213561,
		0.468325, -0.358333, -0.807632,
		29.703947, 36.624477, 19.577402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356298, 37.428631, 19.581957>,  <29.376120, 36.875309, 20.142744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356298, 37.428631, 19.581957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.382414, 37.066338, 19.414442>,  <29.398083, 36.848961, 19.313932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.382414, 37.066338, 19.414442>,  <29.356298, 37.428631, 19.581957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382414, 37.066338, 19.414442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810043, 0.196978, -0.552294,
		0.582724, 0.375295, -0.720823,
		0.065287, -0.905733, -0.418789,
		29.402000, 36.794617, 19.288805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436871, 37.649155, 18.883562>,  <29.356298, 37.428631, 19.581957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436871, 37.649155, 18.883562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.294676, 37.275604, 18.899109>,  <29.209358, 37.051476, 18.908438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.294676, 37.275604, 18.899109>,  <29.436871, 37.649155, 18.883562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294676, 37.275604, 18.899109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774617, 0.271084, -0.571387,
		0.523066, -0.233228, -0.819760,
		-0.355487, -0.933873, 0.038868,
		29.188030, 36.995441, 18.910769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323917, 37.525238, 18.188816>,  <29.436871, 37.649155, 18.883562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323917, 37.525238, 18.188816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.119024, 37.255169, 18.401138>,  <28.996088, 37.093128, 18.528532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.119024, 37.255169, 18.401138>,  <29.323917, 37.525238, 18.188816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119024, 37.255169, 18.401138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823413, 0.210379, -0.527002,
		0.244153, -0.707015, -0.663716,
		-0.512230, -0.675182, 0.530801,
		28.965355, 37.052616, 18.560381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925495, 37.079334, 17.685671>,  <29.323917, 37.525238, 18.188816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925495, 37.079334, 17.685671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.744328, 37.026699, 18.038385>,  <28.635628, 36.995117, 18.250015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.744328, 37.026699, 18.038385>,  <28.925495, 37.079334, 17.685671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744328, 37.026699, 18.038385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860098, 0.324884, -0.393295,
		-0.234725, -0.936554, -0.260327,
		-0.452918, -0.131591, 0.881787,
		28.608452, 36.987221, 18.302921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169941, 36.854404, 17.577139>,  <28.925495, 37.079334, 17.685671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169941, 36.854404, 17.577139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.160072, 37.007927, 17.946373>,  <28.154150, 37.100040, 18.167913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.160072, 37.007927, 17.946373>,  <28.169941, 36.854404, 17.577139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160072, 37.007927, 17.946373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860066, 0.462528, -0.215301,
		-0.509586, -0.799225, 0.318686,
		-0.024673, 0.383805, 0.923084,
		28.152670, 37.123070, 18.223299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466642, 36.797668, 17.795593>,  <28.169941, 36.854404, 17.577139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466642, 36.797668, 17.795593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.619896, 37.098495, 18.010109>,  <27.711847, 37.278992, 18.138819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.619896, 37.098495, 18.010109>,  <27.466642, 36.797668, 17.795593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619896, 37.098495, 18.010109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876450, 0.479291, -0.045984,
		-0.291621, -0.452412, 0.842781,
		0.383134, 0.752066, 0.536288,
		27.734837, 37.324116, 18.170996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261276, 36.608509, 17.167547>,  <27.466642, 36.797668, 17.795593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261276, 36.608509, 17.167547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.908304, 36.782616, 17.238939>,  <26.696520, 36.887081, 17.281775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.908304, 36.782616, 17.238939>,  <27.261276, 36.608509, 17.167547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908304, 36.782616, 17.238939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435299, -0.899347, 0.041111,
		0.178410, -0.041414, 0.983084,
		-0.882431, 0.435270, 0.178480,
		26.643576, 36.913197, 17.292482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852396, 36.176449, 17.656828>,  <27.261276, 36.608509, 17.167547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852396, 36.176449, 17.656828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.633207, 36.382801, 17.393438>,  <26.501694, 36.506611, 17.235405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.633207, 36.382801, 17.393438>,  <26.852396, 36.176449, 17.656828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633207, 36.382801, 17.393438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451265, -0.845124, -0.286575,
		-0.704332, 0.140111, 0.695906,
		-0.547974, 0.515882, -0.658475,
		26.468815, 36.537567, 17.195896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600346, 35.790852, 17.504313>,  <26.852396, 36.176449, 17.656828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600346, 35.790852, 17.504313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.278248, 35.771187, 17.740673>,  <27.084990, 35.759388, 17.882490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.278248, 35.771187, 17.740673>,  <27.600346, 35.790852, 17.504313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278248, 35.771187, 17.740673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562797, -0.377088, 0.735571,
		0.186656, 0.924871, 0.331319,
		-0.805245, -0.049166, 0.590901,
		27.036674, 35.756435, 17.917944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718529, 36.160694, 18.156797>,  <27.600346, 35.790852, 17.504313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718529, 36.160694, 18.156797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.438637, 35.881027, 18.215504>,  <27.270702, 35.713226, 18.250727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.438637, 35.881027, 18.215504>,  <27.718529, 36.160694, 18.156797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438637, 35.881027, 18.215504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488802, -0.318726, 0.812088,
		-0.521011, 0.639979, 0.564778,
		-0.699729, -0.699171, 0.146763,
		27.228718, 35.671276, 18.259533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522507, 36.225685, 18.806698>,  <27.718529, 36.160694, 18.156797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522507, 36.225685, 18.806698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.446468, 35.847752, 18.699995>,  <27.400846, 35.620991, 18.635975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.446468, 35.847752, 18.699995>,  <27.522507, 36.225685, 18.806698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446468, 35.847752, 18.699995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385305, -0.321708, 0.864896,
		-0.902997, 0.061631, 0.425203,
		-0.190095, -0.944831, -0.266755,
		27.389441, 35.564301, 18.619968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260300, 35.894455, 19.455803>,  <27.522507, 36.225685, 18.806698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260300, 35.894455, 19.455803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.332918, 35.561348, 19.246599>,  <27.376490, 35.361485, 19.121077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.332918, 35.561348, 19.246599>,  <27.260300, 35.894455, 19.455803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332918, 35.561348, 19.246599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156652, -0.500565, 0.851408,
		-0.970826, -0.236498, 0.039580,
		0.181544, -0.832769, -0.523009,
		27.387381, 35.311516, 19.089697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881321, 35.368088, 19.772877>,  <27.260300, 35.894455, 19.455803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881321, 35.368088, 19.772877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.194771, 35.216591, 19.575905>,  <27.382841, 35.125690, 19.457722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.194771, 35.216591, 19.575905>,  <26.881321, 35.368088, 19.772877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194771, 35.216591, 19.575905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316361, -0.438894, 0.841004,
		-0.534651, -0.814815, -0.224107,
		0.783622, -0.378745, -0.492431,
		27.429857, 35.102966, 19.428175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013008, 34.693150, 19.942345>,  <26.881321, 35.368088, 19.772877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013008, 34.693150, 19.942345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.369808, 34.793415, 19.791878>,  <27.583889, 34.853577, 19.701597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.369808, 34.793415, 19.791878>,  <27.013008, 34.693150, 19.942345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369808, 34.793415, 19.791878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451803, -0.521044, 0.724146,
		-0.014479, -0.815891, -0.578025,
		0.892000, 0.250669, -0.376166,
		27.637409, 34.868614, 19.679028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408480, 34.134289, 20.131168>,  <27.013008, 34.693150, 19.942345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408480, 34.134289, 20.131168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.699749, 34.392200, 20.038198>,  <27.874512, 34.546947, 19.982416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.699749, 34.392200, 20.038198>,  <27.408480, 34.134289, 20.131168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699749, 34.392200, 20.038198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649222, -0.540170, 0.535470,
		0.219712, -0.540810, -0.811943,
		0.728174, 0.644780, -0.232424,
		27.918201, 34.585636, 19.968472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954254, 33.752106, 19.845755>,  <27.408480, 34.134289, 20.131168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954254, 33.752106, 19.845755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.128706, 34.088375, 19.974165>,  <28.233377, 34.290138, 20.051210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.128706, 34.088375, 19.974165>,  <27.954254, 33.752106, 19.845755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128706, 34.088375, 19.974165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605298, -0.538033, 0.586630,
		0.665888, -0.061529, -0.743510,
		0.436127, 0.840675, 0.321026,
		28.259544, 34.340576, 20.070473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635845, 33.571991, 19.877153>,  <27.954254, 33.752106, 19.845755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635845, 33.571991, 19.877153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.607727, 33.909969, 20.089237>,  <28.590857, 34.112759, 20.216488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.607727, 33.909969, 20.089237>,  <28.635845, 33.571991, 19.877153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607727, 33.909969, 20.089237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619205, -0.379763, 0.687289,
		0.782077, 0.376621, -0.496500,
		-0.070295, 0.844948, 0.530209,
		28.586639, 34.163452, 20.248301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339365, 33.731937, 20.030594>,  <28.635845, 33.571991, 19.877153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339365, 33.731937, 20.030594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.105478, 33.930862, 20.286964>,  <28.965147, 34.050217, 20.440786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.105478, 33.930862, 20.286964>,  <29.339365, 33.731937, 20.030594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105478, 33.930862, 20.286964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551837, -0.335272, 0.763589,
		0.594627, 0.800171, -0.078396,
		-0.584718, 0.497312, 0.640926,
		28.930063, 34.080055, 20.479242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751810, 33.908596, 20.595291>,  <29.339365, 33.731937, 20.030594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751810, 33.908596, 20.595291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.392973, 33.964428, 20.762976>,  <29.177670, 33.997925, 20.863586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.392973, 33.964428, 20.762976>,  <29.751810, 33.908596, 20.595291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392973, 33.964428, 20.762976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396415, -0.164756, 0.903167,
		0.195129, 0.976408, 0.092471,
		-0.897095, 0.139578, 0.419212,
		29.123844, 34.006302, 20.888739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865608, 34.248474, 21.342354>,  <29.751810, 33.908596, 20.595291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865608, 34.248474, 21.342354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.504742, 34.076588, 21.357565>,  <29.288221, 33.973457, 21.366692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.504742, 34.076588, 21.357565>,  <29.865608, 34.248474, 21.342354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504742, 34.076588, 21.357565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205001, -0.349483, 0.914241,
		-0.379570, 0.832592, 0.403382,
		-0.902165, -0.429712, 0.038029,
		29.234093, 33.947674, 21.368973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474039, 34.578629, 21.870399>,  <29.865608, 34.248474, 21.342354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474039, 34.578629, 21.870399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.335314, 34.209034, 21.805937>,  <29.252079, 33.987278, 21.767260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.335314, 34.209034, 21.805937>,  <29.474039, 34.578629, 21.870399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335314, 34.209034, 21.805937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312198, -0.275747, 0.909118,
		-0.884450, 0.264983, 0.384100,
		-0.346815, -0.923985, -0.161157,
		29.231270, 33.931839, 21.757589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221340, 34.320190, 22.506907>,  <29.474039, 34.578629, 21.870399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221340, 34.320190, 22.506907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.239239, 33.990757, 22.280737>,  <29.249977, 33.793095, 22.145035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.239239, 33.990757, 22.280737>,  <29.221340, 34.320190, 22.506907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239239, 33.990757, 22.280737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444651, -0.490415, 0.749519,
		-0.894585, -0.284954, 0.344265,
		0.044745, -0.823586, -0.565423,
		29.252663, 33.743683, 22.111111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469341, 34.182652, 22.637421>,  <29.221340, 34.320190, 22.506907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469341, 34.182652, 22.637421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.318344, 34.468613, 22.872849>,  <28.227745, 34.640190, 23.014105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.318344, 34.468613, 22.872849>,  <28.469341, 34.182652, 22.637421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318344, 34.468613, 22.872849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488459, 0.386251, -0.782443,
		-0.786706, -0.582859, 0.203394,
		-0.377493, 0.714902, 0.588569,
		28.205095, 34.683083, 23.049419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702856, 34.182247, 22.656992>,  <28.469341, 34.182652, 22.637421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702856, 34.182247, 22.656992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.799292, 34.556026, 22.761816>,  <27.857153, 34.780296, 22.824711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.799292, 34.556026, 22.761816>,  <27.702856, 34.182247, 22.656992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799292, 34.556026, 22.761816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441401, 0.346059, -0.827894,
		-0.864316, 0.083922, 0.495898,
		0.241088, 0.934452, 0.262061,
		27.871618, 34.836361, 22.840435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065891, 34.614967, 22.467764>,  <27.702856, 34.182247, 22.656992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065891, 34.614967, 22.467764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.358397, 34.884315, 22.511261>,  <27.533899, 35.045925, 22.537359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.358397, 34.884315, 22.511261>,  <27.065891, 34.614967, 22.467764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358397, 34.884315, 22.511261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446803, 0.593346, -0.669558,
		-0.515383, 0.441036, 0.734756,
		0.731264, 0.673370, 0.108745,
		27.577776, 35.086327, 22.543884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738173, 35.285042, 22.699051>,  <27.065891, 34.614967, 22.467764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738173, 35.285042, 22.699051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.082920, 35.378693, 22.519112>,  <27.289768, 35.434883, 22.411148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.082920, 35.378693, 22.519112>,  <26.738173, 35.285042, 22.699051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082920, 35.378693, 22.519112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442453, 0.780633, -0.441415,
		0.247818, 0.579479, 0.776396,
		0.861871, 0.234128, -0.449847,
		27.341482, 35.448933, 22.384157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622196, 35.941551, 22.499702>,  <26.738173, 35.285042, 22.699051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622196, 35.941551, 22.499702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.971003, 35.875961, 22.315226>,  <27.180286, 35.836605, 22.204540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.971003, 35.875961, 22.315226>,  <26.622196, 35.941551, 22.499702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971003, 35.875961, 22.315226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256751, 0.648952, -0.716198,
		0.416732, 0.742948, 0.523796,
		0.872017, -0.163977, -0.461192,
		27.232607, 35.826767, 22.176868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874729, 36.570179, 22.300964>,  <26.622196, 35.941551, 22.499702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874729, 36.570179, 22.300964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.034208, 36.293976, 22.059557>,  <27.129896, 36.128254, 21.914713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.034208, 36.293976, 22.059557>,  <26.874729, 36.570179, 22.300964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034208, 36.293976, 22.059557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143168, 0.603153, -0.784672,
		0.905837, 0.399253, 0.141618,
		0.398700, -0.690510, -0.603519,
		27.153818, 36.086823, 21.878502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429113, 36.969967, 21.911512>,  <26.874729, 36.570179, 22.300964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429113, 36.969967, 21.911512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.311987, 36.651321, 21.699978>,  <27.241711, 36.460136, 21.573057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.311987, 36.651321, 21.699978>,  <27.429113, 36.969967, 21.911512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311987, 36.651321, 21.699978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231777, 0.595719, -0.769024,
		0.927652, -0.102610, -0.359072,
		-0.292816, -0.796612, -0.528837,
		27.224142, 36.412338, 21.541327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636799, 37.717785, 21.690479>,  <27.429113, 36.969967, 21.911512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636799, 37.717785, 21.690479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.441179, 38.058228, 21.766844>,  <27.323809, 38.262493, 21.812662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.441179, 38.058228, 21.766844>,  <27.636799, 37.717785, 21.690479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441179, 38.058228, 21.766844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337854, -0.016952, 0.941046,
		0.804169, 0.524716, -0.279260,
		-0.489047, 0.851109, 0.190910,
		27.294466, 38.313560, 21.824118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009726, 37.952023, 22.120182>,  <27.636799, 37.717785, 21.690479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009726, 37.952023, 22.120182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.724184, 38.218884, 22.205338>,  <27.552860, 38.379002, 22.256430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.724184, 38.218884, 22.205338>,  <28.009726, 37.952023, 22.120182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724184, 38.218884, 22.205338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361151, 0.090268, 0.928128,
		0.599987, 0.739431, -0.305381,
		-0.713853, 0.667153, 0.212887,
		27.510029, 38.419029, 22.269203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330215, 38.621861, 22.191933>,  <28.009726, 37.952023, 22.120182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330215, 38.621861, 22.191933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.999758, 38.547657, 22.404751>,  <27.801483, 38.503136, 22.532442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.999758, 38.547657, 22.404751>,  <28.330215, 38.621861, 22.191933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999758, 38.547657, 22.404751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529212, 0.068720, 0.845702,
		-0.193448, 0.980237, 0.041401,
		-0.826143, -0.185509, 0.532047,
		27.751915, 38.492004, 22.564365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458158, 38.911800, 22.844688>,  <28.330215, 38.621861, 22.191933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458158, 38.911800, 22.844688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.131073, 38.694622, 22.921169>,  <27.934822, 38.564316, 22.967058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.131073, 38.694622, 22.921169>,  <28.458158, 38.911800, 22.844688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131073, 38.694622, 22.921169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343586, -0.193868, 0.918892,
		-0.461837, 0.817085, 0.345076,
		-0.817713, -0.542942, 0.191204,
		27.885759, 38.531738, 22.978531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347605, 39.062763, 23.530312>,  <28.458158, 38.911800, 22.844688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347605, 39.062763, 23.530312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.141174, 38.726158, 23.466404>,  <28.017317, 38.524197, 23.428059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.141174, 38.726158, 23.466404>,  <28.347605, 39.062763, 23.530312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141174, 38.726158, 23.466404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213616, -0.307082, 0.927399,
		-0.829478, 0.444479, 0.338238,
		-0.516076, -0.841510, -0.159770,
		27.986351, 38.473705, 23.418472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805195, 38.941944, 24.060686>,  <28.347605, 39.062763, 23.530312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805195, 38.941944, 24.060686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.922808, 38.581738, 23.932549>,  <27.993376, 38.365616, 23.855665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.922808, 38.581738, 23.932549>,  <27.805195, 38.941944, 24.060686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922808, 38.581738, 23.932549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209428, -0.266315, 0.940860,
		-0.932569, -0.343733, 0.110287,
		0.294033, -0.900513, -0.320344,
		28.011017, 38.311584, 23.836445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467682, 38.388935, 24.487801>,  <27.805195, 38.941944, 24.060686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467682, 38.388935, 24.487801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.799036, 38.226189, 24.333796>,  <27.997849, 38.128540, 24.241392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.799036, 38.226189, 24.333796>,  <27.467682, 38.388935, 24.487801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799036, 38.226189, 24.333796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264779, -0.321288, 0.909212,
		-0.493629, -0.855122, -0.158421,
		0.828386, -0.406866, -0.385015,
		28.047552, 38.104130, 24.218290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.447901, 40.122864, 18.890148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486107, 39.726421, 18.853071>,  <28.509031, 39.488556, 18.830826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486107, 39.726421, 18.853071>,  <28.447901, 40.122864, 18.890148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486107, 39.726421, 18.853071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726454, 0.005743, 0.687192,
		-0.680545, -0.132975, 0.720539,
		0.095518, -0.991103, -0.092691,
		28.514763, 39.429092, 18.825264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430227, 39.889069, 19.574165>,  <28.447901, 40.122864, 18.890148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430227, 39.889069, 19.574165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576103, 39.576550, 19.371555>,  <28.663628, 39.389038, 19.249989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576103, 39.576550, 19.371555>,  <28.430227, 39.889069, 19.574165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576103, 39.576550, 19.371555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550708, -0.257663, 0.793934,
		-0.750816, -0.568486, 0.336303,
		0.364688, -0.781303, -0.506527,
		28.685509, 39.342159, 19.219597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407591, 39.288357, 20.023756>,  <28.430227, 39.889069, 19.574165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407591, 39.288357, 20.023756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691803, 39.204906, 19.754944>,  <28.862329, 39.154835, 19.593657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691803, 39.204906, 19.754944>,  <28.407591, 39.288357, 20.023756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691803, 39.204906, 19.754944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645642, -0.186482, 0.740521,
		-0.279814, -0.960052, 0.002197,
		0.710528, -0.208627, -0.672030,
		28.904961, 39.142319, 19.553335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809874, 38.696793, 20.206503>,  <28.407591, 39.288357, 20.023756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809874, 38.696793, 20.206503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078173, 38.895897, 19.986563>,  <29.239151, 39.015358, 19.854599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078173, 38.895897, 19.986563>,  <28.809874, 38.696793, 20.206503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078173, 38.895897, 19.986563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664307, -0.073496, 0.743837,
		0.329839, -0.864196, -0.379961,
		0.670747, 0.497758, -0.549850,
		29.279396, 39.045223, 19.821608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384068, 38.250359, 20.257370>,  <28.809874, 38.696793, 20.206503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384068, 38.250359, 20.257370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510191, 38.615078, 20.152143>,  <29.585865, 38.833908, 20.089008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510191, 38.615078, 20.152143>,  <29.384068, 38.250359, 20.257370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510191, 38.615078, 20.152143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764486, -0.079810, 0.639681,
		0.562265, -0.402806, -0.722222,
		0.315308, 0.911799, -0.263065,
		29.604784, 38.888618, 20.073223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005638, 38.137539, 20.353186>,  <29.384068, 38.250359, 20.257370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005638, 38.137539, 20.353186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.982891, 38.536068, 20.327532>,  <29.969242, 38.775185, 20.312140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.982891, 38.536068, 20.327532>,  <30.005638, 38.137539, 20.353186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982891, 38.536068, 20.327532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768302, 0.084694, 0.634459,
		0.637556, -0.013192, -0.770291,
		-0.056869, 0.996320, -0.064133,
		29.965830, 38.834965, 20.308292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659014, 38.383442, 20.245230>,  <30.005638, 38.137539, 20.353186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659014, 38.383442, 20.245230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.484949, 38.709106, 20.399000>,  <30.380510, 38.904503, 20.491262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.484949, 38.709106, 20.399000>,  <30.659014, 38.383442, 20.245230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484949, 38.709106, 20.399000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736016, 0.075759, 0.672712,
		0.518570, 0.575681, -0.632200,
		-0.435162, 0.814157, 0.384424,
		30.354401, 38.953354, 20.514328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212811, 38.714649, 20.474585>,  <30.659014, 38.383442, 20.245230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212811, 38.714649, 20.474585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.922134, 38.911175, 20.666639>,  <30.747728, 39.029091, 20.781872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.922134, 38.911175, 20.666639>,  <31.212811, 38.714649, 20.474585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922134, 38.911175, 20.666639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628022, 0.191871, 0.754171,
		0.278412, 0.849584, -0.447988,
		-0.726688, 0.491316, 0.480138,
		30.704128, 39.058571, 20.810680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477791, 39.419006, 20.758459>,  <31.212811, 38.714649, 20.474585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477791, 39.419006, 20.758459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156885, 39.310753, 20.971298>,  <30.964342, 39.245800, 21.099003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156885, 39.310753, 20.971298>,  <31.477791, 39.419006, 20.758459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156885, 39.310753, 20.971298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557023, -0.018789, 0.830284,
		-0.214706, 0.962499, 0.165824,
		-0.802263, -0.270635, 0.532100,
		30.916206, 39.229561, 21.130928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349188, 39.882759, 21.197565>,  <31.477791, 39.419006, 20.758459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349188, 39.882759, 21.197565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148314, 39.588657, 21.379644>,  <31.027788, 39.412197, 21.488892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148314, 39.588657, 21.379644>,  <31.349188, 39.882759, 21.197565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148314, 39.588657, 21.379644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636275, 0.042313, 0.770301,
		-0.585630, 0.676465, 0.446578,
		-0.502186, -0.735258, 0.455198,
		30.997658, 39.368080, 21.516203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255602, 40.084305, 21.820343>,  <31.349188, 39.882759, 21.197565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255602, 40.084305, 21.820343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.192057, 39.693249, 21.875441>,  <31.153929, 39.458614, 21.908499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.192057, 39.693249, 21.875441>,  <31.255602, 40.084305, 21.820343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192057, 39.693249, 21.875441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622792, 0.009023, 0.782336,
		-0.766089, 0.210071, 0.607436,
		-0.158865, -0.977644, 0.137743,
		31.144398, 39.399956, 21.916763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988775, 40.008396, 22.544186>,  <31.255602, 40.084305, 21.820343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988775, 40.008396, 22.544186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.163651, 39.671288, 22.418579>,  <31.268576, 39.469025, 22.343216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.163651, 39.671288, 22.418579>,  <30.988775, 40.008396, 22.544186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163651, 39.671288, 22.418579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547860, -0.027337, 0.836123,
		-0.713243, -0.537580, 0.449769,
		0.437188, -0.842770, -0.314016,
		31.294807, 39.418457, 22.324375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556318, 40.056107, 23.057098>,  <30.988775, 40.008396, 22.544186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556318, 40.056107, 23.057098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.488651, 40.436790, 23.159578>,  <30.448051, 40.665199, 23.221066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.488651, 40.436790, 23.159578>,  <30.556318, 40.056107, 23.057098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488651, 40.436790, 23.159578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651456, 0.087089, -0.753671,
		-0.739586, -0.294399, 0.605262,
		-0.169168, 0.951706, 0.256198,
		30.437901, 40.722301, 23.236437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896248, 40.168953, 23.396219>,  <30.556318, 40.056107, 23.057098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896248, 40.168953, 23.396219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002144, 40.534470, 23.272995>,  <30.065681, 40.753780, 23.199060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002144, 40.534470, 23.272995>,  <29.896248, 40.168953, 23.396219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002144, 40.534470, 23.272995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797626, 0.027966, -0.602503,
		-0.541947, 0.405221, 0.736268,
		0.264738, 0.913791, -0.308059,
		30.081566, 40.808605, 23.180578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359198, 40.557285, 23.467791>,  <29.896248, 40.168953, 23.396219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359198, 40.557285, 23.467791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572857, 40.782207, 23.215284>,  <29.701052, 40.917160, 23.063782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572857, 40.782207, 23.215284>,  <29.359198, 40.557285, 23.467791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572857, 40.782207, 23.215284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742701, -0.044565, -0.668138,
		-0.403833, 0.825725, 0.393824,
		0.534147, 0.562310, -0.631264,
		29.733101, 40.950901, 23.025906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952322, 41.109791, 23.392204>,  <29.359198, 40.557285, 23.467791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952322, 41.109791, 23.392204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162477, 41.105045, 23.051893>,  <29.288570, 41.102196, 22.847706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162477, 41.105045, 23.051893>,  <28.952322, 41.109791, 23.392204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162477, 41.105045, 23.051893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794512, 0.350989, -0.495537,
		0.304495, 0.936304, 0.174978,
		0.525389, -0.011867, -0.850779,
		29.320095, 41.101486, 22.796659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795095, 41.668579, 23.021307>,  <28.952322, 41.109791, 23.392204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795095, 41.668579, 23.021307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.986334, 41.463028, 22.736393>,  <29.101076, 41.339695, 22.565445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.986334, 41.463028, 22.736393>,  <28.795095, 41.668579, 23.021307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986334, 41.463028, 22.736393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531724, 0.476131, -0.700406,
		0.699066, 0.713601, -0.045606,
		0.478096, -0.513880, -0.712286,
		29.129763, 41.308865, 22.522707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845114, 42.142982, 22.509024>,  <28.795095, 41.668579, 23.021307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845114, 42.142982, 22.509024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.879536, 41.788849, 22.326254>,  <28.900188, 41.576370, 22.216591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.879536, 41.788849, 22.326254>,  <28.845114, 42.142982, 22.509024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879536, 41.788849, 22.326254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612883, 0.314539, -0.724872,
		0.785474, 0.342421, -0.515537,
		0.086055, -0.885332, -0.456926,
		28.905352, 41.523251, 22.189177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801716, 42.321541, 21.799623>,  <28.845114, 42.142982, 22.509024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801716, 42.321541, 21.799623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.737965, 41.926678, 21.795238>,  <28.699713, 41.689758, 21.792606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.737965, 41.926678, 21.795238>,  <28.801716, 42.321541, 21.799623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737965, 41.926678, 21.795238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540088, 0.096485, -0.836060,
		0.826380, -0.127330, -0.548529,
		-0.159380, -0.987156, -0.010964,
		28.690151, 41.630531, 21.791950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846828, 42.094090, 21.078653>,  <28.801716, 42.321541, 21.799623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846828, 42.094090, 21.078653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.650110, 41.784649, 21.238497>,  <28.532080, 41.598984, 21.334402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.650110, 41.784649, 21.238497>,  <28.846828, 42.094090, 21.078653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650110, 41.784649, 21.238497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506828, -0.118842, -0.853816,
		0.708000, -0.622434, -0.333635,
		-0.491794, -0.773597, 0.399607,
		28.502571, 41.552570, 21.358379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807055, 41.536709, 20.469614>,  <28.846828, 42.094090, 21.078653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807055, 41.536709, 20.469614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518877, 41.450848, 20.733398>,  <28.345970, 41.399330, 20.891668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518877, 41.450848, 20.733398>,  <28.807055, 41.536709, 20.469614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518877, 41.450848, 20.733398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515129, -0.471028, -0.716082,
		0.464330, -0.855604, 0.228778,
		-0.720444, -0.214649, 0.659459,
		28.302744, 41.386452, 20.931236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763332, 40.776268, 20.308630>,  <28.807055, 41.536709, 20.469614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763332, 40.776268, 20.308630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447348, 40.938492, 20.492579>,  <28.257757, 41.035824, 20.602947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447348, 40.938492, 20.492579>,  <28.763332, 40.776268, 20.308630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447348, 40.938492, 20.492579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576385, -0.235348, -0.782555,
		-0.209130, -0.883258, 0.419667,
		-0.789965, 0.405545, 0.459878,
		28.210358, 41.060158, 20.630541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205299, 40.295666, 20.307985>,  <28.763332, 40.776268, 20.308630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205299, 40.295666, 20.307985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.045315, 40.662220, 20.314592>,  <27.949324, 40.882153, 20.318558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.045315, 40.662220, 20.314592>,  <28.205299, 40.295666, 20.307985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045315, 40.662220, 20.314592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673042, -0.281423, -0.683970,
		-0.622130, -0.284680, 0.729323,
		-0.399961, 0.916383, 0.016519,
		27.925327, 40.937134, 20.319548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525822, 40.091999, 20.207102>,  <28.205299, 40.295666, 20.307985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525822, 40.091999, 20.207102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546783, 40.489914, 20.172129>,  <27.559361, 40.728664, 20.151144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546783, 40.489914, 20.172129>,  <27.525822, 40.091999, 20.207102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546783, 40.489914, 20.172129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620509, -0.036164, -0.783366,
		-0.782447, 0.095306, 0.615381,
		0.052405, 0.994791, -0.087435,
		27.562506, 40.788353, 20.145899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820599, 40.362469, 20.056650>,  <27.525822, 40.091999, 20.207102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820599, 40.362469, 20.056650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068830, 40.646034, 19.922590>,  <27.217770, 40.816174, 19.842154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068830, 40.646034, 19.922590>,  <26.820599, 40.362469, 20.056650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068830, 40.646034, 19.922590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540030, 0.076486, -0.838163,
		-0.568547, 0.701140, 0.430299,
		0.620581, 0.708909, -0.335151,
		27.255005, 40.858707, 19.822044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317385, 40.893234, 19.878965>,  <26.820599, 40.362469, 20.056650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317385, 40.893234, 19.878965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.662951, 40.970726, 19.693010>,  <26.870291, 41.017220, 19.581436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.662951, 40.970726, 19.693010>,  <26.317385, 40.893234, 19.878965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662951, 40.970726, 19.693010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495594, 0.162675, -0.853184,
		-0.089662, 0.967473, 0.236549,
		0.863914, 0.193731, -0.464888,
		26.922125, 41.028847, 19.553543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355310, 40.352180, 19.492737>,  <26.317385, 40.893234, 19.878965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355310, 40.352180, 19.492737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.158728, 40.003899, 19.500046>,  <26.040777, 39.794930, 19.504431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.158728, 40.003899, 19.500046>,  <26.355310, 40.352180, 19.492737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158728, 40.003899, 19.500046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615818, -0.332600, 0.714245,
		-0.615822, 0.362275, 0.699658,
		-0.491459, -0.870709, 0.018273,
		26.011290, 39.742687, 19.505527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059902, 40.237926, 20.205206>,  <26.355310, 40.352180, 19.492737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059902, 40.237926, 20.205206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.070005, 39.875267, 20.036758>,  <26.076067, 39.657669, 19.935690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.070005, 39.875267, 20.036758>,  <26.059902, 40.237926, 20.205206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070005, 39.875267, 20.036758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407839, -0.375258, 0.832375,
		-0.912705, -0.192774, 0.360290,
		0.025259, -0.906653, -0.421120,
		26.077583, 39.603271, 19.910421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851984, 39.771774, 20.763397>,  <26.059902, 40.237926, 20.205206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851984, 39.771774, 20.763397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.018364, 39.517715, 20.503065>,  <26.118191, 39.365280, 20.346867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.018364, 39.517715, 20.503065>,  <25.851984, 39.771774, 20.763397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018364, 39.517715, 20.503065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445814, -0.481361, 0.754679,
		-0.792614, -0.604057, 0.082934,
		0.415948, -0.635143, -0.650831,
		26.143148, 39.327171, 20.307816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625395, 39.076477, 20.967943>,  <25.851984, 39.771774, 20.763397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625395, 39.076477, 20.967943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.959684, 39.053558, 20.749481>,  <26.160257, 39.039806, 20.618404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.959684, 39.053558, 20.749481>,  <25.625395, 39.076477, 20.967943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959684, 39.053558, 20.749481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467503, -0.447553, 0.762323,
		-0.288111, -0.892420, -0.347245,
		0.835723, -0.057295, -0.546154,
		26.210402, 39.036369, 20.585634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821199, 38.439552, 21.109631>,  <25.625395, 39.076477, 20.967943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821199, 38.439552, 21.109631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.149746, 38.621372, 20.971796>,  <26.346874, 38.730465, 20.889095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.149746, 38.621372, 20.971796>,  <25.821199, 38.439552, 21.109631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149746, 38.621372, 20.971796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544637, -0.445469, 0.710583,
		0.169495, -0.771323, -0.613460,
		0.821366, 0.454553, -0.344585,
		26.396156, 38.757736, 20.868420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356873, 37.942951, 21.318840>,  <25.821199, 38.439552, 21.109631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356873, 37.942951, 21.318840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584215, 38.260719, 21.233179>,  <26.720621, 38.451382, 21.181782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584215, 38.260719, 21.233179>,  <26.356873, 37.942951, 21.318840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584215, 38.260719, 21.233179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575734, -0.198051, 0.793289,
		0.587795, -0.574165, -0.569941,
		0.568356, 0.794425, -0.214153,
		26.754723, 38.499046, 21.168934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965240, 37.731171, 21.343321>,  <26.356873, 37.942951, 21.318840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965240, 37.731171, 21.343321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986700, 38.121506, 21.428040>,  <26.999575, 38.355709, 21.478870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986700, 38.121506, 21.428040>,  <26.965240, 37.731171, 21.343321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986700, 38.121506, 21.428040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469922, -0.211820, 0.856916,
		0.881076, 0.053557, -0.469932,
		0.053647, 0.975840, 0.211797,
		27.002794, 38.414257, 21.491579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340115, 37.214428, 21.149433>,  <26.965240, 37.731171, 21.343321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340115, 37.214428, 21.149433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.162457, 36.856186, 21.139488>,  <27.055861, 36.641239, 21.133522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.162457, 36.856186, 21.139488>,  <27.340115, 37.214428, 21.149433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162457, 36.856186, 21.139488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568049, 0.302946, -0.765208,
		0.692859, -0.325742, -0.643303,
		-0.444146, -0.895609, -0.024861,
		27.029213, 36.587502, 21.132030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407833, 36.961452, 20.459684>,  <27.340115, 37.214428, 21.149433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407833, 36.961452, 20.459684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108065, 36.755344, 20.625992>,  <26.928204, 36.631680, 20.725777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108065, 36.755344, 20.625992>,  <27.407833, 36.961452, 20.459684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108065, 36.755344, 20.625992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597169, 0.254845, -0.760555,
		0.285931, -0.818263, -0.498687,
		-0.749422, -0.515266, 0.415773,
		26.883238, 36.600761, 20.750723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101305, 36.467857, 19.925722>,  <27.407833, 36.961452, 20.459684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101305, 36.467857, 19.925722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809692, 36.524242, 20.193645>,  <26.634724, 36.558071, 20.354399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809692, 36.524242, 20.193645>,  <27.101305, 36.467857, 19.925722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809692, 36.524242, 20.193645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633030, 0.233363, -0.738116,
		-0.260352, -0.962118, -0.080898,
		-0.729033, 0.140959, 0.669806,
		26.590982, 36.566528, 20.394587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467216, 36.107483, 19.638174>,  <27.101305, 36.467857, 19.925722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467216, 36.107483, 19.638174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317368, 36.351925, 19.917089>,  <26.227459, 36.498589, 20.084438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317368, 36.351925, 19.917089>,  <26.467216, 36.107483, 19.638174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317368, 36.351925, 19.917089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780930, 0.197441, -0.592593,
		-0.499809, -0.766531, 0.403263,
		-0.374620, 0.611103, 0.697290,
		26.204981, 36.535255, 20.126276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846937, 36.030315, 19.547071>,  <26.467216, 36.107483, 19.638174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846937, 36.030315, 19.547071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.852100, 36.370052, 19.758144>,  <25.855198, 36.573895, 19.884789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.852100, 36.370052, 19.758144>,  <25.846937, 36.030315, 19.547071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852100, 36.370052, 19.758144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707431, 0.380711, -0.595483,
		-0.706664, -0.365611, 0.605767,
		0.012907, 0.849345, 0.527680,
		25.855972, 36.624855, 19.916449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.114622, 36.207474, 19.594257>,  <25.846937, 36.030315, 19.547071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.114622, 36.207474, 19.594257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.334206, 36.535461, 19.659121>,  <25.465956, 36.732254, 19.698038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.334206, 36.535461, 19.659121>,  <25.114622, 36.207474, 19.594257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334206, 36.535461, 19.659121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481481, 0.468797, -0.740544,
		-0.683242, 0.328453, 0.652149,
		0.548959, 0.819969, 0.162158,
		25.498894, 36.781452, 19.707767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.557087, 36.786098, 19.734110>,  <25.114622, 36.207474, 19.594257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.557087, 36.786098, 19.734110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.901396, 36.969437, 19.645575>,  <25.107981, 37.079441, 19.592453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.901396, 36.969437, 19.645575>,  <24.557087, 36.786098, 19.734110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.901396, 36.969437, 19.645575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485366, 0.608191, -0.628111,
		-0.153276, 0.648090, 0.745979,
		0.860771, 0.458348, -0.221340,
		25.159628, 37.106941, 19.579172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.403315, 37.541962, 19.787247>,  <24.557087, 36.786098, 19.734110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.403315, 37.541962, 19.787247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.722481, 37.478394, 19.554670>,  <24.913980, 37.440250, 19.415125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.722481, 37.478394, 19.554670>,  <24.403315, 37.541962, 19.787247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.722481, 37.478394, 19.554670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428102, 0.529645, -0.732260,
		0.424330, 0.833198, 0.354577,
		0.797917, -0.158925, -0.581439,
		24.961857, 37.430717, 19.380239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543156, 38.262787, 19.528111>,  <24.403315, 37.541962, 19.787247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543156, 38.262787, 19.528111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.710690, 37.978046, 19.302599>,  <24.811209, 37.807201, 19.167292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.710690, 37.978046, 19.302599>,  <24.543156, 38.262787, 19.528111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.710690, 37.978046, 19.302599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393076, 0.417553, -0.819232,
		0.818578, 0.564730, -0.104926,
		0.418833, -0.711849, -0.563781,
		24.836340, 37.764492, 19.133465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.407063, 34.091908, 31.257841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797836, 34.166855, 31.216887>,  <36.032303, 34.211823, 31.192314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797836, 34.166855, 31.216887>,  <35.407063, 34.091908, 31.257841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797836, 34.166855, 31.216887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183081, -0.981832, -0.049870,
		-0.109871, 0.029975, -0.993494,
		0.976939, 0.187369, -0.102387,
		36.090919, 34.223064, 31.186171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784878, 33.881748, 30.942514>,  <35.407063, 34.091908, 31.257841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784878, 33.881748, 30.942514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741219, 33.534374, 30.749058>,  <34.715023, 33.325951, 30.632984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741219, 33.534374, 30.749058>,  <34.784878, 33.881748, 30.942514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741219, 33.534374, 30.749058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680387, 0.419978, -0.600576,
		0.724680, 0.263512, -0.636710,
		-0.109145, -0.868435, -0.483640,
		34.708473, 33.273842, 30.603966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915871, 34.040462, 30.286715>,  <34.784878, 33.881748, 30.942514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915871, 34.040462, 30.286715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693066, 33.708363, 30.278498>,  <34.559383, 33.509102, 30.273567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693066, 33.708363, 30.278498>,  <34.915871, 34.040462, 30.286715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693066, 33.708363, 30.278498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462818, 0.330853, -0.822396,
		0.689589, -0.448580, -0.568544,
		-0.557015, -0.830248, -0.020542,
		34.525963, 33.459290, 30.272335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896446, 33.937557, 29.577658>,  <34.915871, 34.040462, 30.286715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896446, 33.937557, 29.577658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.598801, 33.730560, 29.746655>,  <34.420216, 33.606361, 29.848053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.598801, 33.730560, 29.746655>,  <34.896446, 33.937557, 29.577658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598801, 33.730560, 29.746655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628697, 0.328577, -0.704824,
		0.225918, -0.790089, -0.569843,
		-0.744111, -0.517491, 0.422495,
		34.375568, 33.575314, 29.873402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520950, 33.638706, 29.019970>,  <34.896446, 33.937557, 29.577658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520950, 33.638706, 29.019970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264603, 33.589741, 29.323101>,  <34.110794, 33.560360, 29.504980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264603, 33.589741, 29.323101>,  <34.520950, 33.638706, 29.019970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264603, 33.589741, 29.323101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763191, 0.207876, -0.611823,
		-0.082637, -0.970464, -0.226649,
		-0.640867, -0.122417, 0.757828,
		34.072342, 33.553017, 29.550449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956024, 33.258224, 28.657595>,  <34.520950, 33.638706, 29.019970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956024, 33.258224, 28.657595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797459, 33.377682, 29.004850>,  <33.702320, 33.449356, 29.213203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797459, 33.377682, 29.004850>,  <33.956024, 33.258224, 28.657595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797459, 33.377682, 29.004850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873956, 0.166852, -0.456465,
		-0.281172, -0.939666, 0.194859,
		-0.396412, 0.298644, 0.868141,
		33.678535, 33.467274, 29.265293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400009, 32.816914, 28.740433>,  <33.956024, 33.258224, 28.657595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400009, 32.816914, 28.740433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314529, 33.129768, 28.974558>,  <33.263241, 33.317482, 29.115034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314529, 33.129768, 28.974558>,  <33.400009, 32.816914, 28.740433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314529, 33.129768, 28.974558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939174, 0.000405, -0.343442,
		-0.268856, -0.623107, 0.734476,
		-0.213703, 0.782137, 0.585315,
		33.250420, 33.364410, 29.150152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749973, 32.639305, 29.170832>,  <33.400009, 32.816914, 28.740433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749973, 32.639305, 29.170832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787884, 33.037399, 29.161631>,  <32.810631, 33.276257, 29.156109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787884, 33.037399, 29.161631>,  <32.749973, 32.639305, 29.170832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787884, 33.037399, 29.161631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959982, 0.085250, -0.266771,
		-0.263538, 0.047366, 0.963486,
		0.094773, 0.995233, -0.023004,
		32.816315, 33.335968, 29.154730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042831, 32.935383, 29.338476>,  <32.749973, 32.639305, 29.170832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042831, 32.935383, 29.338476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241009, 33.258850, 29.211613>,  <32.359917, 33.452930, 29.135494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241009, 33.258850, 29.211613>,  <32.042831, 32.935383, 29.338476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241009, 33.258850, 29.211613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835180, 0.343116, -0.429821,
		-0.238761, 0.477837, 0.845379,
		0.495447, 0.808668, -0.317158,
		32.389645, 33.501450, 29.116465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645378, 33.606483, 29.602621>,  <32.042831, 32.935383, 29.338476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645378, 33.606483, 29.602621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836863, 33.627014, 29.252031>,  <31.951754, 33.639332, 29.041677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836863, 33.627014, 29.252031>,  <31.645378, 33.606483, 29.602621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836863, 33.627014, 29.252031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818199, 0.388133, -0.424151,
		0.318417, 0.920173, 0.227800,
		0.478709, 0.051329, -0.876472,
		31.980474, 33.642414, 28.989090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430832, 34.169350, 29.219870>,  <31.645378, 33.606483, 29.602621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430832, 34.169350, 29.219870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621416, 34.033070, 28.895670>,  <31.735767, 33.951302, 28.701149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621416, 34.033070, 28.895670>,  <31.430832, 34.169350, 29.219870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621416, 34.033070, 28.895670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720355, 0.377244, -0.582044,
		0.504058, 0.861169, -0.065682,
		0.476460, -0.340698, -0.810500,
		31.764355, 33.930859, 28.652519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551802, 34.753880, 28.669022>,  <31.430832, 34.169350, 29.219870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551802, 34.753880, 28.669022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545347, 34.401085, 28.480625>,  <31.541475, 34.189407, 28.367588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545347, 34.401085, 28.480625>,  <31.551802, 34.753880, 28.669022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545347, 34.401085, 28.480625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670438, 0.359012, -0.649325,
		0.741790, 0.305294, -0.597113,
		-0.016136, -0.881990, -0.470992,
		31.540506, 34.136486, 28.339327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639099, 35.508728, 28.621229>,  <31.551802, 34.753880, 28.669022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639099, 35.508728, 28.621229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.329897, 35.662304, 28.823240>,  <31.144377, 35.754452, 28.944447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.329897, 35.662304, 28.823240>,  <31.639099, 35.508728, 28.621229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329897, 35.662304, 28.823240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504470, -0.110694, 0.856304,
		0.384675, 0.916698, -0.108120,
		-0.773004, 0.383942, 0.505028,
		31.097996, 35.777485, 28.974749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892714, 36.134609, 28.997326>,  <31.639099, 35.508728, 28.621229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892714, 36.134609, 28.997326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.554514, 36.001717, 29.164541>,  <31.351595, 35.921982, 29.264870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.554514, 36.001717, 29.164541>,  <31.892714, 36.134609, 28.997326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554514, 36.001717, 29.164541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441639, 0.004967, 0.897179,
		-0.300144, 0.943186, 0.142524,
		-0.845499, -0.332227, 0.418038,
		31.300863, 35.902050, 29.289953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834606, 36.516605, 29.678963>,  <31.892714, 36.134609, 28.997326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834606, 36.516605, 29.678963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.576803, 36.214958, 29.729422>,  <31.422121, 36.033970, 29.759697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.576803, 36.214958, 29.729422>,  <31.834606, 36.516605, 29.678963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576803, 36.214958, 29.729422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431043, -0.222093, 0.874572,
		-0.631517, 0.618042, 0.468199,
		-0.644506, -0.754122, 0.126147,
		31.383451, 35.988720, 29.767265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545835, 36.671040, 30.286697>,  <31.834606, 36.516605, 29.678963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545835, 36.671040, 30.286697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.513691, 36.277477, 30.222858>,  <31.494404, 36.041340, 30.184555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.513691, 36.277477, 30.222858>,  <31.545835, 36.671040, 30.286697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513691, 36.277477, 30.222858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475784, -0.178561, 0.861247,
		-0.875884, -0.006723, 0.482475,
		-0.080361, -0.983906, -0.159597,
		31.489582, 35.982304, 30.174980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255030, 36.436699, 30.914310>,  <31.545835, 36.671040, 30.286697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255030, 36.436699, 30.914310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.421410, 36.134357, 30.712057>,  <31.521238, 35.952953, 30.590706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.421410, 36.134357, 30.712057>,  <31.255030, 36.436699, 30.914310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421410, 36.134357, 30.712057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449937, -0.312133, 0.836737,
		-0.790279, -0.575545, 0.210256,
		0.415952, -0.755858, -0.505632,
		31.546196, 35.907600, 30.560368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364651, 36.017109, 31.400898>,  <31.255030, 36.436699, 30.914310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364651, 36.017109, 31.400898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592514, 35.881153, 31.101574>,  <31.729231, 35.799580, 30.921980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592514, 35.881153, 31.101574>,  <31.364651, 36.017109, 31.400898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592514, 35.881153, 31.101574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704525, -0.266927, 0.657567,
		-0.423245, -0.901789, 0.087405,
		0.569656, -0.339891, -0.748308,
		31.763411, 35.779186, 30.877081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704237, 35.487061, 31.690088>,  <31.364651, 36.017109, 31.400898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704237, 35.487061, 31.690088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.933182, 35.533276, 31.365360>,  <32.070549, 35.561005, 31.170523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.933182, 35.533276, 31.365360>,  <31.704237, 35.487061, 31.690088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933182, 35.533276, 31.365360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814501, -0.194588, 0.546556,
		-0.094824, -0.974057, -0.205479,
		0.572361, 0.115537, -0.811821,
		32.104889, 35.567936, 31.121813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071251, 34.856102, 31.600422>,  <31.704237, 35.487061, 31.690088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071251, 34.856102, 31.600422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.284283, 35.147190, 31.427551>,  <32.412102, 35.321842, 31.323830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.284283, 35.147190, 31.427551>,  <32.071251, 34.856102, 31.600422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284283, 35.147190, 31.427551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831263, -0.353670, 0.428858,
		0.159242, -0.587654, -0.793287,
		0.532582, 0.727722, -0.432176,
		32.444057, 35.365505, 31.297899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746712, 34.537655, 31.421701>,  <32.071251, 34.856102, 31.600422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746712, 34.537655, 31.421701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822865, 34.930336, 31.422611>,  <32.868557, 35.165947, 31.423157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822865, 34.930336, 31.422611>,  <32.746712, 34.537655, 31.421701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822865, 34.930336, 31.422611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841475, -0.164382, 0.514682,
		0.505641, -0.096073, -0.857378,
		0.190384, 0.981707, 0.002275,
		32.879978, 35.224850, 31.423294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430309, 34.502861, 31.379944>,  <32.746712, 34.537655, 31.421701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430309, 34.502861, 31.379944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344971, 34.865089, 31.526604>,  <33.293770, 35.082424, 31.614599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344971, 34.865089, 31.526604>,  <33.430309, 34.502861, 31.379944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344971, 34.865089, 31.526604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880057, 0.015164, 0.474625,
		0.424245, 0.423932, -0.800186,
		-0.213342, 0.905567, 0.366651,
		33.280968, 35.136761, 31.636599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095592, 34.922291, 31.234035>,  <33.430309, 34.502861, 31.379944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095592, 34.922291, 31.234035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915855, 35.146198, 31.512533>,  <33.808014, 35.280540, 31.679632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915855, 35.146198, 31.512533>,  <34.095592, 34.922291, 31.234035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915855, 35.146198, 31.512533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876731, 0.126644, 0.464008,
		0.171561, 0.818916, -0.547671,
		-0.449343, 0.559766, 0.696242,
		33.781052, 35.314129, 31.721405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480892, 35.418045, 31.329567>,  <34.095592, 34.922291, 31.234035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480892, 35.418045, 31.329567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273499, 35.434273, 31.671217>,  <34.149063, 35.444008, 31.876207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273499, 35.434273, 31.671217>,  <34.480892, 35.418045, 31.329567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273499, 35.434273, 31.671217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849066, 0.142765, 0.508630,
		-0.101307, 0.988925, -0.108463,
		-0.518482, 0.040565, 0.854126,
		34.117954, 35.446442, 31.927454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775078, 35.999039, 31.709066>,  <34.480892, 35.418045, 31.329567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775078, 35.999039, 31.709066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556538, 35.822369, 31.993717>,  <34.425411, 35.716366, 32.164509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556538, 35.822369, 31.993717>,  <34.775078, 35.999039, 31.709066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556538, 35.822369, 31.993717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754494, 0.109350, 0.647134,
		-0.363642, 0.890485, 0.273500,
		-0.546355, -0.441678, 0.711629,
		34.392632, 35.689865, 32.207207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632900, 36.383987, 32.273769>,  <34.775078, 35.999039, 31.709066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632900, 36.383987, 32.273769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625149, 36.014374, 32.426498>,  <34.620499, 35.792606, 32.518135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625149, 36.014374, 32.426498>,  <34.632900, 36.383987, 32.273769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625149, 36.014374, 32.426498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658771, 0.275469, 0.700098,
		-0.752094, 0.265099, 0.603388,
		-0.019381, -0.924034, 0.381818,
		34.619335, 35.737164, 32.541042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171680, 36.899765, 32.558109>,  <34.632900, 36.383987, 32.273769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171680, 36.899765, 32.558109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531219, 37.073540, 32.581177>,  <34.746944, 37.177807, 32.595016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531219, 37.073540, 32.581177>,  <34.171680, 36.899765, 32.558109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531219, 37.073540, 32.581177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311057, 0.725127, -0.614357,
		-0.308720, 0.534277, 0.786918,
		0.898852, 0.434441, 0.057671,
		34.800877, 37.203873, 32.598476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139210, 37.664516, 32.650112>,  <34.171680, 36.899765, 32.558109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139210, 37.664516, 32.650112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478130, 37.572269, 32.458740>,  <34.681484, 37.516922, 32.343918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478130, 37.572269, 32.458740>,  <34.139210, 37.664516, 32.650112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478130, 37.572269, 32.458740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187454, 0.712978, -0.675665,
		0.496929, 0.662177, 0.560878,
		0.847303, -0.230619, -0.478427,
		34.732323, 37.503082, 32.315212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714859, 38.255871, 32.495461>,  <34.139210, 37.664516, 32.650112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714859, 38.255871, 32.495461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.684914, 37.991325, 32.196930>,  <34.666946, 37.832600, 32.017811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.684914, 37.991325, 32.196930>,  <34.714859, 38.255871, 32.495461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684914, 37.991325, 32.196930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204373, 0.742712, -0.637660,
		0.976026, 0.104791, -0.190767,
		-0.074864, -0.661361, -0.746322,
		34.662453, 37.792915, 31.973034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113853, 38.538105, 31.957701>,  <34.714859, 38.255871, 32.495461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113853, 38.538105, 31.957701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872692, 38.297604, 31.747938>,  <34.727997, 38.153301, 31.622082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872692, 38.297604, 31.747938>,  <35.113853, 38.538105, 31.957701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872692, 38.297604, 31.747938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239903, 0.763509, -0.599584,
		0.760848, -0.235727, -0.604602,
		-0.602957, -0.601238, -0.524362,
		34.691822, 38.117226, 31.590616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974316, 38.938339, 31.445789>,  <35.113853, 38.538105, 31.957701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974316, 38.938339, 31.445789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734749, 38.629105, 31.362230>,  <34.591011, 38.443562, 31.312096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734749, 38.629105, 31.362230>,  <34.974316, 38.938339, 31.445789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734749, 38.629105, 31.362230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485695, 0.558066, -0.672802,
		0.636714, -0.301489, -0.709718,
		-0.598912, -0.773089, -0.208897,
		34.555077, 38.397179, 31.299561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957096, 38.934704, 30.748333>,  <34.974316, 38.938339, 31.445789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957096, 38.934704, 30.748333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629288, 38.728554, 30.848553>,  <34.432602, 38.604862, 30.908684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629288, 38.728554, 30.848553>,  <34.957096, 38.934704, 30.748333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629288, 38.728554, 30.848553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524819, 0.499433, -0.689298,
		0.230115, -0.696386, -0.679774,
		-0.819520, -0.515376, 0.250549,
		34.383430, 38.573940, 30.923717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593430, 38.659328, 30.067993>,  <34.957096, 38.934704, 30.748333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593430, 38.659328, 30.067993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301205, 38.657814, 30.341127>,  <34.125870, 38.656906, 30.505009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301205, 38.657814, 30.341127>,  <34.593430, 38.659328, 30.067993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301205, 38.657814, 30.341127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614697, 0.439118, -0.655228,
		-0.297366, -0.898421, -0.323129,
		-0.730562, -0.003783, 0.682835,
		34.082035, 38.656677, 30.545979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948944, 38.423965, 29.736267>,  <34.593430, 38.659328, 30.067993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948944, 38.423965, 29.736267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854710, 38.648190, 30.053825>,  <33.798168, 38.782722, 30.244360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854710, 38.648190, 30.053825>,  <33.948944, 38.423965, 29.736267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854710, 38.648190, 30.053825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854067, 0.270389, -0.444364,
		-0.463753, -0.782729, 0.415053,
		-0.235591, 0.560558, 0.793896,
		33.784031, 38.816357, 30.291994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194790, 38.441708, 29.796280>,  <33.948944, 38.423965, 29.736267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194790, 38.441708, 29.796280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313942, 38.754025, 30.015961>,  <33.385433, 38.941414, 30.147768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313942, 38.754025, 30.015961>,  <33.194790, 38.441708, 29.796280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313942, 38.754025, 30.015961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724436, 0.559562, -0.402595,
		-0.621657, -0.277934, 0.732322,
		0.297884, 0.780796, 0.549201,
		33.403309, 38.988262, 30.180721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630554, 38.834160, 30.007524>,  <33.194790, 38.441708, 29.796280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630554, 38.834160, 30.007524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897846, 39.127686, 30.056492>,  <33.058220, 39.303802, 30.085873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897846, 39.127686, 30.056492>,  <32.630554, 38.834160, 30.007524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897846, 39.127686, 30.056492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636001, 0.648842, -0.417740,
		-0.385975, 0.201287, 0.900282,
		0.668226, 0.733817, 0.122418,
		33.098312, 39.347832, 30.093218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261623, 39.357693, 30.240288>,  <32.630554, 38.834160, 30.007524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261623, 39.357693, 30.240288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.595448, 39.529610, 30.102427>,  <32.795742, 39.632759, 30.019711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.595448, 39.529610, 30.102427>,  <32.261623, 39.357693, 30.240288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595448, 39.529610, 30.102427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550562, 0.673007, -0.493906,
		0.019678, 0.601949, 0.798292,
		0.834562, 0.429790, -0.344654,
		32.845818, 39.658546, 29.999031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080414, 40.017719, 30.282696>,  <32.261623, 39.357693, 30.240288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080414, 40.017719, 30.282696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390419, 39.999756, 30.030556>,  <32.576424, 39.988976, 29.879272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390419, 39.999756, 30.030556>,  <32.080414, 40.017719, 30.282696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390419, 39.999756, 30.030556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448862, 0.663012, -0.599114,
		0.444835, 0.747260, 0.493683,
		0.775012, -0.044911, -0.630348,
		32.622921, 39.986282, 29.841452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232384, 40.654720, 30.072376>,  <32.080414, 40.017719, 30.282696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232384, 40.654720, 30.072376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.389214, 40.427578, 29.782875>,  <32.483311, 40.291294, 29.609175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.389214, 40.427578, 29.782875>,  <32.232384, 40.654720, 30.072376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389214, 40.427578, 29.782875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367378, 0.624635, -0.689104,
		0.843392, 0.536072, 0.036286,
		0.392075, -0.567854, -0.723753,
		32.506836, 40.257221, 29.565748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560654, 41.226421, 29.497217>,  <32.232384, 40.654720, 30.072376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560654, 41.226421, 29.497217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511101, 40.877659, 29.307718>,  <32.481369, 40.668404, 29.194019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511101, 40.877659, 29.307718>,  <32.560654, 41.226421, 29.497217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511101, 40.877659, 29.307718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285660, 0.488549, -0.824450,
		0.950290, 0.033195, -0.309592,
		-0.123883, -0.871905, -0.473746,
		32.473934, 40.616089, 29.165594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875286, 41.411457, 28.780998>,  <32.560654, 41.226421, 29.497217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875286, 41.411457, 28.780998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669441, 41.074680, 28.716114>,  <32.545933, 40.872616, 28.677183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669441, 41.074680, 28.716114>,  <32.875286, 41.411457, 28.780998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669441, 41.074680, 28.716114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210769, 0.307596, -0.927880,
		0.831112, -0.443312, -0.335748,
		-0.514616, -0.841938, -0.162211,
		32.515057, 40.822098, 28.667450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013412, 41.100082, 28.075598>,  <32.875286, 41.411457, 28.780998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013412, 41.100082, 28.075598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653614, 40.949860, 28.164917>,  <32.437733, 40.859726, 28.218508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653614, 40.949860, 28.164917>,  <33.013412, 41.100082, 28.075598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653614, 40.949860, 28.164917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258232, 0.044701, -0.965048,
		0.352448, -0.925721, -0.137189,
		-0.899498, -0.375555, 0.223296,
		32.383766, 40.837193, 28.231905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858021, 40.477631, 27.610245>,  <33.013412, 41.100082, 28.075598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858021, 40.477631, 27.610245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487846, 40.569420, 27.730848>,  <32.265739, 40.624493, 27.803211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487846, 40.569420, 27.730848>,  <32.858021, 40.477631, 27.610245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487846, 40.569420, 27.730848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291138, 0.078624, -0.953445,
		-0.242493, -0.970135, -0.005954,
		-0.925438, 0.229471, 0.301509,
		32.210217, 40.638260, 27.821301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412323, 40.045975, 27.183352>,  <32.858021, 40.477631, 27.610245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412323, 40.045975, 27.183352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177738, 40.337986, 27.323709>,  <32.036987, 40.513191, 27.407925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177738, 40.337986, 27.323709>,  <32.412323, 40.045975, 27.183352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177738, 40.337986, 27.323709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417300, 0.098975, -0.903363,
		-0.694209, -0.676214, 0.246595,
		-0.586460, 0.730026, 0.350894,
		32.001801, 40.556995, 27.428978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692835, 39.824730, 26.982403>,  <32.412323, 40.045975, 27.183352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692835, 39.824730, 26.982403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.701168, 40.219719, 27.044964>,  <31.706167, 40.456711, 27.082500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.701168, 40.219719, 27.044964>,  <31.692835, 39.824730, 26.982403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701168, 40.219719, 27.044964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297753, 0.155464, -0.941899,
		-0.954416, -0.026947, 0.297262,
		0.020832, 0.987474, 0.156401,
		31.707418, 40.515961, 27.091885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005701, 39.967869, 26.985144>,  <31.692835, 39.824730, 26.982403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005701, 39.967869, 26.985144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211172, 40.299484, 26.896757>,  <31.334455, 40.498455, 26.843725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211172, 40.299484, 26.896757>,  <31.005701, 39.967869, 26.985144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211172, 40.299484, 26.896757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481061, 0.065044, -0.874271,
		-0.710433, 0.555393, 0.432231,
		0.513677, 0.829041, -0.220969,
		31.365274, 40.548195, 26.830467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550478, 40.351490, 26.605270>,  <31.005701, 39.967869, 26.985144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550478, 40.351490, 26.605270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902132, 40.525620, 26.527689>,  <31.113125, 40.630096, 26.481140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902132, 40.525620, 26.527689>,  <30.550478, 40.351490, 26.605270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902132, 40.525620, 26.527689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332884, 0.269674, -0.903584,
		-0.341047, 0.858935, 0.381992,
		0.879133, 0.435324, -0.193954,
		31.165873, 40.656216, 26.469503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404160, 40.890995, 26.258018>,  <30.550478, 40.351490, 26.605270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404160, 40.890995, 26.258018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.772602, 40.803902, 26.128929>,  <30.993668, 40.751644, 26.051476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.772602, 40.803902, 26.128929>,  <30.404160, 40.890995, 26.258018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772602, 40.803902, 26.128929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290403, 0.167799, -0.942077,
		0.259277, 0.961475, 0.091329,
		0.921109, -0.217737, -0.322722,
		31.048935, 40.738579, 26.032112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534325, 41.440762, 25.754044>,  <30.404160, 40.890995, 26.258018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534325, 41.440762, 25.754044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.816538, 41.166702, 25.681601>,  <30.985865, 41.002266, 25.638136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.816538, 41.166702, 25.681601>,  <30.534325, 41.440762, 25.754044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816538, 41.166702, 25.681601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048391, 0.301535, -0.952226,
		0.707024, 0.663062, 0.245898,
		0.705532, -0.685147, -0.181106,
		31.028198, 40.961159, 25.627270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929825, 41.699806, 25.155489>,  <30.534325, 41.440762, 25.754044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929825, 41.699806, 25.155489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010393, 41.308384, 25.172747>,  <31.058735, 41.073532, 25.183102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010393, 41.308384, 25.172747>,  <30.929825, 41.699806, 25.155489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010393, 41.308384, 25.172747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022123, -0.039489, -0.998975,
		0.979255, 0.202171, 0.013695,
		0.201423, -0.978554, 0.043143,
		31.070820, 41.014816, 25.185690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614210, 41.656853, 24.757425>,  <30.929825, 41.699806, 25.155489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614210, 41.656853, 24.757425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.396645, 41.322445, 24.786356>,  <31.266106, 41.121799, 24.803715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.396645, 41.322445, 24.786356>,  <31.614210, 41.656853, 24.757425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396645, 41.322445, 24.786356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249184, 0.078610, -0.965261,
		0.801291, -0.543039, -0.251079,
		-0.543911, -0.836020, 0.072327,
		31.233471, 41.071640, 24.808054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735870, 41.404774, 24.141108>,  <31.614210, 41.656853, 24.757425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735870, 41.404774, 24.141108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.407038, 41.219059, 24.272942>,  <31.209738, 41.107632, 24.352041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.407038, 41.219059, 24.272942>,  <31.735870, 41.404774, 24.141108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407038, 41.219059, 24.272942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375415, 0.006792, -0.926832,
		0.428076, -0.885660, -0.179883,
		-0.822079, -0.464285, 0.329582,
		31.160414, 41.079773, 24.371817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652634, 40.746582, 23.696070>,  <31.735870, 41.404774, 24.141108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652634, 40.746582, 23.696070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.302094, 40.861946, 23.850384>,  <31.091770, 40.931164, 23.942972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.302094, 40.861946, 23.850384>,  <31.652634, 40.746582, 23.696070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302094, 40.861946, 23.850384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374816, 0.094724, -0.922247,
		-0.302530, -0.952809, 0.025090,
		-0.876349, 0.288412, 0.385785,
		31.039188, 40.948471, 23.966120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267605, 40.271801, 23.377913>,  <31.652634, 40.746582, 23.696070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267605, 40.271801, 23.377913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057930, 40.595375, 23.484388>,  <30.932125, 40.789520, 23.548275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057930, 40.595375, 23.484388>,  <31.267605, 40.271801, 23.377913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057930, 40.595375, 23.484388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388883, 0.050707, -0.919891,
		-0.757627, -0.585711, 0.288000,
		-0.524186, 0.808932, 0.266190,
		30.900675, 40.838055, 23.564245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061817, 39.573273, 23.218431>,  <31.267605, 40.271801, 23.377913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061817, 39.573273, 23.218431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.298462, 39.395832, 22.949148>,  <31.440449, 39.289368, 22.787579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.298462, 39.395832, 22.949148>,  <31.061817, 39.573273, 23.218431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298462, 39.395832, 22.949148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701794, -0.127653, 0.700849,
		-0.396836, -0.887085, 0.235798,
		0.591613, -0.443604, -0.673208,
		31.475946, 39.262753, 22.747185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328644, 38.998440, 23.534960>,  <31.061817, 39.573273, 23.218431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328644, 38.998440, 23.534960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601219, 39.031715, 23.244106>,  <31.764765, 39.051682, 23.069593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601219, 39.031715, 23.244106>,  <31.328644, 38.998440, 23.534960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601219, 39.031715, 23.244106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724900, -0.213570, 0.654911,
		-0.100814, -0.973380, -0.205837,
		0.681438, 0.083187, -0.727134,
		31.805651, 39.056671, 23.025967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641552, 38.458908, 23.637678>,  <31.328644, 38.998440, 23.534960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641552, 38.458908, 23.637678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.899073, 38.691452, 23.438665>,  <32.053585, 38.830978, 23.319258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.899073, 38.691452, 23.438665>,  <31.641552, 38.458908, 23.637678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899073, 38.691452, 23.438665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709878, -0.211051, 0.671960,
		0.285648, -0.785796, -0.548571,
		0.643800, 0.581363, -0.497533,
		32.092213, 38.865860, 23.289406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266785, 38.111294, 23.584091>,  <31.641552, 38.458908, 23.637678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266785, 38.111294, 23.584091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386383, 38.482754, 23.496260>,  <32.458141, 38.705627, 23.443562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386383, 38.482754, 23.496260>,  <32.266785, 38.111294, 23.584091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386383, 38.482754, 23.496260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745139, -0.083464, 0.661665,
		0.596127, -0.361452, -0.716928,
		0.298998, 0.928648, -0.219577,
		32.476082, 38.761349, 23.430387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985313, 37.950756, 23.518614>,  <32.266785, 38.111294, 23.584091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985313, 37.950756, 23.518614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.921703, 38.338478, 23.593620>,  <32.883537, 38.571110, 23.638624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.921703, 38.338478, 23.593620>,  <32.985313, 37.950756, 23.518614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921703, 38.338478, 23.593620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733829, -0.011008, 0.679245,
		0.660457, 0.245626, -0.709552,
		-0.159030, 0.969302, 0.187518,
		32.873993, 38.629269, 23.649876>
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
