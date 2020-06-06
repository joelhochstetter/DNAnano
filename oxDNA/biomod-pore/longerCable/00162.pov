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
	<24.287178, 35.259834, 34.703651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.422871, 34.977745, 34.952675>,  <24.504286, 34.808491, 35.102089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.422871, 34.977745, 34.952675>,  <24.287178, 35.259834, 34.703651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.422871, 34.977745, 34.952675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734999, -0.214342, -0.643299,
		0.587111, 0.675808, 0.445628,
		0.339230, -0.705224, 0.622561,
		24.524639, 34.766178, 35.139442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.903231, 35.427067, 34.690022>,  <24.287178, 35.259834, 34.703651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.903231, 35.427067, 34.690022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858597, 35.048615, 34.811604>,  <24.831816, 34.821545, 34.884552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858597, 35.048615, 34.811604>,  <24.903231, 35.427067, 34.690022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.858597, 35.048615, 34.811604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776580, -0.273869, -0.567379,
		0.620058, 0.172736, 0.765304,
		-0.111586, -0.946128, 0.303958,
		24.825121, 34.764774, 34.902790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440105, 35.112545, 35.082607>,  <24.903231, 35.427067, 34.690022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440105, 35.112545, 35.082607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253302, 34.843342, 34.853188>,  <25.141218, 34.681820, 34.715534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253302, 34.843342, 34.853188>,  <25.440105, 35.112545, 35.082607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253302, 34.843342, 34.853188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835968, -0.124633, -0.534439,
		0.288200, -0.729056, 0.620820,
		-0.467011, -0.673011, -0.573548,
		25.113199, 34.641438, 34.681122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734961, 34.483349, 35.122574>,  <25.440105, 35.112545, 35.082607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734961, 34.483349, 35.122574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552452, 34.437790, 34.769566>,  <25.442947, 34.410454, 34.557762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552452, 34.437790, 34.769566>,  <25.734961, 34.483349, 35.122574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552452, 34.437790, 34.769566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860948, -0.307184, -0.405471,
		-0.224912, -0.944810, 0.238222,
		-0.456271, -0.113902, -0.882521,
		25.415571, 34.403618, 34.504810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797689, 33.823738, 34.711075>,  <25.734961, 34.483349, 35.122574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797689, 33.823738, 34.711075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769062, 34.118450, 34.442139>,  <25.751884, 34.295277, 34.280777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769062, 34.118450, 34.442139>,  <25.797689, 33.823738, 34.711075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769062, 34.118450, 34.442139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833662, -0.325893, -0.445870,
		-0.547617, -0.592415, -0.590898,
		-0.071570, 0.736776, -0.672339,
		25.747591, 34.339481, 34.240437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999247, 33.572678, 34.027763>,  <25.797689, 33.823738, 34.711075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999247, 33.572678, 34.027763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044594, 33.969845, 34.013508>,  <26.071802, 34.208145, 34.004955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044594, 33.969845, 34.013508>,  <25.999247, 33.572678, 34.027763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044594, 33.969845, 34.013508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929355, -0.118658, -0.349598,
		-0.351350, 0.006514, -0.936221,
		0.113368, 0.992914, -0.035637,
		26.078604, 34.267719, 34.002815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326662, 33.297642, 34.167702>,  <25.999247, 33.572678, 34.027763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326662, 33.297642, 34.167702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372492, 32.954895, 34.368759>,  <25.399990, 32.749249, 34.489395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372492, 32.954895, 34.368759>,  <25.326662, 33.297642, 34.167702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372492, 32.954895, 34.368759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375361, 0.505808, 0.776700,
		-0.919770, 0.099683, 0.379587,
		0.114574, -0.856867, 0.502645,
		25.406864, 32.697834, 34.519554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830284, 32.777195, 33.938873>,  <25.326662, 33.297642, 34.167702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830284, 32.777195, 33.938873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201315, 32.747425, 34.085331>,  <26.423933, 32.729565, 34.173206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201315, 32.747425, 34.085331>,  <25.830284, 32.777195, 33.938873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201315, 32.747425, 34.085331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154771, -0.815396, -0.557832,
		0.340065, 0.574101, -0.744825,
		0.927578, -0.074422, 0.366142,
		26.479588, 32.725098, 34.195175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323463, 32.870548, 33.365723>,  <25.830284, 32.777195, 33.938873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323463, 32.870548, 33.365723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449099, 32.648705, 33.673946>,  <26.524479, 32.515598, 33.858879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449099, 32.648705, 33.673946>,  <26.323463, 32.870548, 33.365723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449099, 32.648705, 33.673946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007252, -0.813010, -0.582204,
		0.949366, 0.177275, -0.259379,
		0.314088, -0.554606, 0.770559,
		26.543325, 32.482323, 33.905113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805199, 32.377373, 33.054295>,  <26.323463, 32.870548, 33.365723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805199, 32.377373, 33.054295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759134, 32.228992, 33.422890>,  <26.731495, 32.139965, 33.644047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759134, 32.228992, 33.422890>,  <26.805199, 32.377373, 33.054295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759134, 32.228992, 33.422890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103618, -0.927082, -0.360253,
		0.987928, 0.053996, 0.145201,
		-0.115161, -0.370949, 0.921485,
		26.724586, 32.117706, 33.699337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249344, 31.830839, 33.012325>,  <26.805199, 32.377373, 33.054295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249344, 31.830839, 33.012325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039536, 31.732756, 33.338455>,  <26.913651, 31.673906, 33.534134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039536, 31.732756, 33.338455>,  <27.249344, 31.830839, 33.012325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039536, 31.732756, 33.338455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027441, -0.962000, -0.271669,
		0.850957, -0.120122, 0.511316,
		-0.524519, -0.245209, 0.815323,
		26.882179, 31.659193, 33.583054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543646, 31.332197, 33.377960>,  <27.249344, 31.830839, 33.012325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543646, 31.332197, 33.377960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148582, 31.297119, 33.429863>,  <26.911545, 31.276072, 33.461002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148582, 31.297119, 33.429863>,  <27.543646, 31.332197, 33.377960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148582, 31.297119, 33.429863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062391, -0.980258, -0.187622,
		0.143647, -0.177212, 0.973633,
		-0.987660, -0.087697, 0.129755,
		26.852283, 31.270809, 33.468788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379452, 30.852600, 33.963596>,  <27.543646, 31.332197, 33.377960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379452, 30.852600, 33.963596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032145, 30.879154, 33.766945>,  <26.823761, 30.895086, 33.648952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032145, 30.879154, 33.766945>,  <27.379452, 30.852600, 33.963596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032145, 30.879154, 33.766945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026923, -0.995851, -0.086921,
		-0.495363, -0.062235, 0.866454,
		-0.868269, 0.066385, -0.491632,
		26.771664, 30.899069, 33.619453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716221, 30.541433, 34.350487>,  <27.379452, 30.852600, 33.963596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716221, 30.541433, 34.350487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715246, 30.538557, 33.950497>,  <26.714663, 30.536831, 33.710503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715246, 30.538557, 33.950497>,  <26.716221, 30.541433, 34.350487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715246, 30.538557, 33.950497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419184, -0.907870, 0.007549,
		-0.907898, 0.419190, -0.000812,
		-0.002427, -0.007194, -0.999971,
		26.714516, 30.536400, 33.650505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025864, 30.409519, 34.092537>,  <26.716221, 30.541433, 34.350487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025864, 30.409519, 34.092537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320440, 30.282688, 33.853500>,  <26.497187, 30.206589, 33.710079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320440, 30.282688, 33.853500>,  <26.025864, 30.409519, 34.092537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320440, 30.282688, 33.853500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393483, -0.919327, 0.002881,
		-0.550292, 0.233019, -0.801799,
		0.736444, -0.317080, -0.597587,
		26.541374, 30.187565, 33.674225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191469, 31.155510, 33.866001>,  <26.025864, 30.409519, 34.092537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191469, 31.155510, 33.866001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250359, 31.011271, 34.234413>,  <26.285692, 30.924726, 34.455460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250359, 31.011271, 34.234413>,  <26.191469, 31.155510, 33.866001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250359, 31.011271, 34.234413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945959, -0.220687, -0.237609,
		0.288940, 0.906238, 0.308619,
		0.147222, -0.360596, 0.921030,
		26.294525, 30.903091, 34.510723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.964560, 31.419626, 34.495388>,  <26.191469, 31.155510, 33.866001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.964560, 31.419626, 34.495388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259033, 31.473541, 34.230099>,  <26.435717, 31.505890, 34.070927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259033, 31.473541, 34.230099>,  <25.964560, 31.419626, 34.495388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259033, 31.473541, 34.230099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246475, 0.859272, 0.448220,
		0.630304, -0.493441, 0.599360,
		0.736184, 0.134788, -0.663224,
		26.479889, 31.513977, 34.031132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518282, 31.548563, 34.847412>,  <25.964560, 31.419626, 34.495388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518282, 31.548563, 34.847412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563339, 31.718584, 34.488159>,  <26.590374, 31.820597, 34.272606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563339, 31.718584, 34.488159>,  <26.518282, 31.548563, 34.847412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563339, 31.718584, 34.488159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294245, 0.849076, 0.438737,
		0.949069, -0.313691, -0.029428,
		0.112641, 0.425050, -0.898134,
		26.597132, 31.846100, 34.218719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022751, 32.034378, 35.039551>,  <26.518282, 31.548563, 34.847412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022751, 32.034378, 35.039551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902561, 32.143715, 34.674038>,  <26.830446, 32.209316, 34.454731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902561, 32.143715, 34.674038>,  <27.022751, 32.034378, 35.039551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902561, 32.143715, 34.674038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050050, 0.961253, 0.271085,
		0.952475, 0.035720, -0.302514,
		-0.300476, 0.273343, -0.913782,
		26.812418, 32.225719, 34.399902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566946, 32.455963, 34.869282>,  <27.022751, 32.034378, 35.039551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566946, 32.455963, 34.869282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232645, 32.523872, 34.660400>,  <27.032064, 32.564617, 34.535072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232645, 32.523872, 34.660400>,  <27.566946, 32.455963, 34.869282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232645, 32.523872, 34.660400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068863, 0.975900, 0.207070,
		0.544769, 0.137099, -0.827303,
		-0.835754, 0.169776, -0.522199,
		26.981918, 32.574806, 34.503742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800776, 33.184212, 35.202560>,  <27.566946, 32.455963, 34.869282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800776, 33.184212, 35.202560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097759, 32.917511, 35.228481>,  <28.275949, 32.757492, 35.244034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097759, 32.917511, 35.228481>,  <27.800776, 33.184212, 35.202560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097759, 32.917511, 35.228481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288104, 0.405146, 0.867671,
		-0.604770, -0.625544, 0.492897,
		0.742461, -0.666748, 0.064799,
		28.320498, 32.717487, 35.247921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148954, 33.615601, 34.786591>,  <27.800776, 33.184212, 35.202560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148954, 33.615601, 34.786591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099930, 33.855270, 35.103065>,  <28.070515, 33.999073, 35.292950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099930, 33.855270, 35.103065>,  <28.148954, 33.615601, 34.786591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099930, 33.855270, 35.103065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128640, 0.780879, -0.611294,
		-0.984089, -0.176698, -0.018627,
		-0.122560, 0.599171, 0.791184,
		28.063162, 34.035023, 35.340420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696377, 33.342785, 34.391098>,  <28.148954, 33.615601, 34.786591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696377, 33.342785, 34.391098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670492, 33.445030, 34.005253>,  <28.654963, 33.506378, 33.773746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670492, 33.445030, 34.005253>,  <28.696377, 33.342785, 34.391098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670492, 33.445030, 34.005253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686274, -0.690361, -0.228976,
		-0.724459, -0.676805, -0.130745,
		-0.064710, 0.255611, -0.964612,
		28.651079, 33.521713, 33.715870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940344, 33.720894, 35.070053>,  <28.696377, 33.342785, 34.391098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940344, 33.720894, 35.070053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330755, 33.745152, 34.986446>,  <29.565002, 33.759705, 34.936283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330755, 33.745152, 34.986446>,  <28.940344, 33.720894, 35.070053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330755, 33.745152, 34.986446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209687, 0.004805, -0.977757,
		-0.058287, 0.998148, 0.017405,
		0.976030, 0.060640, -0.209019,
		29.623564, 33.763344, 34.923740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137596, 34.388252, 34.697033>,  <28.940344, 33.720894, 35.070053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137596, 34.388252, 34.697033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374792, 34.074413, 34.624622>,  <29.517111, 33.886112, 34.581177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374792, 34.074413, 34.624622>,  <29.137596, 34.388252, 34.697033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374792, 34.074413, 34.624622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145104, 0.117016, -0.982472,
		0.792027, 0.608865, -0.044458,
		0.592991, -0.784596, -0.181029,
		29.552689, 33.839035, 34.570312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497480, 35.013081, 34.219799>,  <29.137596, 34.388252, 34.697033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497480, 35.013081, 34.219799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338711, 34.646942, 34.192719>,  <29.243448, 34.427258, 34.176472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338711, 34.646942, 34.192719>,  <29.497480, 35.013081, 34.219799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338711, 34.646942, 34.192719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438950, 0.254084, -0.861838,
		0.806085, -0.312369, -0.502645,
		-0.396926, -0.915351, -0.067699,
		29.219633, 34.372337, 34.172409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668371, 35.289715, 34.924248>,  <29.497480, 35.013081, 34.219799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668371, 35.289715, 34.924248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560627, 35.645111, 35.072857>,  <29.495979, 35.858349, 35.162022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560627, 35.645111, 35.072857>,  <29.668371, 35.289715, 34.924248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560627, 35.645111, 35.072857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958419, -0.209573, -0.193681,
		-0.094222, -0.408246, 0.907996,
		-0.269361, 0.888489, 0.371524,
		29.479818, 35.911659, 35.184315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456726, 35.415909, 35.326668>,  <29.668371, 35.289715, 34.924248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456726, 35.415909, 35.326668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709110, 35.430305, 35.636658>,  <30.860540, 35.438942, 35.822651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709110, 35.430305, 35.636658>,  <30.456726, 35.415909, 35.326668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709110, 35.430305, 35.636658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740020, -0.327841, -0.587274,
		0.232936, 0.944047, -0.233486,
		0.630961, 0.035987, 0.774979,
		30.898399, 35.441101, 35.869152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082985, 35.630501, 35.091644>,  <30.456726, 35.415909, 35.326668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082985, 35.630501, 35.091644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093552, 35.372528, 35.397160>,  <31.099892, 35.217743, 35.580467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093552, 35.372528, 35.397160>,  <31.082985, 35.630501, 35.091644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093552, 35.372528, 35.397160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827709, -0.414315, -0.378471,
		0.560535, 0.642190, 0.522870,
		0.026418, -0.644930, 0.763785,
		31.101477, 35.179050, 35.626293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610744, 35.854340, 35.599186>,  <31.082985, 35.630501, 35.091644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610744, 35.854340, 35.599186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543335, 35.460827, 35.574619>,  <31.502890, 35.224720, 35.559879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543335, 35.460827, 35.574619>,  <31.610744, 35.854340, 35.599186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543335, 35.460827, 35.574619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848758, -0.113148, -0.516534,
		0.501208, -0.139175, 0.854061,
		-0.168525, -0.983782, -0.061415,
		31.492777, 35.165691, 35.556194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207497, 35.578770, 35.828674>,  <31.610744, 35.854340, 35.599186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207497, 35.578770, 35.828674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008335, 35.309944, 35.609432>,  <31.888838, 35.148647, 35.477886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008335, 35.309944, 35.609432>,  <32.207497, 35.578770, 35.828674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008335, 35.309944, 35.609432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863874, -0.328782, -0.381607,
		0.076255, -0.663500, 0.744280,
		-0.497902, -0.672063, -0.548109,
		31.858965, 35.108326, 35.445000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646973, 35.125088, 35.730659>,  <32.207497, 35.578770, 35.828674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646973, 35.125088, 35.730659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365047, 35.003170, 35.474430>,  <32.195892, 34.930019, 35.320694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365047, 35.003170, 35.474430>,  <32.646973, 35.125088, 35.730659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365047, 35.003170, 35.474430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692660, -0.490636, -0.528676,
		-0.153149, -0.816319, 0.556928,
		-0.704817, -0.304795, -0.640572,
		32.153603, 34.911732, 35.282257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661133, 34.408146, 35.780365>,  <32.646973, 35.125088, 35.730659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661133, 34.408146, 35.780365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548336, 34.566158, 35.430637>,  <32.480659, 34.660965, 35.220802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548336, 34.566158, 35.430637>,  <32.661133, 34.408146, 35.780365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548336, 34.566158, 35.430637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758731, -0.465932, -0.455229,
		-0.587203, -0.791742, -0.168336,
		-0.281991, 0.395034, -0.874316,
		32.463737, 34.684669, 35.168343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708092, 33.857395, 35.160286>,  <32.661133, 34.408146, 35.780365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708092, 33.857395, 35.160286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756577, 34.232487, 35.030071>,  <32.785667, 34.457542, 34.951942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756577, 34.232487, 35.030071>,  <32.708092, 33.857395, 35.160286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756577, 34.232487, 35.030071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755676, -0.299824, -0.582289,
		-0.643632, -0.175421, -0.744960,
		0.121211, 0.937728, -0.325538,
		32.792938, 34.513805, 34.932411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548172, 33.980259, 34.398670>,  <32.708092, 33.857395, 35.160286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548172, 33.980259, 34.398670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862400, 34.187740, 34.533623>,  <33.050938, 34.312229, 34.614594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862400, 34.187740, 34.533623>,  <32.548172, 33.980259, 34.398670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862400, 34.187740, 34.533623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600445, -0.507302, -0.618151,
		-0.149487, 0.688177, -0.709976,
		0.785570, 0.518707, 0.337377,
		33.098072, 34.343353, 34.634834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883915, 34.300510, 33.758659>,  <32.548172, 33.980259, 34.398670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883915, 34.300510, 33.758659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131500, 34.235226, 34.065971>,  <33.280052, 34.196053, 34.250359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131500, 34.235226, 34.065971>,  <32.883915, 34.300510, 33.758659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131500, 34.235226, 34.065971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721285, -0.269030, -0.638256,
		0.310862, 0.949202, -0.048795,
		0.618961, -0.163215, 0.768276,
		33.317188, 34.186260, 34.296455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524586, 34.692181, 33.594738>,  <32.883915, 34.300510, 33.758659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524586, 34.692181, 33.594738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558788, 34.364010, 33.820866>,  <33.579311, 34.167107, 33.956543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558788, 34.364010, 33.820866>,  <33.524586, 34.692181, 33.594738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558788, 34.364010, 33.820866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657045, -0.380098, -0.651012,
		0.748986, 0.427104, 0.506559,
		0.085508, -0.820431, 0.565315,
		33.584442, 34.117882, 33.990459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314346, 34.465286, 33.559582>,  <33.524586, 34.692181, 33.594738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314346, 34.465286, 33.559582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074276, 34.157940, 33.648479>,  <33.930233, 33.973530, 33.701820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074276, 34.157940, 33.648479>,  <34.314346, 34.465286, 33.559582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074276, 34.157940, 33.648479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362119, -0.508768, -0.781041,
		0.713201, -0.388284, 0.583593,
		-0.600179, -0.768369, 0.222249,
		33.894222, 33.927429, 33.715153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586246, 35.057819, 33.913807>,  <34.314346, 34.465286, 33.559582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586246, 35.057819, 33.913807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876141, 34.967300, 34.174129>,  <35.050076, 34.912991, 34.330322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876141, 34.967300, 34.174129>,  <34.586246, 35.057819, 33.913807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876141, 34.967300, 34.174129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368868, 0.925205, -0.089058,
		-0.581980, 0.304607, 0.753998,
		0.724731, -0.226296, 0.650811,
		35.093559, 34.899410, 34.369373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705513, 35.633263, 34.328312>,  <34.586246, 35.057819, 33.913807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705513, 35.633263, 34.328312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046040, 35.429932, 34.276352>,  <35.250355, 35.307934, 34.245178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046040, 35.429932, 34.276352>,  <34.705513, 35.633263, 34.328312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046040, 35.429932, 34.276352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318538, 0.697499, -0.641895,
		0.416894, 0.505076, 0.755710,
		0.851312, -0.508324, -0.129898,
		35.301434, 35.277435, 34.237381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217606, 36.147995, 34.262779>,  <34.705513, 35.633263, 34.328312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217606, 36.147995, 34.262779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383137, 35.822495, 34.099529>,  <35.482456, 35.627193, 34.001579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383137, 35.822495, 34.099529>,  <35.217606, 36.147995, 34.262779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383137, 35.822495, 34.099529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457425, 0.573473, -0.679625,
		0.787090, 0.094561, 0.609547,
		0.413825, -0.813748, -0.408120,
		35.507286, 35.578369, 33.977093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982174, 36.096771, 34.420540>,  <35.217606, 36.147995, 34.262779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982174, 36.096771, 34.420540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868702, 35.939953, 34.070496>,  <35.800621, 35.845863, 33.860470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868702, 35.939953, 34.070496>,  <35.982174, 36.096771, 34.420540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868702, 35.939953, 34.070496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578743, 0.657655, -0.482231,
		0.764581, -0.643264, 0.040333,
		-0.283677, -0.392047, -0.875115,
		35.783600, 35.822338, 33.807961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708630, 36.203648, 34.518661>,  <35.982174, 36.096771, 34.420540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708630, 36.203648, 34.518661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424858, 36.003479, 34.717171>,  <36.254597, 35.883377, 34.836277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424858, 36.003479, 34.717171>,  <36.708630, 36.203648, 34.518661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424858, 36.003479, 34.717171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704776, -0.506270, 0.496973,
		0.002551, 0.702328, 0.711849,
		-0.709426, -0.500426, 0.496275,
		36.212029, 35.853352, 34.866055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161411, 35.689896, 34.736191>,  <36.708630, 36.203648, 34.518661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161411, 35.689896, 34.736191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505547, 35.563293, 34.896008>,  <37.712029, 35.487331, 34.991898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505547, 35.563293, 34.896008>,  <37.161411, 35.689896, 34.736191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505547, 35.563293, 34.896008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405016, 0.900402, -0.158866,
		-0.309471, 0.298502, 0.902842,
		0.860343, -0.316502, 0.399546,
		37.763649, 35.468342, 35.015873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299713, 36.049999, 35.280415>,  <37.161411, 35.689896, 34.736191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299713, 36.049999, 35.280415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633995, 35.930599, 35.096024>,  <37.834564, 35.858959, 34.985390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633995, 35.930599, 35.096024>,  <37.299713, 36.049999, 35.280415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633995, 35.930599, 35.096024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199542, 0.947063, -0.251503,
		0.511645, 0.118199, 0.851028,
		0.835705, -0.298496, -0.460974,
		37.884708, 35.841049, 34.957733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941868, 36.660221, 35.136856>,  <37.299713, 36.049999, 35.280415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941868, 36.660221, 35.136856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890678, 37.050205, 35.209599>,  <36.859966, 37.284195, 35.253242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890678, 37.050205, 35.209599>,  <36.941868, 36.660221, 35.136856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890678, 37.050205, 35.209599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350423, -0.215987, 0.911347,
		0.927808, 0.052901, 0.369289,
		-0.127973, 0.974962, 0.181857,
		36.852287, 37.342693, 35.264156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261787, 36.787567, 35.697544>,  <36.941868, 36.660221, 35.136856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261787, 36.787567, 35.697544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992912, 37.083633, 35.704674>,  <36.831585, 37.261272, 35.708950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992912, 37.083633, 35.704674>,  <37.261787, 36.787567, 35.697544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992912, 37.083633, 35.704674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256490, -0.255378, 0.932199,
		0.694531, 0.622044, 0.361508,
		-0.672190, 0.740164, 0.017820,
		36.791256, 37.305683, 35.710018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056549, 36.914173, 35.646957>,  <37.261787, 36.787567, 35.697544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056549, 36.914173, 35.646957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285110, 36.905823, 35.975121>,  <38.422245, 36.900810, 36.172020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285110, 36.905823, 35.975121>,  <38.056549, 36.914173, 35.646957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285110, 36.905823, 35.975121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810721, 0.169571, -0.560337,
		-0.127417, 0.985297, 0.113819,
		0.571399, -0.020879, 0.820407,
		38.456532, 36.899559, 36.221241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423553, 37.650856, 35.807716>,  <38.056549, 36.914173, 35.646957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423553, 37.650856, 35.807716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590351, 37.295700, 35.885452>,  <38.690430, 37.082607, 35.932095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590351, 37.295700, 35.885452>,  <38.423553, 37.650856, 35.807716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590351, 37.295700, 35.885452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621273, 0.122371, -0.773980,
		0.663427, 0.443485, 0.602649,
		0.416995, -0.887889, 0.194341,
		38.715450, 37.029335, 35.943756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150917, 37.675400, 35.828465>,  <38.423553, 37.650856, 35.807716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150917, 37.675400, 35.828465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078384, 37.292240, 35.739422>,  <39.034866, 37.062344, 35.685997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078384, 37.292240, 35.739422>,  <39.150917, 37.675400, 35.828465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078384, 37.292240, 35.739422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550916, 0.088559, -0.829849,
		0.814623, -0.273116, 0.511662,
		-0.181333, -0.957896, -0.222606,
		39.023983, 37.004871, 35.672642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769836, 37.375938, 35.763901>,  <39.150917, 37.675400, 35.828465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769836, 37.375938, 35.763901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509441, 37.161041, 35.549393>,  <39.353203, 37.032104, 35.420689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509441, 37.161041, 35.549393>,  <39.769836, 37.375938, 35.763901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509441, 37.161041, 35.549393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670049, -0.074712, -0.738547,
		0.356712, -0.840114, 0.408614,
		-0.650992, -0.537240, -0.536267,
		39.314144, 36.999870, 35.388512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299957, 37.231018, 36.358665>,  <39.769836, 37.375938, 35.763901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299957, 37.231018, 36.358665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280315, 36.919071, 36.109058>,  <40.268528, 36.731903, 35.959293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280315, 36.919071, 36.109058>,  <40.299957, 37.231018, 36.358665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280315, 36.919071, 36.109058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769702, -0.427704, 0.473950,
		-0.636512, -0.457032, 0.621268,
		-0.049109, -0.779866, -0.624017,
		40.265583, 36.685112, 35.921852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223339, 36.570633, 36.734959>,  <40.299957, 37.231018, 36.358665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223339, 36.570633, 36.734959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407326, 36.520805, 36.383297>,  <40.517719, 36.490910, 36.172298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407326, 36.520805, 36.383297>,  <40.223339, 36.570633, 36.734959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407326, 36.520805, 36.383297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842226, -0.252366, 0.476409,
		-0.281215, -0.959580, -0.011164,
		0.459970, -0.124571, -0.879153,
		40.545319, 36.483433, 36.119553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460072, 35.772896, 36.782478>,  <40.223339, 36.570633, 36.734959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460072, 35.772896, 36.782478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659630, 36.064499, 36.595009>,  <40.779366, 36.239460, 36.482529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659630, 36.064499, 36.595009>,  <40.460072, 35.772896, 36.782478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659630, 36.064499, 36.595009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785482, -0.151833, 0.599970,
		0.366220, -0.667458, -0.648369,
		0.498899, 0.729004, -0.468672,
		40.809299, 36.283199, 36.454407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123447, 35.581924, 36.467327>,  <40.460072, 35.772896, 36.782478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123447, 35.581924, 36.467327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132687, 35.964626, 36.583313>,  <41.138229, 36.194248, 36.652905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132687, 35.964626, 36.583313>,  <41.123447, 35.581924, 36.467327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132687, 35.964626, 36.583313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754586, -0.206947, 0.622714,
		0.655795, 0.204420, -0.726736,
		0.023100, 0.956758, 0.289967,
		41.139618, 36.251652, 36.670303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302822, 35.279373, 35.928066>,  <41.123447, 35.581924, 36.467327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302822, 35.279373, 35.928066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669685, 35.130074, 35.872192>,  <41.889801, 35.040493, 35.838669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669685, 35.130074, 35.872192>,  <41.302822, 35.279373, 35.928066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669685, 35.130074, 35.872192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346334, -0.573063, -0.742732,
		0.197174, 0.729579, -0.654857,
		0.917156, -0.373246, -0.139685,
		41.944832, 35.018101, 35.830288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854073, 34.597054, 36.212238>,  <41.302822, 35.279373, 35.928066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854073, 34.597054, 36.212238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953529, 34.431557, 36.562550>,  <41.013203, 34.332256, 36.772736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953529, 34.431557, 36.562550>,  <40.854073, 34.597054, 36.212238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953529, 34.431557, 36.562550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567692, -0.670349, -0.477868,
		0.784793, 0.615993, 0.068200,
		0.248646, -0.413744, 0.875780,
		41.028122, 34.307434, 36.825283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546455, 34.525387, 36.246914>,  <40.854073, 34.597054, 36.212238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546455, 34.525387, 36.246914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332619, 34.257431, 36.453007>,  <41.204315, 34.096657, 36.576660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332619, 34.257431, 36.453007>,  <41.546455, 34.525387, 36.246914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332619, 34.257431, 36.453007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473217, -0.742400, -0.474244,
		0.700196, -0.009712, 0.713884,
		-0.534594, -0.669887, 0.515230,
		41.172241, 34.056465, 36.607574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969936, 33.964016, 36.698330>,  <41.546455, 34.525387, 36.246914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969936, 33.964016, 36.698330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615524, 33.851791, 36.550686>,  <41.402878, 33.784458, 36.462101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615524, 33.851791, 36.550686>,  <41.969936, 33.964016, 36.698330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615524, 33.851791, 36.550686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447421, -0.726101, -0.522103,
		-0.121530, -0.627745, 0.768874,
		-0.886027, -0.280559, -0.369110,
		41.349716, 33.767624, 36.439953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965355, 33.280746, 36.831810>,  <41.969936, 33.964016, 36.698330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965355, 33.280746, 36.831810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745918, 33.422348, 36.528831>,  <41.614258, 33.507309, 36.347042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745918, 33.422348, 36.528831>,  <41.965355, 33.280746, 36.831810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745918, 33.422348, 36.528831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387459, -0.695151, -0.605508,
		-0.740896, -0.625655, 0.244188,
		-0.548587, 0.354006, -0.757451,
		41.581341, 33.528549, 36.301598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765877, 32.807064, 36.310677>,  <41.965355, 33.280746, 36.831810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765877, 32.807064, 36.310677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669979, 33.133869, 36.100910>,  <41.612442, 33.329952, 35.975052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669979, 33.133869, 36.100910>,  <41.765877, 32.807064, 36.310677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669979, 33.133869, 36.100910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482892, -0.368254, -0.794484,
		-0.842223, -0.443706, -0.306245,
		-0.239742, 0.817015, -0.524414,
		41.598057, 33.378975, 35.943584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444469, 32.657074, 35.739616>,  <41.765877, 32.807064, 36.310677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444469, 32.657074, 35.739616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670761, 32.978565, 35.665894>,  <41.806538, 33.171459, 35.621658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670761, 32.978565, 35.665894>,  <41.444469, 32.657074, 35.739616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670761, 32.978565, 35.665894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368269, -0.446252, -0.815621,
		-0.737785, 0.393547, -0.548447,
		0.565730, 0.803729, -0.184307,
		41.840481, 33.219685, 35.610603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933594, 32.036453, 35.839066>,  <41.444469, 32.657074, 35.739616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933594, 32.036453, 35.839066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751228, 31.695133, 35.737862>,  <40.641808, 31.490339, 35.677139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751228, 31.695133, 35.737862>,  <40.933594, 32.036453, 35.839066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751228, 31.695133, 35.737862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543899, -0.042103, -0.838094,
		0.704497, -0.519711, 0.483307,
		-0.455915, -0.853304, -0.253009,
		40.614452, 31.439142, 35.661961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466820, 31.548855, 35.661037>,  <40.933594, 32.036453, 35.839066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466820, 31.548855, 35.661037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108601, 31.540815, 35.483234>,  <40.893669, 31.535992, 35.376553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108601, 31.540815, 35.483234>,  <41.466820, 31.548855, 35.661037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108601, 31.540815, 35.483234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443939, 0.027189, -0.895644,
		0.030056, -0.999429, -0.015442,
		-0.895553, -0.020064, -0.444503,
		40.839935, 31.534786, 35.349884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461502, 31.328016, 34.912865>,  <41.466820, 31.548855, 35.661037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461502, 31.328016, 34.912865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070686, 31.412138, 34.899166>,  <40.836197, 31.462610, 34.890949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070686, 31.412138, 34.899166>,  <41.461502, 31.328016, 34.912865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070686, 31.412138, 34.899166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020071, -0.069151, -0.997404,
		-0.212126, -0.975187, 0.063342,
		-0.977036, 0.210304, -0.034242,
		40.777576, 31.475229, 34.888893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604229, 31.248735, 34.295887>,  <41.461502, 31.328016, 34.912865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604229, 31.248735, 34.295887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331768, 30.990164, 34.158386>,  <41.168293, 30.835022, 34.075886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331768, 30.990164, 34.158386>,  <41.604229, 31.248735, 34.295887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331768, 30.990164, 34.158386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305484, 0.677625, -0.668957,
		0.665357, -0.350659, -0.659043,
		-0.681160, -0.646423, -0.343742,
		41.127422, 30.796236, 34.055260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689880, 31.076694, 33.576241>,  <41.604229, 31.248735, 34.295887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689880, 31.076694, 33.576241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300877, 31.031490, 33.657677>,  <41.067474, 31.004368, 33.706539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300877, 31.031490, 33.657677>,  <41.689880, 31.076694, 33.576241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300877, 31.031490, 33.657677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228433, 0.632572, -0.740048,
		-0.045154, -0.766213, -0.640998,
		-0.972512, -0.113009, 0.203592,
		41.009125, 30.997587, 33.718754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237385, 30.814470, 32.956039>,  <41.689880, 31.076694, 33.576241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237385, 30.814470, 32.956039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039528, 31.045662, 33.215660>,  <40.920815, 31.184378, 33.371433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039528, 31.045662, 33.215660>,  <41.237385, 30.814470, 32.956039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039528, 31.045662, 33.215660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271535, 0.606653, -0.747155,
		-0.825591, -0.545813, -0.143133,
		-0.494639, 0.577979, 0.649055,
		40.891136, 31.219055, 33.410378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586910, 30.930107, 32.704510>,  <41.237385, 30.814470, 32.956039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586910, 30.930107, 32.704510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629536, 31.239197, 32.954803>,  <40.655113, 31.424650, 33.104980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629536, 31.239197, 32.954803>,  <40.586910, 30.930107, 32.704510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629536, 31.239197, 32.954803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366243, 0.615575, -0.697806,
		-0.924397, -0.154807, 0.348605,
		0.106567, 0.772724, 0.625733,
		40.661507, 31.471014, 33.142525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041943, 31.292107, 32.592194>,  <40.586910, 30.930107, 32.704510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041943, 31.292107, 32.592194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272190, 31.560886, 32.778587>,  <40.410339, 31.722155, 32.890423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272190, 31.560886, 32.778587>,  <40.041943, 31.292107, 32.592194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272190, 31.560886, 32.778587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259452, 0.690501, -0.675199,
		-0.775464, 0.267758, 0.571806,
		0.575622, 0.671949, 0.465988,
		40.444878, 31.762470, 32.918385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584061, 31.955549, 32.760185>,  <40.041943, 31.292107, 32.592194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584061, 31.955549, 32.760185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968273, 32.066315, 32.770725>,  <40.198799, 32.132774, 32.777050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968273, 32.066315, 32.770725>,  <39.584061, 31.955549, 32.760185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968273, 32.066315, 32.770725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217974, 0.808154, -0.547151,
		-0.172812, 0.519813, 0.836619,
		0.960533, 0.276916, 0.026353,
		40.256432, 32.149391, 32.778633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575233, 32.587749, 32.626667>,  <39.584061, 31.955549, 32.760185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575233, 32.587749, 32.626667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962914, 32.529697, 32.547085>,  <40.195522, 32.494865, 32.499336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962914, 32.529697, 32.547085>,  <39.575233, 32.587749, 32.626667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962914, 32.529697, 32.547085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002184, 0.812929, -0.582358,
		0.246253, 0.563989, 0.788211,
		0.969203, -0.145129, -0.198955,
		40.253674, 32.486160, 32.487400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944031, 33.247169, 32.709782>,  <39.575233, 32.587749, 32.626667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944031, 33.247169, 32.709782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148037, 32.994469, 32.476280>,  <40.270439, 32.842846, 32.336178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148037, 32.994469, 32.476280>,  <39.944031, 33.247169, 32.709782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148037, 32.994469, 32.476280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000213, 0.678561, -0.734545,
		0.860165, 0.374754, 0.345942,
		0.510017, -0.631755, -0.583754,
		40.301041, 32.804943, 32.301155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392868, 33.690231, 32.401089>,  <39.944031, 33.247169, 32.709782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392868, 33.690231, 32.401089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400078, 33.360100, 32.175343>,  <40.404404, 33.162022, 32.039894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400078, 33.360100, 32.175343>,  <40.392868, 33.690231, 32.401089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400078, 33.360100, 32.175343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166716, 0.554071, -0.815605,
		0.985840, 0.108786, -0.127611,
		0.018021, -0.825331, -0.564362,
		40.405483, 33.112499, 32.006035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903713, 33.843086, 31.796690>,  <40.392868, 33.690231, 32.401089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903713, 33.843086, 31.796690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635586, 33.564674, 31.693758>,  <40.474709, 33.397629, 31.631998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635586, 33.564674, 31.693758>,  <40.903713, 33.843086, 31.796690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635586, 33.564674, 31.693758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173509, 0.484164, -0.857601,
		0.721505, -0.530216, -0.445311,
		-0.670318, -0.696029, -0.257330,
		40.434490, 33.355865, 31.616560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081688, 33.643120, 31.053200>,  <40.903713, 33.843086, 31.796690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081688, 33.643120, 31.053200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703568, 33.518085, 31.090490>,  <40.476696, 33.443066, 31.112865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703568, 33.518085, 31.090490>,  <41.081688, 33.643120, 31.053200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703568, 33.518085, 31.090490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269960, 0.589278, -0.761494,
		0.183096, -0.745011, -0.641432,
		-0.945303, -0.312587, 0.093229,
		40.419975, 33.424309, 31.118460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955967, 33.541126, 30.374254>,  <41.081688, 33.643120, 31.053200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955967, 33.541126, 30.374254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605846, 33.573982, 30.564875>,  <40.395775, 33.593697, 30.679247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605846, 33.573982, 30.564875>,  <40.955967, 33.541126, 30.374254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605846, 33.573982, 30.564875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339437, 0.597534, -0.726454,
		-0.344425, -0.797625, -0.495142,
		-0.875302, 0.082140, 0.476549,
		40.343254, 33.598625, 30.707840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415318, 33.420574, 29.923571>,  <40.955967, 33.541126, 30.374254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415318, 33.420574, 29.923571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226463, 33.617760, 30.215891>,  <40.113152, 33.736073, 30.391283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226463, 33.617760, 30.215891>,  <40.415318, 33.420574, 29.923571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226463, 33.617760, 30.215891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510695, 0.522769, -0.682571,
		-0.718524, -0.695485, 0.004936,
		-0.472137, 0.492964, 0.730802,
		40.084824, 33.765648, 30.435131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695576, 33.330227, 29.815205>,  <40.415318, 33.420574, 29.923571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695576, 33.330227, 29.815205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750374, 33.657921, 30.037947>,  <39.783253, 33.854538, 30.171591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750374, 33.657921, 30.037947>,  <39.695576, 33.330227, 29.815205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750374, 33.657921, 30.037947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470142, 0.548576, -0.691398,
		-0.871894, -0.167085, 0.460307,
		0.136992, 0.819236, 0.556854,
		39.791470, 33.903690, 30.205004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023781, 33.623959, 29.845570>,  <39.695576, 33.330227, 29.815205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023781, 33.623959, 29.845570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270782, 33.926567, 29.931692>,  <39.418983, 34.108131, 29.983366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270782, 33.926567, 29.931692>,  <39.023781, 33.623959, 29.845570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270782, 33.926567, 29.931692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589188, 0.626231, -0.510581,
		-0.521097, 0.188433, 0.832437,
		0.617508, 0.756523, 0.215305,
		39.456036, 34.153522, 29.996283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529556, 34.181847, 29.944027>,  <39.023781, 33.623959, 29.845570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529556, 34.181847, 29.944027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891037, 34.346558, 29.897104>,  <39.107925, 34.445385, 29.868950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891037, 34.346558, 29.897104>,  <38.529556, 34.181847, 29.944027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891037, 34.346558, 29.897104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383283, 0.655923, -0.650276,
		-0.190823, 0.632618, 0.750587,
		0.903704, 0.411775, -0.117307,
		39.162148, 34.470089, 29.861912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438793, 34.848095, 30.352346>,  <38.529556, 34.181847, 29.944027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438793, 34.848095, 30.352346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726875, 34.866966, 30.075485>,  <38.899727, 34.878288, 29.909369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726875, 34.866966, 30.075485>,  <38.438793, 34.848095, 30.352346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726875, 34.866966, 30.075485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599365, 0.544748, -0.586525,
		0.349375, 0.837272, 0.420611,
		0.720207, 0.047183, -0.692153,
		38.942936, 34.881123, 29.867840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520039, 35.560799, 30.162674>,  <38.438793, 34.848095, 30.352346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520039, 35.560799, 30.162674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695267, 35.377857, 29.853115>,  <38.800404, 35.268093, 29.667379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695267, 35.377857, 29.853115>,  <38.520039, 35.560799, 30.162674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695267, 35.377857, 29.853115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621620, 0.467771, -0.628314,
		0.649368, 0.756320, -0.079381,
		0.438074, -0.457352, -0.773899,
		38.826691, 35.240650, 29.620945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590340, 36.128853, 29.704334>,  <38.520039, 35.560799, 30.162674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590340, 36.128853, 29.704334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610649, 35.785877, 29.499502>,  <38.622837, 35.580093, 29.376602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610649, 35.785877, 29.499502>,  <38.590340, 36.128853, 29.704334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610649, 35.785877, 29.499502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641686, 0.364891, -0.674607,
		0.765285, 0.362848, -0.531676,
		0.050776, -0.857435, -0.512080,
		38.625881, 35.528648, 29.345879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632347, 36.330990, 29.023895>,  <38.590340, 36.128853, 29.704334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632347, 36.330990, 29.023895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524723, 35.950043, 28.966492>,  <38.460148, 35.721474, 28.932049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524723, 35.950043, 28.966492>,  <38.632347, 36.330990, 29.023895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524723, 35.950043, 28.966492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509616, 0.267214, -0.817856,
		0.817250, -0.146916, -0.557240,
		-0.269059, -0.952372, -0.143510,
		38.444004, 35.664330, 28.923439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773819, 36.142673, 28.315256>,  <38.632347, 36.330990, 29.023895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773819, 36.142673, 28.315256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499535, 35.859497, 28.382936>,  <38.334965, 35.689590, 28.423544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499535, 35.859497, 28.382936>,  <38.773819, 36.142673, 28.315256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499535, 35.859497, 28.382936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568534, 0.375772, -0.731823,
		0.454508, -0.598009, -0.660157,
		-0.685705, -0.707941, 0.169197,
		38.293823, 35.647114, 28.433697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681530, 35.698425, 27.635700>,  <38.773819, 36.142673, 28.315256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681530, 35.698425, 27.635700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362568, 35.689339, 27.876907>,  <38.171192, 35.683887, 28.021631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362568, 35.689339, 27.876907>,  <38.681530, 35.698425, 27.635700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362568, 35.689339, 27.876907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593073, 0.213998, -0.776189,
		-0.111410, -0.976570, -0.184117,
		-0.797404, -0.022720, 0.603019,
		38.123348, 35.682522, 28.057814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110306, 35.390175, 27.250317>,  <38.681530, 35.698425, 27.635700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110306, 35.390175, 27.250317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920544, 35.587875, 27.541702>,  <37.806686, 35.706493, 27.716534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920544, 35.587875, 27.541702>,  <38.110306, 35.390175, 27.250317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920544, 35.587875, 27.541702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756250, 0.194743, -0.624629,
		-0.450585, -0.847227, 0.281388,
		-0.474405, 0.494248, 0.728463,
		37.778221, 35.736149, 27.760241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395145, 35.134468, 27.183958>,  <38.110306, 35.390175, 27.250317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395145, 35.134468, 27.183958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374355, 35.479202, 27.385763>,  <37.361881, 35.686043, 27.506847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374355, 35.479202, 27.385763>,  <37.395145, 35.134468, 27.183958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374355, 35.479202, 27.385763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853042, 0.224359, -0.471150,
		-0.519247, -0.454862, 0.723522,
		-0.051980, 0.861838, 0.504514,
		37.358761, 35.737755, 27.537117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769264, 35.173317, 27.445095>,  <37.395145, 35.134468, 27.183958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769264, 35.173317, 27.445095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852009, 35.557648, 27.518883>,  <36.901657, 35.788246, 27.563154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852009, 35.557648, 27.518883>,  <36.769264, 35.173317, 27.445095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852009, 35.557648, 27.518883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962676, 0.233528, -0.136817,
		-0.174535, -0.149280, 0.973269,
		0.206862, 0.960823, 0.184468,
		36.914066, 35.845894, 27.574223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186890, 35.412853, 27.904776>,  <36.769264, 35.173317, 27.445095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186890, 35.412853, 27.904776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342659, 35.726833, 27.712027>,  <36.436119, 35.915222, 27.596376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342659, 35.726833, 27.712027>,  <36.186890, 35.412853, 27.904776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342659, 35.726833, 27.712027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920453, 0.350635, -0.172692,
		0.033408, 0.510792, 0.859055,
		0.389424, 0.784950, -0.481874,
		36.459488, 35.962318, 27.567465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697739, 35.879917, 27.949604>,  <36.186890, 35.412853, 27.904776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697739, 35.879917, 27.949604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939167, 36.023842, 27.665001>,  <36.084023, 36.110195, 27.494240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939167, 36.023842, 27.665001>,  <35.697739, 35.879917, 27.949604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939167, 36.023842, 27.665001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782960, 0.436029, -0.443681,
		0.150598, 0.824874, 0.544888,
		0.603568, 0.359808, -0.711508,
		36.120239, 36.131783, 27.451548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514286, 36.541672, 27.773100>,  <35.697739, 35.879917, 27.949604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514286, 36.541672, 27.773100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710503, 36.447006, 27.437634>,  <35.828232, 36.390205, 27.236353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710503, 36.447006, 27.437634>,  <35.514286, 36.541672, 27.773100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710503, 36.447006, 27.437634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713367, 0.443678, -0.542455,
		0.500479, 0.864371, 0.048810,
		0.490538, -0.236668, -0.838666,
		35.857662, 36.376007, 27.186033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639580, 37.151920, 27.466360>,  <35.514286, 36.541672, 27.773100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639580, 37.151920, 27.466360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647228, 36.888111, 27.165785>,  <35.651817, 36.729824, 26.985439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647228, 36.888111, 27.165785>,  <35.639580, 37.151920, 27.466360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647228, 36.888111, 27.165785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753864, 0.484179, -0.444140,
		0.656753, 0.574974, -0.487935,
		0.019121, -0.659526, -0.751438,
		35.652966, 36.690254, 26.940353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535656, 37.559223, 26.911959>,  <35.639580, 37.151920, 27.466360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535656, 37.559223, 26.911959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466110, 37.195099, 26.761705>,  <35.424381, 36.976624, 26.671555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466110, 37.195099, 26.761705>,  <35.535656, 37.559223, 26.911959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466110, 37.195099, 26.761705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715012, 0.378983, -0.587478,
		0.677147, 0.166437, -0.716778,
		-0.173869, -0.910314, -0.375632,
		35.413948, 36.922005, 26.649015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655739, 37.691936, 26.172247>,  <35.535656, 37.559223, 26.911959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655739, 37.691936, 26.172247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430103, 37.366665, 26.229580>,  <35.294720, 37.171501, 26.263979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430103, 37.366665, 26.229580>,  <35.655739, 37.691936, 26.172247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430103, 37.366665, 26.229580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657486, 0.337339, -0.673732,
		0.499513, -0.474283, -0.724943,
		-0.564091, -0.813178, 0.143329,
		35.260876, 37.122711, 26.272579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424557, 37.451542, 25.433714>,  <35.655739, 37.691936, 26.172247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424557, 37.451542, 25.433714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190643, 37.301712, 25.721525>,  <35.050297, 37.211815, 25.894213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190643, 37.301712, 25.721525>,  <35.424557, 37.451542, 25.433714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190643, 37.301712, 25.721525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808718, 0.338426, -0.481086,
		-0.063303, -0.863226, -0.500832,
		-0.584781, -0.374578, 0.719530,
		35.015209, 37.189339, 25.937384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916882, 37.281139, 25.022734>,  <35.424557, 37.451542, 25.433714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916882, 37.281139, 25.022734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755260, 37.285187, 25.388605>,  <34.658287, 37.287617, 25.608128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755260, 37.285187, 25.388605>,  <34.916882, 37.281139, 25.022734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755260, 37.285187, 25.388605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851424, 0.361377, -0.380111,
		-0.334391, -0.932365, -0.137400,
		-0.404055, 0.010120, 0.914679,
		34.634045, 37.288223, 25.663010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259151, 36.850765, 25.047989>,  <34.916882, 37.281139, 25.022734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259151, 36.850765, 25.047989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233841, 37.129753, 25.333515>,  <34.218655, 37.297146, 25.504831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233841, 37.129753, 25.333515>,  <34.259151, 36.850765, 25.047989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233841, 37.129753, 25.333515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858791, 0.326314, -0.394965,
		-0.508404, -0.638010, 0.578333,
		-0.063273, 0.697469, 0.713816,
		34.214859, 37.338993, 25.547661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635075, 36.977119, 25.083294>,  <34.259151, 36.850765, 25.047989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635075, 36.977119, 25.083294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738960, 37.293705, 25.304611>,  <33.801292, 37.483658, 25.437403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738960, 37.293705, 25.304611>,  <33.635075, 36.977119, 25.083294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738960, 37.293705, 25.304611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764405, 0.518614, -0.383048,
		-0.590114, -0.323459, 0.739689,
		0.259713, 0.791464, 0.553295,
		33.816875, 37.531143, 25.470600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988689, 37.148701, 25.535355>,  <33.635075, 36.977119, 25.083294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988689, 37.148701, 25.535355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236946, 37.462036, 25.521597>,  <33.385902, 37.650036, 25.513342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236946, 37.462036, 25.521597>,  <32.988689, 37.148701, 25.535355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236946, 37.462036, 25.521597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767134, 0.597567, -0.233276,
		-0.162181, 0.171167, 0.971802,
		0.620646, 0.783336, -0.034394,
		33.423141, 37.697037, 25.511278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657749, 37.712894, 25.870268>,  <32.988689, 37.148701, 25.535355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657749, 37.712894, 25.870268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938904, 37.879833, 25.639872>,  <33.107597, 37.979996, 25.501633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938904, 37.879833, 25.639872>,  <32.657749, 37.712894, 25.870268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938904, 37.879833, 25.639872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669712, 0.661131, -0.338219,
		0.239652, 0.623479, 0.744205,
		0.702889, 0.417348, -0.575993,
		33.149769, 38.005039, 25.467073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587132, 38.453861, 25.973085>,  <32.657749, 37.712894, 25.870268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587132, 38.453861, 25.973085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742973, 38.385910, 25.611013>,  <32.836479, 38.345139, 25.393770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742973, 38.385910, 25.611013>,  <32.587132, 38.453861, 25.973085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742973, 38.385910, 25.611013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709492, 0.571302, -0.412595,
		0.587220, 0.802968, 0.102059,
		0.389607, -0.169874, -0.905179,
		32.859856, 38.334949, 25.339460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801506, 39.124542, 25.645863>,  <32.587132, 38.453861, 25.973085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801506, 39.124542, 25.645863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722710, 38.866508, 25.350548>,  <32.675434, 38.711689, 25.173359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722710, 38.866508, 25.350548>,  <32.801506, 39.124542, 25.645863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722710, 38.866508, 25.350548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746613, 0.586770, -0.313481,
		0.635425, 0.489462, -0.597212,
		-0.196988, -0.645080, -0.738287,
		32.663612, 38.672985, 25.129063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322292, 39.433941, 25.248489>,  <32.801506, 39.124542, 25.645863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322292, 39.433941, 25.248489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277328, 39.079418, 25.068794>,  <32.250351, 38.866703, 24.960978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277328, 39.079418, 25.068794>,  <32.322292, 39.433941, 25.248489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277328, 39.079418, 25.068794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867119, 0.308281, -0.391239,
		0.485252, 0.345565, -0.803191,
		-0.112410, -0.886311, -0.449240,
		32.243607, 38.813526, 24.934023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145149, 39.570225, 24.551031>,  <32.322292, 39.433941, 25.248489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145149, 39.570225, 24.551031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024872, 39.195099, 24.620413>,  <31.952705, 38.970024, 24.662041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024872, 39.195099, 24.620413>,  <32.145149, 39.570225, 24.551031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024872, 39.195099, 24.620413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855272, 0.184683, -0.484150,
		0.422010, -0.293931, -0.857620,
		-0.300694, -0.937815, 0.173453,
		31.934664, 38.913754, 24.672449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894253, 39.289021, 23.840693>,  <32.145149, 39.570225, 24.551031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894253, 39.289021, 23.840693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722647, 39.087593, 24.140657>,  <31.619682, 38.966736, 24.320637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722647, 39.087593, 24.140657>,  <31.894253, 39.289021, 23.840693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722647, 39.087593, 24.140657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884656, 0.066447, -0.461485,
		0.182560, -0.861397, -0.473991,
		-0.429017, -0.503568, 0.749909,
		31.593941, 38.936523, 24.365631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360451, 39.059616, 23.531149>,  <31.894253, 39.289021, 23.840693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360451, 39.059616, 23.531149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259981, 38.987873, 23.911621>,  <31.199699, 38.944828, 24.139904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259981, 38.987873, 23.911621>,  <31.360451, 39.059616, 23.531149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259981, 38.987873, 23.911621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962056, 0.154465, -0.224918,
		-0.106584, -0.971583, -0.211346,
		-0.251172, -0.179354, 0.951180,
		31.184629, 38.934067, 24.196976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848671, 38.509323, 23.589779>,  <31.360451, 39.059616, 23.531149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848671, 38.509323, 23.589779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804260, 38.696537, 23.940462>,  <30.777615, 38.808865, 24.150873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804260, 38.696537, 23.940462>,  <30.848671, 38.509323, 23.589779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804260, 38.696537, 23.940462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986084, -0.161719, -0.038542,
		0.123742, -0.868788, 0.479474,
		-0.111025, 0.468033, 0.876709,
		30.770952, 38.836948, 24.203474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581455, 38.066063, 24.108341>,  <30.848671, 38.509323, 23.589779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581455, 38.066063, 24.108341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491398, 38.446259, 24.194017>,  <30.437363, 38.674377, 24.245422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491398, 38.446259, 24.194017>,  <30.581455, 38.066063, 24.108341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491398, 38.446259, 24.194017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970815, -0.237489, 0.033414,
		0.082627, -0.200416, 0.976220,
		-0.225145, 0.950491, 0.214190,
		30.423855, 38.731407, 24.258274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180538, 38.183113, 24.710550>,  <30.581455, 38.066063, 24.108341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180538, 38.183113, 24.710550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104134, 38.544468, 24.556974>,  <30.058290, 38.761280, 24.464828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104134, 38.544468, 24.556974>,  <30.180538, 38.183113, 24.710550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104134, 38.544468, 24.556974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975023, -0.129460, 0.180473,
		0.113332, 0.408821, 0.905550,
		-0.191013, 0.903386, -0.383938,
		30.046829, 38.815483, 24.441793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779289, 38.448227, 25.181099>,  <30.180538, 38.183113, 24.710550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779289, 38.448227, 25.181099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731478, 38.600079, 24.814144>,  <29.702791, 38.691189, 24.593971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731478, 38.600079, 24.814144>,  <29.779289, 38.448227, 25.181099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731478, 38.600079, 24.814144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978275, -0.202676, 0.043594,
		-0.169382, 0.902666, 0.395606,
		-0.119530, 0.379627, -0.917385,
		29.695618, 38.713966, 24.538929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155985, 38.740818, 25.286850>,  <29.779289, 38.448227, 25.181099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155985, 38.740818, 25.286850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241785, 38.702541, 24.898041>,  <29.293264, 38.679573, 24.664755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241785, 38.702541, 24.898041>,  <29.155985, 38.740818, 25.286850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241785, 38.702541, 24.898041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976275, -0.051160, -0.210402,
		-0.029595, 0.994095, -0.104399,
		0.214501, -0.095695, -0.972025,
		29.306135, 38.673832, 24.606434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644152, 39.047665, 24.912365>,  <29.155985, 38.740818, 25.286850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644152, 39.047665, 24.912365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803751, 38.773773, 24.668415>,  <28.899509, 38.609440, 24.522045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803751, 38.773773, 24.668415>,  <28.644152, 39.047665, 24.912365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803751, 38.773773, 24.668415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906472, -0.194269, -0.374924,
		0.138242, 0.702428, -0.698201,
		0.398996, -0.684729, -0.609875,
		28.923450, 38.568356, 24.485453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254591, 39.667713, 24.996151>,  <28.644152, 39.047665, 24.912365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254591, 39.667713, 24.996151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223186, 40.008747, 24.789490>,  <28.204344, 40.213367, 24.665493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223186, 40.008747, 24.789490>,  <28.254591, 39.667713, 24.996151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223186, 40.008747, 24.789490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732058, 0.401094, 0.550649,
		0.676703, -0.334987, -0.655635,
		-0.078511, 0.852588, -0.516652,
		28.199633, 40.264523, 24.634495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939445, 39.806225, 24.768553>,  <28.254591, 39.667713, 24.996151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939445, 39.806225, 24.768553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708248, 40.127823, 24.824440>,  <28.569529, 40.320782, 24.857971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708248, 40.127823, 24.824440>,  <28.939445, 39.806225, 24.768553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708248, 40.127823, 24.824440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702980, 0.403613, 0.585591,
		0.414418, 0.436686, -0.798475,
		-0.577994, 0.803991, 0.139717,
		28.534849, 40.369019, 24.866356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322294, 40.421516, 24.490263>,  <28.939445, 39.806225, 24.768553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322294, 40.421516, 24.490263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062841, 40.502083, 24.783850>,  <28.907169, 40.550423, 24.960001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062841, 40.502083, 24.783850>,  <29.322294, 40.421516, 24.490263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062841, 40.502083, 24.783850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758053, 0.257171, 0.599348,
		-0.068039, 0.945143, -0.319491,
		-0.648634, 0.201412, 0.733967,
		28.868252, 40.562508, 25.004040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235474, 41.148918, 24.619921>,  <29.322294, 40.421516, 24.490263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235474, 41.148918, 24.619921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175173, 40.934139, 24.951935>,  <29.138992, 40.805271, 25.151144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175173, 40.934139, 24.951935>,  <29.235474, 41.148918, 24.619921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175173, 40.934139, 24.951935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785144, 0.445151, 0.430569,
		-0.600685, 0.716607, 0.354475,
		-0.150754, -0.536950, 0.830035,
		29.129948, 40.773056, 25.200945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306782, 41.683777, 25.245348>,  <29.235474, 41.148918, 24.619921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306782, 41.683777, 25.245348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344763, 41.325928, 25.419992>,  <29.367552, 41.111217, 25.524780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344763, 41.325928, 25.419992>,  <29.306782, 41.683777, 25.245348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344763, 41.325928, 25.419992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771948, 0.343102, 0.535142,
		-0.628554, 0.286229, 0.723182,
		0.094952, -0.894625, 0.436613,
		29.373249, 41.057541, 25.550976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588249, 41.740044, 25.978258>,  <29.306782, 41.683777, 25.245348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588249, 41.740044, 25.978258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653971, 41.364662, 25.856726>,  <29.693403, 41.139435, 25.783806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653971, 41.364662, 25.856726>,  <29.588249, 41.740044, 25.978258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653971, 41.364662, 25.856726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793471, -0.057244, 0.605910,
		-0.586010, -0.340634, 0.735228,
		0.164306, -0.938452, -0.303829,
		29.703262, 41.083126, 25.765577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667158, 41.278046, 26.634182>,  <29.588249, 41.740044, 25.978258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667158, 41.278046, 26.634182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841537, 41.177380, 26.288555>,  <29.946165, 41.116982, 26.081179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841537, 41.177380, 26.288555>,  <29.667158, 41.278046, 26.634182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841537, 41.177380, 26.288555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863565, -0.153342, 0.480356,
		-0.253387, -0.955589, 0.150482,
		0.435947, -0.251667, -0.864068,
		29.972322, 41.101879, 26.029335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956942, 40.589409, 26.668089>,  <29.667158, 41.278046, 26.634182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956942, 40.589409, 26.668089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163015, 40.747768, 26.364023>,  <30.286659, 40.842785, 26.181583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163015, 40.747768, 26.364023>,  <29.956942, 40.589409, 26.668089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163015, 40.747768, 26.364023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854292, -0.308664, 0.418224,
		-0.069060, -0.864863, -0.497235,
		0.515185, 0.395901, -0.760162,
		30.317572, 40.866539, 26.135975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344957, 39.997631, 26.402433>,  <29.956942, 40.589409, 26.668089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344957, 39.997631, 26.402433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521114, 40.327106, 26.259556>,  <30.626808, 40.524792, 26.173828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521114, 40.327106, 26.259556>,  <30.344957, 39.997631, 26.402433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521114, 40.327106, 26.259556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888535, -0.342843, 0.304899,
		0.128680, -0.451656, -0.882863,
		0.440393, 0.823690, -0.357195,
		30.653233, 40.574215, 26.152397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864199, 39.761292, 25.988583>,  <30.344957, 39.997631, 26.402433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864199, 39.761292, 25.988583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954147, 40.138138, 26.088058>,  <31.008116, 40.364246, 26.147743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954147, 40.138138, 26.088058>,  <30.864199, 39.761292, 25.988583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954147, 40.138138, 26.088058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869697, -0.309152, 0.384775,
		0.439386, 0.129761, -0.888877,
		0.224870, 0.942118, 0.248690,
		31.021608, 40.420773, 26.162664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542564, 39.917328, 25.751005>,  <30.864199, 39.761292, 25.988583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542564, 39.917328, 25.751005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488266, 40.177471, 26.049965>,  <31.455687, 40.333557, 26.229342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488266, 40.177471, 26.049965>,  <31.542564, 39.917328, 25.751005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488266, 40.177471, 26.049965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934662, -0.166145, 0.314330,
		0.328604, 0.741235, -0.585312,
		-0.135746, 0.650359, 0.747400,
		31.447542, 40.372578, 26.274185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228119, 40.335518, 25.902508>,  <31.542564, 39.917328, 25.751005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228119, 40.335518, 25.902508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979509, 40.388229, 26.211399>,  <31.830343, 40.419857, 26.396734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979509, 40.388229, 26.211399>,  <32.228119, 40.335518, 25.902508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979509, 40.388229, 26.211399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684342, -0.388448, 0.617078,
		0.381287, 0.912000, 0.151251,
		-0.621528, 0.131776, 0.772229,
		31.793051, 40.427761, 26.443068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701401, 40.690907, 26.498652>,  <32.228119, 40.335518, 25.902508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701401, 40.690907, 26.498652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367382, 40.532764, 26.651695>,  <32.166969, 40.437878, 26.743521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367382, 40.532764, 26.651695>,  <32.701401, 40.690907, 26.498652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367382, 40.532764, 26.651695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529986, -0.391370, 0.752293,
		-0.147682, 0.830977, 0.536346,
		-0.835048, -0.395356, 0.382608,
		32.116867, 40.414158, 26.766478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797421, 40.877167, 27.169407>,  <32.701401, 40.690907, 26.498652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797421, 40.877167, 27.169407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521881, 40.587925, 27.148943>,  <32.356560, 40.414379, 27.136663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521881, 40.587925, 27.148943>,  <32.797421, 40.877167, 27.169407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521881, 40.587925, 27.148943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414046, -0.450399, 0.791016,
		-0.595027, 0.523705, 0.609652,
		-0.688846, -0.723100, -0.051162,
		32.315228, 40.370995, 27.133595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578297, 40.852955, 27.865829>,  <32.797421, 40.877167, 27.169407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578297, 40.852955, 27.865829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506195, 40.508152, 27.676321>,  <32.462936, 40.301270, 27.562616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506195, 40.508152, 27.676321>,  <32.578297, 40.852955, 27.865829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506195, 40.508152, 27.676321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502770, -0.494728, 0.708849,
		-0.845419, -0.110428, 0.522564,
		-0.180249, -0.862004, -0.473772,
		32.452122, 40.249550, 27.534189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436131, 40.491558, 28.456448>,  <32.578297, 40.852955, 27.865829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436131, 40.491558, 28.456448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518402, 40.244160, 28.153093>,  <32.567764, 40.095718, 27.971081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518402, 40.244160, 28.153093>,  <32.436131, 40.491558, 28.456448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518402, 40.244160, 28.153093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498514, -0.600652, 0.625061,
		-0.842127, -0.506631, 0.184788,
		0.205682, -0.618500, -0.758388,
		32.580105, 40.058609, 27.925577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194305, 39.867935, 28.700441>,  <32.436131, 40.491558, 28.456448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194305, 39.867935, 28.700441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452618, 39.771824, 28.410549>,  <32.607605, 39.714157, 28.236614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452618, 39.771824, 28.410549>,  <32.194305, 39.867935, 28.700441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452618, 39.771824, 28.410549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450259, -0.646732, 0.615633,
		-0.616630, -0.723880, -0.309459,
		0.645782, -0.240281, -0.724728,
		32.646351, 39.699738, 28.193130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201767, 39.145172, 28.647648>,  <32.194305, 39.867935, 28.700441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201767, 39.145172, 28.647648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530445, 39.255943, 28.448400>,  <32.727654, 39.322407, 28.328852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530445, 39.255943, 28.448400>,  <32.201767, 39.145172, 28.647648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530445, 39.255943, 28.448400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547806, -0.624897, 0.556248,
		-0.157231, -0.729941, -0.665180,
		0.821697, 0.276930, -0.498119,
		32.776955, 39.339024, 28.298965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566551, 38.543484, 28.601904>,  <32.201767, 39.145172, 28.647648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566551, 38.543484, 28.601904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847862, 38.817028, 28.524202>,  <33.016647, 38.981155, 28.477581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847862, 38.817028, 28.524202>,  <32.566551, 38.543484, 28.601904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847862, 38.817028, 28.524202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627068, -0.467978, 0.622722,
		0.334951, -0.559754, -0.757946,
		0.703273, 0.683865, -0.194254,
		33.058846, 39.022186, 28.465925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116817, 38.163139, 28.332085>,  <32.566551, 38.543484, 28.601904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116817, 38.163139, 28.332085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264603, 38.509941, 28.465834>,  <33.353275, 38.718021, 28.546083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264603, 38.509941, 28.465834>,  <33.116817, 38.163139, 28.332085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264603, 38.509941, 28.465834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610445, -0.497750, 0.616118,
		0.700610, -0.023515, -0.713157,
		0.369461, 0.867002, 0.334374,
		33.375443, 38.770042, 28.566145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774273, 38.053928, 28.289564>,  <33.116817, 38.163139, 28.332085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774273, 38.053928, 28.289564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712639, 38.348732, 28.552797>,  <33.675659, 38.525616, 28.710737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712639, 38.348732, 28.552797>,  <33.774273, 38.053928, 28.289564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712639, 38.348732, 28.552797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564060, -0.481227, 0.671011,
		0.811230, 0.474591, -0.341568,
		-0.154084, 0.737010, 0.658084,
		33.666412, 38.569836, 28.750223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374680, 38.125530, 28.450348>,  <33.774273, 38.053928, 28.289564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374680, 38.125530, 28.450348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145958, 38.277508, 28.741190>,  <34.008724, 38.368694, 28.915695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145958, 38.277508, 28.741190>,  <34.374680, 38.125530, 28.450348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145958, 38.277508, 28.741190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521089, -0.516340, 0.679603,
		0.633644, 0.767486, 0.097261,
		-0.571806, 0.379945, 0.727104,
		33.974415, 38.391491, 28.959322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806274, 38.391304, 28.997076>,  <34.374680, 38.125530, 28.450348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806274, 38.391304, 28.997076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445889, 38.331341, 29.159943>,  <34.229656, 38.295361, 29.257664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445889, 38.331341, 29.159943>,  <34.806274, 38.391304, 28.997076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445889, 38.331341, 29.159943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427432, -0.467943, 0.773519,
		0.074573, 0.870951, 0.485678,
		-0.900967, -0.149911, 0.407168,
		34.175598, 38.286369, 29.282093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887440, 38.431820, 29.740446>,  <34.806274, 38.391304, 28.997076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887440, 38.431820, 29.740446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520218, 38.273464, 29.732050>,  <34.299885, 38.178452, 29.727013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520218, 38.273464, 29.732050>,  <34.887440, 38.431820, 29.740446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520218, 38.273464, 29.732050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206349, -0.522390, 0.827362,
		-0.338507, 0.755236, 0.561276,
		-0.918059, -0.395887, -0.020991,
		34.244801, 38.154697, 29.725752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591366, 38.554447, 30.367205>,  <34.887440, 38.431820, 29.740446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591366, 38.554447, 30.367205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393280, 38.236969, 30.225889>,  <34.274429, 38.046482, 30.141100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393280, 38.236969, 30.225889>,  <34.591366, 38.554447, 30.367205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393280, 38.236969, 30.225889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311355, -0.541779, 0.780727,
		-0.811064, 0.276626, 0.515416,
		-0.495210, -0.793697, -0.353288,
		34.244717, 37.998859, 30.119904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206921, 38.290230, 30.919626>,  <34.591366, 38.554447, 30.367205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206921, 38.290230, 30.919626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243622, 37.968678, 30.684557>,  <34.265640, 37.775745, 30.543516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243622, 37.968678, 30.684557>,  <34.206921, 38.290230, 30.919626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243622, 37.968678, 30.684557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366854, -0.521365, 0.770452,
		-0.925743, -0.286279, 0.247072,
		0.091750, -0.803880, -0.587672,
		34.271149, 37.727512, 30.508255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945877, 37.755131, 31.303072>,  <34.206921, 38.290230, 30.919626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945877, 37.755131, 31.303072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128757, 37.541420, 31.018673>,  <34.238483, 37.413193, 30.848034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128757, 37.541420, 31.018673>,  <33.945877, 37.755131, 31.303072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128757, 37.541420, 31.018673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219732, -0.706803, 0.672419,
		-0.861793, -0.463658, -0.205752,
		0.457199, -0.534276, -0.710999,
		34.265919, 37.381138, 30.805374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731087, 36.951538, 31.351761>,  <33.945877, 37.755131, 31.303072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731087, 36.951538, 31.351761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089249, 36.982769, 31.176422>,  <34.304146, 37.001507, 31.071218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089249, 36.982769, 31.176422>,  <33.731087, 36.951538, 31.351761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089249, 36.982769, 31.176422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291226, -0.847403, 0.443954,
		-0.336797, -0.525178, -0.781509,
		0.895408, 0.078073, -0.438348,
		34.357872, 37.006191, 31.044918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896393, 36.314930, 31.221329>,  <33.731087, 36.951538, 31.351761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896393, 36.314930, 31.221329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240078, 36.515675, 31.181540>,  <34.446289, 36.636120, 31.157665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240078, 36.515675, 31.181540>,  <33.896393, 36.314930, 31.221329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240078, 36.515675, 31.181540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486374, -0.740886, 0.463173,
		0.158750, -0.446343, -0.880668,
		0.859208, 0.501863, -0.099474,
		34.497841, 36.666233, 31.151697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367401, 35.809963, 31.235485>,  <33.896393, 36.314930, 31.221329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367401, 35.809963, 31.235485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602406, 36.128681, 31.291977>,  <34.743408, 36.319912, 31.325872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602406, 36.128681, 31.291977>,  <34.367401, 35.809963, 31.235485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602406, 36.128681, 31.291977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679946, -0.580706, 0.447720,
		0.438754, -0.167013, -0.882950,
		0.587510, 0.796798, 0.141228,
		34.778660, 36.367722, 31.334345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039600, 35.658646, 30.888870>,  <34.367401, 35.809963, 31.235485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039600, 35.658646, 30.888870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084026, 35.930622, 31.178793>,  <35.110683, 36.093807, 31.352745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084026, 35.930622, 31.178793>,  <35.039600, 35.658646, 30.888870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084026, 35.930622, 31.178793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542143, -0.652693, 0.529219,
		0.832914, 0.334169, -0.441119,
		0.111066, 0.679943, 0.724804,
		35.117348, 36.134605, 31.396235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638733, 35.514004, 31.156336>,  <35.039600, 35.658646, 30.888870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638733, 35.514004, 31.156336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490410, 35.733521, 31.456024>,  <35.401417, 35.865231, 31.635838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490410, 35.733521, 31.456024>,  <35.638733, 35.514004, 31.156336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490410, 35.733521, 31.456024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574865, -0.497973, 0.649271,
		0.729406, 0.671454, -0.130830,
		-0.370805, 0.548792, 0.749220,
		35.379169, 35.898159, 31.680790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255707, 35.864979, 31.419590>,  <35.638733, 35.514004, 31.156336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255707, 35.864979, 31.419590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962242, 35.817974, 31.687300>,  <35.786163, 35.789772, 31.847925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962242, 35.817974, 31.687300>,  <36.255707, 35.864979, 31.419590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962242, 35.817974, 31.687300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638252, -0.457146, 0.619396,
		0.233172, 0.881595, 0.410391,
		-0.733665, -0.117507, 0.669274,
		35.742142, 35.782722, 31.888083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613419, 36.065277, 31.962635>,  <36.255707, 35.864979, 31.419590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613419, 36.065277, 31.962635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299820, 35.850193, 32.086704>,  <36.111660, 35.721142, 32.161144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299820, 35.850193, 32.086704>,  <36.613419, 36.065277, 31.962635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299820, 35.850193, 32.086704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589507, -0.488374, 0.643407,
		-0.194487, 0.687281, 0.699871,
		-0.784000, -0.537713, 0.310174,
		36.064621, 35.688881, 32.179756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898933, 35.989815, 32.536461>,  <36.613419, 36.065277, 31.962635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898933, 35.989815, 32.536461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590572, 35.735035, 32.536160>,  <36.405556, 35.582169, 32.535980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590572, 35.735035, 32.536160>,  <36.898933, 35.989815, 32.536461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590572, 35.735035, 32.536160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480077, -0.581815, 0.656519,
		-0.418608, 0.505752, 0.754309,
		-0.770904, -0.636950, -0.000752,
		36.359303, 35.543949, 32.535934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672619, 35.820911, 33.327232>,  <36.898933, 35.989815, 32.536461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672619, 35.820911, 33.327232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559017, 35.515572, 33.095150>,  <36.490856, 35.332367, 32.955898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559017, 35.515572, 33.095150>,  <36.672619, 35.820911, 33.327232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559017, 35.515572, 33.095150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447937, -0.640660, 0.623624,
		-0.847758, -0.082785, 0.523882,
		-0.284004, -0.763349, -0.580208,
		36.473816, 35.286568, 32.921089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373455, 35.383533, 33.828316>,  <36.672619, 35.820911, 33.327232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373455, 35.383533, 33.828316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442902, 35.167351, 33.499012>,  <36.484570, 35.037640, 33.301430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442902, 35.167351, 33.499012>,  <36.373455, 35.383533, 33.828316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442902, 35.167351, 33.499012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415004, -0.717955, 0.558850,
		-0.893100, -0.438684, 0.099643,
		0.173620, -0.540461, -0.823261,
		36.494987, 35.005211, 33.252033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123386, 34.690338, 33.981815>,  <36.373455, 35.383533, 33.828316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123386, 34.690338, 33.981815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380489, 34.626724, 33.682064>,  <36.534752, 34.588558, 33.502213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380489, 34.626724, 33.682064>,  <36.123386, 34.690338, 33.981815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380489, 34.626724, 33.682064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437621, -0.726664, 0.529573,
		-0.628764, -0.668333, -0.397476,
		0.642762, -0.159033, -0.749376,
		36.573318, 34.579014, 33.457253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074932, 33.997482, 33.815632>,  <36.123386, 34.690338, 33.981815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074932, 33.997482, 33.815632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425491, 34.162094, 33.715580>,  <36.635826, 34.260860, 33.655548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425491, 34.162094, 33.715580>,  <36.074932, 33.997482, 33.815632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425491, 34.162094, 33.715580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478529, -0.685784, 0.548371,
		0.054140, -0.600285, -0.797952,
		0.876401, 0.411532, -0.250125,
		36.688412, 34.285553, 33.640541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481586, 33.388130, 33.782463>,  <36.074932, 33.997482, 33.815632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481586, 33.388130, 33.782463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711273, 33.715439, 33.793072>,  <36.849087, 33.911823, 33.799438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711273, 33.715439, 33.793072>,  <36.481586, 33.388130, 33.782463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711273, 33.715439, 33.793072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733341, -0.528478, 0.427694,
		0.363987, -0.226140, -0.903534,
		0.574217, 0.818274, 0.026521,
		36.883537, 33.960922, 33.801029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176193, 33.159206, 33.478706>,  <36.481586, 33.388130, 33.782463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176193, 33.159206, 33.478706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235069, 33.478836, 33.711884>,  <37.270397, 33.670612, 33.851791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235069, 33.478836, 33.711884>,  <37.176193, 33.159206, 33.478706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235069, 33.478836, 33.711884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737299, -0.481507, 0.473859,
		0.659337, 0.360055, -0.660027,
		0.147192, 0.799070, 0.582943,
		37.279228, 33.718555, 33.886765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945827, 33.410389, 33.357521>,  <37.176193, 33.159206, 33.478706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945827, 33.410389, 33.357521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823650, 33.573833, 33.701553>,  <37.750343, 33.671902, 33.907974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823650, 33.573833, 33.701553>,  <37.945827, 33.410389, 33.357521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823650, 33.573833, 33.701553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885228, -0.210935, 0.414581,
		0.350825, 0.887999, -0.297287,
		-0.305439, 0.408612, 0.860083,
		37.732018, 33.696419, 33.959579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550888, 33.766888, 33.470222>,  <37.945827, 33.410389, 33.357521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550888, 33.766888, 33.470222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365211, 33.746567, 33.823933>,  <38.253807, 33.734375, 34.036160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365211, 33.746567, 33.823933>,  <38.550888, 33.766888, 33.470222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365211, 33.746567, 33.823933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788645, -0.478166, 0.386518,
		0.403196, 0.876799, 0.262025,
		-0.464190, -0.050802, 0.884277,
		38.225956, 33.731327, 34.089214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012611, 34.138954, 33.960884>,  <38.550888, 33.766888, 33.470222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012611, 34.138954, 33.960884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765957, 33.916122, 34.183388>,  <38.617962, 33.782425, 34.316891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765957, 33.916122, 34.183388>,  <39.012611, 34.138954, 33.960884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765957, 33.916122, 34.183388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786285, -0.470722, 0.400220,
		0.038890, 0.684168, 0.728287,
		-0.616638, -0.557077, 0.556258,
		38.580967, 33.749001, 34.350266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215740, 34.292030, 34.745453>,  <39.012611, 34.138954, 33.960884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215740, 34.292030, 34.745453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033295, 33.936798, 34.722580>,  <38.923828, 33.723660, 34.708855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033295, 33.936798, 34.722580>,  <39.215740, 34.292030, 34.745453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033295, 33.936798, 34.722580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788837, -0.433210, 0.435965,
		-0.411945, 0.153742, 0.898145,
		-0.456111, -0.888084, -0.057181,
		38.896461, 33.670372, 34.705425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722244, 34.778145, 34.582008>,  <39.215740, 34.292030, 34.745453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722244, 34.778145, 34.582008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047413, 35.011074, 34.585121>,  <40.242512, 35.150833, 34.586987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047413, 35.011074, 34.585121>,  <39.722244, 34.778145, 34.582008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047413, 35.011074, 34.585121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567933, 0.795642, -0.210727,
		-0.128902, 0.166886, 0.977514,
		0.812918, 0.582325, 0.007780,
		40.291290, 35.185772, 34.587456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570599, 35.289104, 34.924572>,  <39.722244, 34.778145, 34.582008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570599, 35.289104, 34.924572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873226, 35.450138, 34.718452>,  <40.054802, 35.546757, 34.594780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873226, 35.450138, 34.718452>,  <39.570599, 35.289104, 34.924572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873226, 35.450138, 34.718452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493162, 0.868755, -0.045346,
		0.429410, 0.288431, 0.855812,
		0.756570, 0.402582, -0.515295,
		40.100197, 35.570911, 34.563866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638714, 35.980389, 35.144104>,  <39.570599, 35.289104, 34.924572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638714, 35.980389, 35.144104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850586, 35.994740, 34.805130>,  <39.977711, 36.003349, 34.601746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850586, 35.994740, 34.805130>,  <39.638714, 35.980389, 35.144104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850586, 35.994740, 34.805130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329638, 0.929274, -0.166698,
		0.781522, 0.367645, 0.504045,
		0.529681, 0.035874, -0.847438,
		40.009491, 36.005501, 34.550900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120945, 36.618092, 35.208176>,  <39.638714, 35.980389, 35.144104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120945, 36.618092, 35.208176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038734, 36.521317, 34.828865>,  <39.989407, 36.463253, 34.601280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038734, 36.521317, 34.828865>,  <40.120945, 36.618092, 35.208176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038734, 36.521317, 34.828865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297109, 0.938654, -0.175089,
		0.932462, 0.245755, -0.264802,
		-0.205528, -0.241938, -0.948274,
		39.977077, 36.448734, 34.544384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093494, 37.283241, 34.909157>,  <40.120945, 36.618092, 35.208176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093494, 37.283241, 34.909157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997040, 37.072136, 34.583382>,  <39.939167, 36.945473, 34.387917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997040, 37.072136, 34.583382>,  <40.093494, 37.283241, 34.909157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997040, 37.072136, 34.583382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339438, 0.832066, -0.438690,
		0.909195, 0.170668, -0.379785,
		-0.241135, -0.527768, -0.814442,
		39.924698, 36.913807, 34.339050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304268, 37.664261, 34.343727>,  <40.093494, 37.283241, 34.909157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304268, 37.664261, 34.343727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015446, 37.419975, 34.213703>,  <39.842152, 37.273403, 34.135689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015446, 37.419975, 34.213703>,  <40.304268, 37.664261, 34.343727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015446, 37.419975, 34.213703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445605, 0.769947, -0.456746,
		0.529218, -0.184950, -0.828083,
		-0.722055, -0.610716, -0.325055,
		39.798828, 37.236759, 34.116188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117397, 37.920406, 33.726658>,  <40.304268, 37.664261, 34.343727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117397, 37.920406, 33.726658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807472, 37.684547, 33.817856>,  <39.621517, 37.543034, 33.872574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807472, 37.684547, 33.817856>,  <40.117397, 37.920406, 33.726658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807472, 37.684547, 33.817856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620410, 0.639913, -0.453435,
		0.121468, -0.492779, -0.861635,
		-0.774814, -0.589644, 0.227996,
		39.575027, 37.507652, 33.886253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807560, 37.870888, 33.193066>,  <40.117397, 37.920406, 33.726658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807560, 37.870888, 33.193066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522026, 37.785240, 33.459778>,  <39.350704, 37.733852, 33.619804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522026, 37.785240, 33.459778>,  <39.807560, 37.870888, 33.193066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522026, 37.785240, 33.459778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668201, 0.493259, -0.556959,
		-0.209641, -0.843119, -0.495178,
		-0.713834, -0.214117, 0.666780,
		39.307877, 37.721004, 33.659813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245953, 37.633926, 32.745922>,  <39.807560, 37.870888, 33.193066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245953, 37.633926, 32.745922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104610, 37.730518, 33.107437>,  <39.019806, 37.788475, 33.324345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104610, 37.730518, 33.107437>,  <39.245953, 37.633926, 32.745922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104610, 37.730518, 33.107437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701294, 0.571020, -0.426760,
		-0.619133, -0.784616, -0.032423,
		-0.353357, 0.241483, 0.903784,
		38.998604, 37.802963, 33.378571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495625, 37.614544, 32.648582>,  <39.245953, 37.633926, 32.745922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495625, 37.614544, 32.648582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558163, 37.836742, 32.975258>,  <38.595684, 37.970062, 33.171261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558163, 37.836742, 32.975258>,  <38.495625, 37.614544, 32.648582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558163, 37.836742, 32.975258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675581, 0.663325, -0.321854,
		-0.720518, -0.501416, 0.478994,
		0.156346, 0.555501, 0.816685,
		38.605068, 38.003391, 33.220264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801628, 37.639053, 32.941956>,  <38.495625, 37.614544, 32.648582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801628, 37.639053, 32.941956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009140, 37.954830, 33.073200>,  <38.133648, 38.144295, 33.151947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009140, 37.954830, 33.073200>,  <37.801628, 37.639053, 32.941956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009140, 37.954830, 33.073200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733012, 0.608255, -0.304497,
		-0.439958, -0.082544, 0.894217,
		0.518777, 0.789438, 0.328113,
		38.164772, 38.191662, 33.171635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307968, 38.068172, 33.260220>,  <37.801628, 37.639053, 32.941956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307968, 38.068172, 33.260220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618923, 38.309612, 33.189411>,  <37.805496, 38.454475, 33.146927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618923, 38.309612, 33.189411>,  <37.307968, 38.068172, 33.260220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618923, 38.309612, 33.189411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627023, 0.721180, -0.294517,
		-0.050110, 0.339947, 0.939108,
		0.777387, 0.603602, -0.177016,
		37.852139, 38.490692, 33.136307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217354, 38.759987, 33.606007>,  <37.307968, 38.068172, 33.260220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217354, 38.759987, 33.606007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454388, 38.817997, 33.289070>,  <37.596607, 38.852802, 33.098907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454388, 38.817997, 33.289070>,  <37.217354, 38.759987, 33.606007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454388, 38.817997, 33.289070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633545, 0.691389, -0.347277,
		0.497453, 0.707777, 0.501589,
		0.592588, 0.145025, -0.792343,
		37.632164, 38.861504, 33.051369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953201, 39.363949, 33.373024>,  <37.217354, 38.759987, 33.606007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953201, 39.363949, 33.373024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176983, 39.247551, 33.062584>,  <37.311253, 39.177711, 32.876320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176983, 39.247551, 33.062584>,  <36.953201, 39.363949, 33.373024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176983, 39.247551, 33.062584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530639, 0.593564, -0.605065,
		0.636734, 0.750337, 0.177662,
		0.559456, -0.290991, -0.776101,
		37.344818, 39.160255, 32.829754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090965, 39.966133, 33.020851>,  <36.953201, 39.363949, 33.373024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090965, 39.966133, 33.020851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137283, 39.670624, 32.755280>,  <37.165073, 39.493317, 32.595936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137283, 39.670624, 32.755280>,  <37.090965, 39.966133, 33.020851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137283, 39.670624, 32.755280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674453, 0.432224, -0.598578,
		0.729181, 0.517104, -0.448218,
		0.115797, -0.738773, -0.663932,
		37.172024, 39.448994, 32.556099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176140, 40.314442, 32.316006>,  <37.090965, 39.966133, 33.020851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176140, 40.314442, 32.316006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119274, 39.940727, 32.185226>,  <37.085155, 39.716499, 32.106758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119274, 39.940727, 32.185226>,  <37.176140, 40.314442, 32.316006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119274, 39.940727, 32.185226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453347, 0.355081, -0.817553,
		0.879924, 0.031997, -0.474036,
		-0.142161, -0.934288, -0.326951,
		37.076626, 39.660442, 32.087143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440964, 40.268814, 31.650421>,  <37.176140, 40.314442, 32.316006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440964, 40.268814, 31.650421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146736, 39.997925, 31.657492>,  <36.970200, 39.835392, 31.661734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146736, 39.997925, 31.657492>,  <37.440964, 40.268814, 31.650421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146736, 39.997925, 31.657492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356701, 0.364984, -0.859972,
		0.575942, -0.638870, -0.510036,
		-0.735565, -0.677224, 0.017676,
		36.926067, 39.794758, 31.662794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386562, 40.070934, 31.023245>,  <37.440964, 40.268814, 31.650421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386562, 40.070934, 31.023245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049206, 39.904484, 31.159204>,  <36.846794, 39.804611, 31.240780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049206, 39.904484, 31.159204>,  <37.386562, 40.070934, 31.023245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049206, 39.904484, 31.159204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499671, 0.374852, -0.780906,
		0.197544, -0.828447, -0.524073,
		-0.843389, -0.416128, 0.339901,
		36.796188, 39.779644, 31.261175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153778, 39.669594, 30.470350>,  <37.386562, 40.070934, 31.023245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153778, 39.669594, 30.470350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847595, 39.761391, 30.710819>,  <36.663887, 39.816471, 30.855101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847595, 39.761391, 30.710819>,  <37.153778, 39.669594, 30.470350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847595, 39.761391, 30.710819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530168, 0.304551, -0.791309,
		-0.364689, -0.924435, -0.111450,
		-0.765456, 0.229495, 0.601173,
		36.617958, 39.830238, 30.891171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562870, 39.505581, 30.046953>,  <37.153778, 39.669594, 30.470350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562870, 39.505581, 30.046953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426620, 39.721813, 30.354654>,  <36.344872, 39.851551, 30.539274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426620, 39.721813, 30.354654>,  <36.562870, 39.505581, 30.046953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426620, 39.721813, 30.354654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640611, 0.465427, -0.610734,
		-0.688179, -0.700825, 0.187762,
		-0.340628, 0.540576, 0.769253,
		36.324432, 39.883987, 30.585430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825123, 39.477436, 30.059223>,  <36.562870, 39.505581, 30.046953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825123, 39.477436, 30.059223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925034, 39.823772, 30.232630>,  <35.984978, 40.031574, 30.336674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925034, 39.823772, 30.232630>,  <35.825123, 39.477436, 30.059223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925034, 39.823772, 30.232630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701560, 0.470400, -0.535293,
		-0.667403, -0.170435, 0.724932,
		0.249775, 0.865839, 0.433516,
		35.999966, 40.083523, 30.362684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170807, 39.786556, 30.307722>,  <35.825123, 39.477436, 30.059223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170807, 39.786556, 30.307722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451874, 40.063568, 30.242403>,  <35.620514, 40.229774, 30.203211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451874, 40.063568, 30.242403>,  <35.170807, 39.786556, 30.307722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451874, 40.063568, 30.242403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689387, 0.605841, -0.397118,
		-0.176081, 0.391618, 0.903123,
		0.702667, 0.692526, -0.163299,
		35.662674, 40.271324, 30.193413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764122, 40.397465, 30.435402>,  <35.170807, 39.786556, 30.307722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764122, 40.397465, 30.435402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104488, 40.479645, 30.242018>,  <35.308708, 40.528954, 30.125988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104488, 40.479645, 30.242018>,  <34.764122, 40.397465, 30.435402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104488, 40.479645, 30.242018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447288, 0.765982, -0.461741,
		0.275457, 0.609148, 0.743681,
		0.850915, 0.205450, -0.483460,
		35.359764, 40.541279, 30.096979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797585, 41.081398, 30.527187>,  <34.764122, 40.397465, 30.435402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797585, 41.081398, 30.527187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006290, 40.976654, 30.202425>,  <35.131516, 40.913807, 30.007568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006290, 40.976654, 30.202425>,  <34.797585, 41.081398, 30.527187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006290, 40.976654, 30.202425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451464, 0.722773, -0.523239,
		0.723838, 0.639554, 0.258899,
		0.521765, -0.261857, -0.811906,
		35.162819, 40.898098, 29.958853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860909, 41.625477, 30.068647>,  <34.797585, 41.081398, 30.527187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860909, 41.625477, 30.068647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965141, 41.381355, 29.769415>,  <35.027683, 41.234882, 29.589874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965141, 41.381355, 29.769415>,  <34.860909, 41.625477, 30.068647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965141, 41.381355, 29.769415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540102, 0.550107, -0.636925,
		0.800241, 0.570015, -0.186274,
		0.260586, -0.610300, -0.748084,
		35.043316, 41.198265, 29.544991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992920, 42.101368, 29.517567>,  <34.860909, 41.625477, 30.068647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992920, 42.101368, 29.517567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946686, 41.744007, 29.343910>,  <34.918945, 41.529591, 29.239717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946686, 41.744007, 29.343910>,  <34.992920, 42.101368, 29.517567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946686, 41.744007, 29.343910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400985, 0.441842, -0.802488,
		0.908763, 0.081326, -0.409311,
		-0.115588, -0.893399, -0.434140,
		34.912010, 41.475986, 29.213669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241539, 42.166695, 28.798241>,  <34.992920, 42.101368, 29.517567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241539, 42.166695, 28.798241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028481, 41.828209, 28.803885>,  <34.900646, 41.625118, 28.807270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028481, 41.828209, 28.803885>,  <35.241539, 42.166695, 28.798241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028481, 41.828209, 28.803885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402982, 0.238927, -0.883470,
		0.744238, -0.476264, -0.468275,
		-0.532649, -0.846219, 0.014107,
		34.868687, 41.574345, 28.808117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340240, 41.776657, 28.134050>,  <35.241539, 42.166695, 28.798241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340240, 41.776657, 28.134050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983929, 41.693291, 28.295580>,  <34.770142, 41.643272, 28.392498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983929, 41.693291, 28.295580>,  <35.340240, 41.776657, 28.134050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983929, 41.693291, 28.295580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449990, 0.280551, -0.847821,
		0.063404, -0.936939, -0.343693,
		-0.890780, -0.208414, 0.403825,
		34.716694, 41.630768, 28.416727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936295, 41.620293, 27.655607>,  <35.340240, 41.776657, 28.134050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936295, 41.620293, 27.655607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666637, 41.700832, 27.939857>,  <34.504845, 41.749157, 28.110409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666637, 41.700832, 27.939857>,  <34.936295, 41.620293, 27.655607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666637, 41.700832, 27.939857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586118, 0.439620, -0.680588,
		-0.449441, -0.875324, -0.178353,
		-0.674143, 0.201349, 0.710627,
		34.464394, 41.761238, 28.153046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363087, 41.295715, 27.334478>,  <34.936295, 41.620293, 27.655607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363087, 41.295715, 27.334478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228310, 41.557716, 27.605017>,  <34.147442, 41.714916, 27.767340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228310, 41.557716, 27.605017>,  <34.363087, 41.295715, 27.334478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228310, 41.557716, 27.605017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663020, 0.344962, -0.664384,
		-0.668485, -0.672290, 0.318046,
		-0.336944, 0.655002, 0.676344,
		34.127228, 41.754215, 27.807920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640602, 41.299606, 27.243528>,  <34.363087, 41.295715, 27.334478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640602, 41.299606, 27.243528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741528, 41.648346, 27.411444>,  <33.802082, 41.857590, 27.512192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741528, 41.648346, 27.411444>,  <33.640602, 41.299606, 27.243528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741528, 41.648346, 27.411444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595882, 0.481803, -0.642487,
		-0.762404, -0.088033, 0.641085,
		0.252317, 0.871846, 0.419787,
		33.817223, 41.909901, 27.537380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030235, 41.661690, 27.201382>,  <33.640602, 41.299606, 27.243528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030235, 41.661690, 27.201382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306446, 41.935745, 27.294130>,  <33.472172, 42.100178, 27.349779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306446, 41.935745, 27.294130>,  <33.030235, 41.661690, 27.201382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306446, 41.935745, 27.294130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427435, 0.645134, -0.633326,
		-0.583504, 0.338216, 0.738332,
		0.690523, 0.685137, 0.231873,
		33.513603, 42.141285, 27.363691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696705, 42.332439, 27.320829>,  <33.030235, 41.661690, 27.201382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696705, 42.332439, 27.320829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075481, 42.436611, 27.245478>,  <33.302746, 42.499115, 27.200266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075481, 42.436611, 27.245478>,  <32.696705, 42.332439, 27.320829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075481, 42.436611, 27.245478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312693, 0.610782, -0.727440,
		-0.074385, 0.747745, 0.659806,
		0.946937, 0.260427, -0.188381,
		33.359562, 42.514740, 27.188963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658039, 43.145706, 27.224222>,  <32.696705, 42.332439, 27.320829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658039, 43.145706, 27.224222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019032, 43.056068, 27.077082>,  <33.235626, 43.002285, 26.988796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019032, 43.056068, 27.077082>,  <32.658039, 43.145706, 27.224222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019032, 43.056068, 27.077082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210571, 0.515473, -0.830631,
		0.375757, 0.827086, 0.418015,
		0.902478, -0.224093, -0.367853,
		33.289776, 42.988842, 26.966726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998005, 43.811016, 27.123148>,  <32.658039, 43.145706, 27.224222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998005, 43.811016, 27.123148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145363, 43.512077, 26.901968>,  <33.233780, 43.332714, 26.769260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145363, 43.512077, 26.901968>,  <32.998005, 43.811016, 27.123148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145363, 43.512077, 26.901968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023515, 0.602081, -0.798088,
		0.929371, 0.281011, 0.239379,
		0.368398, -0.747349, -0.552949,
		33.255882, 43.287872, 26.736084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501236, 44.100994, 26.598932>,  <32.998005, 43.811016, 27.123148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501236, 44.100994, 26.598932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436539, 43.739529, 26.440325>,  <33.397720, 43.522648, 26.345161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436539, 43.739529, 26.440325>,  <33.501236, 44.100994, 26.598932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436539, 43.739529, 26.440325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228812, 0.356515, -0.905838,
		0.959940, -0.237241, 0.149106,
		-0.161743, -0.903667, -0.396516,
		33.388016, 43.468430, 26.321369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965714, 44.077339, 26.208267>,  <33.501236, 44.100994, 26.598932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965714, 44.077339, 26.208267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717133, 43.807564, 26.048803>,  <33.567986, 43.645699, 25.953125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717133, 43.807564, 26.048803>,  <33.965714, 44.077339, 26.208267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717133, 43.807564, 26.048803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154113, 0.393674, -0.906240,
		0.768144, -0.624624, -0.140710,
		-0.621453, -0.674437, -0.398661,
		33.530697, 43.605232, 25.929205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315418, 43.729698, 25.819309>,  <33.965714, 44.077339, 26.208267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315418, 43.729698, 25.819309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935413, 43.713600, 25.695463>,  <33.707409, 43.703941, 25.621157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935413, 43.713600, 25.695463>,  <34.315418, 43.729698, 25.819309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935413, 43.713600, 25.695463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295362, 0.205587, -0.933004,
		0.101196, -0.977811, -0.183424,
		-0.950011, -0.040240, -0.309613,
		33.650410, 43.701527, 25.602579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586288, 43.156235, 25.320673>,  <34.315418, 43.729698, 25.819309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586288, 43.156235, 25.320673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677475, 43.527878, 25.204195>,  <34.732185, 43.750862, 25.134308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677475, 43.527878, 25.204195>,  <34.586288, 43.156235, 25.320673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677475, 43.527878, 25.204195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804295, -0.011137, 0.594126,
		0.548763, -0.369647, -0.749813,
		0.227967, 0.929105, -0.291194,
		34.745865, 43.806610, 25.116837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308517, 43.168407, 25.096989>,  <34.586288, 43.156235, 25.320673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308517, 43.168407, 25.096989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232597, 43.545853, 25.205482>,  <35.187046, 43.772320, 25.270578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232597, 43.545853, 25.205482>,  <35.308517, 43.168407, 25.096989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232597, 43.545853, 25.205482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840392, 0.013294, 0.541815,
		0.507659, 0.330779, -0.795530,
		-0.189797, 0.943615, 0.271235,
		35.175659, 43.828938, 25.286854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900257, 43.583622, 24.953030>,  <35.308517, 43.168407, 25.096989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900257, 43.583622, 24.953030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690228, 43.774563, 25.234861>,  <35.564209, 43.889126, 25.403961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690228, 43.774563, 25.234861>,  <35.900257, 43.583622, 24.953030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690228, 43.774563, 25.234861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817478, 0.052628, 0.573550,
		0.236704, 0.877135, -0.417858,
		-0.525072, 0.477351, 0.704582,
		35.532707, 43.917767, 25.446236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394085, 43.987736, 25.180136>,  <35.900257, 43.583622, 24.953030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394085, 43.987736, 25.180136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114098, 44.040108, 25.460964>,  <35.946106, 44.071529, 25.629461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114098, 44.040108, 25.460964>,  <36.394085, 43.987736, 25.180136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114098, 44.040108, 25.460964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710330, 0.025794, 0.703396,
		0.073985, 0.991056, -0.111056,
		-0.699969, 0.130927, 0.702069,
		35.904106, 44.079388, 25.671585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635895, 44.512989, 25.595869>,  <36.394085, 43.987736, 25.180136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635895, 44.512989, 25.595869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363934, 44.347248, 25.837875>,  <36.200756, 44.247803, 25.983080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363934, 44.347248, 25.837875>,  <36.635895, 44.512989, 25.595869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363934, 44.347248, 25.837875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698922, -0.116495, 0.705647,
		-0.221903, 0.902631, 0.368803,
		-0.679903, -0.414350, 0.605018,
		36.159962, 44.222942, 26.019381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688866, 44.763088, 26.219978>,  <36.635895, 44.512989, 25.595869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688866, 44.763088, 26.219978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486233, 44.425201, 26.289057>,  <36.364655, 44.222469, 26.330503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486233, 44.425201, 26.289057>,  <36.688866, 44.763088, 26.219978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486233, 44.425201, 26.289057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643612, -0.237210, 0.727664,
		-0.573708, 0.479768, 0.663839,
		-0.506579, -0.844721, 0.172695,
		36.334259, 44.171783, 26.340866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584713, 44.770889, 26.967752>,  <36.688866, 44.763088, 26.219978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584713, 44.770889, 26.967752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574207, 44.392666, 26.837994>,  <36.567902, 44.165733, 26.760139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574207, 44.392666, 26.837994>,  <36.584713, 44.770889, 26.967752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574207, 44.392666, 26.837994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599755, -0.274522, 0.751619,
		-0.799752, -0.174815, 0.574314,
		-0.026268, -0.945557, -0.324396,
		36.566326, 44.108997, 26.740675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340824, 44.359161, 27.506601>,  <36.584713, 44.770889, 26.967752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340824, 44.359161, 27.506601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517040, 44.095776, 27.262518>,  <36.622768, 43.937744, 27.116068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517040, 44.095776, 27.262518>,  <36.340824, 44.359161, 27.506601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517040, 44.095776, 27.262518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630840, -0.256553, 0.732272,
		-0.638725, -0.707536, 0.302364,
		0.440536, -0.658464, -0.610208,
		36.649200, 43.898235, 27.079456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217575, 43.761826, 27.789711>,  <36.340824, 44.359161, 27.506601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217575, 43.761826, 27.789711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542881, 43.695351, 27.566650>,  <36.738064, 43.655468, 27.432814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542881, 43.695351, 27.566650>,  <36.217575, 43.761826, 27.789711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542881, 43.695351, 27.566650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446874, -0.435430, 0.781475,
		-0.372687, -0.884750, -0.279859,
		0.813270, -0.166184, -0.557652,
		36.786861, 43.645496, 27.399355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393082, 43.004387, 27.859192>,  <36.217575, 43.761826, 27.789711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393082, 43.004387, 27.859192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732494, 43.178108, 27.738279>,  <36.936142, 43.282341, 27.665731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732494, 43.178108, 27.738279>,  <36.393082, 43.004387, 27.859192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732494, 43.178108, 27.738279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501002, -0.475599, 0.723051,
		0.170257, -0.764976, -0.621147,
		0.848534, 0.434301, -0.302280,
		36.987053, 43.308399, 27.647594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870087, 42.569923, 28.053272>,  <36.393082, 43.004387, 27.859192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870087, 42.569923, 28.053272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108326, 42.883827, 27.984661>,  <37.251270, 43.072170, 27.943495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108326, 42.883827, 27.984661>,  <36.870087, 42.569923, 28.053272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108326, 42.883827, 27.984661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667381, -0.364577, 0.649374,
		0.447066, -0.501239, -0.740872,
		0.595596, 0.784757, -0.171528,
		37.287006, 43.119255, 27.933203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478283, 42.240906, 28.063128>,  <36.870087, 42.569923, 28.053272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478283, 42.240906, 28.063128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568066, 42.628586, 28.103676>,  <37.621937, 42.861195, 28.128004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568066, 42.628586, 28.103676>,  <37.478283, 42.240906, 28.063128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568066, 42.628586, 28.103676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773463, -0.240469, 0.586456,
		0.592767, -0.053231, -0.803613,
		0.224461, 0.969196, 0.101370,
		37.635403, 42.919346, 28.134087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085728, 42.311680, 27.752007>,  <37.478283, 42.240906, 28.063128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085728, 42.311680, 27.752007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042854, 42.607769, 28.017513>,  <38.017132, 42.785423, 28.176817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042854, 42.607769, 28.017513>,  <38.085728, 42.311680, 27.752007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042854, 42.607769, 28.017513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784852, -0.346843, 0.513524,
		0.610344, 0.575998, -0.543789,
		-0.107179, 0.740220, 0.663767,
		38.010700, 42.829834, 28.216644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814178, 42.487904, 27.833553>,  <38.085728, 42.311680, 27.752007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814178, 42.487904, 27.833553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567654, 42.595543, 28.129595>,  <38.419739, 42.660126, 28.307219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567654, 42.595543, 28.129595>,  <38.814178, 42.487904, 27.833553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567654, 42.595543, 28.129595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621043, -0.411786, 0.666887,
		0.484222, 0.870643, 0.086665,
		-0.616308, 0.269098, 0.740102,
		38.382763, 42.676273, 28.351625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227478, 42.513428, 28.386442>,  <38.814178, 42.487904, 27.833553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227478, 42.513428, 28.386442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870071, 42.491974, 28.564768>,  <38.655628, 42.479103, 28.671764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870071, 42.491974, 28.564768>,  <39.227478, 42.513428, 28.386442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870071, 42.491974, 28.564768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418671, -0.458376, 0.783968,
		0.162303, 0.887138, 0.432022,
		-0.893517, -0.053635, 0.445815,
		38.602016, 42.475883, 28.698513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316822, 42.840885, 29.049324>,  <39.227478, 42.513428, 28.386442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316822, 42.840885, 29.049324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996086, 42.605316, 29.089756>,  <38.803642, 42.463974, 29.114016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996086, 42.605316, 29.089756>,  <39.316822, 42.840885, 29.049324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996086, 42.605316, 29.089756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300096, -0.250621, 0.920398,
		-0.516711, 0.768348, 0.377692,
		-0.801843, -0.588924, 0.101080,
		38.755535, 42.428638, 29.120079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055927, 42.899433, 29.702410>,  <39.316822, 42.840885, 29.049324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055927, 42.899433, 29.702410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860680, 42.562672, 29.610374>,  <38.743530, 42.360615, 29.555153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860680, 42.562672, 29.610374>,  <39.055927, 42.899433, 29.702410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860680, 42.562672, 29.610374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284663, -0.402785, 0.869903,
		-0.825049, 0.359119, 0.436266,
		-0.488120, -0.841901, -0.230089,
		38.714245, 42.310101, 29.541348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675854, 42.747761, 30.221252>,  <39.055927, 42.899433, 29.702410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675854, 42.747761, 30.221252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765606, 42.409149, 30.028154>,  <38.819458, 42.205982, 29.912294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765606, 42.409149, 30.028154>,  <38.675854, 42.747761, 30.221252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765606, 42.409149, 30.028154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398388, -0.372407, 0.838212,
		-0.889348, -0.380399, 0.253686,
		0.224381, -0.846528, -0.482746,
		38.832920, 42.155190, 29.883331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560143, 42.248428, 30.751108>,  <38.675854, 42.747761, 30.221252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560143, 42.248428, 30.751108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750336, 42.024540, 30.479630>,  <38.864452, 41.890205, 30.316742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750336, 42.024540, 30.479630>,  <38.560143, 42.248428, 30.751108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750336, 42.024540, 30.479630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233831, -0.663325, 0.710861,
		-0.848082, -0.496700, -0.184516,
		0.475478, -0.559723, -0.678698,
		38.892979, 41.856625, 30.276020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451622, 41.611832, 30.894283>,  <38.560143, 42.248428, 30.751108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451622, 41.611832, 30.894283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791195, 41.559361, 30.689501>,  <38.994938, 41.527878, 30.566631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791195, 41.559361, 30.689501>,  <38.451622, 41.611832, 30.894283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791195, 41.559361, 30.689501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246566, -0.758508, 0.603218,
		-0.467455, -0.638324, -0.611579,
		0.848935, -0.131182, -0.511957,
		39.045876, 41.520004, 30.535913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447826, 40.891949, 30.724882>,  <38.451622, 41.611832, 30.894283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447826, 40.891949, 30.724882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831532, 41.004391, 30.713602>,  <39.061756, 41.071854, 30.706835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831532, 41.004391, 30.713602>,  <38.447826, 40.891949, 30.724882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831532, 41.004391, 30.713602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250622, -0.800665, 0.544172,
		0.130390, -0.529072, -0.838499,
		0.959264, 0.281101, -0.028199,
		39.119312, 41.088722, 30.705143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782497, 40.279976, 30.688696>,  <38.447826, 40.891949, 30.724882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782497, 40.279976, 30.688696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040157, 40.561180, 30.809252>,  <39.194756, 40.729904, 30.881586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040157, 40.561180, 30.809252>,  <38.782497, 40.279976, 30.688696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040157, 40.561180, 30.809252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389304, -0.640501, 0.661967,
		0.658413, -0.309077, -0.686268,
		0.644154, 0.703015, 0.301390,
		39.233402, 40.772083, 30.899670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370647, 39.914631, 30.724501>,  <38.782497, 40.279976, 30.688696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370647, 39.914631, 30.724501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435646, 40.237537, 30.951450>,  <39.474648, 40.431282, 31.087620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435646, 40.237537, 30.951450>,  <39.370647, 39.914631, 30.724501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435646, 40.237537, 30.951450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390126, -0.580730, 0.714531,
		0.906309, 0.105236, -0.409304,
		0.162500, 0.807266, 0.567376,
		39.484398, 40.479717, 31.121662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136494, 39.842182, 30.927618>,  <39.370647, 39.914631, 30.724501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136494, 39.842182, 30.927618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948757, 40.078793, 31.189861>,  <39.836117, 40.220757, 31.347208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948757, 40.078793, 31.189861>,  <40.136494, 39.842182, 30.927618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948757, 40.078793, 31.189861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426385, -0.498351, 0.754879,
		0.773252, 0.633834, -0.018323,
		-0.469337, 0.591524, 0.655608,
		39.807957, 40.256248, 31.386543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708961, 40.181812, 31.451944>,  <40.136494, 39.842182, 30.927618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708961, 40.181812, 31.451944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361538, 40.228931, 31.644497>,  <40.153084, 40.257202, 31.760029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361538, 40.228931, 31.644497>,  <40.708961, 40.181812, 31.451944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361538, 40.228931, 31.644497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472028, -0.099286, 0.875975,
		0.150983, 0.988062, 0.030632,
		-0.868558, 0.117798, 0.481383,
		40.100971, 40.264271, 31.788912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909569, 40.556976, 32.015141>,  <40.708961, 40.181812, 31.451944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909569, 40.556976, 32.015141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548637, 40.435547, 32.137547>,  <40.332077, 40.362690, 32.210991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548637, 40.435547, 32.137547>,  <40.909569, 40.556976, 32.015141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548637, 40.435547, 32.137547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385127, -0.248936, 0.888655,
		-0.193599, 0.919713, 0.341538,
		-0.902328, -0.303578, 0.306013,
		40.277939, 40.344475, 32.229351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717995, 40.909355, 32.598923>,  <40.909569, 40.556976, 32.015141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717995, 40.909355, 32.598923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484238, 40.584778, 32.601379>,  <40.343983, 40.390030, 32.602856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484238, 40.584778, 32.601379>,  <40.717995, 40.909355, 32.598923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484238, 40.584778, 32.601379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423217, -0.298316, 0.855509,
		-0.692366, 0.502556, 0.517752,
		-0.584395, -0.811446, 0.006146,
		40.308918, 40.341343, 32.603222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400280, 40.875488, 33.295002>,  <40.717995, 40.909355, 32.598923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400280, 40.875488, 33.295002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334423, 40.507729, 33.152115>,  <40.294907, 40.287075, 33.066383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334423, 40.507729, 33.152115>,  <40.400280, 40.875488, 33.295002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334423, 40.507729, 33.152115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403847, -0.393247, 0.825993,
		-0.899889, -0.008264, 0.436042,
		-0.164646, -0.919396, -0.357216,
		40.285030, 40.231911, 33.044949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148090, 40.492958, 33.833000>,  <40.400280, 40.875488, 33.295002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148090, 40.492958, 33.833000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301315, 40.233559, 33.569878>,  <40.393250, 40.077919, 33.412003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301315, 40.233559, 33.569878>,  <40.148090, 40.492958, 33.833000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301315, 40.233559, 33.569878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610595, -0.356593, 0.707117,
		-0.693135, -0.672524, 0.259374,
		0.383062, -0.648501, -0.657807,
		40.416233, 40.039009, 33.372536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191631, 39.808205, 34.116493>,  <40.148090, 40.492958, 33.833000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191631, 39.808205, 34.116493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464367, 39.771690, 33.826180>,  <40.628006, 39.749783, 33.651989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464367, 39.771690, 33.826180>,  <40.191631, 39.808205, 34.116493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464367, 39.771690, 33.826180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678247, -0.292758, 0.673998,
		-0.274007, -0.951819, -0.137699,
		0.681836, -0.091286, -0.725786,
		40.668919, 39.744305, 33.608444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518188, 39.201347, 34.255386>,  <40.191631, 39.808205, 34.116493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518188, 39.201347, 34.255386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785080, 39.376232, 34.014175>,  <40.945217, 39.481163, 33.869450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785080, 39.376232, 34.014175>,  <40.518188, 39.201347, 34.255386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785080, 39.376232, 34.014175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742478, -0.325857, 0.585273,
		0.059388, -0.838249, -0.542044,
		0.667233, 0.437214, -0.603029,
		40.985249, 39.507397, 33.833267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001190, 38.623848, 34.016464>,  <40.518188, 39.201347, 34.255386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001190, 38.623848, 34.016464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207478, 38.956474, 33.933971>,  <41.331249, 39.156052, 33.884476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207478, 38.956474, 33.933971>,  <41.001190, 38.623848, 34.016464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207478, 38.956474, 33.933971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784547, -0.361642, 0.503687,
		0.344268, -0.421558, -0.838909,
		0.515719, 0.831567, -0.206231,
		41.362194, 39.205944, 33.872101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619186, 38.496616, 33.591755>,  <41.001190, 38.623848, 34.016464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619186, 38.496616, 33.591755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693600, 38.827606, 33.803669>,  <41.738247, 39.026199, 33.930817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693600, 38.827606, 33.803669>,  <41.619186, 38.496616, 33.591755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693600, 38.827606, 33.803669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852401, -0.404097, 0.331841,
		0.488676, 0.389860, -0.780515,
		0.186032, 0.827475, 0.529790,
		41.749409, 39.075848, 33.962605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182575, 38.293148, 33.765453>,  <41.619186, 38.496616, 33.591755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182575, 38.293148, 33.765453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145725, 38.651096, 33.940136>,  <42.123615, 38.865868, 34.044945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145725, 38.651096, 33.940136>,  <42.182575, 38.293148, 33.765453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145725, 38.651096, 33.940136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853025, -0.155320, 0.498221,
		0.513674, 0.418422, -0.749041,
		-0.092125, 0.894874, 0.436708,
		42.118088, 38.919559, 34.071148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748131, 38.750313, 33.599945>,  <42.182575, 38.293148, 33.765453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748131, 38.750313, 33.599945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599777, 38.848980, 33.958073>,  <42.510765, 38.908180, 34.172951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599777, 38.848980, 33.958073>,  <42.748131, 38.750313, 33.599945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599777, 38.848980, 33.958073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869632, -0.246032, 0.428030,
		0.325857, 0.937350, -0.123257,
		-0.370888, 0.246665, 0.895320,
		42.488510, 38.922981, 34.226669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191082, 39.203178, 33.979588>,  <42.748131, 38.750313, 33.599945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191082, 39.203178, 33.979588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966305, 39.056934, 34.276386>,  <42.831440, 38.969189, 34.454464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966305, 39.056934, 34.276386>,  <43.191082, 39.203178, 33.979588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966305, 39.056934, 34.276386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827174, -0.245615, 0.505427,
		-0.002543, 0.897778, 0.440441,
		-0.561940, -0.365607, 0.741994,
		42.797722, 38.947254, 34.498985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370598, 39.498615, 34.654255>,  <43.191082, 39.203178, 33.979588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370598, 39.498615, 34.654255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180492, 39.161995, 34.756954>,  <43.066429, 38.960022, 34.818573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180492, 39.161995, 34.756954>,  <43.370598, 39.498615, 34.654255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180492, 39.161995, 34.756954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818260, -0.315503, 0.480530,
		-0.323385, 0.438464, 0.838553,
		-0.475261, -0.841550, 0.256748,
		43.037914, 38.909531, 34.833981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461414, 39.497917, 35.314232>,  <43.370598, 39.498615, 34.654255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461414, 39.497917, 35.314232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356632, 39.118599, 35.242550>,  <43.293762, 38.891006, 35.199543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356632, 39.118599, 35.242550>,  <43.461414, 39.497917, 35.314232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356632, 39.118599, 35.242550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811178, -0.316950, 0.491460,
		-0.522848, -0.016624, 0.852264,
		-0.261955, -0.948296, -0.179202,
		43.278046, 38.834110, 35.188789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726543, 39.201729, 35.879776>,  <43.461414, 39.497917, 35.314232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726543, 39.201729, 35.879776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642883, 38.903179, 35.627052>,  <43.592686, 38.724049, 35.475418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642883, 38.903179, 35.627052>,  <43.726543, 39.201729, 35.879776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642883, 38.903179, 35.627052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782423, -0.515286, 0.349707,
		-0.586575, -0.421202, 0.691751,
		-0.209152, -0.746371, -0.631812,
		43.580139, 38.679268, 35.437508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556984, 38.534180, 36.250809>,  <43.726543, 39.201729, 35.879776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556984, 38.534180, 36.250809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716614, 38.463879, 35.890842>,  <43.812389, 38.421696, 35.674862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716614, 38.463879, 35.890842>,  <43.556984, 38.534180, 36.250809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716614, 38.463879, 35.890842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742670, -0.513649, 0.429658,
		-0.537757, -0.839806, -0.074452,
		0.399072, -0.175758, -0.899917,
		43.836334, 38.411152, 35.620869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122616, 37.947216, 36.041271>,  <43.556984, 38.534180, 36.250809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122616, 37.947216, 36.041271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.190113, 37.972416, 36.434731>,  <44.230610, 37.987534, 36.670807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.190113, 37.972416, 36.434731>,  <44.122616, 37.947216, 36.041271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190113, 37.972416, 36.434731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173659, -0.980444, 0.092582,
		0.970242, -0.186441, -0.154500,
		0.168740, 0.062996, 0.983645,
		44.240734, 37.991314, 36.729824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635056, 37.385593, 36.312588>,  <44.122616, 37.947216, 36.041271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635056, 37.385593, 36.312588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424839, 37.522354, 36.624207>,  <44.298710, 37.604408, 36.811176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424839, 37.522354, 36.624207>,  <44.635056, 37.385593, 36.312588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424839, 37.522354, 36.624207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180114, -0.939653, 0.290880,
		0.831485, 0.012551, 0.555405,
		-0.525539, 0.341899, 0.779047,
		44.267178, 37.624924, 36.857922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797508, 36.994686, 36.975147>,  <44.635056, 37.385593, 36.312588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797508, 36.994686, 36.975147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426128, 37.135952, 37.021210>,  <44.203300, 37.220711, 37.048847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426128, 37.135952, 37.021210>,  <44.797508, 36.994686, 36.975147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426128, 37.135952, 37.021210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312156, -0.909812, 0.273499,
		0.201358, 0.217984, 0.954955,
		-0.928447, 0.353166, 0.115153,
		44.147594, 37.241901, 37.055756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612598, 36.694633, 37.622925>,  <44.797508, 36.994686, 36.975147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612598, 36.694633, 37.622925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268425, 36.801521, 37.449371>,  <44.061920, 36.865654, 37.345242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268425, 36.801521, 37.449371>,  <44.612598, 36.694633, 37.622925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268425, 36.801521, 37.449371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448761, -0.800729, 0.396795,
		-0.241391, 0.536124, 0.808889,
		-0.860432, 0.267215, -0.433881,
		44.010296, 36.881687, 37.319206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008389, 36.673462, 38.049976>,  <44.612598, 36.694633, 37.622925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008389, 36.673462, 38.049976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790928, 36.670952, 37.714260>,  <43.660450, 36.669445, 37.512833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790928, 36.670952, 37.714260>,  <44.008389, 36.673462, 38.049976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790928, 36.670952, 37.714260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651801, -0.626830, 0.426896,
		-0.528771, 0.779131, 0.336684,
		-0.543652, -0.006279, -0.839287,
		43.627831, 36.669067, 37.462475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290241, 36.800190, 38.311333>,  <44.008389, 36.673462, 38.049976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290241, 36.800190, 38.311333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284599, 36.621033, 37.953743>,  <43.281212, 36.513538, 37.739189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284599, 36.621033, 37.953743>,  <43.290241, 36.800190, 38.311333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284599, 36.621033, 37.953743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712847, -0.622456, 0.323107,
		-0.701178, 0.641827, -0.310496,
		-0.014109, -0.447891, -0.893977,
		43.280365, 36.486664, 37.685551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620670, 36.742508, 38.100483>,  <43.290241, 36.800190, 38.311333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620670, 36.742508, 38.100483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834557, 36.459976, 37.914936>,  <42.962887, 36.290459, 37.803608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834557, 36.459976, 37.914936>,  <42.620670, 36.742508, 38.100483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834557, 36.459976, 37.914936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665365, -0.690321, 0.284157,
		-0.520929, 0.156700, -0.839094,
		0.534716, -0.706329, -0.463871,
		42.994972, 36.248077, 37.775776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118755, 36.286610, 37.799866>,  <42.620670, 36.742508, 38.100483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118755, 36.286610, 37.799866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455090, 36.070152, 37.794796>,  <42.656891, 35.940277, 37.791752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455090, 36.070152, 37.794796>,  <42.118755, 36.286610, 37.799866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455090, 36.070152, 37.794796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530649, -0.828705, 0.177929,
		-0.106790, -0.142882, -0.983962,
		0.840837, -0.541139, -0.012677,
		42.707340, 35.907810, 37.790993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902954, 35.708687, 37.349335>,  <42.118755, 36.286610, 37.799866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902954, 35.708687, 37.349335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222832, 35.609394, 37.568008>,  <42.414761, 35.549816, 37.699211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222832, 35.609394, 37.568008>,  <41.902954, 35.708687, 37.349335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222832, 35.609394, 37.568008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481189, -0.809545, 0.336295,
		0.359086, -0.531993, -0.766839,
		0.799696, -0.248236, 0.546685,
		42.462742, 35.534924, 37.732014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911545, 35.030468, 37.365803>,  <41.902954, 35.708687, 37.349335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911545, 35.030468, 37.365803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166718, 35.084915, 37.668987>,  <42.319820, 35.117584, 37.850899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166718, 35.084915, 37.668987>,  <41.911545, 35.030468, 37.365803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166718, 35.084915, 37.668987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383129, -0.797701, 0.465710,
		0.668020, -0.587491, -0.456731,
		0.637935, 0.136117, 0.757965,
		42.358097, 35.125751, 37.896378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134010, 34.305885, 37.582508>,  <41.911545, 35.030468, 37.365803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134010, 34.305885, 37.582508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210197, 34.558510, 37.883137>,  <42.255909, 34.710083, 38.063515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210197, 34.558510, 37.883137>,  <42.134010, 34.305885, 37.582508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210197, 34.558510, 37.883137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401139, -0.648682, 0.646761,
		0.895996, -0.424673, 0.129787,
		0.190472, 0.631557, 0.751569,
		42.267338, 34.747978, 38.108608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089989, 33.813622, 38.130478>,  <42.134010, 34.305885, 37.582508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089989, 33.813622, 38.130478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145325, 34.170742, 38.301949>,  <42.178528, 34.385014, 38.404831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145325, 34.170742, 38.301949>,  <42.089989, 33.813622, 38.130478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145325, 34.170742, 38.301949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256439, -0.385789, 0.886231,
		0.956609, -0.232534, 0.175578,
		0.138342, 0.892802, 0.428680,
		42.186829, 34.438583, 38.430553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691231, 33.776405, 38.620090>,  <42.089989, 33.813622, 38.130478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691231, 33.776405, 38.620090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399357, 34.029995, 38.722576>,  <42.224232, 34.182148, 38.784069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399357, 34.029995, 38.722576>,  <42.691231, 33.776405, 38.620090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399357, 34.029995, 38.722576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257187, -0.601640, 0.756230,
		0.633576, 0.485912, 0.602055,
		-0.729682, 0.633970, 0.256215,
		42.180450, 34.220184, 38.799442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721828, 33.867401, 39.392326>,  <42.691231, 33.776405, 38.620090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721828, 33.867401, 39.392326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352524, 33.975540, 39.283146>,  <42.130943, 34.040424, 39.217636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352524, 33.975540, 39.283146>,  <42.721828, 33.867401, 39.392326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352524, 33.975540, 39.283146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383465, -0.605158, 0.697666,
		0.023434, 0.748795, 0.662387,
		-0.923258, 0.270351, -0.272955,
		42.075546, 34.056644, 39.201260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332909, 33.878475, 40.041405>,  <42.721828, 33.867401, 39.392326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332909, 33.878475, 40.041405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092903, 33.837330, 39.724064>,  <41.948898, 33.812645, 39.533661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092903, 33.837330, 39.724064>,  <42.332909, 33.878475, 40.041405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092903, 33.837330, 39.724064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606564, -0.588100, 0.534994,
		-0.521599, 0.802221, 0.290477,
		-0.600013, -0.102859, -0.793350,
		41.912899, 33.806473, 39.486057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772121, 33.945621, 40.378139>,  <42.332909, 33.878475, 40.041405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772121, 33.945621, 40.378139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723324, 33.748501, 40.033520>,  <41.694046, 33.630230, 39.826748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723324, 33.748501, 40.033520>,  <41.772121, 33.945621, 40.378139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723324, 33.748501, 40.033520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704642, -0.568317, 0.424849,
		-0.698997, 0.658913, -0.277914,
		-0.121995, -0.492797, -0.861550,
		41.686726, 33.600662, 39.775055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047050, 33.903889, 40.245621>,  <41.772121, 33.945621, 40.378139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047050, 33.903889, 40.245621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242508, 33.597301, 40.078888>,  <41.359783, 33.413349, 39.978848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242508, 33.597301, 40.078888>,  <41.047050, 33.903889, 40.245621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242508, 33.597301, 40.078888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655892, -0.637759, 0.403819,
		-0.575356, 0.076076, -0.814357,
		0.488643, -0.766470, -0.416836,
		41.389099, 33.367359, 39.953838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507553, 33.441399, 40.102097>,  <41.047050, 33.903889, 40.245621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507553, 33.441399, 40.102097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857880, 33.248848, 40.088070>,  <41.068073, 33.133320, 40.079655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857880, 33.248848, 40.088070>,  <40.507553, 33.441399, 40.102097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857880, 33.248848, 40.088070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392596, -0.752784, 0.528379,
		-0.280748, -0.448994, -0.848284,
		0.875814, -0.481374, -0.035069,
		41.120625, 33.104435, 40.077549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361717, 32.620045, 39.975769>,  <40.507553, 33.441399, 40.102097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361717, 32.620045, 39.975769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713261, 32.625355, 40.166527>,  <40.924187, 32.628540, 40.280983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713261, 32.625355, 40.166527>,  <40.361717, 32.620045, 39.975769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713261, 32.625355, 40.166527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354137, -0.651662, 0.670763,
		0.319680, -0.758393, -0.568017,
		0.878858, 0.013274, 0.476899,
		40.976917, 32.629337, 40.309597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524174, 31.942352, 40.173241>,  <40.361717, 32.620045, 39.975769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524174, 31.942352, 40.173241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719021, 32.163918, 40.443321>,  <40.835930, 32.296856, 40.605370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719021, 32.163918, 40.443321>,  <40.524174, 31.942352, 40.173241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719021, 32.163918, 40.443321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337230, -0.593866, 0.730478,
		0.805601, -0.583527, -0.102487,
		0.487117, 0.553912, 0.675202,
		40.865158, 32.330090, 40.645882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004082, 31.457359, 40.500126>,  <40.524174, 31.942352, 40.173241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004082, 31.457359, 40.500126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935894, 31.773981, 40.734863>,  <40.894981, 31.963953, 40.875706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935894, 31.773981, 40.734863>,  <41.004082, 31.457359, 40.500126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935894, 31.773981, 40.734863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103339, -0.606636, 0.788235,
		0.979929, 0.073728, 0.185212,
		-0.170471, 0.791553, 0.586841,
		40.884754, 32.011448, 40.910915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312057, 31.218596, 41.158405>,  <41.004082, 31.457359, 40.500126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312057, 31.218596, 41.158405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049500, 31.517897, 41.196899>,  <40.891964, 31.697477, 41.219997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049500, 31.517897, 41.196899>,  <41.312057, 31.218596, 41.158405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049500, 31.517897, 41.196899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381305, -0.439123, 0.813497,
		0.650960, 0.497282, 0.573552,
		-0.656397, 0.748252, 0.096235,
		40.852581, 31.742373, 41.225769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310314, 31.513083, 41.900860>,  <41.312057, 31.218596, 41.158405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310314, 31.513083, 41.900860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950268, 31.594543, 41.746815>,  <40.734238, 31.643419, 41.654388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950268, 31.594543, 41.746815>,  <41.310314, 31.513083, 41.900860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950268, 31.594543, 41.746815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434568, -0.481739, 0.760971,
		-0.030549, 0.852322, 0.522124,
		-0.900121, 0.203652, -0.385109,
		40.680233, 31.655640, 41.631283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972874, 31.943096, 42.347313>,  <41.310314, 31.513083, 41.900860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972874, 31.943096, 42.347313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695412, 31.740185, 42.142757>,  <40.528934, 31.618439, 42.020023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695412, 31.740185, 42.142757>,  <40.972874, 31.943096, 42.347313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695412, 31.740185, 42.142757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457166, -0.238593, 0.856780,
		-0.556639, 0.828096, -0.066409,
		-0.693652, -0.507277, -0.511387,
		40.487316, 31.588001, 41.989342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158009, 32.428215, 41.853386>,  <40.972874, 31.943096, 42.347313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158009, 32.428215, 41.853386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207550, 32.278034, 41.485973>,  <41.237274, 32.187923, 41.265526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207550, 32.278034, 41.485973>,  <41.158009, 32.428215, 41.853386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207550, 32.278034, 41.485973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350226, 0.882624, -0.313554,
		0.928441, -0.282858, 0.240809,
		0.123853, -0.375454, -0.918529,
		41.244705, 32.165398, 41.210415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826363, 32.694347, 41.423561>,  <41.158009, 32.428215, 41.853386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826363, 32.694347, 41.423561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600346, 32.578793, 41.114429>,  <41.464733, 32.509460, 40.928951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600346, 32.578793, 41.114429>,  <41.826363, 32.694347, 41.423561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600346, 32.578793, 41.114429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331772, 0.778071, -0.533417,
		0.755410, -0.557810, -0.343807,
		-0.565051, -0.288883, -0.772828,
		41.430832, 32.492126, 40.882580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201809, 32.585587, 40.778881>,  <41.826363, 32.694347, 41.423561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201809, 32.585587, 40.778881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825626, 32.629772, 40.650291>,  <41.599918, 32.656284, 40.573139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825626, 32.629772, 40.650291>,  <42.201809, 32.585587, 40.778881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825626, 32.629772, 40.650291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321874, 0.593461, -0.737700,
		0.109291, -0.797246, -0.593679,
		-0.940454, 0.110466, -0.321473,
		41.543491, 32.662910, 40.553848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245014, 32.366421, 40.061596>,  <42.201809, 32.585587, 40.778881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245014, 32.366421, 40.061596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907875, 32.580566, 40.083462>,  <41.705589, 32.709053, 40.096581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907875, 32.580566, 40.083462>,  <42.245014, 32.366421, 40.061596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907875, 32.580566, 40.083462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219399, 0.434606, -0.873488,
		-0.491390, -0.724228, -0.483766,
		-0.842852, 0.535361, 0.054666,
		41.655018, 32.741177, 40.099861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155094, 32.495842, 39.372002>,  <42.245014, 32.366421, 40.061596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155094, 32.495842, 39.372002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910202, 32.760880, 39.544579>,  <41.763268, 32.919903, 39.648125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910202, 32.760880, 39.544579>,  <42.155094, 32.495842, 39.372002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910202, 32.760880, 39.544579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260909, 0.684399, -0.680827,
		-0.746391, -0.304255, -0.591886,
		-0.612231, 0.662592, 0.431446,
		41.726532, 32.959656, 39.674011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667088, 32.672523, 38.799530>,  <42.155094, 32.495842, 39.372002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667088, 32.672523, 38.799530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650410, 32.976009, 39.059566>,  <41.640404, 33.158100, 39.215588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650410, 32.976009, 39.059566>,  <41.667088, 32.672523, 38.799530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650410, 32.976009, 39.059566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124023, 0.649550, -0.750135,
		-0.991403, 0.049348, -0.121182,
		-0.041696, 0.758715, 0.650087,
		41.637901, 33.203625, 39.254593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327198, 33.233292, 38.458385>,  <41.667088, 32.672523, 38.799530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327198, 33.233292, 38.458385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529655, 33.416840, 38.750481>,  <41.651131, 33.526970, 38.925739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529655, 33.416840, 38.750481>,  <41.327198, 33.233292, 38.458385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529655, 33.416840, 38.750481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261075, 0.725462, -0.636824,
		-0.821984, 0.512973, 0.247389,
		0.506145, 0.458872, 0.730243,
		41.681499, 33.554501, 38.969555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803799, 33.752163, 38.816769>,  <41.327198, 33.233292, 38.458385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803799, 33.752163, 38.816769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091072, 33.880310, 39.063858>,  <41.263435, 33.957199, 39.212112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091072, 33.880310, 39.063858>,  <40.803799, 33.752163, 38.816769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091072, 33.880310, 39.063858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335865, 0.617877, -0.710931,
		-0.609436, 0.718048, 0.336147,
		0.718180, 0.320367, 0.617723,
		41.306526, 33.976421, 39.249176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916191, 34.512230, 38.804268>,  <40.803799, 33.752163, 38.816769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916191, 34.512230, 38.804268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263809, 34.357903, 38.928146>,  <41.472378, 34.265308, 39.002472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263809, 34.357903, 38.928146>,  <40.916191, 34.512230, 38.804268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263809, 34.357903, 38.928146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483037, 0.526352, -0.699735,
		0.106959, 0.757694, 0.643785,
		0.869043, -0.385815, 0.309696,
		41.524521, 34.242157, 39.021057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322865, 35.131943, 39.194153>,  <40.916191, 34.512230, 38.804268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322865, 35.131943, 39.194153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573868, 34.845936, 39.070877>,  <41.724468, 34.674332, 38.996910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573868, 34.845936, 39.070877>,  <41.322865, 35.131943, 39.194153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573868, 34.845936, 39.070877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554595, 0.688284, -0.467642,
		0.546497, 0.122527, 0.828449,
		0.627507, -0.715019, -0.308192,
		41.762119, 34.631432, 38.978420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074387, 35.215355, 39.471733>,  <41.322865, 35.131943, 39.194153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074387, 35.215355, 39.471733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081642, 35.009106, 39.129086>,  <42.085995, 34.885357, 38.923496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081642, 35.009106, 39.129086>,  <42.074387, 35.215355, 39.471733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081642, 35.009106, 39.129086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505880, 0.743737, -0.436966,
		0.862413, -0.425424, 0.274333,
		0.018136, -0.515625, -0.856623,
		42.087082, 34.854420, 38.872097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732548, 35.432327, 39.111671>,  <42.074387, 35.215355, 39.471733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732548, 35.432327, 39.111671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575909, 35.239803, 38.797985>,  <42.481926, 35.124290, 38.609772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575909, 35.239803, 38.797985>,  <42.732548, 35.432327, 39.111671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575909, 35.239803, 38.797985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435834, 0.653585, -0.618769,
		0.810372, -0.584094, -0.046169,
		-0.391595, -0.481311, -0.784215,
		42.458431, 35.095409, 38.562721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224194, 35.085751, 38.826084>,  <42.732548, 35.432327, 39.111671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224194, 35.085751, 38.826084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967796, 35.219120, 38.549545>,  <42.813957, 35.299141, 38.383621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967796, 35.219120, 38.549545>,  <43.224194, 35.085751, 38.826084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967796, 35.219120, 38.549545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728013, 0.549455, -0.409996,
		0.243158, -0.766111, -0.594935,
		-0.640993, 0.333426, -0.691343,
		42.775497, 35.319149, 38.342144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696648, 35.221745, 38.394070>,  <43.224194, 35.085751, 38.826084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696648, 35.221745, 38.394070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348137, 35.371262, 38.266853>,  <43.139030, 35.460972, 38.190525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348137, 35.371262, 38.266853>,  <43.696648, 35.221745, 38.394070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348137, 35.371262, 38.266853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487309, 0.735869, -0.470134,
		0.058304, -0.564602, -0.823301,
		-0.871281, 0.373792, -0.318040,
		43.086754, 35.483398, 38.171440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726116, 35.119736, 37.587692>,  <43.696648, 35.221745, 38.394070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726116, 35.119736, 37.587692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412861, 35.363487, 37.637241>,  <43.224907, 35.509739, 37.666969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412861, 35.363487, 37.637241>,  <43.726116, 35.119736, 37.587692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412861, 35.363487, 37.637241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481703, 0.720464, -0.498892,
		-0.393261, -0.331033, -0.857766,
		-0.783140, 0.609383, 0.123871,
		43.177917, 35.546303, 37.674404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516838, 35.399185, 36.957603>,  <43.726116, 35.119736, 37.587692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516838, 35.399185, 36.957603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391991, 35.666191, 37.228012>,  <43.317081, 35.826393, 37.390259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391991, 35.666191, 37.228012>,  <43.516838, 35.399185, 36.957603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391991, 35.666191, 37.228012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405246, 0.737131, -0.540753,
		-0.859278, 0.105176, -0.500579,
		-0.312118, 0.667515, 0.676022,
		43.298355, 35.866447, 37.430820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122719, 35.980728, 36.551788>,  <43.516838, 35.399185, 36.957603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122719, 35.980728, 36.551788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250523, 36.102268, 36.910809>,  <43.327206, 36.175190, 37.126221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250523, 36.102268, 36.910809>,  <43.122719, 35.980728, 36.551788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250523, 36.102268, 36.910809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198250, 0.904800, -0.376874,
		-0.926614, 0.298352, 0.228851,
		0.319506, 0.303847, 0.897548,
		43.346375, 36.193424, 37.180073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980080, 36.615791, 36.372139>,  <43.122719, 35.980728, 36.551788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980080, 36.615791, 36.372139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173458, 36.636364, 36.721684>,  <43.289486, 36.648708, 36.931412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173458, 36.636364, 36.721684>,  <42.980080, 36.615791, 36.372139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173458, 36.636364, 36.721684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357222, 0.899778, -0.250584,
		-0.799172, 0.433306, 0.416618,
		0.483443, 0.051435, 0.873863,
		43.318493, 36.651794, 36.983841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909843, 37.231010, 36.675541>,  <42.980080, 36.615791, 36.372139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909843, 37.231010, 36.675541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234936, 37.127022, 36.884109>,  <43.429993, 37.064629, 37.009251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234936, 37.127022, 36.884109>,  <42.909843, 37.231010, 36.675541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234936, 37.127022, 36.884109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252190, 0.963722, 0.087409,
		-0.525225, 0.060456, 0.848813,
		0.812735, -0.259972, 0.521417,
		43.478756, 37.049030, 37.040535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940792, 37.765759, 37.161781>,  <42.909843, 37.231010, 36.675541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940792, 37.765759, 37.161781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303471, 37.597271, 37.153061>,  <43.521076, 37.496178, 37.147827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303471, 37.597271, 37.153061>,  <42.940792, 37.765759, 37.161781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303471, 37.597271, 37.153061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419891, 0.896524, 0.141195,
		-0.039929, -0.137175, 0.989742,
		0.906696, -0.421222, -0.021801,
		43.575478, 37.470905, 37.146519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384609, 38.027943, 37.682240>,  <42.940792, 37.765759, 37.161781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384609, 38.027943, 37.682240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674549, 37.889843, 37.443779>,  <43.848511, 37.806984, 37.300701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674549, 37.889843, 37.443779>,  <43.384609, 38.027943, 37.682240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674549, 37.889843, 37.443779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483849, 0.871130, 0.083801,
		0.490397, -0.349192, 0.798483,
		0.724845, -0.345250, -0.596156,
		43.892002, 37.786266, 37.264931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019039, 38.242203, 37.951981>,  <43.384609, 38.027943, 37.682240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019039, 38.242203, 37.951981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067455, 38.183140, 37.559338>,  <44.096504, 38.147701, 37.323753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067455, 38.183140, 37.559338>,  <44.019039, 38.242203, 37.951981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067455, 38.183140, 37.559338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586296, 0.808593, -0.049336,
		0.801004, -0.569540, 0.184437,
		0.121036, -0.147653, -0.981605,
		44.103767, 38.138844, 37.264854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779411, 38.284481, 37.778435>,  <44.019039, 38.242203, 37.951981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779411, 38.284481, 37.778435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550224, 38.388737, 37.467625>,  <44.412712, 38.451290, 37.281139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550224, 38.388737, 37.467625>,  <44.779411, 38.284481, 37.778435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550224, 38.388737, 37.467625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533518, 0.838312, -0.112214,
		0.622143, -0.478853, -0.619385,
		-0.572972, 0.260640, -0.777027,
		44.378334, 38.466930, 37.234516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199509, 38.540012, 37.315876>,  <44.779411, 38.284481, 37.778435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199509, 38.540012, 37.315876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843830, 38.708450, 37.244320>,  <44.630421, 38.809513, 37.201385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843830, 38.708450, 37.244320>,  <45.199509, 38.540012, 37.315876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843830, 38.708450, 37.244320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435435, 0.898917, -0.048414,
		0.140424, -0.120946, -0.982677,
		-0.889201, 0.421093, -0.178893,
		44.577068, 38.834778, 37.190651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592545, 38.157467, 37.859169>,  <45.199509, 38.540012, 37.315876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592545, 38.157467, 37.859169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436142, 37.798412, 37.777809>,  <45.342300, 37.582981, 37.728992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436142, 37.798412, 37.777809>,  <45.592545, 38.157467, 37.859169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436142, 37.798412, 37.777809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349272, 0.059751, -0.935114,
		0.851544, -0.436673, 0.290156,
		-0.391002, -0.897634, -0.203398,
		45.318840, 37.529121, 37.716789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871548, 38.008717, 37.170391>,  <45.592545, 38.157467, 37.859169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871548, 38.008717, 37.170391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677353, 37.669613, 37.255814>,  <45.560837, 37.466152, 37.307068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677353, 37.669613, 37.255814>,  <45.871548, 38.008717, 37.170391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677353, 37.669613, 37.255814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241130, -0.364649, -0.899382,
		0.840331, -0.385145, 0.381453,
		-0.485489, -0.847759, 0.213556,
		45.531708, 37.415287, 37.319881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429482, 37.391476, 37.283108>,  <45.871548, 38.008717, 37.170391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429482, 37.391476, 37.283108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052330, 37.301647, 37.184677>,  <45.826038, 37.247749, 37.125618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052330, 37.301647, 37.184677>,  <46.429482, 37.391476, 37.283108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052330, 37.301647, 37.184677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311836, -0.334980, -0.889127,
		0.117245, -0.915071, 0.385874,
		-0.942874, -0.224575, -0.246077,
		45.769466, 37.234276, 37.110855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.277916, 36.654659, 37.019058>,  <46.429482, 37.391476, 37.283108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.277916, 36.654659, 37.019058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034557, 36.919891, 36.844624>,  <45.888542, 37.079033, 36.739964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034557, 36.919891, 36.844624>,  <46.277916, 36.654659, 37.019058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034557, 36.919891, 36.844624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140039, -0.451169, -0.881383,
		-0.781180, -0.597300, 0.181632,
		-0.608397, 0.663083, -0.436090,
		45.852039, 37.118816, 36.713799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605808, 36.384205, 36.669003>,  <46.277916, 36.654659, 37.019058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605808, 36.384205, 36.669003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726620, 36.726997, 36.501980>,  <45.799107, 36.932674, 36.401764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726620, 36.726997, 36.501980>,  <45.605808, 36.384205, 36.669003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726620, 36.726997, 36.501980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084430, -0.412246, -0.907152,
		-0.949553, 0.309239, -0.052154,
		0.302027, 0.856986, -0.417558,
		45.817226, 36.984093, 36.376713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189476, 36.556213, 36.072250>,  <45.605808, 36.384205, 36.669003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189476, 36.556213, 36.072250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545277, 36.733295, 36.026993>,  <45.758759, 36.839546, 35.999840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545277, 36.733295, 36.026993>,  <45.189476, 36.556213, 36.072250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545277, 36.733295, 36.026993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002991, -0.253244, -0.967398,
		-0.456925, 0.860162, -0.226585,
		0.889500, 0.442706, -0.113141,
		45.812126, 36.866108, 35.993050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055664, 37.192139, 35.640148>,  <45.189476, 36.556213, 36.072250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055664, 37.192139, 35.640148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409653, 37.008823, 35.607185>,  <45.622047, 36.898834, 35.587406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409653, 37.008823, 35.607185>,  <45.055664, 37.192139, 35.640148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409653, 37.008823, 35.607185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229678, -0.275675, -0.933408,
		0.405056, 0.844969, -0.349224,
		0.884973, -0.458292, -0.082407,
		45.675144, 36.871334, 35.582462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427277, 37.409523, 34.995300>,  <45.055664, 37.192139, 35.640148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427277, 37.409523, 34.995300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542805, 37.039497, 35.093956>,  <45.612122, 36.817482, 35.153149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542805, 37.039497, 35.093956>,  <45.427277, 37.409523, 34.995300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542805, 37.039497, 35.093956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142288, -0.296236, -0.944457,
		0.946749, 0.237688, -0.217186,
		0.288825, -0.925067, 0.246641,
		45.629452, 36.761978, 35.167950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.845516, 37.181221, 34.422504>,  <45.427277, 37.409523, 34.995300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.845516, 37.181221, 34.422504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763096, 36.831688, 34.598667>,  <45.713646, 36.621967, 34.704365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763096, 36.831688, 34.598667>,  <45.845516, 37.181221, 34.422504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763096, 36.831688, 34.598667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247078, -0.389022, -0.887476,
		0.946835, -0.291677, -0.135748,
		-0.206048, -0.873834, 0.440407,
		45.701283, 36.569538, 34.730789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246998, 36.519958, 34.252769>,  <45.845516, 37.181221, 34.422504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246998, 36.519958, 34.252769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873867, 36.415955, 34.352554>,  <45.649990, 36.353554, 34.412426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873867, 36.415955, 34.352554>,  <46.246998, 36.519958, 34.252769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873867, 36.415955, 34.352554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074547, -0.538093, -0.839582,
		0.352535, -0.801780, 0.482564,
		-0.932824, -0.260009, 0.249467,
		45.594021, 36.337952, 34.427395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167721, 35.786575, 34.445293>,  <46.246998, 36.519958, 34.252769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167721, 35.786575, 34.445293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839512, 35.941402, 34.277042>,  <45.642586, 36.034298, 34.176094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839512, 35.941402, 34.277042>,  <46.167721, 35.786575, 34.445293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.839512, 35.941402, 34.277042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054816, -0.785741, -0.616122,
		-0.568979, -0.482485, 0.665936,
		-0.820523, 0.387064, -0.420622,
		45.593353, 36.057522, 34.150856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.486614, 35.464035, 34.527969>,  <46.167721, 35.786575, 34.445293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.486614, 35.464035, 34.527969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587528, 35.635635, 34.181026>,  <45.648075, 35.738594, 33.972858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587528, 35.635635, 34.181026>,  <45.486614, 35.464035, 34.527969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587528, 35.635635, 34.181026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249738, -0.837122, -0.486680,
		-0.934871, 0.339394, -0.104055,
		0.252283, 0.428996, -0.867361,
		45.663212, 35.764336, 33.920818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841343, 35.119736, 34.111866>,  <45.486614, 35.464035, 34.527969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841343, 35.119736, 34.111866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889317, 34.888828, 33.788788>,  <45.918102, 34.750282, 33.594940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889317, 34.888828, 33.788788>,  <45.841343, 35.119736, 34.111866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889317, 34.888828, 33.788788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734848, -0.495421, 0.463202,
		-0.667543, -0.649089, 0.364788,
		0.119935, -0.577271, -0.807697,
		45.925297, 34.715649, 33.546478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817921, 34.221191, 34.175816>,  <45.841343, 35.119736, 34.111866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817921, 34.221191, 34.175816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056816, 34.419453, 33.923584>,  <46.200153, 34.538410, 33.772243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056816, 34.419453, 33.923584>,  <45.817921, 34.221191, 34.175816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056816, 34.419453, 33.923584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783843, -0.194072, 0.589853,
		0.169987, -0.846558, -0.504424,
		0.597239, 0.495656, -0.630579,
		46.235989, 34.568150, 33.734409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.456268, 33.837635, 33.971783>,  <45.817921, 34.221191, 34.175816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.456268, 33.837635, 33.971783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510941, 34.233879, 33.972980>,  <46.543743, 34.471626, 33.973701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510941, 34.233879, 33.972980>,  <46.456268, 33.837635, 33.971783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510941, 34.233879, 33.972980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786987, -0.110423, 0.607008,
		0.601639, -0.080609, -0.794690,
		0.136682, 0.990610, 0.002996,
		46.551945, 34.531063, 33.973881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170406, 34.092194, 33.912128>,  <46.456268, 33.837635, 33.971783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170406, 34.092194, 33.912128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016575, 34.402283, 34.112579>,  <46.924278, 34.588337, 34.232849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016575, 34.402283, 34.112579>,  <47.170406, 34.092194, 33.912128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016575, 34.402283, 34.112579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837090, 0.064057, 0.543302,
		0.389080, 0.628430, -0.673567,
		-0.384574, 0.775224, 0.501130,
		46.901203, 34.634850, 34.262917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.638821, 34.710632, 33.798813>,  <47.170406, 34.092194, 33.912128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.638821, 34.710632, 33.798813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.415028, 34.697037, 34.130070>,  <47.280754, 34.688877, 34.328823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.415028, 34.697037, 34.130070>,  <47.638821, 34.710632, 33.798813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.415028, 34.697037, 34.130070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823788, 0.087381, 0.560123,
		-0.091404, 0.995595, -0.020886,
		-0.559481, -0.033992, 0.828146,
		47.247185, 34.686840, 34.378513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.673874, 35.272648, 34.322701>,  <47.638821, 34.710632, 33.798813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.673874, 35.272648, 34.322701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593945, 34.933159, 34.518555>,  <47.545986, 34.729465, 34.636066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593945, 34.933159, 34.518555>,  <47.673874, 35.272648, 34.322701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593945, 34.933159, 34.518555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666364, 0.248647, 0.702947,
		-0.718352, 0.466741, 0.515871,
		-0.199825, -0.848721, 0.489636,
		47.533997, 34.678543, 34.665443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.733547, 35.508984, 34.968719>,  <47.673874, 35.272648, 34.322701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.733547, 35.508984, 34.968719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764099, 35.112087, 35.007961>,  <47.782429, 34.873951, 35.031506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764099, 35.112087, 35.007961>,  <47.733547, 35.508984, 34.968719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.764099, 35.112087, 35.007961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849650, 0.116256, 0.514373,
		-0.521787, 0.044065, 0.851937,
		0.076377, -0.992241, 0.098100,
		47.787014, 34.814415, 35.037392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.030788, 38.294952, 26.071367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834164, 37.955280, 25.994160>,  <38.716190, 37.751476, 25.947834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834164, 37.955280, 25.994160>,  <39.030788, 38.294952, 26.071367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834164, 37.955280, 25.994160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618501, -0.496469, 0.609077,
		-0.613047, 0.180013, 0.769265,
		-0.491558, -0.849184, -0.193021,
		38.686695, 37.700523, 25.936253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910870, 37.999233, 26.670715>,  <39.030788, 38.294952, 26.071367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910870, 37.999233, 26.670715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883778, 37.683647, 26.426439>,  <38.867523, 37.494293, 26.279873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883778, 37.683647, 26.426439>,  <38.910870, 37.999233, 26.670715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883778, 37.683647, 26.426439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368532, -0.588591, 0.719545,
		-0.927145, -0.176326, 0.330624,
		-0.067728, -0.788968, -0.610690,
		38.863461, 37.446957, 26.243233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706867, 37.493240, 27.125349>,  <38.910870, 37.999233, 26.670715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706867, 37.493240, 27.125349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813950, 37.285706, 26.800600>,  <38.878201, 37.161186, 26.605751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813950, 37.285706, 26.800600>,  <38.706867, 37.493240, 27.125349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813950, 37.285706, 26.800600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378017, -0.718510, 0.583821,
		-0.886248, -0.463196, 0.003779,
		0.267708, -0.518839, -0.811874,
		38.894260, 37.130054, 26.557037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507465, 36.732780, 27.241409>,  <38.706867, 37.493240, 27.125349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507465, 36.732780, 27.241409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792747, 36.767654, 26.963205>,  <38.963917, 36.788578, 26.796284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792747, 36.767654, 26.963205>,  <38.507465, 36.732780, 27.241409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792747, 36.767654, 26.963205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558502, -0.670262, 0.488697,
		-0.423569, -0.736987, -0.526727,
		0.713208, 0.087181, -0.695510,
		39.006710, 36.793808, 26.754553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613861, 36.068443, 27.005669>,  <38.507465, 36.732780, 27.241409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613861, 36.068443, 27.005669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947399, 36.278622, 26.938013>,  <39.147522, 36.404728, 26.897419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947399, 36.278622, 26.938013>,  <38.613861, 36.068443, 27.005669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947399, 36.278622, 26.938013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524058, -0.657296, 0.541595,
		0.173406, -0.540244, -0.823448,
		0.833843, 0.525450, -0.169140,
		39.197552, 36.436256, 26.887272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171440, 35.543018, 26.980104>,  <38.613861, 36.068443, 27.005669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171440, 35.543018, 26.980104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343800, 35.894730, 27.061300>,  <39.447216, 36.105755, 27.110018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343800, 35.894730, 27.061300>,  <39.171440, 35.543018, 26.980104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343800, 35.894730, 27.061300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536415, -0.430461, 0.725922,
		0.725664, -0.203911, -0.657140,
		0.430896, 0.879274, 0.202989,
		39.473068, 36.158512, 27.122196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903114, 35.348026, 27.100157>,  <39.171440, 35.543018, 26.980104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903114, 35.348026, 27.100157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.872051, 35.710987, 27.265364>,  <39.853413, 35.928764, 27.364487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.872051, 35.710987, 27.265364>,  <39.903114, 35.348026, 27.100157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872051, 35.710987, 27.265364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645684, -0.269873, 0.714326,
		0.759646, 0.322152, -0.564939,
		-0.077660, 0.907407, 0.413016,
		39.848755, 35.983208, 27.389269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661507, 35.515900, 27.326487>,  <39.903114, 35.348026, 27.100157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661507, 35.515900, 27.326487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405052, 35.747334, 27.528154>,  <40.251179, 35.886192, 27.649155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405052, 35.747334, 27.528154>,  <40.661507, 35.515900, 27.326487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405052, 35.747334, 27.528154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611343, -0.012074, 0.791274,
		0.463907, 0.815532, -0.345973,
		-0.641132, 0.578586, 0.504171,
		40.212711, 35.920910, 27.679405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071045, 36.022156, 27.630875>,  <40.661507, 35.515900, 27.326487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071045, 36.022156, 27.630875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740471, 36.076813, 27.849356>,  <40.542126, 36.109608, 27.980444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740471, 36.076813, 27.849356>,  <41.071045, 36.022156, 27.630875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740471, 36.076813, 27.849356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551657, 0.002452, 0.834067,
		0.112630, 0.990617, -0.077406,
		-0.826431, 0.136642, 0.546205,
		40.492542, 36.117805, 28.013218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176899, 36.610802, 27.978748>,  <41.071045, 36.022156, 27.630875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176899, 36.610802, 27.978748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.908154, 36.395981, 28.182775>,  <40.746906, 36.267090, 28.305193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.908154, 36.395981, 28.182775>,  <41.176899, 36.610802, 27.978748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908154, 36.395981, 28.182775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502508, 0.175406, 0.846592,
		-0.544133, 0.825111, 0.152023,
		-0.671867, -0.537052, 0.510069,
		40.706593, 36.234867, 28.335796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998936, 36.999496, 28.641466>,  <41.176899, 36.610802, 27.978748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998936, 36.999496, 28.641466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.936810, 36.607147, 28.688396>,  <40.899536, 36.371738, 28.716555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.936810, 36.607147, 28.688396>,  <40.998936, 36.999496, 28.641466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936810, 36.607147, 28.688396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489062, 0.026843, 0.871836,
		-0.858310, 0.192787, 0.475538,
		-0.155314, -0.980873, 0.117325,
		40.890217, 36.312885, 28.723595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766834, 36.920765, 29.378195>,  <40.998936, 36.999496, 28.641466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766834, 36.920765, 29.378195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.895031, 36.555248, 29.278379>,  <40.971947, 36.335938, 29.218491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.895031, 36.555248, 29.278379>,  <40.766834, 36.920765, 29.378195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895031, 36.555248, 29.278379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465099, -0.077692, 0.881843,
		-0.825209, -0.398679, 0.400106,
		0.320487, -0.913794, -0.249538,
		40.991177, 36.281109, 29.203518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631069, 36.442005, 29.959085>,  <40.766834, 36.920765, 29.378195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631069, 36.442005, 29.959085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.923180, 36.258575, 29.756538>,  <41.098446, 36.148518, 29.635010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.923180, 36.258575, 29.756538>,  <40.631069, 36.442005, 29.959085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923180, 36.258575, 29.756538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459720, -0.218399, 0.860790,
		-0.505322, -0.861403, 0.051322,
		0.730279, -0.458570, -0.506366,
		41.142262, 36.121006, 29.604630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718212, 35.855152, 30.342178>,  <40.631069, 36.442005, 29.959085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718212, 35.855152, 30.342178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.052437, 35.857929, 30.122437>,  <41.252972, 35.859596, 29.990591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.052437, 35.857929, 30.122437>,  <40.718212, 35.855152, 30.342178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052437, 35.857929, 30.122437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520431, -0.330395, 0.787395,
		-0.176036, -0.943817, -0.279679,
		0.835561, 0.006944, -0.549353,
		41.303104, 35.860012, 29.957630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052315, 35.264996, 30.431616>,  <40.718212, 35.855152, 30.342178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052315, 35.264996, 30.431616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.351479, 35.493145, 30.295788>,  <41.530975, 35.630035, 30.214291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.351479, 35.493145, 30.295788>,  <41.052315, 35.264996, 30.431616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351479, 35.493145, 30.295788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557366, -0.261770, 0.787921,
		0.360521, -0.778557, -0.513687,
		0.747909, 0.570374, -0.339568,
		41.575851, 35.664257, 30.193918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721439, 34.791241, 30.463381>,  <41.052315, 35.264996, 30.431616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721439, 34.791241, 30.463381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.839844, 35.173065, 30.449635>,  <41.910889, 35.402161, 30.441387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.839844, 35.173065, 30.449635>,  <41.721439, 34.791241, 30.463381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839844, 35.173065, 30.449635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789698, -0.224329, 0.571011,
		0.537358, -0.196166, -0.820223,
		0.296013, 0.954566, -0.034367,
		41.928646, 35.459435, 30.439325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488628, 34.829254, 30.403404>,  <41.721439, 34.791241, 30.463381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488628, 34.829254, 30.403404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.377163, 35.178905, 30.562523>,  <42.310284, 35.388699, 30.657993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.377163, 35.178905, 30.562523>,  <42.488628, 34.829254, 30.403404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377163, 35.178905, 30.562523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622477, -0.151026, 0.767928,
		0.731347, 0.461612, -0.502041,
		-0.278664, 0.874131, 0.397795,
		42.293564, 35.441143, 30.681862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076706, 35.139877, 30.492796>,  <42.488628, 34.829254, 30.403404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076706, 35.139877, 30.492796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.811184, 35.327503, 30.725809>,  <42.651871, 35.440079, 30.865616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.811184, 35.327503, 30.725809>,  <43.076706, 35.139877, 30.492796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811184, 35.327503, 30.725809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592634, -0.145244, 0.792269,
		0.456236, 0.871138, -0.181571,
		-0.663803, 0.469066, 0.582531,
		42.612041, 35.468224, 30.900568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494282, 35.505424, 30.977617>,  <43.076706, 35.139877, 30.492796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494282, 35.505424, 30.977617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.142147, 35.465034, 31.163010>,  <42.930866, 35.440800, 31.274244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.142147, 35.465034, 31.163010>,  <43.494282, 35.505424, 30.977617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142147, 35.465034, 31.163010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473804, -0.140281, 0.869385,
		-0.022768, 0.984950, 0.171336,
		-0.880336, -0.100973, 0.463479,
		42.878048, 35.434742, 31.302053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715740, 35.895599, 31.516027>,  <43.494282, 35.505424, 30.977617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715740, 35.895599, 31.516027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.378067, 35.714634, 31.631039>,  <43.175461, 35.606056, 31.700045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.378067, 35.714634, 31.631039>,  <43.715740, 35.895599, 31.516027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378067, 35.714634, 31.631039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341412, -0.040257, 0.939051,
		-0.413263, 0.890900, 0.188444,
		-0.844187, -0.452412, 0.287528,
		43.124809, 35.578911, 31.717297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556812, 36.187874, 32.178001>,  <43.715740, 35.895599, 31.516027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556812, 36.187874, 32.178001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.386475, 35.827042, 32.149982>,  <43.284271, 35.610542, 32.133171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.386475, 35.827042, 32.149982>,  <43.556812, 36.187874, 32.178001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386475, 35.827042, 32.149982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428232, -0.269137, 0.862660,
		-0.797041, 0.337364, 0.500911,
		-0.425844, -0.902081, -0.070043,
		43.258720, 35.556416, 32.128971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722210, 36.875980, 32.610470>,  <43.556812, 36.187874, 32.178001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722210, 36.875980, 32.610470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.910915, 37.190899, 32.769264>,  <44.024139, 37.379852, 32.864540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.910915, 37.190899, 32.769264>,  <43.722210, 36.875980, 32.610470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.910915, 37.190899, 32.769264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231237, 0.544955, -0.805949,
		-0.850863, 0.288420, 0.439143,
		0.471764, 0.787298, 0.396989,
		44.052444, 37.427090, 32.888359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317417, 37.462143, 32.486965>,  <43.722210, 36.875980, 32.610470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317417, 37.462143, 32.486965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.694656, 37.583527, 32.541332>,  <43.921001, 37.656357, 32.573952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.694656, 37.583527, 32.541332>,  <43.317417, 37.462143, 32.486965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694656, 37.583527, 32.541332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073586, 0.589104, -0.804700,
		-0.324265, 0.748911, 0.577915,
		0.943100, 0.303462, 0.135916,
		43.977585, 37.674564, 32.582108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233810, 38.186199, 32.425892>,  <43.317417, 37.462143, 32.486965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233810, 38.186199, 32.425892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.620235, 38.092194, 32.382999>,  <43.852089, 38.035789, 32.357265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.620235, 38.092194, 32.382999>,  <43.233810, 38.186199, 32.425892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620235, 38.092194, 32.382999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070415, 0.638953, -0.766016,
		0.248543, 0.732465, 0.633815,
		0.966058, -0.235018, -0.107231,
		43.910053, 38.021687, 32.350830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686436, 38.862736, 32.382172>,  <43.233810, 38.186199, 32.425892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686436, 38.862736, 32.382172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.871731, 38.551033, 32.213333>,  <43.982910, 38.364010, 32.112030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.871731, 38.551033, 32.213333>,  <43.686436, 38.862736, 32.382172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871731, 38.551033, 32.213333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019182, 0.467352, -0.883863,
		0.886025, 0.417538, 0.201548,
		0.463240, -0.779259, -0.422095,
		44.010704, 38.317257, 32.086704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127403, 39.265812, 32.013519>,  <43.686436, 38.862736, 32.382172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127403, 39.265812, 32.013519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.088860, 38.897884, 31.861389>,  <44.065735, 38.677128, 31.770111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.088860, 38.897884, 31.861389>,  <44.127403, 39.265812, 32.013519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088860, 38.897884, 31.861389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120508, 0.390076, -0.912862,
		0.988025, -0.042130, -0.148433,
		-0.096359, -0.919818, -0.380328,
		44.059952, 38.621941, 31.747292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337727, 39.390839, 31.396078>,  <44.127403, 39.265812, 32.013519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337727, 39.390839, 31.396078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.124527, 39.054020, 31.362921>,  <43.996605, 38.851929, 31.343027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.124527, 39.054020, 31.362921>,  <44.337727, 39.390839, 31.396078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124527, 39.054020, 31.362921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381457, 0.326588, -0.864772,
		0.755248, -0.429306, -0.495275,
		-0.533002, -0.842044, -0.082893,
		43.964626, 38.801407, 31.338053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414108, 39.122681, 30.710251>,  <44.337727, 39.390839, 31.396078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414108, 39.122681, 30.710251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.080952, 38.930767, 30.820599>,  <43.881058, 38.815620, 30.886808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.080952, 38.930767, 30.820599>,  <44.414108, 39.122681, 30.710251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080952, 38.930767, 30.820599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361640, 0.094483, -0.927518,
		0.418940, -0.872287, -0.252201,
		-0.832890, -0.479780, 0.275871,
		43.831085, 38.786835, 30.903360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240856, 38.745007, 30.130941>,  <44.414108, 39.122681, 30.710251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240856, 38.745007, 30.130941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.904533, 38.741333, 30.347441>,  <43.702740, 38.739128, 30.477341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.904533, 38.741333, 30.347441>,  <44.240856, 38.745007, 30.130941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904533, 38.741333, 30.347441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528876, 0.227164, -0.817732,
		-0.115440, -0.973813, -0.195861,
		-0.840811, -0.009187, 0.541250,
		43.652290, 38.738575, 30.509815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744091, 38.245056, 29.851730>,  <44.240856, 38.745007, 30.130941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744091, 38.245056, 29.851730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.519386, 38.498100, 30.064981>,  <43.384563, 38.649925, 30.192932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.519386, 38.498100, 30.064981>,  <43.744091, 38.245056, 29.851730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519386, 38.498100, 30.064981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638368, 0.078433, -0.765725,
		-0.526221, -0.770488, 0.359777,
		-0.561764, 0.632611, 0.533128,
		43.350857, 38.687881, 30.224920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066746, 38.122074, 29.681822>,  <43.744091, 38.245056, 29.851730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066746, 38.122074, 29.681822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.025311, 38.481171, 29.853094>,  <43.000450, 38.696629, 29.955856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.025311, 38.481171, 29.853094>,  <43.066746, 38.122074, 29.681822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025311, 38.481171, 29.853094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576365, 0.296667, -0.761440,
		-0.810600, -0.325663, 0.486694,
		-0.103587, 0.897737, 0.428180,
		42.994236, 38.750492, 29.981548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318508, 38.246864, 29.759447>,  <43.066746, 38.122074, 29.681822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318508, 38.246864, 29.759447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.488075, 38.608597, 29.779377>,  <42.589817, 38.825634, 29.791334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.488075, 38.608597, 29.779377>,  <42.318508, 38.246864, 29.759447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488075, 38.608597, 29.779377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548940, 0.300305, -0.780052,
		-0.720385, 0.303330, 0.623727,
		0.423922, 0.904327, 0.049825,
		42.615253, 38.879894, 29.794325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772263, 38.688431, 29.625679>,  <42.318508, 38.246864, 29.759447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772263, 38.688431, 29.625679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.092163, 38.923298, 29.575670>,  <42.284103, 39.064220, 29.545666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.092163, 38.923298, 29.575670>,  <41.772263, 38.688431, 29.625679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092163, 38.923298, 29.575670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489792, 0.517761, -0.701446,
		-0.347138, 0.622215, 0.701672,
		0.799749, 0.587172, -0.125021,
		42.332088, 39.099449, 29.538164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499008, 39.271244, 29.488871>,  <41.772263, 38.688431, 29.625679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499008, 39.271244, 29.488871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.867558, 39.343033, 29.350971>,  <42.088688, 39.386108, 29.268230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.867558, 39.343033, 29.350971>,  <41.499008, 39.271244, 29.488871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867558, 39.343033, 29.350971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387229, 0.500188, -0.774511,
		0.033433, 0.847113, 0.530360,
		0.921377, 0.179476, -0.344749,
		42.143970, 39.396877, 29.247547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602158, 39.965286, 29.260899>,  <41.499008, 39.271244, 29.488871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602158, 39.965286, 29.260899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.849514, 39.733559, 29.048489>,  <41.997929, 39.594521, 28.921041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.849514, 39.733559, 29.048489>,  <41.602158, 39.965286, 29.260899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849514, 39.733559, 29.048489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413940, 0.334272, -0.846709,
		0.668020, 0.743407, -0.033094,
		0.618387, -0.579318, -0.531026,
		42.035030, 39.559765, 28.889181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679661, 40.432491, 28.626995>,  <41.602158, 39.965286, 29.260899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679661, 40.432491, 28.626995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.840065, 40.083572, 28.515079>,  <41.936306, 39.874222, 28.447929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.840065, 40.083572, 28.515079>,  <41.679661, 40.432491, 28.626995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840065, 40.083572, 28.515079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296334, 0.165479, -0.940640,
		0.866821, 0.460116, -0.192134,
		0.401009, -0.872301, -0.279789,
		41.960369, 39.821880, 28.431143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197208, 40.517017, 28.107817>,  <41.679661, 40.432491, 28.626995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197208, 40.517017, 28.107817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.052647, 40.145668, 28.073154>,  <41.965912, 39.922859, 28.052357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.052647, 40.145668, 28.073154>,  <42.197208, 40.517017, 28.107817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052647, 40.145668, 28.073154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198408, 0.167381, -0.965721,
		0.911057, -0.331818, -0.244689,
		-0.361400, -0.928375, -0.086658,
		41.944225, 39.867157, 28.047157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205631, 40.439499, 27.414656>,  <42.197208, 40.517017, 28.107817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205631, 40.439499, 27.414656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.959332, 40.139061, 27.509914>,  <41.811550, 39.958797, 27.567070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.959332, 40.139061, 27.509914>,  <42.205631, 40.439499, 27.414656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959332, 40.139061, 27.509914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437903, 0.074941, -0.895893,
		0.655051, -0.655931, -0.375050,
		-0.615750, -0.751091, 0.238144,
		41.774605, 39.913734, 27.581358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111607, 39.990707, 26.765835>,  <42.205631, 40.439499, 27.414656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111607, 39.990707, 26.765835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.797180, 39.869152, 26.981152>,  <41.608524, 39.796219, 27.110342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.797180, 39.869152, 26.981152>,  <42.111607, 39.990707, 26.765835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797180, 39.869152, 26.981152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552622, -0.044714, -0.832231,
		0.276977, -0.951657, -0.132789,
		-0.786061, -0.303891, 0.538292,
		41.561363, 39.777985, 27.142639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828251, 39.479568, 26.331663>,  <42.111607, 39.990707, 26.765835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828251, 39.479568, 26.331663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.533062, 39.571472, 26.585468>,  <41.355949, 39.626614, 26.737751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.533062, 39.571472, 26.585468>,  <41.828251, 39.479568, 26.331663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533062, 39.571472, 26.585468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652137, -0.001018, -0.758100,
		-0.173538, -0.973246, 0.150589,
		-0.737971, 0.229764, 0.634513,
		41.311672, 39.640400, 26.775822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.029903, 39.056561, 26.109037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.920528, 39.357376, 26.348928>,  <40.854904, 39.537865, 26.492863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.920528, 39.357376, 26.348928>,  <41.029903, 39.056561, 26.109037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920528, 39.357376, 26.348928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880358, 0.055547, -0.471046,
		-0.387557, -0.656776, 0.646873,
		-0.273440, 0.752037, 0.599726,
		40.838497, 39.582989, 26.528847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301365, 38.950035, 26.200846>,  <41.029903, 39.056561, 26.109037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301365, 38.950035, 26.200846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.371159, 39.326710, 26.315939>,  <40.413036, 39.552715, 26.384995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.371159, 39.326710, 26.315939>,  <40.301365, 38.950035, 26.200846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371159, 39.326710, 26.315939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923860, 0.257658, -0.283011,
		-0.340643, -0.216441, 0.914940,
		0.174487, 0.941682, 0.287731,
		40.423504, 39.609215, 26.402258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824406, 39.055065, 26.749662>,  <40.301365, 38.950035, 26.200846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824406, 39.055065, 26.749662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959751, 39.387505, 26.573120>,  <40.040958, 39.586967, 26.467196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959751, 39.387505, 26.573120>,  <39.824406, 39.055065, 26.749662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959751, 39.387505, 26.573120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920997, 0.196249, -0.336527,
		-0.193071, 0.520354, 0.831839,
		0.338360, 0.831095, -0.441355,
		40.061260, 39.636833, 26.440714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329731, 39.667007, 26.811447>,  <39.824406, 39.055065, 26.749662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329731, 39.667007, 26.811447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531307, 39.799759, 26.492474>,  <39.652252, 39.879410, 26.301090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531307, 39.799759, 26.492474>,  <39.329731, 39.667007, 26.811447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531307, 39.799759, 26.492474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862481, 0.243118, -0.443870,
		0.046560, 0.911456, 0.408755,
		0.503943, 0.331876, -0.797433,
		39.682491, 39.899323, 26.253244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018726, 40.250416, 26.655764>,  <39.329731, 39.667007, 26.811447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018726, 40.250416, 26.655764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226089, 40.163170, 26.325024>,  <39.350506, 40.110825, 26.126579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226089, 40.163170, 26.325024>,  <39.018726, 40.250416, 26.655764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226089, 40.163170, 26.325024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795089, 0.232994, -0.559953,
		0.314783, 0.947703, -0.052633,
		0.518406, -0.218112, -0.826851,
		39.381611, 40.097736, 26.076969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941963, 40.886124, 26.222338>,  <39.018726, 40.250416, 26.655764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941963, 40.886124, 26.222338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016441, 40.553383, 26.013205>,  <39.061131, 40.353737, 25.887726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016441, 40.553383, 26.013205>,  <38.941963, 40.886124, 26.222338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016441, 40.553383, 26.013205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795298, 0.184854, -0.577348,
		0.576915, 0.523309, -0.627150,
		0.186200, -0.831851, -0.522831,
		39.072300, 40.303829, 25.856356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114071, 41.089745, 25.571424>,  <38.941963, 40.886124, 26.222338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114071, 41.089745, 25.571424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968384, 40.721077, 25.517963>,  <38.880970, 40.499874, 25.485888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968384, 40.721077, 25.517963>,  <39.114071, 41.089745, 25.571424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968384, 40.721077, 25.517963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752926, 0.375871, -0.540206,
		0.548129, -0.096125, -0.830852,
		-0.364220, -0.921673, -0.133651,
		38.859119, 40.444576, 25.477869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899635, 41.080727, 24.924227>,  <39.114071, 41.089745, 25.571424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899635, 41.080727, 24.924227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.729656, 40.740368, 25.047771>,  <38.627670, 40.536152, 25.121899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.729656, 40.740368, 25.047771>,  <38.899635, 41.080727, 24.924227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729656, 40.740368, 25.047771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875264, 0.299178, -0.380006,
		0.230942, -0.431817, -0.871894,
		-0.424945, -0.850897, 0.308861,
		38.602173, 40.485100, 25.140430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560196, 40.801289, 24.315811>,  <38.899635, 41.080727, 24.924227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560196, 40.801289, 24.315811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373703, 40.608833, 24.612764>,  <38.261806, 40.493359, 24.790936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373703, 40.608833, 24.612764>,  <38.560196, 40.801289, 24.315811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373703, 40.608833, 24.612764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882098, 0.188994, -0.431491,
		0.067302, -0.856029, -0.512528,
		-0.466234, -0.481140, 0.742381,
		38.233833, 40.464493, 24.835478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187126, 40.321510, 24.037878>,  <38.560196, 40.801289, 24.315811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187126, 40.321510, 24.037878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998508, 40.373631, 24.386744>,  <37.885338, 40.404903, 24.596064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998508, 40.373631, 24.386744>,  <38.187126, 40.321510, 24.037878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998508, 40.373631, 24.386744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826275, 0.280251, -0.488599,
		-0.308091, -0.951042, -0.024484,
		-0.471540, 0.130302, 0.872164,
		37.857048, 40.412720, 24.648394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477371, 40.162491, 23.905828>,  <38.187126, 40.321510, 24.037878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477371, 40.162491, 23.905828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.479771, 40.404186, 24.224541>,  <37.481209, 40.549206, 24.415768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.479771, 40.404186, 24.224541>,  <37.477371, 40.162491, 23.905828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479771, 40.404186, 24.224541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803738, 0.476975, -0.355669,
		-0.594954, -0.638268, 0.488512,
		0.005996, 0.604242, 0.796778,
		37.481571, 40.585461, 24.463573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726242, 40.180027, 24.128548>,  <37.477371, 40.162491, 23.905828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726242, 40.180027, 24.128548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913437, 40.500561, 24.277596>,  <37.025753, 40.692883, 24.367025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913437, 40.500561, 24.277596>,  <36.726242, 40.180027, 24.128548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913437, 40.500561, 24.277596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775389, 0.574617, -0.261892,
		-0.423978, -0.166364, 0.890262,
		0.467990, 0.801336, 0.372622,
		37.053833, 40.740963, 24.389381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178440, 40.465954, 24.470509>,  <36.726242, 40.180027, 24.128548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178440, 40.465954, 24.470509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446419, 40.755627, 24.405100>,  <36.607204, 40.929428, 24.365854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446419, 40.755627, 24.405100>,  <36.178440, 40.465954, 24.470509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446419, 40.755627, 24.405100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741051, 0.638967, -0.206312,
		-0.044922, 0.259396, 0.964726,
		0.669944, 0.724179, -0.163522,
		36.647404, 40.972881, 24.356043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889454, 40.935539, 24.839420>,  <36.178440, 40.465954, 24.470509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889454, 40.935539, 24.839420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129299, 41.127903, 24.583549>,  <36.273205, 41.243320, 24.430027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129299, 41.127903, 24.583549>,  <35.889454, 40.935539, 24.839420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129299, 41.127903, 24.583549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732502, 0.651747, -0.196638,
		0.322342, 0.586472, 0.743065,
		0.599614, 0.480912, -0.639677,
		36.309185, 41.272175, 24.391645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916420, 41.561703, 25.035501>,  <35.889454, 40.935539, 24.839420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916420, 41.561703, 25.035501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050339, 41.621323, 24.663332>,  <36.130692, 41.657097, 24.440029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050339, 41.621323, 24.663332>,  <35.916420, 41.561703, 25.035501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050339, 41.621323, 24.663332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821112, 0.530544, -0.210474,
		0.462260, 0.834450, 0.300015,
		0.334801, 0.149052, -0.930426,
		36.150780, 41.666039, 24.384205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726303, 42.340012, 24.927588>,  <35.916420, 41.561703, 25.035501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726303, 42.340012, 24.927588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769955, 42.172634, 24.566923>,  <35.796146, 42.072208, 24.350525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769955, 42.172634, 24.566923>,  <35.726303, 42.340012, 24.927588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769955, 42.172634, 24.566923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728484, 0.583490, -0.358957,
		0.676315, 0.696020, -0.241152,
		0.109132, -0.418444, -0.901663,
		35.802692, 42.047100, 24.296425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884834, 42.880650, 24.458158>,  <35.726303, 42.340012, 24.927588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884834, 42.880650, 24.458158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717812, 42.573421, 24.263958>,  <35.617599, 42.389084, 24.147438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717812, 42.573421, 24.263958>,  <35.884834, 42.880650, 24.458158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717812, 42.573421, 24.263958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653597, 0.625064, -0.426739,
		0.631241, 0.139145, -0.763003,
		-0.417547, -0.768071, -0.485510,
		35.592545, 42.342999, 24.118307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827389, 43.022587, 23.710932>,  <35.884834, 42.880650, 24.458158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827389, 43.022587, 23.710932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551193, 42.746380, 23.797106>,  <35.385475, 42.580654, 23.848810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551193, 42.746380, 23.797106>,  <35.827389, 43.022587, 23.710932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551193, 42.746380, 23.797106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689193, 0.537594, -0.485804,
		0.219642, -0.483916, -0.847102,
		-0.690486, -0.690520, 0.215433,
		35.344048, 42.539223, 23.861736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418682, 43.000805, 23.043633>,  <35.827389, 43.022587, 23.710932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418682, 43.000805, 23.043633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191628, 42.831757, 23.326242>,  <35.055393, 42.730328, 23.495808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191628, 42.831757, 23.326242>,  <35.418682, 43.000805, 23.043633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191628, 42.831757, 23.326242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796475, 0.499096, -0.341366,
		-0.208357, -0.756503, -0.619912,
		-0.567640, -0.422619, 0.706526,
		35.021336, 42.704971, 23.538200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838470, 42.804558, 22.763184>,  <35.418682, 43.000805, 23.043633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838470, 42.804558, 22.763184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713058, 42.792912, 23.142836>,  <34.637814, 42.785923, 23.370628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713058, 42.792912, 23.142836>,  <34.838470, 42.804558, 22.763184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713058, 42.792912, 23.142836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912243, 0.286756, -0.292546,
		-0.263652, -0.957561, -0.116467,
		-0.313528, -0.029116, 0.949132,
		34.618999, 42.784176, 23.427576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357033, 42.388596, 22.670687>,  <34.838470, 42.804558, 22.763184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357033, 42.388596, 22.670687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276947, 42.598934, 23.001358>,  <34.228897, 42.725136, 23.199760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276947, 42.598934, 23.001358>,  <34.357033, 42.388596, 22.670687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276947, 42.598934, 23.001358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868889, 0.294577, -0.397814,
		-0.452710, -0.797940, 0.397926,
		-0.200212, 0.525848, 0.826680,
		34.216885, 42.756687, 23.249361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647545, 42.337666, 22.566494>,  <34.357033, 42.388596, 22.670687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647545, 42.337666, 22.566494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698895, 42.603611, 22.860834>,  <33.729706, 42.763176, 23.037439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698895, 42.603611, 22.860834>,  <33.647545, 42.337666, 22.566494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698895, 42.603611, 22.860834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862654, 0.440898, -0.247863,
		-0.489230, -0.602966, 0.630148,
		0.128378, 0.664862, 0.735852,
		33.737408, 42.803070, 23.081589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941303, 42.362797, 22.958054>,  <33.647545, 42.337666, 22.566494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941303, 42.362797, 22.958054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158497, 42.698456, 22.970724>,  <33.288811, 42.899853, 22.978327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158497, 42.698456, 22.970724>,  <32.941303, 42.362797, 22.958054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158497, 42.698456, 22.970724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701976, 0.474277, -0.531311,
		-0.460872, 0.266255, 0.846585,
		0.542979, 0.839148, 0.031677,
		33.321392, 42.950199, 22.980227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564003, 42.132725, 22.333593>,  <32.941303, 42.362797, 22.958054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564003, 42.132725, 22.333593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394039, 41.804176, 22.181381>,  <32.292061, 41.607048, 22.090054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394039, 41.804176, 22.181381>,  <32.564003, 42.132725, 22.333593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394039, 41.804176, 22.181381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368080, -0.540815, 0.756331,
		-0.827024, 0.181307, 0.532127,
		-0.424910, -0.821369, -0.380531,
		32.266567, 41.557766, 22.067223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324566, 41.695301, 22.894297>,  <32.564003, 42.132725, 22.333593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324566, 41.695301, 22.894297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.411591, 41.493320, 22.560186>,  <32.463806, 41.372131, 22.359720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.411591, 41.493320, 22.560186>,  <32.324566, 41.695301, 22.894297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411591, 41.493320, 22.560186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450939, -0.706968, 0.544841,
		-0.865634, -0.495195, 0.073896,
		0.217560, -0.504955, -0.835277,
		32.476860, 41.341835, 22.309603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174469, 41.057507, 23.145023>,  <32.324566, 41.695301, 22.894297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174469, 41.057507, 23.145023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.378304, 40.965027, 22.813513>,  <32.500603, 40.909538, 22.614607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.378304, 40.965027, 22.813513>,  <32.174469, 41.057507, 23.145023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378304, 40.965027, 22.813513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285926, -0.862980, 0.416547,
		-0.811524, -0.449234, -0.373654,
		0.509583, -0.231201, -0.828777,
		32.531178, 40.895668, 22.564880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087177, 40.258312, 22.936907>,  <32.174469, 41.057507, 23.145023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087177, 40.258312, 22.936907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.434517, 40.373211, 22.775190>,  <32.642921, 40.442150, 22.678160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.434517, 40.373211, 22.775190>,  <32.087177, 40.258312, 22.936907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434517, 40.373211, 22.775190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437166, -0.828288, 0.350465,
		-0.234199, -0.481070, -0.844821,
		0.868353, 0.287249, -0.404291,
		32.695023, 40.459385, 22.653902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427597, 39.700470, 22.641056>,  <32.087177, 40.258312, 22.936907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427597, 39.700470, 22.641056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729904, 39.961063, 22.667521>,  <32.911289, 40.117420, 22.683399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729904, 39.961063, 22.667521>,  <32.427597, 39.700470, 22.641056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729904, 39.961063, 22.667521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605528, -0.733748, 0.308139,
		0.249295, -0.192818, -0.949038,
		0.755769, 0.651487, 0.066163,
		32.956635, 40.156509, 22.687370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006939, 39.251858, 22.535723>,  <32.427597, 39.700470, 22.641056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006939, 39.251858, 22.535723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205288, 39.586899, 22.627407>,  <33.324299, 39.787922, 22.682417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205288, 39.586899, 22.627407>,  <33.006939, 39.251858, 22.535723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205288, 39.586899, 22.627407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775264, -0.545913, 0.317717,
		0.391249, 0.020152, -0.920064,
		0.495872, 0.837599, 0.229211,
		33.354050, 39.838181, 22.696171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684895, 39.164745, 22.270535>,  <33.006939, 39.251858, 22.535723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684895, 39.164745, 22.270535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.702995, 39.421635, 22.576607>,  <33.713856, 39.575768, 22.760250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.702995, 39.421635, 22.576607>,  <33.684895, 39.164745, 22.270535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702995, 39.421635, 22.576607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770793, -0.509695, 0.382216,
		0.635477, 0.572501, -0.518085,
		0.045247, 0.642226, 0.765179,
		33.716568, 39.614304, 22.806160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298862, 39.157063, 22.460375>,  <33.684895, 39.164745, 22.270535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298862, 39.157063, 22.460375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187450, 39.362080, 22.785267>,  <34.120602, 39.485088, 22.980202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187450, 39.362080, 22.785267>,  <34.298862, 39.157063, 22.460375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187450, 39.362080, 22.785267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766487, -0.390961, 0.509556,
		0.578721, 0.764492, -0.283962,
		-0.278534, 0.512544, 0.812230,
		34.103889, 39.515842, 23.028936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880913, 39.417862, 22.693289>,  <34.298862, 39.157063, 22.460375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880913, 39.417862, 22.693289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664474, 39.420792, 23.029661>,  <34.534611, 39.422550, 23.231485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664474, 39.420792, 23.029661>,  <34.880913, 39.417862, 22.693289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664474, 39.420792, 23.029661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773910, -0.386943, 0.501337,
		0.329064, 0.922075, 0.203704,
		-0.541092, 0.007324, 0.840931,
		34.502148, 39.422989, 23.281940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316025, 39.636383, 23.211926>,  <34.880913, 39.417862, 22.693289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316025, 39.636383, 23.211926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.026115, 39.487946, 23.444132>,  <34.852169, 39.398884, 23.583456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.026115, 39.487946, 23.444132>,  <35.316025, 39.636383, 23.211926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026115, 39.487946, 23.444132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678811, -0.240293, 0.693884,
		-0.118000, 0.896968, 0.426058,
		-0.724771, -0.371091, 0.580517,
		34.808685, 39.376617, 23.618286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255810, 39.960773, 23.782907>,  <35.316025, 39.636383, 23.211926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255810, 39.960773, 23.782907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119732, 39.598900, 23.885521>,  <35.038086, 39.381775, 23.947090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119732, 39.598900, 23.885521>,  <35.255810, 39.960773, 23.782907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119732, 39.598900, 23.885521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812151, -0.145153, 0.565104,
		-0.474005, 0.400589, 0.784122,
		-0.340191, -0.904688, 0.256535,
		35.017673, 39.327492, 23.962482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282234, 40.004787, 24.480637>,  <35.255810, 39.960773, 23.782907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282234, 40.004787, 24.480637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.254875, 39.608292, 24.435442>,  <35.238461, 39.370396, 24.408325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.254875, 39.608292, 24.435442>,  <35.282234, 40.004787, 24.480637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254875, 39.608292, 24.435442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715056, -0.127682, 0.687309,
		-0.695714, -0.033780, 0.717525,
		-0.068398, -0.991240, -0.112984,
		35.234356, 39.310921, 24.401546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213711, 39.622246, 25.197701>,  <35.282234, 40.004787, 24.480637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213711, 39.622246, 25.197701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344666, 39.360737, 24.924822>,  <35.423241, 39.203831, 24.761095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344666, 39.360737, 24.924822>,  <35.213711, 39.622246, 25.197701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344666, 39.360737, 24.924822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789570, -0.207301, 0.577586,
		-0.519032, -0.727738, 0.448333,
		0.327391, -0.653776, -0.682196,
		35.442883, 39.164604, 24.720163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549622, 39.107430, 25.591871>,  <35.213711, 39.622246, 25.197701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549622, 39.107430, 25.591871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.674294, 38.971401, 25.236971>,  <35.749096, 38.889786, 25.024031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.674294, 38.971401, 25.236971>,  <35.549622, 39.107430, 25.591871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674294, 38.971401, 25.236971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850713, -0.316070, 0.419985,
		-0.423256, -0.885694, 0.190787,
		0.311676, -0.340066, -0.887250,
		35.767796, 38.869381, 24.970797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932686, 38.439808, 25.760826>,  <35.549622, 39.107430, 25.591871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932686, 38.439808, 25.760826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.075138, 38.589027, 25.418129>,  <36.160610, 38.678558, 25.212511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.075138, 38.589027, 25.418129>,  <35.932686, 38.439808, 25.760826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075138, 38.589027, 25.418129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900997, -0.380169, 0.208991,
		-0.247742, -0.846348, -0.471507,
		0.356131, 0.373050, -0.856740,
		36.181976, 38.700943, 25.161106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291893, 37.865593, 25.499216>,  <35.932686, 38.439808, 25.760826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291893, 37.865593, 25.499216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406666, 38.215202, 25.342369>,  <36.475529, 38.424969, 25.248260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406666, 38.215202, 25.342369>,  <36.291893, 37.865593, 25.499216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406666, 38.215202, 25.342369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951685, -0.306822, 0.012492,
		-0.109392, -0.376758, -0.919830,
		0.286931, 0.874022, -0.392118,
		36.492744, 38.477409, 25.224733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621346, 37.785629, 24.824535>,  <36.291893, 37.865593, 25.499216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621346, 37.785629, 24.824535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748936, 38.113720, 25.014477>,  <36.825489, 38.310574, 25.128443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748936, 38.113720, 25.014477>,  <36.621346, 37.785629, 24.824535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748936, 38.113720, 25.014477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944418, -0.317131, -0.086617,
		0.079546, 0.476091, -0.875791,
		0.318978, 0.820222, 0.474856,
		36.844627, 38.359787, 25.156933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222229, 37.757233, 24.608644>,  <36.621346, 37.785629, 24.824535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222229, 37.757233, 24.608644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251343, 38.032215, 24.897673>,  <37.268810, 38.197205, 25.071089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251343, 38.032215, 24.897673>,  <37.222229, 37.757233, 24.608644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251343, 38.032215, 24.897673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972963, -0.208166, 0.100049,
		0.219194, 0.695751, -0.684021,
		0.072781, 0.687457, 0.722569,
		37.273178, 38.238453, 25.114443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891609, 38.013733, 24.467007>,  <37.222229, 37.757233, 24.608644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891609, 38.013733, 24.467007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811211, 38.137489, 24.838787>,  <37.762970, 38.211742, 25.061855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811211, 38.137489, 24.838787>,  <37.891609, 38.013733, 24.467007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811211, 38.137489, 24.838787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861950, -0.394964, 0.317877,
		0.465448, 0.865031, -0.187296,
		-0.200998, 0.309395, 0.929449,
		37.750912, 38.230309, 25.117622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600391, 38.119926, 24.716848>,  <37.891609, 38.013733, 24.467007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600391, 38.119926, 24.716848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356991, 38.089481, 25.032806>,  <38.210953, 38.071213, 25.222382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356991, 38.089481, 25.032806>,  <38.600391, 38.119926, 24.716848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356991, 38.089481, 25.032806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741523, -0.409041, 0.531817,
		0.282620, 0.909336, 0.305343,
		-0.608498, -0.076116, 0.789896,
		38.174442, 38.066647, 25.269775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921082, 38.347694, 25.326328>,  <38.600391, 38.119926, 24.716848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921082, 38.347694, 25.326328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652637, 38.115810, 25.511173>,  <38.491570, 37.976681, 25.622080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652637, 38.115810, 25.511173>,  <38.921082, 38.347694, 25.326328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652637, 38.115810, 25.511173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723104, -0.649324, 0.235584,
		0.163489, 0.492257, 0.854959,
		-0.671112, -0.579709, 0.462110,
		38.451305, 37.941898, 25.649807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.320854, 39.352505, 28.624584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970192, 39.328819, 28.815565>,  <42.759792, 39.314610, 28.930153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970192, 39.328819, 28.815565>,  <43.320854, 39.352505, 28.624584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970192, 39.328819, 28.815565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471396, 0.092707, 0.877035,
		-0.096196, 0.993931, -0.053360,
		-0.876660, -0.059213, 0.477453,
		42.707195, 39.311054, 28.958801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354828, 39.766716, 29.152380>,  <43.320854, 39.352505, 28.624584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354828, 39.766716, 29.152380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.032795, 39.570675, 29.286034>,  <42.839577, 39.453049, 29.366226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.032795, 39.570675, 29.286034>,  <43.354828, 39.766716, 29.152380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032795, 39.570675, 29.286034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384527, -0.002312, 0.923111,
		-0.451648, 0.871661, 0.190320,
		-0.805079, -0.490105, 0.334133,
		42.791271, 39.423645, 29.386274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203289, 40.054451, 29.857920>,  <43.354828, 39.766716, 29.152380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203289, 40.054451, 29.857920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038265, 39.692120, 29.819393>,  <42.939251, 39.474720, 29.796278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038265, 39.692120, 29.819393>,  <43.203289, 40.054451, 29.857920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038265, 39.692120, 29.819393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272508, -0.223619, 0.935807,
		-0.869214, 0.359830, 0.339100,
		-0.412561, -0.905824, -0.096316,
		42.914497, 39.420372, 29.790499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038589, 39.936691, 30.523146>,  <43.203289, 40.054451, 29.857920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038589, 39.936691, 30.523146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994419, 39.577393, 30.352987>,  <42.967918, 39.361813, 30.250893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994419, 39.577393, 30.352987>,  <43.038589, 39.936691, 30.523146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994419, 39.577393, 30.352987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204854, -0.439395, 0.874624,
		-0.972543, 0.009436, 0.232530,
		-0.110426, -0.898244, -0.425398,
		42.961292, 39.307919, 30.225368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680702, 39.468575, 31.006203>,  <43.038589, 39.936691, 30.523146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680702, 39.468575, 31.006203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890858, 39.244724, 30.749832>,  <43.016953, 39.110416, 30.596010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890858, 39.244724, 30.749832>,  <42.680702, 39.468575, 31.006203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890858, 39.244724, 30.749832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368437, -0.529354, 0.764224,
		-0.766955, -0.637657, -0.071931,
		0.525390, -0.559624, -0.640927,
		43.048473, 39.076836, 30.557554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598629, 38.864758, 31.268982>,  <42.680702, 39.468575, 31.006203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598629, 38.864758, 31.268982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913116, 38.807468, 31.028536>,  <43.101810, 38.773094, 30.884268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913116, 38.807468, 31.028536>,  <42.598629, 38.864758, 31.268982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913116, 38.807468, 31.028536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379288, -0.656119, 0.652417,
		-0.487847, -0.740941, -0.461531,
		0.786222, -0.143227, -0.601116,
		43.148983, 38.764500, 30.848202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746586, 38.187580, 31.354761>,  <42.598629, 38.864758, 31.268982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746586, 38.187580, 31.354761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085785, 38.344456, 31.212170>,  <43.289307, 38.438583, 31.126614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085785, 38.344456, 31.212170>,  <42.746586, 38.187580, 31.354761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085785, 38.344456, 31.212170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523073, -0.510976, 0.682128,
		0.085373, -0.764911, -0.638454,
		0.848001, 0.392193, -0.356481,
		43.340187, 38.462112, 31.105225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358685, 37.612148, 31.320507>,  <42.746586, 38.187580, 31.354761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358685, 37.612148, 31.320507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.555576, 37.960251, 31.312889>,  <43.673710, 38.169113, 31.308319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.555576, 37.960251, 31.312889>,  <43.358685, 37.612148, 31.320507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555576, 37.960251, 31.312889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530311, -0.282460, 0.799366,
		0.690275, -0.403571, -0.600542,
		0.492230, 0.870257, -0.019043,
		43.703247, 38.221329, 31.307177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051624, 37.566414, 31.042536>,  <43.358685, 37.612148, 31.320507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051624, 37.566414, 31.042536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025162, 37.870827, 31.300667>,  <44.009285, 38.053474, 31.455545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025162, 37.870827, 31.300667>,  <44.051624, 37.566414, 31.042536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025162, 37.870827, 31.300667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663176, -0.449695, 0.598308,
		0.745534, 0.467548, -0.474951,
		-0.066155, 0.761035, 0.645329,
		44.005314, 38.099136, 31.494267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808193, 37.558342, 31.419102>,  <44.051624, 37.566414, 31.042536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808193, 37.558342, 31.419102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538921, 37.766891, 31.628860>,  <44.377357, 37.892021, 31.754717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538921, 37.766891, 31.628860>,  <44.808193, 37.558342, 31.419102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538921, 37.766891, 31.628860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313312, -0.441250, 0.840913,
		0.669824, 0.730386, 0.133687,
		-0.673180, 0.521377, 0.524398,
		44.336967, 37.923306, 31.786180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132156, 37.780933, 32.125977>,  <44.808193, 37.558342, 31.419102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132156, 37.780933, 32.125977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.747799, 37.847431, 32.214565>,  <44.517185, 37.887329, 32.267719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.747799, 37.847431, 32.214565>,  <45.132156, 37.780933, 32.125977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747799, 37.847431, 32.214565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165584, -0.296135, 0.940684,
		0.221972, 0.940567, 0.257025,
		-0.960890, 0.166246, 0.221476,
		44.459534, 37.897305, 32.281010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220268, 38.129375, 32.797619>,  <45.132156, 37.780933, 32.125977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220268, 38.129375, 32.797619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.849289, 37.992287, 32.737782>,  <44.626701, 37.910034, 32.701878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.849289, 37.992287, 32.737782>,  <45.220268, 38.129375, 32.797619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849289, 37.992287, 32.737782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052313, -0.277194, 0.959389,
		-0.370269, 0.897611, 0.239155,
		-0.927451, -0.342721, -0.149593,
		44.571053, 37.889469, 32.692905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748375, 38.376926, 33.309040>,  <45.220268, 38.129375, 32.797619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748375, 38.376926, 33.309040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.565811, 38.046223, 33.177494>,  <44.456272, 37.847801, 33.098568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.565811, 38.046223, 33.177494>,  <44.748375, 38.376926, 33.309040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565811, 38.046223, 33.177494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115534, -0.311408, 0.943227,
		-0.882235, 0.468497, 0.046612,
		-0.456414, -0.826762, -0.328863,
		44.428886, 37.798195, 33.078835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172951, 38.224972, 33.724754>,  <44.748375, 38.376926, 33.309040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172951, 38.224972, 33.724754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292255, 37.886131, 33.548820>,  <44.363838, 37.682827, 33.443260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292255, 37.886131, 33.548820>,  <44.172951, 38.224972, 33.724754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292255, 37.886131, 33.548820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207185, -0.392366, 0.896171,
		-0.931726, -0.358423, 0.058479,
		0.298263, -0.847102, -0.439838,
		44.381733, 37.632000, 33.416870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060852, 38.072159, 34.410069>,  <44.172951, 38.224972, 33.724754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060852, 38.072159, 34.410069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.018494, 38.155746, 34.798939>,  <43.993080, 38.205898, 35.032261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.018494, 38.155746, 34.798939>,  <44.060852, 38.072159, 34.410069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018494, 38.155746, 34.798939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898988, 0.397720, -0.183409,
		-0.424979, -0.893394, 0.145743,
		-0.105892, 0.208966, 0.972173,
		43.986725, 38.218437, 35.090591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396294, 37.725559, 34.548340>,  <44.060852, 38.072159, 34.410069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396294, 37.725559, 34.548340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.434208, 37.998684, 34.838108>,  <43.456955, 38.162560, 35.011967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.434208, 37.998684, 34.838108>,  <43.396294, 37.725559, 34.548340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434208, 37.998684, 34.838108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956036, 0.265289, -0.124966,
		-0.277509, -0.680724, 0.677940,
		0.094783, 0.682815, 0.724417,
		43.462643, 38.203529, 35.055431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799931, 37.599098, 34.920006>,  <43.396294, 37.725559, 34.548340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799931, 37.599098, 34.920006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.938667, 37.960331, 35.021320>,  <43.021908, 38.177071, 35.082108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.938667, 37.960331, 35.021320>,  <42.799931, 37.599098, 34.920006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938667, 37.960331, 35.021320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849565, 0.416917, -0.323140,
		-0.397419, -0.103103, 0.911827,
		0.346839, 0.903078, 0.253283,
		43.042721, 38.231255, 35.097305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235741, 37.975842, 35.125469>,  <42.799931, 37.599098, 34.920006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235741, 37.975842, 35.125469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510204, 38.247566, 35.021374>,  <42.674881, 38.410603, 34.958916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510204, 38.247566, 35.021374>,  <42.235741, 37.975842, 35.125469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510204, 38.247566, 35.021374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713950, 0.560241, -0.420006,
		-0.139516, 0.473990, 0.869407,
		0.686156, 0.679311, -0.260243,
		42.716053, 38.451359, 34.943302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054047, 38.551090, 35.453724>,  <42.235741, 37.975842, 35.125469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054047, 38.551090, 35.453724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.269089, 38.660118, 35.134556>,  <42.398113, 38.725536, 34.943054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.269089, 38.660118, 35.134556>,  <42.054047, 38.551090, 35.453724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269089, 38.660118, 35.134556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700300, 0.671404, -0.242481,
		0.469636, 0.689146, 0.551834,
		0.537608, 0.272571, -0.797924,
		42.430370, 38.741890, 34.895180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932564, 39.335297, 35.390503>,  <42.054047, 38.551090, 35.453724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932564, 39.335297, 35.390503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.086411, 39.227753, 35.037281>,  <42.178719, 39.163227, 34.825348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.086411, 39.227753, 35.037281>,  <41.932564, 39.335297, 35.390503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086411, 39.227753, 35.037281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681959, 0.561952, -0.468126,
		0.622095, 0.782255, 0.032784,
		0.384617, -0.268861, -0.883053,
		42.201797, 39.147095, 34.772366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937107, 39.917236, 34.891563>,  <41.932564, 39.335297, 35.390503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937107, 39.917236, 34.891563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.013954, 39.635239, 34.618484>,  <42.060062, 39.466042, 34.454636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.013954, 39.635239, 34.618484>,  <41.937107, 39.917236, 34.891563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013954, 39.635239, 34.618484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773134, 0.319742, -0.547748,
		0.604445, 0.633050, -0.483625,
		0.192116, -0.704991, -0.682700,
		42.071590, 39.423740, 34.413673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838345, 40.316353, 34.379536>,  <41.937107, 39.917236, 34.891563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838345, 40.316353, 34.379536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.819653, 39.941322, 34.241680>,  <41.808437, 39.716305, 34.158966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.819653, 39.941322, 34.241680>,  <41.838345, 40.316353, 34.379536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819653, 39.941322, 34.241680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753251, 0.259674, -0.604303,
		0.656072, 0.231361, -0.718361,
		-0.046727, -0.937572, -0.344637,
		41.805634, 39.660049, 34.138290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920959, 40.389950, 33.737213>,  <41.838345, 40.316353, 34.379536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920959, 40.389950, 33.737213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.747753, 40.031204, 33.773266>,  <41.643829, 39.815956, 33.794899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.747753, 40.031204, 33.773266>,  <41.920959, 40.389950, 33.737213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747753, 40.031204, 33.773266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568843, 0.194334, -0.799157,
		0.699221, -0.397321, -0.594327,
		-0.433020, -0.896867, 0.090131,
		41.617847, 39.762146, 33.800304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813732, 40.036774, 32.978645>,  <41.920959, 40.389950, 33.737213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813732, 40.036774, 32.978645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550644, 39.869537, 33.229279>,  <41.392792, 39.769196, 33.379658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550644, 39.869537, 33.229279>,  <41.813732, 40.036774, 32.978645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550644, 39.869537, 33.229279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727715, 0.137862, -0.671881,
		0.194526, -0.897882, -0.394927,
		-0.657716, -0.418093, 0.626584,
		41.353329, 39.744110, 33.417255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475613, 39.482342, 32.625225>,  <41.813732, 40.036774, 32.978645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475613, 39.482342, 32.625225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.222958, 39.572884, 32.921818>,  <41.071365, 39.627209, 33.099773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.222958, 39.572884, 32.921818>,  <41.475613, 39.482342, 32.625225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222958, 39.572884, 32.921818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721988, 0.176680, -0.668968,
		-0.282429, -0.957887, 0.051828,
		-0.631639, 0.226355, 0.741482,
		41.033466, 39.640789, 33.144264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887104, 39.183708, 32.551796>,  <41.475613, 39.482342, 32.625225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887104, 39.183708, 32.551796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.752666, 39.460682, 32.807159>,  <40.672005, 39.626865, 32.960377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.752666, 39.460682, 32.807159>,  <40.887104, 39.183708, 32.551796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752666, 39.460682, 32.807159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705219, 0.264268, -0.657897,
		-0.624264, -0.671338, 0.399499,
		-0.336096, 0.692436, 0.638413,
		40.651836, 39.668411, 32.998684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215553, 39.026531, 32.567970>,  <40.887104, 39.183708, 32.551796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215553, 39.026531, 32.567970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.237076, 39.400829, 32.707394>,  <40.249989, 39.625408, 32.791046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.237076, 39.400829, 32.707394>,  <40.215553, 39.026531, 32.567970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237076, 39.400829, 32.707394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652492, 0.297179, -0.697093,
		-0.755883, -0.189923, 0.626555,
		0.053805, 0.935743, 0.348555,
		40.253216, 39.681553, 32.811962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617916, 39.239056, 32.617756>,  <40.215553, 39.026531, 32.567970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617916, 39.239056, 32.617756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831741, 39.576607, 32.599403>,  <39.960037, 39.779137, 32.588390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831741, 39.576607, 32.599403>,  <39.617916, 39.239056, 32.617756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831741, 39.576607, 32.599403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549311, 0.305681, -0.777699,
		-0.642260, 0.440935, 0.626960,
		0.534565, 0.843881, -0.045884,
		39.992111, 39.829773, 32.585640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894032, 39.211979, 32.881042>,  <39.617916, 39.239056, 32.617756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894032, 39.211979, 32.881042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564842, 38.999542, 32.961697>,  <38.367329, 38.872082, 33.010090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564842, 38.999542, 32.961697>,  <38.894032, 39.211979, 32.881042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564842, 38.999542, 32.961697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546583, -0.643576, 0.535778,
		-0.154779, 0.551141, 0.819931,
		-0.822977, -0.531087, 0.201632,
		38.317947, 38.840218, 33.022186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816448, 39.255722, 33.655701>,  <38.894032, 39.211979, 32.881042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816448, 39.255722, 33.655701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.649193, 38.923565, 33.508404>,  <38.548840, 38.724270, 33.420025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.649193, 38.923565, 33.508404>,  <38.816448, 39.255722, 33.655701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649193, 38.923565, 33.508404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474236, -0.545308, 0.691187,
		-0.774766, 0.114375, 0.621817,
		-0.418136, -0.830396, -0.368246,
		38.523750, 38.674446, 33.397930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810886, 38.737728, 34.215954>,  <38.816448, 39.255722, 33.655701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810886, 38.737728, 34.215954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.709187, 38.472370, 33.934452>,  <38.648167, 38.313156, 33.765553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.709187, 38.472370, 33.934452>,  <38.810886, 38.737728, 34.215954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709187, 38.472370, 33.934452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430014, -0.729320, 0.532147,
		-0.866284, -0.167327, 0.470695,
		-0.254245, -0.663396, -0.703751,
		38.632912, 38.273350, 33.723328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670288, 38.192417, 34.582428>,  <38.810886, 38.737728, 34.215954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670288, 38.192417, 34.582428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.742447, 38.050228, 34.215584>,  <38.785744, 37.964912, 33.995476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.742447, 38.050228, 34.215584>,  <38.670288, 38.192417, 34.582428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742447, 38.050228, 34.215584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592228, -0.705194, 0.389830,
		-0.785316, -0.613465, 0.083306,
		0.180400, -0.355476, -0.917111,
		38.796566, 37.943584, 33.940449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540195, 37.433678, 34.604984>,  <38.670288, 38.192417, 34.582428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540195, 37.433678, 34.604984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782677, 37.524788, 34.300186>,  <38.928165, 37.579453, 34.117306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782677, 37.524788, 34.300186>,  <38.540195, 37.433678, 34.604984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782677, 37.524788, 34.300186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576435, -0.785942, 0.223645,
		-0.547945, -0.574816, -0.607736,
		0.606200, 0.227775, -0.761998,
		38.964535, 37.593121, 34.071587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559937, 36.841595, 34.228779>,  <38.540195, 37.433678, 34.604984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559937, 36.841595, 34.228779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.880196, 37.060310, 34.130814>,  <39.072350, 37.191540, 34.072033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.880196, 37.060310, 34.130814>,  <38.559937, 36.841595, 34.228779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880196, 37.060310, 34.130814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587520, -0.796634, 0.142107,
		-0.117402, -0.257668, -0.959074,
		0.800648, 0.546791, -0.244912,
		39.120392, 37.224346, 34.057339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823196, 36.452129, 33.734756>,  <38.559937, 36.841595, 34.228779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823196, 36.452129, 33.734756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.121780, 36.692513, 33.849052>,  <39.300930, 36.836742, 33.917629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.121780, 36.692513, 33.849052>,  <38.823196, 36.452129, 33.734756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121780, 36.692513, 33.849052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555842, -0.799188, 0.228775,
		0.365844, -0.011946, -0.930600,
		0.746457, 0.600962, 0.285738,
		39.345718, 36.872803, 33.934772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445129, 36.229313, 33.318340>,  <38.823196, 36.452129, 33.734756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445129, 36.229313, 33.318340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588959, 36.430077, 33.632996>,  <39.675255, 36.550533, 33.821789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588959, 36.430077, 33.632996>,  <39.445129, 36.229313, 33.318340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588959, 36.430077, 33.632996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552623, -0.793819, 0.253889,
		0.751877, 0.343423, -0.562798,
		0.359569, 0.501908, 0.786638,
		39.696831, 36.580650, 33.868988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119900, 36.397396, 33.263695>,  <39.445129, 36.229313, 33.318340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119900, 36.397396, 33.263695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056110, 36.379456, 33.658169>,  <40.017838, 36.368690, 33.894852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056110, 36.379456, 33.658169>,  <40.119900, 36.397396, 33.263695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056110, 36.379456, 33.658169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511702, -0.858049, 0.043725,
		0.844233, 0.511605, 0.159783,
		-0.159471, -0.044847, 0.986183,
		40.008270, 36.366001, 33.954025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700634, 36.309597, 33.459267>,  <40.119900, 36.397396, 33.263695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700634, 36.309597, 33.459267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.469215, 36.176964, 33.757347>,  <40.330364, 36.097382, 33.936195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.469215, 36.176964, 33.757347>,  <40.700634, 36.309597, 33.459267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469215, 36.176964, 33.757347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609042, -0.783340, 0.124285,
		0.542538, 0.525767, 0.655150,
		-0.578550, -0.331585, 0.745206,
		40.295650, 36.077488, 33.980907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186546, 36.021404, 33.868530>,  <40.700634, 36.309597, 33.459267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186546, 36.021404, 33.868530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.871677, 35.900684, 34.083668>,  <40.682758, 35.828251, 34.212749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.871677, 35.900684, 34.083668>,  <41.186546, 36.021404, 33.868530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871677, 35.900684, 34.083668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482745, -0.844256, 0.232786,
		0.383826, 0.442885, 0.810266,
		-0.787169, -0.301803, 0.537848,
		40.635529, 35.810143, 34.245022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320259, 35.973507, 34.609043>,  <41.186546, 36.021404, 33.868530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320259, 35.973507, 34.609043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.998802, 35.736992, 34.582096>,  <40.805927, 35.595085, 34.565926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.998802, 35.736992, 34.582096>,  <41.320259, 35.973507, 34.609043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998802, 35.736992, 34.582096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523208, -0.755946, 0.393446,
		-0.283566, 0.280942, 0.916876,
		-0.803644, -0.591284, -0.067369,
		40.757710, 35.559608, 34.561886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.353207, 41.180553, 30.954037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253601, 40.848701, 30.754152>,  <36.193840, 40.649590, 30.634222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253601, 40.848701, 30.754152>,  <36.353207, 41.180553, 30.954037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253601, 40.848701, 30.754152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540362, -0.547201, 0.639203,
		-0.803743, -0.110858, 0.584558,
		-0.249010, -0.829627, -0.499712,
		36.178898, 40.599812, 30.604239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010452, 40.748566, 31.510006>,  <36.353207, 41.180553, 30.954037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010452, 40.748566, 31.510006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089867, 40.467346, 31.236858>,  <36.137516, 40.298615, 31.072969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089867, 40.467346, 31.236858>,  <36.010452, 40.748566, 31.510006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089867, 40.467346, 31.236858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468967, -0.543655, 0.696067,
		-0.860613, -0.458435, 0.221773,
		0.198533, -0.703048, -0.682867,
		36.149426, 40.256432, 31.031998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733383, 40.166618, 31.773151>,  <36.010452, 40.748566, 31.510006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733383, 40.166618, 31.773151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993061, 40.041378, 31.495876>,  <36.148869, 39.966232, 31.329512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993061, 40.041378, 31.495876>,  <35.733383, 40.166618, 31.773151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993061, 40.041378, 31.495876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251397, -0.771803, 0.584054,
		-0.717871, -0.553433, -0.422342,
		0.649200, -0.313101, -0.693187,
		36.187820, 39.947449, 31.287920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739719, 39.345741, 31.790001>,  <35.733383, 40.166618, 31.773151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739719, 39.345741, 31.790001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079655, 39.483955, 31.630812>,  <36.283615, 39.566883, 31.535297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079655, 39.483955, 31.630812>,  <35.739719, 39.345741, 31.790001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079655, 39.483955, 31.630812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526755, -0.581850, 0.619661,
		-0.017449, -0.736246, -0.676489,
		0.849838, 0.345532, -0.397974,
		36.334606, 39.587616, 31.511419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172737, 38.782997, 31.646633>,  <35.739719, 39.345741, 31.790001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172737, 38.782997, 31.646633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404720, 39.107182, 31.679636>,  <36.543911, 39.301693, 31.699438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404720, 39.107182, 31.679636>,  <36.172737, 38.782997, 31.646633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404720, 39.107182, 31.679636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618701, -0.504078, 0.602591,
		0.529966, -0.298428, -0.793774,
		0.579953, 0.810461, 0.082507,
		36.578705, 39.350319, 31.704388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743008, 38.448467, 31.802088>,  <36.172737, 38.782997, 31.646633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743008, 38.448467, 31.802088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865356, 38.820950, 31.881390>,  <36.938766, 39.044437, 31.928970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865356, 38.820950, 31.881390>,  <36.743008, 38.448467, 31.802088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865356, 38.820950, 31.881390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699147, -0.361033, 0.617130,
		0.646250, -0.050151, -0.761476,
		0.305867, 0.931204, 0.198255,
		36.957115, 39.100311, 31.940866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473598, 38.467606, 31.766907>,  <36.743008, 38.448467, 31.802088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473598, 38.467606, 31.766907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381248, 38.777683, 32.002117>,  <37.325840, 38.963730, 32.143242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381248, 38.777683, 32.002117>,  <37.473598, 38.467606, 31.766907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381248, 38.777683, 32.002117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785973, -0.207653, 0.582346,
		0.573535, 0.596620, -0.561339,
		-0.230876, 0.775193, 0.588024,
		37.311985, 39.010242, 32.178524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143436, 38.786808, 31.862614>,  <37.473598, 38.467606, 31.766907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143436, 38.786808, 31.862614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891891, 38.889561, 32.156155>,  <37.740963, 38.951214, 32.332279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891891, 38.889561, 32.156155>,  <38.143436, 38.786808, 31.862614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891891, 38.889561, 32.156155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691876, -0.245737, 0.678911,
		0.354735, 0.934679, -0.023195,
		-0.628864, 0.256882, 0.733854,
		37.703232, 38.966625, 32.376312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506165, 39.276966, 32.188580>,  <38.143436, 38.786808, 31.862614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506165, 39.276966, 32.188580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252110, 39.097103, 32.439789>,  <38.099674, 38.989185, 32.590515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252110, 39.097103, 32.439789>,  <38.506165, 39.276966, 32.188580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252110, 39.097103, 32.439789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770812, -0.421061, 0.478076,
		0.049467, 0.787730, 0.614031,
		-0.635139, -0.449654, 0.628021,
		38.061569, 38.962208, 32.628197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101696, 39.675552, 32.371658>,  <38.506165, 39.276966, 32.188580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101696, 39.675552, 32.371658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446941, 39.873383, 32.330807>,  <39.654087, 39.992081, 32.306293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446941, 39.873383, 32.330807>,  <39.101696, 39.675552, 32.371658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446941, 39.873383, 32.330807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371156, 0.484095, -0.792398,
		-0.342458, 0.721837, 0.601394,
		0.863114, 0.494574, -0.102132,
		39.705875, 40.021755, 32.300167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924980, 40.429447, 32.394302>,  <39.101696, 39.675552, 32.371658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924980, 40.429447, 32.394302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279133, 40.367165, 32.219093>,  <39.491623, 40.329796, 32.113968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279133, 40.367165, 32.219093>,  <38.924980, 40.429447, 32.394302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279133, 40.367165, 32.219093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285516, 0.561437, -0.776704,
		0.366861, 0.812738, 0.452626,
		0.885378, -0.155711, -0.438019,
		39.544746, 40.320450, 32.087688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089169, 41.043224, 32.190369>,  <38.924980, 40.429447, 32.394302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089169, 41.043224, 32.190369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318699, 40.811188, 31.959124>,  <39.456417, 40.671967, 31.820377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318699, 40.811188, 31.959124>,  <39.089169, 41.043224, 32.190369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318699, 40.811188, 31.959124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206302, 0.580745, -0.787512,
		0.792567, 0.571161, 0.213572,
		0.573827, -0.580096, -0.578111,
		39.490849, 40.637157, 31.785690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582577, 41.498787, 31.897108>,  <39.089169, 41.043224, 32.190369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582577, 41.498787, 31.897108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562393, 41.187199, 31.647097>,  <39.550282, 41.000248, 31.497089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562393, 41.187199, 31.647097>,  <39.582577, 41.498787, 31.897108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562393, 41.187199, 31.647097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037027, 0.626857, -0.778254,
		0.998039, -0.016128, -0.060475,
		-0.050460, -0.778968, -0.625031,
		39.547256, 40.953510, 31.459587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087585, 41.599991, 31.366467>,  <39.582577, 41.498787, 31.897108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087585, 41.599991, 31.366467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814587, 41.351196, 31.212936>,  <39.650787, 41.201920, 31.120819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814587, 41.351196, 31.212936>,  <40.087585, 41.599991, 31.366467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814587, 41.351196, 31.212936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043151, 0.558527, -0.828363,
		0.729611, -0.548795, -0.408034,
		-0.682500, -0.621990, -0.383826,
		39.609837, 41.164600, 31.097788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342789, 41.489498, 30.606728>,  <40.087585, 41.599991, 31.366467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342789, 41.489498, 30.606728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962315, 41.384720, 30.671997>,  <39.734028, 41.321854, 30.711159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962315, 41.384720, 30.671997>,  <40.342789, 41.489498, 30.606728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962315, 41.384720, 30.671997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289198, 0.571974, -0.767600,
		0.107740, -0.777321, -0.619809,
		-0.951187, -0.261949, 0.163175,
		39.676960, 41.306137, 30.720949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093277, 41.334877, 29.883690>,  <40.342789, 41.489498, 30.606728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093277, 41.334877, 29.883690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773270, 41.423931, 30.106546>,  <39.581264, 41.477364, 30.240261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773270, 41.423931, 30.106546>,  <40.093277, 41.334877, 29.883690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773270, 41.423931, 30.106546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471961, 0.339818, -0.813496,
		-0.370437, -0.913761, -0.166787,
		-0.800018, 0.222632, 0.557141,
		39.533264, 41.490719, 30.273689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560135, 41.158058, 29.380482>,  <40.093277, 41.334877, 29.883690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560135, 41.158058, 29.380482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362450, 41.374104, 29.652962>,  <39.243839, 41.503731, 29.816450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362450, 41.374104, 29.652962>,  <39.560135, 41.158058, 29.380482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362450, 41.374104, 29.652962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568601, 0.391907, -0.723258,
		-0.657607, -0.744774, 0.113423,
		-0.494213, 0.540111, 0.681200,
		39.214188, 41.536137, 29.857321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874393, 41.014755, 29.295073>,  <39.560135, 41.158058, 29.380482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874393, 41.014755, 29.295073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873325, 41.371178, 29.476627>,  <38.872684, 41.585030, 29.585560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873325, 41.371178, 29.476627>,  <38.874393, 41.014755, 29.295073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873325, 41.371178, 29.476627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520666, 0.386274, -0.761380,
		-0.853756, -0.238355, 0.462912,
		-0.002668, 0.891055, 0.453887,
		38.872524, 41.638493, 29.612793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174339, 41.171513, 29.188602>,  <38.874393, 41.014755, 29.295073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174339, 41.171513, 29.188602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334816, 41.520363, 29.300632>,  <38.431103, 41.729671, 29.367851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334816, 41.520363, 29.300632>,  <38.174339, 41.171513, 29.188602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334816, 41.520363, 29.300632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382717, 0.437391, -0.813767,
		-0.832209, 0.219288, 0.509255,
		0.401192, 0.872125, 0.280075,
		38.455173, 41.782001, 29.384655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770458, 41.645287, 29.045235>,  <38.174339, 41.171513, 29.188602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770458, 41.645287, 29.045235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078827, 41.895294, 29.094275>,  <38.263847, 42.045300, 29.123699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078827, 41.895294, 29.094275>,  <37.770458, 41.645287, 29.045235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078827, 41.895294, 29.094275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417705, 0.641439, -0.643490,
		-0.480833, 0.444870, 0.755573,
		0.770923, 0.625017, 0.122600,
		38.310104, 42.082798, 29.131054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451706, 42.359863, 29.153076>,  <37.770458, 41.645287, 29.045235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451706, 42.359863, 29.153076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827457, 42.428570, 29.034378>,  <38.052910, 42.469795, 28.963160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827457, 42.428570, 29.034378>,  <37.451706, 42.359863, 29.153076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827457, 42.428570, 29.034378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287801, 0.865429, -0.410127,
		0.186367, 0.470670, 0.862402,
		0.939382, 0.171766, -0.296747,
		38.109272, 42.480099, 28.945354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581123, 43.140255, 29.354044>,  <37.451706, 42.359863, 29.153076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581123, 43.140255, 29.354044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833118, 43.008450, 29.072750>,  <37.984314, 42.929367, 28.903975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833118, 43.008450, 29.072750>,  <37.581123, 43.140255, 29.354044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833118, 43.008450, 29.072750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384185, 0.654724, -0.650952,
		0.674921, 0.680263, 0.285874,
		0.629987, -0.329512, -0.703234,
		38.022114, 42.909595, 28.861780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973114, 43.817444, 29.046665>,  <37.581123, 43.140255, 29.354044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973114, 43.817444, 29.046665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960003, 43.499699, 28.804043>,  <37.952137, 43.309052, 28.658470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960003, 43.499699, 28.804043>,  <37.973114, 43.817444, 29.046665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960003, 43.499699, 28.804043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365141, 0.574449, -0.732585,
		0.930375, 0.197467, -0.308884,
		-0.032777, -0.794364, -0.606556,
		37.950169, 43.261391, 28.622076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.224140, 35.831566, 26.014406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.297314, 36.181103, 26.194603>,  <35.341217, 36.390823, 26.302721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.297314, 36.181103, 26.194603>,  <35.224140, 35.831566, 26.014406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297314, 36.181103, 26.194603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949268, -0.276218, 0.150311,
		0.255781, 0.400139, -0.880037,
		0.182936, 0.873838, 0.450491,
		35.352196, 36.443253, 26.329750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824139, 35.991852, 25.882732>,  <35.224140, 35.831566, 26.014406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824139, 35.991852, 25.882732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768467, 36.186535, 26.227694>,  <35.735065, 36.303345, 26.434671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768467, 36.186535, 26.227694>,  <35.824139, 35.991852, 25.882732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768467, 36.186535, 26.227694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871930, -0.352607, 0.339717,
		0.469433, 0.799237, -0.375302,
		-0.139180, 0.486712, 0.862404,
		35.726711, 36.332550, 26.486414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459732, 36.210297, 26.041309>,  <35.824139, 35.991852, 25.882732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459732, 36.210297, 26.041309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.285168, 36.254292, 26.398510>,  <36.180431, 36.280689, 26.612831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.285168, 36.254292, 26.398510>,  <36.459732, 36.210297, 26.041309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285168, 36.254292, 26.398510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859701, -0.241842, 0.449919,
		0.265450, 0.964062, 0.010986,
		-0.436407, 0.109986, 0.893002,
		36.154247, 36.287289, 26.666410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907627, 36.544880, 26.518505>,  <36.459732, 36.210297, 26.041309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907627, 36.544880, 26.518505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654224, 36.401863, 26.792973>,  <36.502182, 36.316051, 26.957653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654224, 36.401863, 26.792973>,  <36.907627, 36.544880, 26.518505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654224, 36.401863, 26.792973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754877, -0.091000, 0.649523,
		-0.169793, 0.929451, 0.327552,
		-0.633507, -0.357546, 0.686170,
		36.464172, 36.294598, 26.998823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011223, 36.997982, 27.032784>,  <36.907627, 36.544880, 26.518505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011223, 36.997982, 27.032784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843479, 36.664635, 27.176800>,  <36.742832, 36.464626, 27.263210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843479, 36.664635, 27.176800>,  <37.011223, 36.997982, 27.032784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843479, 36.664635, 27.176800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747467, -0.091891, 0.657912,
		-0.515201, 0.545021, 0.661453,
		-0.419358, -0.833372, 0.360043,
		36.717670, 36.414623, 27.284813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266762, 37.073353, 27.581896>,  <37.011223, 36.997982, 27.032784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266762, 37.073353, 27.581896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147419, 36.691677, 27.572952>,  <37.075813, 36.462669, 27.567587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147419, 36.691677, 27.572952>,  <37.266762, 37.073353, 27.581896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147419, 36.691677, 27.572952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742330, -0.246704, 0.622964,
		-0.599944, 0.169266, 0.781931,
		-0.298352, -0.954194, -0.022358,
		37.057915, 36.405418, 27.566244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232677, 36.757690, 28.349335>,  <37.266762, 37.073353, 27.581896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232677, 36.757690, 28.349335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269390, 36.442413, 28.105919>,  <37.291416, 36.253246, 27.959869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269390, 36.442413, 28.105919>,  <37.232677, 36.757690, 28.349335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269390, 36.442413, 28.105919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721861, -0.368295, 0.585896,
		-0.685924, -0.493057, 0.535165,
		0.091782, -0.788196, -0.608542,
		37.296925, 36.205956, 27.923357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126816, 36.189812, 28.802126>,  <37.232677, 36.757690, 28.349335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126816, 36.189812, 28.802126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.326492, 36.054489, 28.483038>,  <37.446297, 35.973297, 28.291586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.326492, 36.054489, 28.483038>,  <37.126816, 36.189812, 28.802126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326492, 36.054489, 28.483038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624722, -0.497440, 0.601893,
		-0.600443, -0.798813, -0.036969,
		0.499190, -0.338307, -0.797720,
		37.476250, 35.952995, 28.243721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048321, 35.479439, 28.771711>,  <37.126816, 36.189812, 28.802126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048321, 35.479439, 28.771711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.373432, 35.554420, 28.551075>,  <37.568501, 35.599411, 28.418694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.373432, 35.554420, 28.551075>,  <37.048321, 35.479439, 28.771711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373432, 35.554420, 28.551075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546753, -0.572335, 0.611142,
		-0.201130, -0.798306, -0.567675,
		0.812778, 0.187459, -0.551590,
		37.617264, 35.610657, 28.385597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374546, 34.816654, 28.775257>,  <37.048321, 35.479439, 28.771711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374546, 34.816654, 28.775257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664238, 35.070286, 28.666864>,  <37.838055, 35.222466, 28.601830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664238, 35.070286, 28.666864>,  <37.374546, 34.816654, 28.775257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664238, 35.070286, 28.666864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630082, -0.448872, 0.633648,
		0.280146, -0.629650, -0.724609,
		0.724234, 0.634077, -0.270982,
		37.881508, 35.260509, 28.585569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009541, 34.478985, 28.783648>,  <37.374546, 34.816654, 28.775257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009541, 34.478985, 28.783648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.141666, 34.854584, 28.821970>,  <38.220943, 35.079941, 28.844963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.141666, 34.854584, 28.821970>,  <38.009541, 34.478985, 28.783648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141666, 34.854584, 28.821970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718462, -0.315963, 0.619661,
		0.612130, -0.135853, -0.779000,
		0.330317, 0.938995, 0.095805,
		38.240761, 35.136284, 28.850712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746338, 34.490601, 28.602331>,  <38.009541, 34.478985, 28.783648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746338, 34.490601, 28.602331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.690105, 34.804626, 28.843632>,  <38.656368, 34.993042, 28.988413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.690105, 34.804626, 28.843632>,  <38.746338, 34.490601, 28.602331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690105, 34.804626, 28.843632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797918, -0.270887, 0.538468,
		0.586145, 0.557042, -0.588336,
		-0.140577, 0.785063, 0.603253,
		38.647934, 35.040146, 29.024607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420486, 34.635391, 28.675066>,  <38.746338, 34.490601, 28.602331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420486, 34.635391, 28.675066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.238274, 34.837261, 28.968405>,  <39.128948, 34.958382, 29.144407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.238274, 34.837261, 28.968405>,  <39.420486, 34.635391, 28.675066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238274, 34.837261, 28.968405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725973, -0.266176, 0.634124,
		0.515225, 0.821252, -0.245129,
		-0.455528, 0.504673, 0.733348,
		39.101616, 34.988663, 29.188410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885315, 34.961571, 28.983803>,  <39.420486, 34.635391, 28.675066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885315, 34.961571, 28.983803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.604256, 34.943821, 29.267862>,  <39.435619, 34.933170, 29.438299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.604256, 34.943821, 29.267862>,  <39.885315, 34.961571, 28.983803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604256, 34.943821, 29.267862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679931, -0.336018, 0.651756,
		0.209704, 0.940810, 0.266273,
		-0.702651, -0.044371, 0.710150,
		39.393459, 34.930508, 29.480907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679764, 35.593834, 28.874144>,  <39.885315, 34.961571, 28.983803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679764, 35.593834, 28.874144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983345, 35.813244, 28.733797>,  <40.165493, 35.944889, 28.649590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983345, 35.813244, 28.733797>,  <39.679764, 35.593834, 28.874144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983345, 35.813244, 28.733797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475585, 0.098919, -0.874090,
		-0.444753, 0.830262, 0.335945,
		0.758956, 0.548524, -0.350866,
		40.211033, 35.977802, 28.628538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423897, 36.268841, 28.686230>,  <39.679764, 35.593834, 28.874144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423897, 36.268841, 28.686230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740871, 36.192856, 28.454382>,  <39.931057, 36.147266, 28.315273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740871, 36.192856, 28.454382>,  <39.423897, 36.268841, 28.686230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740871, 36.192856, 28.454382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548127, 0.195096, -0.813323,
		0.267583, 0.962212, 0.050477,
		0.792437, -0.189963, -0.579619,
		39.978603, 36.135868, 28.280497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437943, 36.844299, 28.322113>,  <39.423897, 36.268841, 28.686230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437943, 36.844299, 28.322113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670368, 36.584774, 28.125580>,  <39.809822, 36.429058, 28.007660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670368, 36.584774, 28.125580>,  <39.437943, 36.844299, 28.322113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670368, 36.584774, 28.125580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387458, 0.310375, -0.868069,
		0.715712, 0.694774, -0.071041,
		0.581062, -0.648812, -0.491335,
		39.844688, 36.390129, 27.978180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681416, 37.215981, 27.807774>,  <39.437943, 36.844299, 28.322113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681416, 37.215981, 27.807774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.729546, 36.836067, 27.692230>,  <39.758423, 36.608120, 27.622904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.729546, 36.836067, 27.692230>,  <39.681416, 37.215981, 27.807774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729546, 36.836067, 27.692230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377656, 0.225303, -0.898117,
		0.918094, 0.217158, -0.331579,
		0.120328, -0.949779, -0.288861,
		39.765644, 36.551132, 27.605572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117798, 37.307201, 27.282154>,  <39.681416, 37.215981, 27.807774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117798, 37.307201, 27.282154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910252, 36.970264, 27.223854>,  <39.785725, 36.768105, 27.188873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910252, 36.970264, 27.223854>,  <40.117798, 37.307201, 27.282154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910252, 36.970264, 27.223854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227931, 0.300645, -0.926099,
		0.823909, -0.447300, -0.347989,
		-0.518866, -0.842339, -0.145750,
		39.754593, 36.717564, 27.180128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287731, 37.007229, 26.493374>,  <40.117798, 37.307201, 27.282154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287731, 37.007229, 26.493374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952160, 36.829376, 26.618912>,  <39.750816, 36.722664, 26.694235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952160, 36.829376, 26.618912>,  <40.287731, 37.007229, 26.493374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952160, 36.829376, 26.618912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485600, 0.351157, -0.800551,
		0.245738, -0.824011, -0.510508,
		-0.838931, -0.444628, 0.313847,
		39.700481, 36.695988, 26.713066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963856, 36.799213, 25.848629>,  <40.287731, 37.007229, 26.493374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963856, 36.799213, 25.848629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.676746, 36.831585, 26.125252>,  <39.504482, 36.851009, 26.291225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.676746, 36.831585, 26.125252>,  <39.963856, 36.799213, 25.848629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676746, 36.831585, 26.125252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580012, 0.479991, -0.658175,
		-0.385208, -0.873532, -0.297584,
		-0.717775, 0.080932, 0.691556,
		39.461414, 36.855865, 26.332718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353790, 36.454334, 25.520247>,  <39.963856, 36.799213, 25.848629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353790, 36.454334, 25.520247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.212955, 36.671009, 25.825563>,  <39.128456, 36.801014, 26.008753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.212955, 36.671009, 25.825563>,  <39.353790, 36.454334, 25.520247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212955, 36.671009, 25.825563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612025, 0.483760, -0.625621,
		-0.708139, -0.687426, 0.161199,
		-0.352087, 0.541684, 0.763291,
		39.107330, 36.833515, 26.054550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595177, 36.473541, 25.438511>,  <39.353790, 36.454334, 25.520247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595177, 36.473541, 25.438511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683403, 36.786102, 25.672009>,  <38.736340, 36.973640, 25.812107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683403, 36.786102, 25.672009>,  <38.595177, 36.473541, 25.438511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683403, 36.786102, 25.672009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635854, 0.569024, -0.521441,
		-0.739621, -0.256163, 0.622368,
		0.220568, 0.781404, 0.583744,
		38.749573, 37.020523, 25.847132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971874, 36.660038, 25.796864>,  <38.595177, 36.473541, 25.438511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971874, 36.660038, 25.796864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192764, 36.988022, 25.857155>,  <38.325298, 37.184811, 25.893330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192764, 36.988022, 25.857155>,  <37.971874, 36.660038, 25.796864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192764, 36.988022, 25.857155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780535, 0.572019, -0.252109,
		-0.292938, 0.021572, 0.955888,
		0.552225, 0.819957, 0.150728,
		38.358433, 37.234009, 25.902372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466614, 37.184418, 26.044790>,  <37.971874, 36.660038, 25.796864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466614, 37.184418, 26.044790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.772842, 37.414574, 25.929674>,  <37.956581, 37.552666, 25.860605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.772842, 37.414574, 25.929674>,  <37.466614, 37.184418, 26.044790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772842, 37.414574, 25.929674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643335, 0.681994, -0.347857,
		-0.003883, 0.451456, 0.892285,
		0.765575, 0.575389, -0.287789,
		38.002514, 37.587189, 25.843338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313484, 37.833523, 26.276276>,  <37.466614, 37.184418, 26.044790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313484, 37.833523, 26.276276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.578602, 37.907520, 25.986040>,  <37.737671, 37.951920, 25.811899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.578602, 37.907520, 25.986040>,  <37.313484, 37.833523, 26.276276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578602, 37.907520, 25.986040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572475, 0.749805, -0.331760,
		0.482677, 0.635270, 0.602872,
		0.662794, 0.184996, -0.725590,
		37.777439, 37.963020, 25.768364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504658, 38.644238, 26.313192>,  <37.313484, 37.833523, 26.276276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504658, 38.644238, 26.313192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558445, 38.487766, 25.949017>,  <37.590717, 38.393883, 25.730511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558445, 38.487766, 25.949017>,  <37.504658, 38.644238, 26.313192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558445, 38.487766, 25.949017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566105, 0.723763, -0.394577,
		0.813292, 0.568462, -0.124126,
		0.134465, -0.391175, -0.910440,
		37.598785, 38.370415, 25.675884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469254, 39.170761, 26.019394>,  <37.504658, 38.644238, 26.313192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469254, 39.170761, 26.019394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415123, 38.888149, 25.741545>,  <37.382645, 38.718582, 25.574835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415123, 38.888149, 25.741545>,  <37.469254, 39.170761, 26.019394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415123, 38.888149, 25.741545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792202, 0.498214, -0.352418,
		0.595065, 0.502590, -0.627137,
		-0.135326, -0.706531, -0.694623,
		37.374527, 38.676189, 25.533157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031525, 39.437611, 25.616398>,  <37.469254, 39.170761, 26.019394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031525, 39.437611, 25.616398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205128, 39.750366, 25.437387>,  <38.309292, 39.938019, 25.329981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205128, 39.750366, 25.437387>,  <38.031525, 39.437611, 25.616398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205128, 39.750366, 25.437387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899680, -0.350245, 0.260584,
		0.047004, -0.515728, -0.855462,
		0.434012, 0.781891, -0.447527,
		38.335331, 39.984932, 25.303129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772293, 39.180550, 25.356527>,  <38.031525, 39.437611, 25.616398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772293, 39.180550, 25.356527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.802700, 39.578918, 25.375948>,  <38.820946, 39.817940, 25.387600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.802700, 39.578918, 25.375948>,  <38.772293, 39.180550, 25.356527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802700, 39.578918, 25.375948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915862, -0.088995, 0.391506,
		0.394231, 0.014703, -0.918894,
		0.076020, 0.995924, 0.048551,
		38.825504, 39.877697, 25.390512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361240, 39.336708, 25.058371>,  <38.772293, 39.180550, 25.356527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361240, 39.336708, 25.058371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253231, 39.625519, 25.313169>,  <39.188427, 39.798805, 25.466049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253231, 39.625519, 25.313169>,  <39.361240, 39.336708, 25.058371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253231, 39.625519, 25.313169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902866, -0.039994, 0.428057,
		0.334544, 0.690709, -0.641093,
		-0.270023, 0.722026, 0.636998,
		39.172226, 39.842125, 25.504269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829762, 39.906246, 24.898718>,  <39.361240, 39.336708, 25.058371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829762, 39.906246, 24.898718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704594, 39.911972, 25.278585>,  <39.629494, 39.915409, 25.506506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704594, 39.911972, 25.278585>,  <39.829762, 39.906246, 24.898718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704594, 39.911972, 25.278585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943499, 0.119479, 0.309087,
		-0.109041, 0.992734, -0.050894,
		-0.312922, 0.014315, 0.949671,
		39.610718, 39.916267, 25.563486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187031, 40.434944, 25.222282>,  <39.829762, 39.906246, 24.898718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187031, 40.434944, 25.222282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.046577, 40.234344, 25.538563>,  <39.962307, 40.113987, 25.728331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.046577, 40.234344, 25.538563>,  <40.187031, 40.434944, 25.222282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046577, 40.234344, 25.538563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829028, 0.226012, 0.511499,
		-0.435223, 0.835116, 0.336395,
		-0.351131, -0.501497, 0.790701,
		39.941238, 40.083897, 25.775772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542671, 40.730042, 25.773117>,  <40.187031, 40.434944, 25.222282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542671, 40.730042, 25.773117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.392490, 40.423409, 25.981499>,  <40.302383, 40.239429, 26.106527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.392490, 40.423409, 25.981499>,  <40.542671, 40.730042, 25.773117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392490, 40.423409, 25.981499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875636, -0.109137, 0.470480,
		-0.303805, 0.632809, 0.712219,
		-0.375453, -0.766578, 0.520953,
		40.279854, 40.193436, 26.137785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612328, 40.884449, 26.474682>,  <40.542671, 40.730042, 25.773117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612328, 40.884449, 26.474682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.559528, 40.488667, 26.450844>,  <40.527847, 40.251198, 26.436541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.559528, 40.488667, 26.450844>,  <40.612328, 40.884449, 26.474682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559528, 40.488667, 26.450844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779915, -0.140774, 0.609849,
		-0.611808, 0.034021, 0.790274,
		-0.131998, -0.989457, -0.059593,
		40.519928, 40.191830, 26.432966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577847, 40.670734, 27.087864>,  <40.612328, 40.884449, 26.474682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577847, 40.670734, 27.087864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.641239, 40.306324, 26.935595>,  <40.679276, 40.087677, 26.844233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.641239, 40.306324, 26.935595>,  <40.577847, 40.670734, 27.087864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641239, 40.306324, 26.935595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761448, -0.132666, 0.634505,
		-0.628553, -0.390424, 0.672673,
		0.158485, -0.911026, -0.380675,
		40.688786, 40.033016, 26.821392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346840, 40.173908, 27.537607>,  <40.577847, 40.670734, 27.087864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346840, 40.173908, 27.537607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.620323, 39.993664, 27.308002>,  <40.784412, 39.885517, 27.170238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.620323, 39.993664, 27.308002>,  <40.346840, 40.173908, 27.537607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620323, 39.993664, 27.308002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609171, -0.080683, 0.788924,
		-0.401810, -0.889068, 0.219334,
		0.683710, -0.450610, -0.574014,
		40.825436, 39.858482, 27.135798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572350, 39.611916, 27.908041>,  <40.346840, 40.173908, 27.537607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572350, 39.611916, 27.908041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.880150, 39.674316, 27.660320>,  <41.064831, 39.711758, 27.511688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.880150, 39.674316, 27.660320>,  <40.572350, 39.611916, 27.908041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880150, 39.674316, 27.660320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633017, -0.314786, 0.707248,
		-0.084616, -0.936255, -0.340979,
		0.769499, 0.156001, -0.619301,
		41.111000, 39.721115, 27.474529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953609, 38.986458, 27.891060>,  <40.572350, 39.611916, 27.908041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953609, 38.986458, 27.891060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.202473, 39.287861, 27.806067>,  <41.351791, 39.468700, 27.755070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.202473, 39.287861, 27.806067>,  <40.953609, 38.986458, 27.891060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202473, 39.287861, 27.806067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681477, -0.387639, 0.620745,
		0.385367, -0.531005, -0.754669,
		0.622158, 0.753505, -0.212484,
		41.389122, 39.513912, 27.742321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489193, 38.692120, 27.881330>,  <40.953609, 38.986458, 27.891060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489193, 38.692120, 27.881330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.636524, 39.061317, 27.925896>,  <41.724922, 39.282837, 27.952635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.636524, 39.061317, 27.925896>,  <41.489193, 38.692120, 27.881330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636524, 39.061317, 27.925896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627748, -0.335303, 0.702499,
		0.685762, -0.188806, -0.702910,
		0.368324, 0.922997, 0.111416,
		41.747021, 39.338215, 27.959320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174068, 38.587002, 28.161566>,  <41.489193, 38.692120, 27.881330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174068, 38.587002, 28.161566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.139053, 38.977547, 28.240610>,  <42.118046, 39.211876, 28.288036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.139053, 38.977547, 28.240610>,  <42.174068, 38.587002, 28.161566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139053, 38.977547, 28.240610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603412, -0.105869, 0.790371,
		0.792611, 0.188426, -0.579883,
		-0.087534, 0.976364, 0.197612,
		42.112793, 39.270454, 28.299894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892765, 38.913929, 28.207443>,  <42.174068, 38.587002, 28.161566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892765, 38.913929, 28.207443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.613434, 39.096844, 28.427708>,  <42.445835, 39.206593, 28.559866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.613434, 39.096844, 28.427708>,  <42.892765, 38.913929, 28.207443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613434, 39.096844, 28.427708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597846, -0.050401, 0.800025,
		0.393591, 0.887892, -0.238188,
		-0.698331, 0.457283, 0.550660,
		42.403934, 39.234028, 28.592905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.853039, 44.188820, 28.399405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.822041, 43.807812, 28.281628>,  <37.803440, 43.579205, 28.210962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.822041, 43.807812, 28.281628>,  <37.853039, 44.188820, 28.399405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822041, 43.807812, 28.281628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447648, 0.297130, -0.843400,
		0.890845, 0.066447, -0.449421,
		-0.077495, -0.952522, -0.294442,
		37.798794, 43.522057, 28.193295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076164, 44.113281, 27.750698>,  <37.853039, 44.188820, 28.399405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076164, 44.113281, 27.750698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827667, 43.804783, 27.806170>,  <37.678570, 43.619682, 27.839453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827667, 43.804783, 27.806170>,  <38.076164, 44.113281, 27.750698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827667, 43.804783, 27.806170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516456, 0.269881, -0.812673,
		0.589344, -0.576492, -0.565977,
		-0.621246, -0.771246, 0.138680,
		37.641293, 43.573410, 27.847775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065254, 43.803288, 27.145046>,  <38.076164, 44.113281, 27.750698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065254, 43.803288, 27.145046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.732475, 43.680367, 27.329840>,  <37.532806, 43.606613, 27.440716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.732475, 43.680367, 27.329840>,  <38.065254, 43.803288, 27.145046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732475, 43.680367, 27.329840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539721, 0.255085, -0.802267,
		0.128687, -0.916789, -0.378072,
		-0.831950, -0.307294, 0.461984,
		37.482891, 43.588177, 27.468435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774609, 43.351765, 26.559961>,  <38.065254, 43.803288, 27.145046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774609, 43.351765, 26.559961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.475376, 43.431648, 26.813097>,  <37.295837, 43.479576, 26.964979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.475376, 43.431648, 26.813097>,  <37.774609, 43.351765, 26.559961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475376, 43.431648, 26.813097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591761, 0.230815, -0.772362,
		-0.300315, -0.952282, -0.054491,
		-0.748084, 0.199706, 0.632841,
		37.250950, 43.491558, 27.002949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198277, 43.014935, 26.329380>,  <37.774609, 43.351765, 26.559961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198277, 43.014935, 26.329380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.035557, 43.300102, 26.557856>,  <36.937923, 43.471203, 26.694941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.035557, 43.300102, 26.557856>,  <37.198277, 43.014935, 26.329380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035557, 43.300102, 26.557856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668299, 0.194031, -0.718142,
		-0.622808, -0.673864, 0.397514,
		-0.406800, 0.712923, 0.571187,
		36.913517, 43.513981, 26.729212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533485, 42.874584, 26.259295>,  <37.198277, 43.014935, 26.329380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533485, 42.874584, 26.259295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.534962, 43.247612, 26.403681>,  <36.535847, 43.471428, 26.490313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.534962, 43.247612, 26.403681>,  <36.533485, 42.874584, 26.259295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534962, 43.247612, 26.403681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693305, 0.262515, -0.671130,
		-0.720635, -0.247785, 0.647524,
		0.003689, 0.932571, 0.360968,
		36.536068, 43.527382, 26.511971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898197, 43.049492, 26.577991>,  <36.533485, 42.874584, 26.259295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898197, 43.049492, 26.577991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.057415, 43.398312, 26.464087>,  <36.152946, 43.607605, 26.395742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.057415, 43.398312, 26.464087>,  <35.898197, 43.049492, 26.577991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057415, 43.398312, 26.464087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828948, 0.208952, -0.518830,
		-0.392943, 0.442572, 0.806056,
		0.398046, 0.872049, -0.284764,
		36.176830, 43.659927, 26.378658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382359, 43.481091, 26.751652>,  <35.898197, 43.049492, 26.577991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382359, 43.481091, 26.751652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.593925, 43.730484, 26.521343>,  <35.720867, 43.880119, 26.383158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.593925, 43.730484, 26.521343>,  <35.382359, 43.481091, 26.751652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593925, 43.730484, 26.521343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820252, 0.201466, -0.535348,
		-0.217782, 0.755434, 0.617972,
		0.528921, 0.623482, -0.575771,
		35.752602, 43.917530, 26.348612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097027, 44.097263, 26.663761>,  <35.382359, 43.481091, 26.751652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097027, 44.097263, 26.663761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333767, 44.105377, 26.341444>,  <35.475811, 44.110245, 26.148054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333767, 44.105377, 26.341444>,  <35.097027, 44.097263, 26.663761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333767, 44.105377, 26.341444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804516, 0.076513, -0.588982,
		0.049704, 0.996862, 0.061607,
		0.591848, 0.020289, -0.805794,
		35.511322, 44.111465, 26.099707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832607, 44.619297, 26.325443>,  <35.097027, 44.097263, 26.663761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832607, 44.619297, 26.325443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036373, 44.394703, 26.064604>,  <35.158630, 44.259945, 25.908100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036373, 44.394703, 26.064604>,  <34.832607, 44.619297, 26.325443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036373, 44.394703, 26.064604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734050, 0.111928, -0.669807,
		0.449077, 0.819879, -0.355144,
		0.509411, -0.561489, -0.652097,
		35.189198, 44.226257, 25.868975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879238, 45.018932, 25.692883>,  <34.832607, 44.619297, 26.325443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879238, 45.018932, 25.692883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946320, 44.635975, 25.598845>,  <34.986568, 44.406200, 25.542421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946320, 44.635975, 25.598845>,  <34.879238, 45.018932, 25.692883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946320, 44.635975, 25.598845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706365, 0.049660, -0.706104,
		0.687696, 0.284477, -0.667943,
		0.167700, -0.957396, -0.235096,
		34.996628, 44.348755, 25.528316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195820, 44.862675, 24.979458>,  <34.879238, 45.018932, 25.692883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195820, 44.862675, 24.979458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923199, 44.619308, 25.142099>,  <34.759628, 44.473289, 25.239683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923199, 44.619308, 25.142099>,  <35.195820, 44.862675, 24.979458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923199, 44.619308, 25.142099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642286, 0.231106, -0.730793,
		0.350656, -0.759226, -0.548285,
		-0.681549, -0.608413, 0.406602,
		34.718735, 44.436783, 25.264080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793686, 44.313667, 24.528727>,  <35.195820, 44.862675, 24.979458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793686, 44.313667, 24.528727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567226, 44.433891, 24.835749>,  <34.431351, 44.506027, 25.019962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567226, 44.433891, 24.835749>,  <34.793686, 44.313667, 24.528727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567226, 44.433891, 24.835749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635617, 0.433711, -0.638659,
		-0.524855, -0.849445, -0.054501,
		-0.566144, 0.300561, 0.767557,
		34.397385, 44.524059, 25.066015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993748, 44.125473, 24.633390>,  <34.793686, 44.313667, 24.528727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993748, 44.125473, 24.633390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057003, 44.494232, 24.774870>,  <34.094955, 44.715488, 24.859758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057003, 44.494232, 24.774870>,  <33.993748, 44.125473, 24.633390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057003, 44.494232, 24.774870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704775, 0.356266, -0.613488,
		-0.691583, -0.152266, 0.706066,
		0.158134, 0.921894, 0.353701,
		34.104443, 44.770802, 24.880980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782837, 43.761826, 23.958977>,  <33.993748, 44.125473, 24.633390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782837, 43.761826, 23.958977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772022, 43.449162, 23.709728>,  <33.765533, 43.261562, 23.560179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772022, 43.449162, 23.709728>,  <33.782837, 43.761826, 23.958977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772022, 43.449162, 23.709728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834586, -0.360749, 0.416325,
		-0.550214, -0.508792, 0.662114,
		-0.027034, -0.781659, -0.623120,
		33.763912, 43.214664, 23.522793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742130, 43.285969, 24.326654>,  <33.782837, 43.761826, 23.958977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742130, 43.285969, 24.326654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923809, 43.147064, 23.998482>,  <34.032818, 43.063721, 23.801579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923809, 43.147064, 23.998482>,  <33.742130, 43.285969, 24.326654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923809, 43.147064, 23.998482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654341, -0.494930, 0.571736,
		-0.604600, -0.796525, 0.002432,
		0.454198, -0.347264, -0.820434,
		34.060070, 43.042885, 23.752352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208153, 42.851200, 24.629015>,  <33.742130, 43.285969, 24.326654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208153, 42.851200, 24.629015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321007, 42.793186, 24.249676>,  <34.388718, 42.758377, 24.022072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321007, 42.793186, 24.249676>,  <34.208153, 42.851200, 24.629015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321007, 42.793186, 24.249676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705719, -0.638253, 0.307561,
		-0.649893, -0.756042, -0.077721,
		0.282134, -0.145033, -0.948349,
		34.405647, 42.749676, 23.965172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315266, 42.095810, 24.466242>,  <34.208153, 42.851200, 24.629015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315266, 42.095810, 24.466242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.519432, 42.250519, 24.159025>,  <34.641930, 42.343346, 23.974695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.519432, 42.250519, 24.159025>,  <34.315266, 42.095810, 24.466242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519432, 42.250519, 24.159025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736591, -0.657530, 0.158393,
		-0.443747, -0.646577, -0.620505,
		0.510414, 0.386772, -0.768040,
		34.672558, 42.366550, 23.928614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499771, 41.591900, 24.054483>,  <34.315266, 42.095810, 24.466242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499771, 41.591900, 24.054483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.761589, 41.875450, 23.949362>,  <34.918678, 42.045582, 23.886288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.761589, 41.875450, 23.949362>,  <34.499771, 41.591900, 24.054483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761589, 41.875450, 23.949362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747857, -0.658051, 0.087634,
		-0.110818, -0.253902, -0.960861,
		0.654545, 0.708875, -0.262806,
		34.957954, 42.088112, 23.870520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056053, 41.386848, 23.446878>,  <34.499771, 41.591900, 24.054483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056053, 41.386848, 23.446878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228378, 41.693592, 23.637171>,  <35.331776, 41.877640, 23.751347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228378, 41.693592, 23.637171>,  <35.056053, 41.386848, 23.446878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228378, 41.693592, 23.637171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801310, -0.567543, 0.189203,
		0.415089, 0.299695, -0.859002,
		0.430817, 0.766863, 0.475729,
		35.357624, 41.923653, 23.779890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810268, 41.420307, 23.154808>,  <35.056053, 41.386848, 23.446878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810268, 41.420307, 23.154808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828506, 41.605656, 23.508804>,  <35.839447, 41.716866, 23.721203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828506, 41.605656, 23.508804>,  <35.810268, 41.420307, 23.154808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828506, 41.605656, 23.508804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860714, -0.467885, 0.200636,
		0.507043, 0.752579, -0.420158,
		0.045591, 0.463367, 0.884993,
		35.842182, 41.744667, 23.774302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520454, 41.697201, 23.142073>,  <35.810268, 41.420307, 23.154808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520454, 41.697201, 23.142073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394238, 41.682999, 23.521372>,  <36.318508, 41.674477, 23.748951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394238, 41.682999, 23.521372>,  <36.520454, 41.697201, 23.142073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394238, 41.682999, 23.521372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930888, -0.205424, 0.302075,
		0.184067, 0.978029, 0.097873,
		-0.315543, -0.035506, 0.948247,
		36.299576, 41.672348, 23.805845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093407, 41.857700, 23.516933>,  <36.520454, 41.697201, 23.142073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093407, 41.857700, 23.516933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.852306, 41.707909, 23.798773>,  <36.707645, 41.618034, 23.967876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.852306, 41.707909, 23.798773>,  <37.093407, 41.857700, 23.516933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852306, 41.707909, 23.798773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796616, -0.231748, 0.558297,
		-0.045781, 0.897808, 0.438002,
		-0.602750, -0.374478, 0.704598,
		36.671482, 41.595566, 24.010153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486355, 41.933098, 24.148359>,  <37.093407, 41.857700, 23.516933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486355, 41.933098, 24.148359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215443, 41.642971, 24.197678>,  <37.052895, 41.468895, 24.227268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215443, 41.642971, 24.197678>,  <37.486355, 41.933098, 24.148359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215443, 41.642971, 24.197678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657092, -0.520959, 0.544823,
		-0.330939, 0.450014, 0.829438,
		-0.677281, -0.725320, 0.123295,
		37.012257, 41.425377, 24.234667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510216, 41.840366, 24.903400>,  <37.486355, 41.933098, 24.148359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510216, 41.840366, 24.903400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376026, 41.497959, 24.746077>,  <37.295513, 41.292515, 24.651682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376026, 41.497959, 24.746077>,  <37.510216, 41.840366, 24.903400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376026, 41.497959, 24.746077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695086, -0.506723, 0.509988,
		-0.635858, -0.102299, 0.764996,
		-0.335470, -0.856018, -0.393311,
		37.275387, 41.241154, 24.628084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478756, 41.400578, 25.477995>,  <37.510216, 41.840366, 24.903400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478756, 41.400578, 25.477995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465240, 41.132580, 25.181358>,  <37.457130, 40.971779, 25.003376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465240, 41.132580, 25.181358>,  <37.478756, 41.400578, 25.477995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465240, 41.132580, 25.181358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666541, -0.568006, 0.482796,
		-0.744702, -0.477987, 0.465776,
		-0.033793, -0.669998, -0.741594,
		37.455101, 40.931580, 24.958879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472069, 40.777477, 25.853989>,  <37.478756, 41.400578, 25.477995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472069, 40.777477, 25.853989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.592720, 40.681187, 25.484974>,  <37.665112, 40.623413, 25.263565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.592720, 40.681187, 25.484974>,  <37.472069, 40.777477, 25.853989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592720, 40.681187, 25.484974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680934, -0.622877, 0.385166,
		-0.667347, -0.744362, -0.023955,
		0.301624, -0.240728, -0.922537,
		37.683208, 40.608967, 25.208214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555527, 39.974205, 25.855558>,  <37.472069, 40.777477, 25.853989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555527, 39.974205, 25.855558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768234, 40.140522, 25.560442>,  <37.895859, 40.240314, 25.383373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768234, 40.140522, 25.560442>,  <37.555527, 39.974205, 25.855558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768234, 40.140522, 25.560442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763089, -0.613090, 0.204490,
		-0.367306, -0.671741, -0.643312,
		0.531772, 0.415794, -0.737790,
		37.927765, 40.265259, 25.339106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269901, 39.533733, 25.364691>,  <37.555527, 39.974205, 25.855558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269901, 39.533733, 25.364691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.151218, 39.159691, 25.287186>,  <37.080009, 38.935265, 25.240683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.151218, 39.159691, 25.287186>,  <37.269901, 39.533733, 25.364691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151218, 39.159691, 25.287186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854559, 0.350554, -0.383197,
		0.426254, 0.051885, -0.903114,
		-0.296709, -0.935104, -0.193764,
		37.062206, 38.879158, 25.229057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861134, 39.616825, 24.766512>,  <37.269901, 39.533733, 25.364691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861134, 39.616825, 24.766512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745464, 39.253754, 24.888168>,  <36.676064, 39.035912, 24.961163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745464, 39.253754, 24.888168>,  <36.861134, 39.616825, 24.766512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745464, 39.253754, 24.888168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912560, 0.165410, -0.373997,
		0.289160, -0.385698, -0.876141,
		-0.289172, -0.907677, 0.304142,
		36.658714, 38.981449, 24.979412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590096, 39.386314, 24.183348>,  <36.861134, 39.616825, 24.766512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590096, 39.386314, 24.183348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.442223, 39.153126, 24.472757>,  <36.353500, 39.013214, 24.646402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.442223, 39.153126, 24.472757>,  <36.590096, 39.386314, 24.183348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442223, 39.153126, 24.472757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904604, 0.047982, -0.423543,
		0.212196, -0.811077, -0.545094,
		-0.369681, -0.582968, 0.723522,
		36.331318, 38.978237, 24.689814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384827, 38.777679, 23.891481>,  <36.590096, 39.386314, 24.183348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384827, 38.777679, 23.891481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.173225, 38.808971, 24.229485>,  <36.046265, 38.827747, 24.432285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.173225, 38.808971, 24.229485>,  <36.384827, 38.777679, 23.891481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173225, 38.808971, 24.229485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847404, 0.004591, -0.530928,
		-0.045412, -0.996925, 0.063860,
		-0.529003, 0.078226, 0.845007,
		36.014526, 38.832439, 24.482986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842693, 38.179340, 23.981552>,  <36.384827, 38.777679, 23.891481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842693, 38.179340, 23.981552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.718544, 38.498737, 24.187881>,  <35.644054, 38.690376, 24.311680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.718544, 38.498737, 24.187881>,  <35.842693, 38.179340, 23.981552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718544, 38.498737, 24.187881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912681, -0.098545, -0.396613,
		-0.265862, -0.593880, 0.759358,
		-0.310371, 0.798496, 0.515824,
		35.625431, 38.738285, 24.342628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134972, 38.051395, 24.169796>,  <35.842693, 38.179340, 23.981552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134972, 38.051395, 24.169796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166531, 38.445290, 24.231850>,  <35.185467, 38.681625, 24.269081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166531, 38.445290, 24.231850>,  <35.134972, 38.051395, 24.169796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166531, 38.445290, 24.231850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896637, 0.138108, -0.420676,
		-0.435681, -0.105911, 0.893849,
		0.078893, 0.984738, 0.155134,
		35.190197, 38.740711, 24.278391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497765, 38.307091, 24.432066>,  <35.134972, 38.051395, 24.169796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497765, 38.307091, 24.432066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.683094, 38.632431, 24.291327>,  <34.794292, 38.827633, 24.206882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.683094, 38.632431, 24.291327>,  <34.497765, 38.307091, 24.432066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683094, 38.632431, 24.291327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855590, 0.307127, -0.416700,
		-0.230859, 0.494105, 0.838191,
		0.463325, 0.813347, -0.351848,
		34.822090, 38.876434, 24.185772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976479, 38.721825, 24.810610>,  <34.497765, 38.307091, 24.432066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976479, 38.721825, 24.810610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742908, 38.494469, 25.042461>,  <33.602768, 38.358055, 25.181572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742908, 38.494469, 25.042461>,  <33.976479, 38.721825, 24.810610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742908, 38.494469, 25.042461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811651, -0.394617, 0.430697,
		-0.016071, 0.721950, 0.691758,
		-0.583921, -0.568388, 0.579630,
		33.567734, 38.323952, 25.216351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229706, 38.749580, 25.468081>,  <33.976479, 38.721825, 24.810610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229706, 38.749580, 25.468081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.994560, 38.426270, 25.481346>,  <33.853474, 38.232285, 25.489305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.994560, 38.426270, 25.481346>,  <34.229706, 38.749580, 25.468081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994560, 38.426270, 25.481346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703109, -0.490242, 0.515074,
		-0.400065, 0.326112, 0.856504,
		-0.587866, -0.808278, 0.033163,
		33.818199, 38.183784, 25.491295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142029, 38.546818, 26.190453>,  <34.229706, 38.749580, 25.468081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142029, 38.546818, 26.190453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071194, 38.238808, 25.945272>,  <34.028694, 38.054001, 25.798164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071194, 38.238808, 25.945272>,  <34.142029, 38.546818, 26.190453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071194, 38.238808, 25.945272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702890, -0.534883, 0.468878,
		-0.688902, -0.347802, 0.635962,
		-0.177089, -0.770022, -0.612949,
		34.018066, 38.007801, 25.761389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199303, 38.021835, 26.625353>,  <34.142029, 38.546818, 26.190453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199303, 38.021835, 26.625353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.195282, 37.799343, 26.292965>,  <34.192871, 37.665848, 26.093533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.195282, 37.799343, 26.292965>,  <34.199303, 38.021835, 26.625353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195282, 37.799343, 26.292965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369857, -0.774145, 0.513717,
		-0.929034, -0.302176, 0.213506,
		-0.010052, -0.556228, -0.830969,
		34.192268, 37.632473, 26.043674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040878, 37.303387, 26.793234>,  <34.199303, 38.021835, 26.625353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040878, 37.303387, 26.793234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225124, 37.265800, 26.440187>,  <34.335670, 37.243248, 26.228359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225124, 37.265800, 26.440187>,  <34.040878, 37.303387, 26.793234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225124, 37.265800, 26.440187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652961, -0.637685, 0.408655,
		-0.601231, -0.764544, -0.232366,
		0.460611, -0.093970, -0.882614,
		34.363308, 37.237610, 26.175404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191959, 36.595692, 26.742785>,  <34.040878, 37.303387, 26.793234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191959, 36.595692, 26.742785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.454021, 36.797573, 26.517912>,  <34.611259, 36.918701, 26.382988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.454021, 36.797573, 26.517912>,  <34.191959, 36.595692, 26.742785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454021, 36.797573, 26.517912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741876, -0.570436, 0.352453,
		-0.142803, -0.647979, -0.748151,
		0.655155, 0.504704, -0.562180,
		34.650566, 36.948986, 26.349258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536797, 36.082092, 26.455767>,  <34.191959, 36.595692, 26.742785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536797, 36.082092, 26.455767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785324, 36.388264, 26.388744>,  <34.934441, 36.571968, 26.348532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785324, 36.388264, 26.388744>,  <34.536797, 36.082092, 26.455767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785324, 36.388264, 26.388744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781288, -0.588933, 0.206755,
		0.059578, -0.259370, -0.963939,
		0.621322, 0.765431, -0.167555,
		34.971722, 36.617893, 26.338478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.424503, 43.345600, 25.291422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.808033, 43.440239, 25.354259>,  <33.038151, 43.497025, 25.391962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.808033, 43.440239, 25.354259>,  <32.424503, 43.345600, 25.291422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808033, 43.440239, 25.354259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032585, -0.457842, 0.888436,
		0.282129, -0.856972, -0.431280,
		0.958823, 0.236600, 0.157095,
		33.095680, 43.511219, 25.401388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572475, 42.697842, 25.641283>,  <32.424503, 43.345600, 25.291422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572475, 42.697842, 25.641283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.872368, 42.954983, 25.704077>,  <33.052303, 43.109268, 25.741753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.872368, 42.954983, 25.704077>,  <32.572475, 42.697842, 25.641283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872368, 42.954983, 25.704077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187069, -0.433439, 0.881553,
		0.634754, -0.631559, -0.445220,
		0.749728, 0.642856, 0.156982,
		33.097286, 43.147839, 25.751171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104607, 42.259926, 25.891727>,  <32.572475, 42.697842, 25.641283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104607, 42.259926, 25.891727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.206146, 42.634399, 25.988983>,  <33.267071, 42.859085, 26.047337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.206146, 42.634399, 25.988983>,  <33.104607, 42.259926, 25.891727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206146, 42.634399, 25.988983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412865, -0.332201, 0.848048,
		0.874701, -0.114893, -0.470848,
		0.253851, 0.936185, 0.243141,
		33.282303, 42.915257, 26.061926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803028, 42.296543, 26.071339>,  <33.104607, 42.259926, 25.891727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803028, 42.296543, 26.071339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.642334, 42.616173, 26.250265>,  <33.545918, 42.807949, 26.357620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.642334, 42.616173, 26.250265>,  <33.803028, 42.296543, 26.071339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642334, 42.616173, 26.250265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471083, -0.238552, 0.849220,
		0.785297, 0.551882, -0.280596,
		-0.401733, 0.799074, 0.447316,
		33.521812, 42.855896, 26.384460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350311, 42.471451, 26.485090>,  <33.803028, 42.296543, 26.071339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350311, 42.471451, 26.485090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.023380, 42.650024, 26.630785>,  <33.827221, 42.757168, 26.718203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.023380, 42.650024, 26.630785>,  <34.350311, 42.471451, 26.485090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023380, 42.650024, 26.630785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270941, -0.260109, 0.926787,
		0.508487, 0.856179, 0.091640,
		-0.817332, 0.446430, 0.364236,
		33.778179, 42.783955, 26.740055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581783, 42.935062, 27.017050>,  <34.350311, 42.471451, 26.485090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581783, 42.935062, 27.017050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.213963, 42.782852, 27.056293>,  <33.993271, 42.691528, 27.079840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.213963, 42.782852, 27.056293>,  <34.581783, 42.935062, 27.017050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213963, 42.782852, 27.056293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284072, -0.471181, 0.835040,
		-0.271523, 0.795734, 0.541371,
		-0.919553, -0.380521, 0.098109,
		33.938095, 42.668697, 27.085726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413651, 43.125793, 27.671663>,  <34.581783, 42.935062, 27.017050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413651, 43.125793, 27.671663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.155552, 42.836895, 27.572044>,  <34.000694, 42.663555, 27.512274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.155552, 42.836895, 27.572044>,  <34.413651, 43.125793, 27.671663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155552, 42.836895, 27.572044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124346, -0.420924, 0.898533,
		-0.753790, 0.548804, 0.361407,
		-0.645243, -0.722244, -0.249047,
		33.961979, 42.620220, 27.497330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000656, 42.965950, 28.274918>,  <34.413651, 43.125793, 27.671663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000656, 42.965950, 28.274918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.947956, 42.637772, 28.052383>,  <33.916336, 42.440865, 27.918863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.947956, 42.637772, 28.052383>,  <34.000656, 42.965950, 28.274918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947956, 42.637772, 28.052383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223489, -0.571362, 0.789682,
		-0.965761, -0.020293, 0.258638,
		-0.131751, -0.820447, -0.556334,
		33.908432, 42.391636, 27.885483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630447, 42.514942, 28.719540>,  <34.000656, 42.965950, 28.274918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630447, 42.514942, 28.719540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.794865, 42.286816, 28.435066>,  <33.893517, 42.149940, 28.264381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.794865, 42.286816, 28.435066>,  <33.630447, 42.514942, 28.719540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794865, 42.286816, 28.435066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305140, -0.649060, 0.696857,
		-0.859029, -0.503451, -0.092767,
		0.411045, -0.570314, -0.711185,
		33.918179, 42.115723, 28.221710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370510, 41.758507, 28.814390>,  <33.630447, 42.514942, 28.719540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370510, 41.758507, 28.814390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.724747, 41.769325, 28.628923>,  <33.937290, 41.775818, 28.517643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.724747, 41.769325, 28.628923>,  <33.370510, 41.758507, 28.814390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724747, 41.769325, 28.628923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378934, -0.619335, 0.687628,
		-0.268568, -0.784660, -0.558730,
		0.885596, 0.027047, -0.463669,
		33.990425, 41.777439, 28.489822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630383, 41.117203, 28.978619>,  <33.370510, 41.758507, 28.814390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630383, 41.117203, 28.978619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.962059, 41.258972, 28.805725>,  <34.161064, 41.344032, 28.701990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.962059, 41.258972, 28.805725>,  <33.630383, 41.117203, 28.978619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962059, 41.258972, 28.805725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546461, -0.676627, 0.493514,
		-0.117549, -0.645417, -0.754731,
		0.829194, 0.354419, -0.432232,
		34.210815, 41.365299, 28.676056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024303, 40.588806, 28.761410>,  <33.630383, 41.117203, 28.978619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024303, 40.588806, 28.761410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.286369, 40.889042, 28.795769>,  <34.443607, 41.069183, 28.816385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.286369, 40.889042, 28.795769>,  <34.024303, 40.588806, 28.761410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286369, 40.889042, 28.795769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587370, -0.577575, 0.566925,
		0.475141, -0.320974, -0.819278,
		0.655162, 0.750589, 0.085899,
		34.482918, 41.114220, 28.821539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974525, 39.887062, 28.335886>,  <34.024303, 40.588806, 28.761410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974525, 39.887062, 28.335886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.691868, 39.604473, 28.351694>,  <33.522274, 39.434921, 28.361179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.691868, 39.604473, 28.351694>,  <33.974525, 39.887062, 28.335886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691868, 39.604473, 28.351694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392936, 0.345354, -0.852251,
		0.588439, -0.617765, -0.521638,
		-0.706640, -0.706468, 0.039522,
		33.479877, 39.392532, 28.363550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840389, 39.730083, 27.656738>,  <33.974525, 39.887062, 28.335886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840389, 39.730083, 27.656738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.520538, 39.597466, 27.857010>,  <33.328629, 39.517895, 27.977173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.520538, 39.597466, 27.857010>,  <33.840389, 39.730083, 27.656738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520538, 39.597466, 27.857010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585602, 0.245961, -0.772381,
		0.132931, -0.910814, -0.390830,
		-0.799624, -0.331544, 0.500678,
		33.280651, 39.498001, 28.007214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430191, 39.358559, 27.186865>,  <33.840389, 39.730083, 27.656738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430191, 39.358559, 27.186865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.193954, 39.474831, 27.487984>,  <33.052212, 39.544594, 27.668655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.193954, 39.474831, 27.487984>,  <33.430191, 39.358559, 27.186865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193954, 39.474831, 27.487984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694897, 0.291083, -0.657563,
		-0.410271, -0.911467, 0.030085,
		-0.590590, 0.290685, 0.752799,
		33.016777, 39.562035, 27.713823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766777, 39.192772, 26.965830>,  <33.430191, 39.358559, 27.186865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766777, 39.192772, 26.965830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.705959, 39.443199, 27.271751>,  <32.669468, 39.593456, 27.455303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.705959, 39.443199, 27.271751>,  <32.766777, 39.192772, 26.965830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705959, 39.443199, 27.271751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760575, 0.420052, -0.495057,
		-0.631196, -0.656960, 0.412305,
		-0.152043, 0.626067, 0.764802,
		32.660347, 39.631020, 27.501192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088203, 39.069183, 27.070663>,  <32.766777, 39.192772, 26.965830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088203, 39.069183, 27.070663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.191120, 39.431442, 27.205486>,  <32.252869, 39.648796, 27.286381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.191120, 39.431442, 27.205486>,  <32.088203, 39.069183, 27.070663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191120, 39.431442, 27.205486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635053, 0.421372, -0.647420,
		-0.728359, -0.047473, 0.683549,
		0.257293, 0.905644, 0.337059,
		32.268307, 39.703136, 27.306604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442425, 39.412373, 27.199493>,  <32.088203, 39.069183, 27.070663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442425, 39.412373, 27.199493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.708584, 39.710907, 27.193415>,  <31.868280, 39.890026, 27.189768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.708584, 39.710907, 27.193415>,  <31.442425, 39.412373, 27.199493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708584, 39.710907, 27.193415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666513, 0.584821, -0.462326,
		-0.336161, 0.317761, 0.886580,
		0.665399, 0.746333, -0.015198,
		31.908203, 39.934807, 27.188856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060928, 39.960594, 27.330490>,  <31.442425, 39.412373, 27.199493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060928, 39.960594, 27.330490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391003, 40.100864, 27.153362>,  <31.589048, 40.185028, 27.047085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391003, 40.100864, 27.153362>,  <31.060928, 39.960594, 27.330490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391003, 40.100864, 27.153362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527029, 0.760055, -0.380207,
		0.203238, 0.547122, 0.812005,
		0.825188, 0.350678, -0.442821,
		31.638559, 40.206066, 27.020515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982340, 40.682411, 27.451950>,  <31.060928, 39.960594, 27.330490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982340, 40.682411, 27.451950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.226646, 40.609089, 27.143829>,  <31.373230, 40.565098, 26.958958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.226646, 40.609089, 27.143829>,  <30.982340, 40.682411, 27.451950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226646, 40.609089, 27.143829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497037, 0.668537, -0.553184,
		0.616375, 0.720735, 0.317212,
		0.610767, -0.183303, -0.770301,
		31.409876, 40.554096, 26.912739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082733, 41.308056, 27.101725>,  <30.982340, 40.682411, 27.451950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082733, 41.308056, 27.101725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199455, 41.020287, 26.849604>,  <31.269489, 40.847626, 26.698332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199455, 41.020287, 26.849604>,  <31.082733, 41.308056, 27.101725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199455, 41.020287, 26.849604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406537, 0.503207, -0.762568,
		0.865781, 0.478763, -0.145632,
		0.291806, -0.719422, -0.630302,
		31.286997, 40.804459, 26.660513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369543, 41.638081, 26.469273>,  <31.082733, 41.308056, 27.101725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369543, 41.638081, 26.469273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.246290, 41.269218, 26.375729>,  <31.172338, 41.047901, 26.319601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.246290, 41.269218, 26.375729>,  <31.369543, 41.638081, 26.469273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246290, 41.269218, 26.375729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667059, 0.384695, -0.637998,
		0.678296, -0.040589, -0.733667,
		-0.308134, -0.922151, -0.233862,
		31.153851, 40.992573, 26.305571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377089, 41.549145, 25.714024>,  <31.369543, 41.638081, 26.469273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377089, 41.549145, 25.714024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.145905, 41.252205, 25.849598>,  <31.007195, 41.074039, 25.930943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.145905, 41.252205, 25.849598>,  <31.377089, 41.549145, 25.714024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145905, 41.252205, 25.849598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763139, 0.344520, -0.546740,
		0.289100, -0.574653, -0.765634,
		-0.577962, -0.742348, 0.338940,
		30.972517, 41.029499, 25.951279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074158, 41.254650, 25.091421>,  <31.377089, 41.549145, 25.714024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074158, 41.254650, 25.091421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.832579, 41.148750, 25.392128>,  <30.687632, 41.085213, 25.572552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.832579, 41.148750, 25.392128>,  <31.074158, 41.254650, 25.091421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832579, 41.148750, 25.392128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791348, 0.086827, -0.605169,
		0.094935, -0.960404, -0.261937,
		-0.603950, -0.264735, 0.751771,
		30.651394, 41.069328, 25.617659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624098, 40.706680, 24.935524>,  <31.074158, 41.254650, 25.091421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624098, 40.706680, 24.935524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.438892, 40.866989, 25.251753>,  <30.327770, 40.963173, 25.441490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.438892, 40.866989, 25.251753>,  <30.624098, 40.706680, 24.935524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438892, 40.866989, 25.251753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851034, 0.048259, -0.522889,
		-0.247711, -0.914907, 0.318725,
		-0.463013, 0.400770, 0.790571,
		30.299988, 40.987221, 25.488924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464888, 39.980247, 24.795078>,  <30.624098, 40.706680, 24.935524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464888, 39.980247, 24.795078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415342, 39.605831, 24.663332>,  <30.385616, 39.381180, 24.584284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415342, 39.605831, 24.663332>,  <30.464888, 39.980247, 24.795078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415342, 39.605831, 24.663332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971786, -0.181567, 0.150551,
		-0.200725, -0.301427, 0.932122,
		-0.123862, -0.936042, -0.329368,
		30.378183, 39.325020, 24.564522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653490, 39.497158, 25.350307>,  <30.464888, 39.980247, 24.795078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653490, 39.497158, 25.350307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.680677, 39.318783, 24.993317>,  <30.696991, 39.211758, 24.779121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.680677, 39.318783, 24.993317>,  <30.653490, 39.497158, 25.350307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680677, 39.318783, 24.993317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935627, -0.282084, 0.212203,
		-0.346383, -0.849451, 0.398059,
		0.067970, -0.445938, -0.892479,
		30.701069, 39.185001, 24.725573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765425, 38.737209, 25.402847>,  <30.653490, 39.497158, 25.350307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765425, 38.737209, 25.402847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910261, 38.800232, 25.035355>,  <30.997164, 38.838047, 24.814859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910261, 38.800232, 25.035355>,  <30.765425, 38.737209, 25.402847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910261, 38.800232, 25.035355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808383, -0.543820, 0.225339,
		-0.464120, -0.824279, -0.324279,
		0.362091, 0.157557, -0.918731,
		31.018888, 38.847500, 24.759735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071423, 38.073223, 25.233229>,  <30.765425, 38.737209, 25.402847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071423, 38.073223, 25.233229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.230928, 38.356976, 25.000759>,  <31.326632, 38.527229, 24.861277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.230928, 38.356976, 25.000759>,  <31.071423, 38.073223, 25.233229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230928, 38.356976, 25.000759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888933, -0.454739, 0.054871,
		-0.225358, -0.538505, -0.811928,
		0.398764, 0.709384, -0.581173,
		31.350557, 38.569790, 24.826406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573959, 37.690285, 25.043797>,  <31.071423, 38.073223, 25.233229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573959, 37.690285, 25.043797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674799, 38.045284, 24.889505>,  <31.735302, 38.258286, 24.796930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674799, 38.045284, 24.889505>,  <31.573959, 37.690285, 25.043797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674799, 38.045284, 24.889505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936663, -0.323934, -0.133154,
		-0.243125, -0.327730, -0.912953,
		0.252098, 0.887502, -0.385729,
		31.750429, 38.311535, 24.773787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048405, 37.642059, 24.449392>,  <31.573959, 37.690285, 25.043797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048405, 37.642059, 24.449392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.106976, 38.017254, 24.575090>,  <32.142117, 38.242371, 24.650509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.106976, 38.017254, 24.575090>,  <32.048405, 37.642059, 24.449392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106976, 38.017254, 24.575090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989214, -0.137606, -0.050192,
		-0.003838, 0.318203, -0.948015,
		0.146424, 0.937982, 0.314243,
		32.150902, 38.298649, 24.669363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522545, 37.995029, 23.970144>,  <32.048405, 37.642059, 24.449392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522545, 37.995029, 23.970144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.543346, 38.182869, 24.322683>,  <32.555828, 38.295570, 24.534206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.543346, 38.182869, 24.322683>,  <32.522545, 37.995029, 23.970144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543346, 38.182869, 24.322683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979237, -0.197133, 0.047257,
		0.195934, 0.860591, -0.470098,
		0.052003, 0.469597, 0.881348,
		32.558949, 38.323750, 24.587088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235970, 38.131165, 24.099936>,  <32.522545, 37.995029, 23.970144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235970, 38.131165, 24.099936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.135330, 38.216141, 24.477627>,  <33.074947, 38.267124, 24.704241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.135330, 38.216141, 24.477627>,  <33.235970, 38.131165, 24.099936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135330, 38.216141, 24.477627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900311, -0.306642, 0.308887,
		0.355159, 0.927815, -0.114108,
		-0.251600, 0.212437, 0.944229,
		33.059849, 38.279873, 24.760895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943718, 38.588165, 24.062016>,  <33.235970, 38.131165, 24.099936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943718, 38.588165, 24.062016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.226875, 38.856354, 23.973143>,  <34.396770, 39.017265, 23.919819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.226875, 38.856354, 23.973143>,  <33.943718, 38.588165, 24.062016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226875, 38.856354, 23.973143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630935, 0.458829, -0.625617,
		-0.317511, 0.583052, 0.747821,
		0.707890, 0.670467, -0.222185,
		34.439243, 39.057495, 23.906487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810749, 39.251083, 24.281353>,  <33.943718, 38.588165, 24.062016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810749, 39.251083, 24.281353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.028175, 39.355953, 23.962406>,  <34.158630, 39.418877, 23.771038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.028175, 39.355953, 23.962406>,  <33.810749, 39.251083, 24.281353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028175, 39.355953, 23.962406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769121, 0.536003, -0.348071,
		0.336134, 0.802473, 0.493001,
		0.543568, 0.262179, -0.797368,
		34.191246, 39.434608, 23.723196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668522, 39.957378, 24.143625>,  <33.810749, 39.251083, 24.281353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668522, 39.957378, 24.143625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.812199, 39.831272, 23.792265>,  <33.898403, 39.755608, 23.581450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.812199, 39.831272, 23.792265>,  <33.668522, 39.957378, 24.143625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812199, 39.831272, 23.792265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550303, 0.688629, -0.472183,
		0.753757, 0.652990, 0.073853,
		0.359188, -0.315270, -0.878401,
		33.919956, 39.736691, 23.528744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861053, 40.464333, 23.790604>,  <33.668522, 39.957378, 24.143625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861053, 40.464333, 23.790604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.815521, 40.209206, 23.485912>,  <33.788200, 40.056129, 23.303097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.815521, 40.209206, 23.485912>,  <33.861053, 40.464333, 23.790604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815521, 40.209206, 23.485912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528795, 0.687984, -0.497045,
		0.841082, 0.346219, -0.415588,
		-0.113832, -0.637816, -0.761730,
		33.781372, 40.017860, 23.257393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940708, 40.852001, 23.256735>,  <33.861053, 40.464333, 23.790604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940708, 40.852001, 23.256735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.741524, 40.542751, 23.099602>,  <33.622013, 40.357201, 23.005322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.741524, 40.542751, 23.099602>,  <33.940708, 40.852001, 23.256735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741524, 40.542751, 23.099602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573783, 0.633388, -0.519223,
		0.650241, -0.033146, -0.759004,
		-0.497955, -0.773124, -0.392836,
		33.592136, 40.310814, 22.981750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942474, 40.947124, 22.562580>,  <33.940708, 40.852001, 23.256735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942474, 40.947124, 22.562580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.629280, 40.706734, 22.626785>,  <33.441364, 40.562500, 22.665308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.629280, 40.706734, 22.626785>,  <33.942474, 40.947124, 22.562580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629280, 40.706734, 22.626785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509464, 0.471505, -0.719812,
		0.356906, -0.645377, -0.675357,
		-0.782984, -0.600975, 0.160513,
		33.394386, 40.526440, 22.674938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724430, 40.805401, 21.955677>,  <33.942474, 40.947124, 22.562580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724430, 40.805401, 21.955677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.406612, 40.718697, 22.182556>,  <33.215923, 40.666676, 22.318684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.406612, 40.718697, 22.182556>,  <33.724430, 40.805401, 21.955677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406612, 40.718697, 22.182556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589210, 0.500965, -0.633928,
		-0.146737, -0.837884, -0.525756,
		-0.794544, -0.216760, 0.567200,
		33.168251, 40.653667, 22.352716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266350, 40.858742, 21.466473>,  <33.724430, 40.805401, 21.955677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266350, 40.858742, 21.466473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.033730, 40.848801, 21.791725>,  <32.894157, 40.842834, 21.986877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.033730, 40.848801, 21.791725>,  <33.266350, 40.858742, 21.466473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033730, 40.848801, 21.791725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694042, 0.536594, -0.479972,
		-0.424394, -0.843475, -0.329303,
		-0.581546, -0.024853, 0.813134,
		32.859264, 40.841347, 22.035666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635487, 40.702934, 21.211006>,  <33.266350, 40.858742, 21.466473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635487, 40.702934, 21.211006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.613213, 40.913742, 21.550217>,  <32.599850, 41.040226, 21.753742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.613213, 40.913742, 21.550217>,  <32.635487, 40.702934, 21.211006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613213, 40.913742, 21.550217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384808, 0.772402, -0.505290,
		-0.921316, -0.354463, 0.159792,
		-0.055683, 0.527021, 0.848026,
		32.596508, 41.071850, 21.804625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.387604, 34.436897, 31.841846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.385166, 34.738560, 32.104515>,  <43.383701, 34.919556, 32.262115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.385166, 34.738560, 32.104515>,  <43.387604, 34.436897, 31.841846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385166, 34.738560, 32.104515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814604, 0.377127, -0.440675,
		-0.579985, -0.537613, 0.612037,
		-0.006097, 0.754153, 0.656670,
		43.383339, 34.964806, 32.301517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666466, 34.419659, 32.066570>,  <43.387604, 34.436897, 31.841846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666466, 34.419659, 32.066570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.844822, 34.776199, 32.099266>,  <42.951836, 34.990124, 32.118881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.844822, 34.776199, 32.099266>,  <42.666466, 34.419659, 32.066570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844822, 34.776199, 32.099266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639899, 0.381287, -0.667195,
		-0.625867, 0.245194, 0.740385,
		0.445892, 0.891347, 0.081736,
		42.978588, 35.043602, 32.123787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107193, 34.924576, 32.210842>,  <42.666466, 34.419659, 32.066570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107193, 34.924576, 32.210842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.408775, 35.128887, 32.045601>,  <42.589725, 35.251472, 31.946457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.408775, 35.128887, 32.045601>,  <42.107193, 34.924576, 32.210842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408775, 35.128887, 32.045601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607617, 0.303198, -0.734079,
		-0.249699, 0.804473, 0.538956,
		0.753957, 0.510778, -0.413103,
		42.634964, 35.282120, 31.921669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992737, 35.672821, 32.159523>,  <42.107193, 34.924576, 32.210842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992737, 35.672821, 32.159523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.251816, 35.592846, 31.865442>,  <42.407261, 35.544861, 31.688995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.251816, 35.592846, 31.865442>,  <41.992737, 35.672821, 32.159523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251816, 35.592846, 31.865442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622079, 0.418359, -0.661811,
		0.439900, 0.886002, 0.146590,
		0.647693, -0.199940, -0.735199,
		42.446125, 35.532864, 31.644882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871223, 36.145985, 31.701105>,  <41.992737, 35.672821, 32.159523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871223, 36.145985, 31.701105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.097034, 35.917263, 31.462996>,  <42.232521, 35.780029, 31.320129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.097034, 35.917263, 31.462996>,  <41.871223, 36.145985, 31.701105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097034, 35.917263, 31.462996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528338, 0.303763, -0.792835,
		0.634169, 0.762080, -0.130625,
		0.564525, -0.571806, -0.595273,
		42.266392, 35.745720, 31.284414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021271, 36.580574, 31.146994>,  <41.871223, 36.145985, 31.701105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021271, 36.580574, 31.146994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.120541, 36.230198, 30.981516>,  <42.180103, 36.019974, 30.882229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.120541, 36.230198, 30.981516>,  <42.021271, 36.580574, 31.146994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120541, 36.230198, 30.981516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431671, 0.282313, -0.856714,
		0.867220, 0.391193, -0.308055,
		0.248173, -0.875938, -0.413694,
		42.194992, 35.967415, 30.857409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212681, 36.761776, 30.495035>,  <42.021271, 36.580574, 31.146994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212681, 36.761776, 30.495035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.158154, 36.367386, 30.456511>,  <42.125435, 36.130753, 30.433395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.158154, 36.367386, 30.456511>,  <42.212681, 36.761776, 30.495035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158154, 36.367386, 30.456511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443269, 0.147652, -0.884145,
		0.885962, -0.077837, -0.457179,
		-0.136323, -0.985972, -0.096311,
		42.117256, 36.071594, 30.427618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507088, 36.478992, 29.805532>,  <42.212681, 36.761776, 30.495035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507088, 36.478992, 29.805532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.217270, 36.235714, 29.935225>,  <42.043377, 36.089748, 30.013041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.217270, 36.235714, 29.935225>,  <42.507088, 36.478992, 29.805532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217270, 36.235714, 29.935225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523563, 0.179752, -0.832809,
		0.448231, -0.773166, -0.448669,
		-0.724548, -0.608198, 0.324231,
		41.999905, 36.053253, 30.032494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440445, 35.860382, 29.274790>,  <42.507088, 36.478992, 29.805532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440445, 35.860382, 29.274790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.093494, 35.869980, 29.473619>,  <41.885323, 35.875740, 29.592916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.093494, 35.869980, 29.473619>,  <42.440445, 35.860382, 29.274790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093494, 35.869980, 29.473619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490307, 0.129773, -0.861834,
		-0.085189, -0.991253, -0.100796,
		-0.867376, 0.023998, 0.497074,
		41.833282, 35.877178, 29.622742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986095, 35.369106, 28.967951>,  <42.440445, 35.860382, 29.274790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986095, 35.369106, 28.967951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.727505, 35.598328, 29.169418>,  <41.572350, 35.735859, 29.290298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.727505, 35.598328, 29.169418>,  <41.986095, 35.369106, 28.967951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727505, 35.598328, 29.169418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623131, -0.015688, -0.781960,
		-0.440202, -0.819368, 0.367229,
		-0.646474, 0.573053, 0.503668,
		41.533562, 35.770245, 29.320518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307140, 35.073776, 29.024532>,  <41.986095, 35.369106, 28.967951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307140, 35.073776, 29.024532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.200954, 35.454826, 29.083899>,  <41.137245, 35.683456, 29.119518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.200954, 35.454826, 29.083899>,  <41.307140, 35.073776, 29.024532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200954, 35.454826, 29.083899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785537, -0.124459, -0.606169,
		-0.558982, -0.277501, 0.781365,
		-0.265461, 0.952629, 0.148417,
		41.121315, 35.740616, 29.128424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593803, 35.143433, 28.959686>,  <41.307140, 35.073776, 29.024532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593803, 35.143433, 28.959686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.721973, 35.513477, 28.878199>,  <40.798878, 35.735504, 28.829306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.721973, 35.513477, 28.878199>,  <40.593803, 35.143433, 28.959686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721973, 35.513477, 28.878199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712029, 0.093375, -0.695914,
		-0.624773, 0.368043, 0.688624,
		0.320427, 0.925108, -0.203719,
		40.818100, 35.791008, 28.817083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289185, 35.017162, 29.693508>,  <40.593803, 35.143433, 28.959686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289185, 35.017162, 29.693508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.929962, 34.857464, 29.767363>,  <39.714428, 34.761642, 29.811676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.929962, 34.857464, 29.767363>,  <40.289185, 35.017162, 29.693508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929962, 34.857464, 29.767363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395099, -0.547636, 0.737558,
		-0.193356, 0.735320, 0.649552,
		-0.898059, -0.399249, 0.184636,
		39.660545, 34.737690, 29.822754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219009, 35.104485, 30.369202>,  <40.289185, 35.017162, 29.693508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219009, 35.104485, 30.369202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976532, 34.804111, 30.264408>,  <39.831047, 34.623890, 30.201532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976532, 34.804111, 30.264408>,  <40.219009, 35.104485, 30.369202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976532, 34.804111, 30.264408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351060, -0.548223, 0.759084,
		-0.713644, 0.368180, 0.595950,
		-0.606193, -0.750930, -0.261983,
		39.794674, 34.578831, 30.185814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027397, 34.843483, 31.020090>,  <40.219009, 35.104485, 30.369202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027397, 34.843483, 31.020090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.948746, 34.554527, 30.754911>,  <39.901554, 34.381153, 30.595804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.948746, 34.554527, 30.754911>,  <40.027397, 34.843483, 31.020090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948746, 34.554527, 30.754911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209837, -0.691483, 0.691245,
		-0.957761, -0.003192, 0.287548,
		-0.196628, -0.722386, -0.662945,
		39.889759, 34.337811, 30.556028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485748, 34.396103, 31.331385>,  <40.027397, 34.843483, 31.020090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485748, 34.396103, 31.331385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.694935, 34.204109, 31.049643>,  <39.820446, 34.088913, 30.880598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.694935, 34.204109, 31.049643>,  <39.485748, 34.396103, 31.331385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694935, 34.204109, 31.049643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011217, -0.830171, 0.557397,
		-0.852279, -0.283600, -0.439536,
		0.522968, -0.479988, -0.704356,
		39.851826, 34.060112, 30.838337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122990, 33.758442, 31.273985>,  <39.485748, 34.396103, 31.331385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122990, 33.758442, 31.273985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.491592, 33.710228, 31.126307>,  <39.712753, 33.681301, 31.037701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.491592, 33.710228, 31.126307>,  <39.122990, 33.758442, 31.273985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491592, 33.710228, 31.126307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153920, -0.759432, 0.632117,
		-0.356568, -0.639324, -0.681267,
		0.921503, -0.120532, -0.369194,
		39.768044, 33.674068, 31.015549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212502, 33.071972, 31.207039>,  <39.122990, 33.758442, 31.273985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212502, 33.071972, 31.207039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.595016, 33.188892, 31.203814>,  <39.824528, 33.259045, 31.201880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.595016, 33.188892, 31.203814>,  <39.212502, 33.071972, 31.207039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595016, 33.188892, 31.203814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226349, -0.722495, 0.653274,
		0.185130, -0.626545, -0.757078,
		0.956291, 0.292305, -0.008062,
		39.881905, 33.276585, 31.201395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664574, 32.350624, 31.279404>,  <39.212502, 33.071972, 31.207039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664574, 32.350624, 31.279404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.916981, 32.650978, 31.357353>,  <40.068424, 32.831192, 31.404123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.916981, 32.650978, 31.357353>,  <39.664574, 32.350624, 31.279404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916981, 32.650978, 31.357353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458699, -0.563736, 0.686874,
		0.625625, -0.344044, -0.700162,
		0.631021, 0.750890, 0.194875,
		40.106289, 32.876244, 31.415815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297665, 32.107006, 31.201609>,  <39.664574, 32.350624, 31.279404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297665, 32.107006, 31.201609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.313038, 32.414253, 31.457272>,  <40.322262, 32.598602, 31.610670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.313038, 32.414253, 31.457272>,  <40.297665, 32.107006, 31.201609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313038, 32.414253, 31.457272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419605, -0.592909, 0.687307,
		0.906893, 0.241781, -0.345090,
		0.038429, 0.768115, 0.639157,
		40.324566, 32.644688, 31.649019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875027, 31.884947, 31.544468>,  <40.297665, 32.107006, 31.201609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875027, 31.884947, 31.544468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.728413, 32.177895, 31.774004>,  <40.640446, 32.353664, 31.911726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.728413, 32.177895, 31.774004>,  <40.875027, 31.884947, 31.544468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728413, 32.177895, 31.774004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248330, -0.517382, 0.818931,
		0.896652, 0.442667, 0.007769,
		-0.366533, 0.732368, 0.573839,
		40.618454, 32.397606, 31.946156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393353, 32.051361, 32.099483>,  <40.875027, 31.884947, 31.544468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393353, 32.051361, 32.099483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.044262, 32.191345, 32.235645>,  <40.834808, 32.275337, 32.317341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.044262, 32.191345, 32.235645>,  <41.393353, 32.051361, 32.099483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044262, 32.191345, 32.235645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234233, -0.311606, 0.920889,
		0.428344, 0.883420, 0.189976,
		-0.872729, 0.349959, 0.340400,
		40.782444, 32.296333, 32.337765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523037, 32.387615, 32.783951>,  <41.393353, 32.051361, 32.099483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523037, 32.387615, 32.783951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.139900, 32.273357, 32.771652>,  <40.910019, 32.204803, 32.764275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.139900, 32.273357, 32.771652>,  <41.523037, 32.387615, 32.783951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139900, 32.273357, 32.771652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057466, -0.295357, 0.953657,
		-0.281487, 0.911687, 0.299321,
		-0.957843, -0.285643, -0.030748,
		40.852547, 32.187664, 32.762428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303371, 32.578327, 33.495220>,  <41.523037, 32.387615, 32.783951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303371, 32.578327, 33.495220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.043232, 32.329868, 33.320305>,  <40.887150, 32.180794, 33.215355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.043232, 32.329868, 33.320305>,  <41.303371, 32.578327, 33.495220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043232, 32.329868, 33.320305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203383, -0.412261, 0.888074,
		-0.731904, 0.666494, 0.141782,
		-0.650347, -0.621149, -0.437289,
		40.848129, 32.143524, 33.189117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703354, 32.500839, 34.001968>,  <41.303371, 32.578327, 33.495220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703354, 32.500839, 34.001968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.706535, 32.193573, 33.745884>,  <40.708443, 32.009212, 33.592236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.706535, 32.193573, 33.745884>,  <40.703354, 32.500839, 34.001968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706535, 32.193573, 33.745884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015533, -0.640244, 0.768014,
		-0.999848, 0.003837, -0.017023,
		0.007952, -0.768162, -0.640206,
		40.708920, 31.963125, 33.553822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156601, 31.962448, 34.273659>,  <40.703354, 32.500839, 34.001968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156601, 31.962448, 34.273659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.401413, 31.765045, 34.026478>,  <40.548302, 31.646603, 33.878170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.401413, 31.765045, 34.026478>,  <40.156601, 31.962448, 34.273659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401413, 31.765045, 34.026478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139981, -0.701453, 0.698834,
		-0.778344, -0.514211, -0.360231,
		0.612033, -0.493508, -0.617952,
		40.585022, 31.616993, 33.841091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423771, 32.285835, 34.299328>,  <40.156601, 31.962448, 34.273659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423771, 32.285835, 34.299328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397362, 32.526142, 34.618004>,  <39.381516, 32.670326, 34.809208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397362, 32.526142, 34.618004>,  <39.423771, 32.285835, 34.299328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397362, 32.526142, 34.618004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833183, 0.406140, -0.375309,
		-0.549042, -0.688568, 0.473737,
		-0.066023, 0.600770, 0.796691,
		39.377556, 32.706371, 34.857010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722733, 32.194309, 34.512184>,  <39.423771, 32.285835, 34.299328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722733, 32.194309, 34.512184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840210, 32.536190, 34.683403>,  <38.910698, 32.741318, 34.786133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840210, 32.536190, 34.683403>,  <38.722733, 32.194309, 34.512184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840210, 32.536190, 34.683403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862361, 0.430100, -0.267109,
		-0.412402, -0.290681, 0.863382,
		0.293697, 0.854704, 0.428046,
		38.928318, 32.792603, 34.811817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157036, 32.546410, 34.672073>,  <38.722733, 32.194309, 34.512184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157036, 32.546410, 34.672073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.380531, 32.876328, 34.706787>,  <38.514629, 33.074276, 34.727615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.380531, 32.876328, 34.706787>,  <38.157036, 32.546410, 34.672073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380531, 32.876328, 34.706787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706578, 0.528206, -0.470899,
		-0.434236, 0.201786, 0.877908,
		0.558737, 0.824792, 0.086788,
		38.548153, 33.123764, 34.732822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853386, 32.998211, 35.139957>,  <38.157036, 32.546410, 34.672073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853386, 32.998211, 35.139957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077446, 33.223454, 34.896927>,  <38.211884, 33.358597, 34.751110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077446, 33.223454, 34.896927>,  <37.853386, 32.998211, 35.139957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077446, 33.223454, 34.896927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818226, 0.490632, -0.299644,
		0.129364, 0.664977, 0.735575,
		0.560153, 0.563103, -0.607572,
		38.245491, 33.392384, 34.714657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520168, 33.593639, 35.171467>,  <37.853386, 32.998211, 35.139957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520168, 33.593639, 35.171467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.740070, 33.645714, 34.841419>,  <37.872013, 33.676956, 34.643391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.740070, 33.645714, 34.841419>,  <37.520168, 33.593639, 35.171467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740070, 33.645714, 34.841419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729991, 0.555039, -0.398804,
		0.406056, 0.821575, 0.400167,
		0.549756, 0.130182, -0.825119,
		37.904999, 33.684769, 34.593884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439636, 34.207401, 35.069412>,  <37.520168, 33.593639, 35.171467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439636, 34.207401, 35.069412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520027, 34.046055, 34.712334>,  <37.568260, 33.949245, 34.498085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520027, 34.046055, 34.712334>,  <37.439636, 34.207401, 35.069412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520027, 34.046055, 34.712334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721795, 0.555127, -0.413336,
		0.662284, 0.727414, -0.179580,
		0.200976, -0.403365, -0.892695,
		37.580318, 33.925045, 34.444527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553165, 34.763248, 34.578995>,  <37.439636, 34.207401, 35.069412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553165, 34.763248, 34.578995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.443001, 34.438316, 34.373367>,  <37.376904, 34.243359, 34.249992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.443001, 34.438316, 34.373367>,  <37.553165, 34.763248, 34.578995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443001, 34.438316, 34.373367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682410, 0.541849, -0.490628,
		0.677100, 0.215680, -0.703575,
		-0.275413, -0.812331, -0.514068,
		37.360378, 34.194618, 34.219147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718063, 34.925903, 33.808022>,  <37.553165, 34.763248, 34.578995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718063, 34.925903, 33.808022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.465439, 34.615963, 33.797157>,  <37.313866, 34.429996, 33.790638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.465439, 34.615963, 33.797157>,  <37.718063, 34.925903, 33.808022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465439, 34.615963, 33.797157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446658, 0.392240, -0.804142,
		0.633745, -0.495731, -0.593816,
		-0.631557, -0.774854, -0.027157,
		37.275970, 34.383507, 33.789009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800781, 34.651455, 33.186699>,  <37.718063, 34.925903, 33.808022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800781, 34.651455, 33.186699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.443489, 34.515350, 33.304245>,  <37.229115, 34.433685, 33.374771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.443489, 34.515350, 33.304245>,  <37.800781, 34.651455, 33.186699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443489, 34.515350, 33.304245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397362, 0.291706, -0.870064,
		0.210332, -0.893939, -0.395770,
		-0.893233, -0.340266, 0.293862,
		37.175518, 34.413269, 33.392403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517384, 34.335762, 32.562614>,  <37.800781, 34.651455, 33.186699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517384, 34.335762, 32.562614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235981, 34.429756, 32.830902>,  <37.067139, 34.486153, 32.991875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235981, 34.429756, 32.830902>,  <37.517384, 34.335762, 32.562614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235981, 34.429756, 32.830902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536799, 0.442803, -0.718173,
		-0.465760, -0.865277, -0.185371,
		-0.703501, 0.234990, 0.670720,
		37.024929, 34.500252, 33.032120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805309, 34.280258, 32.270069>,  <37.517384, 34.335762, 32.562614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805309, 34.280258, 32.270069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706615, 34.525517, 32.570251>,  <36.647400, 34.672672, 32.750359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706615, 34.525517, 32.570251>,  <36.805309, 34.280258, 32.270069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706615, 34.525517, 32.570251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531304, 0.562046, -0.633893,
		-0.810455, -0.555122, 0.187088,
		-0.246736, 0.613143, 0.750452,
		36.632595, 34.709457, 32.795387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172558, 34.320702, 32.115734>,  <36.805309, 34.280258, 32.270069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172558, 34.320702, 32.115734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229279, 34.619881, 32.375107>,  <36.263309, 34.799389, 32.530731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229279, 34.619881, 32.375107>,  <36.172558, 34.320702, 32.115734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229279, 34.619881, 32.375107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699270, 0.539333, -0.469192,
		-0.700652, -0.386895, 0.599499,
		0.141802, 0.747952, 0.648429,
		36.271820, 34.844265, 32.569637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466442, 34.640575, 32.443287>,  <36.172558, 34.320702, 32.115734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466442, 34.640575, 32.443287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725948, 34.942799, 32.479588>,  <35.881653, 35.124134, 32.501369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725948, 34.942799, 32.479588>,  <35.466442, 34.640575, 32.443287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725948, 34.942799, 32.479588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677488, 0.627771, -0.383294,
		-0.346571, 0.187185, 0.919157,
		0.648767, 0.755556, 0.090752,
		35.920578, 35.169464, 32.506813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019684, 35.098812, 32.722061>,  <35.466442, 34.640575, 32.443287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019684, 35.098812, 32.722061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346565, 35.263554, 32.560783>,  <35.542694, 35.362396, 32.464016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346565, 35.263554, 32.560783>,  <35.019684, 35.098812, 32.722061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346565, 35.263554, 32.560783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575061, 0.629452, -0.522584,
		0.038564, 0.658916, 0.751227,
		0.817201, 0.411849, -0.403191,
		35.591724, 35.387108, 32.439827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895504, 35.798611, 32.879074>,  <35.019684, 35.098812, 32.722061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895504, 35.798611, 32.879074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137554, 35.759548, 32.563026>,  <35.282784, 35.736111, 32.373398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137554, 35.759548, 32.563026>,  <34.895504, 35.798611, 32.879074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137554, 35.759548, 32.563026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516399, 0.707204, -0.482903,
		0.605936, 0.700233, 0.377513,
		0.605123, -0.097661, -0.790120,
		35.319092, 35.730251, 32.325989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901039, 36.520767, 32.677917>,  <34.895504, 35.798611, 32.879074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901039, 36.520767, 32.677917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049843, 36.326054, 32.361778>,  <35.139126, 36.209225, 32.172096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049843, 36.326054, 32.361778>,  <34.901039, 36.520767, 32.677917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049843, 36.326054, 32.361778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534862, 0.583477, -0.611128,
		0.758639, 0.650071, -0.043306,
		0.372008, -0.486788, -0.790347,
		35.161446, 36.180016, 32.124676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167084, 37.103882, 32.322277>,  <34.901039, 36.520767, 32.677917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167084, 37.103882, 32.322277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150124, 36.814152, 32.047016>,  <35.139946, 36.640312, 31.881859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150124, 36.814152, 32.047016>,  <35.167084, 37.103882, 32.322277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150124, 36.814152, 32.047016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247261, 0.674956, -0.695195,
		0.968021, 0.140675, -0.207717,
		-0.042404, -0.724324, -0.688155,
		35.137402, 36.596855, 31.840570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491947, 37.361549, 31.679527>,  <35.167084, 37.103882, 32.322277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491947, 37.361549, 31.679527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.272877, 37.050079, 31.557074>,  <35.141434, 36.863197, 31.483601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.272877, 37.050079, 31.557074>,  <35.491947, 37.361549, 31.679527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272877, 37.050079, 31.557074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328468, 0.536609, -0.777277,
		0.769522, -0.325137, -0.549656,
		-0.547672, -0.778676, -0.306135,
		35.108574, 36.816475, 31.465233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595486, 37.325871, 31.058720>,  <35.491947, 37.361549, 31.679527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595486, 37.325871, 31.058720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251873, 37.123852, 31.092175>,  <35.045704, 37.002640, 31.112247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251873, 37.123852, 31.092175>,  <35.595486, 37.325871, 31.058720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251873, 37.123852, 31.092175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383914, 0.527492, -0.757867,
		0.338641, -0.683140, -0.647026,
		-0.859030, -0.505047, 0.083637,
		34.994164, 36.972340, 31.117266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396126, 37.070724, 30.311821>,  <35.595486, 37.325871, 31.058720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396126, 37.070724, 30.311821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.066605, 37.053658, 30.537928>,  <34.868893, 37.043419, 30.673592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.066605, 37.053658, 30.537928>,  <35.396126, 37.070724, 30.311821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066605, 37.053658, 30.537928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510960, 0.487721, -0.707848,
		-0.245491, -0.871957, -0.423587,
		-0.823805, -0.042666, 0.565266,
		34.819462, 37.040859, 30.707508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890011, 36.764961, 29.881809>,  <35.396126, 37.070724, 30.311821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890011, 36.764961, 29.881809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705296, 36.967747, 30.172941>,  <34.594467, 37.089417, 30.347620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705296, 36.967747, 30.172941>,  <34.890011, 36.764961, 29.881809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705296, 36.967747, 30.172941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439322, 0.582116, -0.684206,
		-0.770548, -0.635713, -0.046096,
		-0.461791, 0.506962, 0.727831,
		34.566757, 37.119835, 30.391291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199440, 36.719971, 29.660482>,  <34.890011, 36.764961, 29.881809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199440, 36.719971, 29.660482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226749, 37.017574, 29.926352>,  <34.243134, 37.196136, 30.085873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226749, 37.017574, 29.926352>,  <34.199440, 36.719971, 29.660482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226749, 37.017574, 29.926352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596146, 0.564629, -0.570793,
		-0.799968, -0.357271, 0.482087,
		0.068272, 0.744011, 0.664671,
		34.247231, 37.240776, 30.125753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518681, 37.115589, 29.623112>,  <34.199440, 36.719971, 29.660482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518681, 37.115589, 29.623112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749523, 37.388428, 29.802753>,  <33.888027, 37.552132, 29.910538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749523, 37.388428, 29.802753>,  <33.518681, 37.115589, 29.623112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749523, 37.388428, 29.802753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407391, 0.717059, -0.565561,
		-0.707801, 0.143427, 0.691698,
		0.577105, 0.682096, 0.449104,
		33.922653, 37.593056, 29.937485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093914, 37.623383, 29.719038>,  <33.518681, 37.115589, 29.623112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093914, 37.623383, 29.719038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452171, 37.800613, 29.734575>,  <33.667126, 37.906952, 29.743898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452171, 37.800613, 29.734575>,  <33.093914, 37.623383, 29.719038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452171, 37.800613, 29.734575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318352, 0.699595, -0.639702,
		-0.310616, 0.560576, 0.767641,
		0.895639, 0.443082, 0.038845,
		33.720863, 37.933537, 29.746229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061325, 38.301071, 29.928001>,  <33.093914, 37.623383, 29.719038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061325, 38.301071, 29.928001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390057, 38.273281, 29.701809>,  <33.587296, 38.256607, 29.566093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390057, 38.273281, 29.701809>,  <33.061325, 38.301071, 29.928001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390057, 38.273281, 29.701809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249850, 0.848058, -0.467304,
		0.512028, 0.525329, 0.679600,
		0.821829, -0.069474, -0.565483,
		33.636604, 38.252438, 29.532164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240337, 39.005985, 29.852173>,  <33.061325, 38.301071, 29.928001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240337, 39.005985, 29.852173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449959, 38.815510, 29.569723>,  <33.575733, 38.701225, 29.400253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449959, 38.815510, 29.569723>,  <33.240337, 39.005985, 29.852173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449959, 38.815510, 29.569723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099107, 0.789363, -0.605875,
		0.845900, 0.387492, 0.366474,
		0.524053, -0.476189, -0.706125,
		33.607174, 38.672653, 29.357885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554558, 39.571953, 29.567709>,  <33.240337, 39.005985, 29.852173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554558, 39.571953, 29.567709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.564423, 39.258038, 29.320002>,  <33.570339, 39.069687, 29.171377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.564423, 39.258038, 29.320002>,  <33.554558, 39.571953, 29.567709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564423, 39.258038, 29.320002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217834, 0.600353, -0.769496,
		0.975674, 0.153873, -0.156150,
		0.024659, -0.784792, -0.619268,
		33.571819, 39.022598, 29.134222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020432, 39.753067, 29.063757>,  <33.554558, 39.571953, 29.567709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020432, 39.753067, 29.063757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796806, 39.455894, 28.916519>,  <33.662632, 39.277592, 28.828176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796806, 39.455894, 28.916519>,  <34.020432, 39.753067, 29.063757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796806, 39.455894, 28.916519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185008, 0.544544, -0.818073,
		0.808218, -0.389256, -0.441885,
		-0.559066, -0.742934, -0.368095,
		33.629086, 39.233013, 28.806091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687012, 40.246098, 28.924061>,  <34.020432, 39.753067, 29.063757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687012, 40.246098, 28.924061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750130, 40.633446, 29.001375>,  <34.788002, 40.865856, 29.047764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750130, 40.633446, 29.001375>,  <34.687012, 40.246098, 28.924061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750130, 40.633446, 29.001375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770276, -0.243187, 0.589521,
		0.617879, 0.055858, -0.784287,
		0.157799, 0.968370, 0.193286,
		34.797470, 40.923958, 29.059361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434010, 40.243103, 28.776131>,  <34.687012, 40.246098, 28.924061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434010, 40.243103, 28.776131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319382, 40.536133, 29.023100>,  <35.250607, 40.711952, 29.171282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319382, 40.536133, 29.023100>,  <35.434010, 40.243103, 28.776131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319382, 40.536133, 29.023100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748563, -0.231004, 0.621522,
		0.597940, 0.640288, -0.482181,
		-0.286568, 0.732576, 0.617423,
		35.233410, 40.755905, 29.208326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999851, 40.655605, 28.995331>,  <35.434010, 40.243103, 28.776131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999851, 40.655605, 28.995331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723366, 40.717731, 29.277637>,  <35.557476, 40.755005, 29.447021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723366, 40.717731, 29.277637>,  <35.999851, 40.655605, 28.995331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723366, 40.717731, 29.277637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650213, -0.292530, 0.701177,
		0.315359, 0.943559, 0.101215,
		-0.691211, 0.155311, 0.705766,
		35.516003, 40.764324, 29.489367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425266, 41.038536, 29.519857>,  <35.999851, 40.655605, 28.995331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425266, 41.038536, 29.519857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101292, 40.861561, 29.673874>,  <35.906906, 40.755375, 29.766285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101292, 40.861561, 29.673874>,  <36.425266, 41.038536, 29.519857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101292, 40.861561, 29.673874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556573, -0.372677, 0.742522,
		-0.185022, 0.815697, 0.548092,
		-0.809934, -0.442436, 0.385042,
		35.858311, 40.728828, 29.789387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445511, 41.313801, 30.225391>,  <36.425266, 41.038536, 29.519857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445511, 41.313801, 30.225391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209042, 40.991188, 30.226627>,  <36.067158, 40.797619, 30.227369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209042, 40.991188, 30.226627>,  <36.445511, 41.313801, 30.225391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209042, 40.991188, 30.226627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573298, -0.417515, 0.704990,
		-0.567308, 0.418547, 0.709211,
		-0.591177, -0.806536, 0.003092,
		36.031689, 40.749226, 30.227554>
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
