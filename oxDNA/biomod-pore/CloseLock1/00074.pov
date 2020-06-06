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
	<24.773943, 34.643879, 34.847115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.449476, 34.876083, 34.875423>,  <24.254795, 35.015408, 34.892410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.449476, 34.876083, 34.875423>,  <24.773943, 34.643879, 34.847115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.449476, 34.876083, 34.875423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567783, 0.752765, 0.333118,
		0.140101, 0.310401, -0.940225,
		-0.811169, 0.580514, 0.070777,
		24.206125, 35.050236, 34.896656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040922, 35.313992, 34.731380>,  <24.773943, 34.643879, 34.847115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040922, 35.313992, 34.731380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661692, 35.405838, 34.819408>,  <24.434155, 35.460945, 34.872227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661692, 35.405838, 34.819408>,  <25.040922, 35.313992, 34.731380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.661692, 35.405838, 34.819408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313543, 0.790845, 0.525600,
		-0.053352, 0.567308, -0.821775,
		-0.948074, 0.229620, 0.220069,
		24.377270, 35.474724, 34.885429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910908, 36.121235, 34.687817>,  <25.040922, 35.313992, 34.731380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910908, 36.121235, 34.687817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641315, 35.947186, 34.926620>,  <24.479559, 35.842754, 35.069901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641315, 35.947186, 34.926620>,  <24.910908, 36.121235, 34.687817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641315, 35.947186, 34.926620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060961, 0.772618, 0.631938,
		-0.736228, 0.462309, -0.494205,
		-0.673982, -0.435123, 0.597006,
		24.439121, 35.816650, 35.105721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.298445, 36.584042, 34.919411>,  <24.910908, 36.121235, 34.687817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.298445, 36.584042, 34.919411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340855, 36.303265, 35.201130>,  <24.366301, 36.134800, 35.370163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340855, 36.303265, 35.201130>,  <24.298445, 36.584042, 34.919411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.340855, 36.303265, 35.201130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010761, 0.707442, 0.706689,
		-0.994305, -0.082504, 0.067451,
		0.106023, -0.701939, 0.704302,
		24.372662, 36.092682, 35.412422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.161398, 36.673466, 35.706806>,  <24.298445, 36.584042, 34.919411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.161398, 36.673466, 35.706806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543993, 36.616932, 35.604706>,  <24.773550, 36.583012, 35.543446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543993, 36.616932, 35.604706>,  <24.161398, 36.673466, 35.706806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543993, 36.616932, 35.604706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165026, 0.983524, 0.073808,
		0.240615, -0.112720, 0.964053,
		0.956489, -0.141335, -0.255252,
		24.830940, 36.574532, 35.528130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555590, 36.957901, 36.126469>,  <24.161398, 36.673466, 35.706806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555590, 36.957901, 36.126469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798258, 36.928066, 35.809891>,  <24.943859, 36.910164, 35.619946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798258, 36.928066, 35.809891>,  <24.555590, 36.957901, 36.126469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798258, 36.928066, 35.809891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184575, 0.981597, 0.048977,
		0.773228, -0.175794, 0.609274,
		0.606672, -0.074586, -0.791446,
		24.980259, 36.905689, 35.572456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233667, 37.277740, 36.243935>,  <24.555590, 36.957901, 36.126469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233667, 37.277740, 36.243935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143597, 37.291077, 35.854435>,  <25.089554, 37.299080, 35.620735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143597, 37.291077, 35.854435>,  <25.233667, 37.277740, 36.243935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143597, 37.291077, 35.854435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213838, 0.976738, -0.016008,
		0.950562, -0.211829, -0.227068,
		-0.225177, 0.033340, -0.973747,
		25.076044, 37.301079, 35.562309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768650, 37.673058, 35.942940>,  <25.233667, 37.277740, 36.243935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768650, 37.673058, 35.942940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493149, 37.701344, 35.654324>,  <25.327848, 37.718315, 35.481155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493149, 37.701344, 35.654324>,  <25.768650, 37.673058, 35.942940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493149, 37.701344, 35.654324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293968, 0.936987, -0.188780,
		0.662722, -0.342131, -0.666142,
		-0.688754, 0.070716, -0.721538,
		25.286522, 37.722557, 35.437862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144855, 37.920547, 35.405865>,  <25.768650, 37.673058, 35.942940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144855, 37.920547, 35.405865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763859, 37.999241, 35.312862>,  <25.535261, 38.046455, 35.257061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763859, 37.999241, 35.312862>,  <26.144855, 37.920547, 35.405865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763859, 37.999241, 35.312862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214363, 0.975320, -0.052912,
		0.216359, -0.100239, -0.971155,
		-0.952490, 0.196732, -0.232506,
		25.478111, 38.058262, 35.243111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232409, 38.412117, 34.889416>,  <26.144855, 37.920547, 35.405865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232409, 38.412117, 34.889416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860472, 38.439705, 35.033989>,  <25.637310, 38.456257, 35.120735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860472, 38.439705, 35.033989>,  <26.232409, 38.412117, 34.889416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860472, 38.439705, 35.033989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095584, 0.993831, 0.056253,
		-0.355326, 0.086854, -0.930699,
		-0.929843, 0.068972, 0.361435,
		25.581518, 38.460396, 35.142418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996281, 38.975834, 34.583813>,  <26.232409, 38.412117, 34.889416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996281, 38.975834, 34.583813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724260, 38.947979, 34.875751>,  <25.561049, 38.931267, 35.050915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724260, 38.947979, 34.875751>,  <25.996281, 38.975834, 34.583813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724260, 38.947979, 34.875751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065761, 0.997260, 0.033880,
		-0.730210, -0.024956, -0.682767,
		-0.680051, -0.069639, 0.729850,
		25.520245, 38.927086, 35.094707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484453, 39.561275, 34.542404>,  <25.996281, 38.975834, 34.583813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484453, 39.561275, 34.542404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404118, 39.446617, 34.917103>,  <25.355915, 39.377823, 35.141922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404118, 39.446617, 34.917103>,  <25.484453, 39.561275, 34.542404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404118, 39.446617, 34.917103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286474, 0.931617, 0.223657,
		-0.936801, -0.223434, -0.269223,
		-0.200840, -0.286647, 0.936748,
		25.343866, 39.360622, 35.198128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.750721, 39.702362, 34.754761>,  <25.484453, 39.561275, 34.542404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.750721, 39.702362, 34.754761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937117, 39.690628, 35.108482>,  <25.048954, 39.683586, 35.320717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937117, 39.690628, 35.108482>,  <24.750721, 39.702362, 34.754761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937117, 39.690628, 35.108482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373871, 0.899310, 0.226851,
		-0.801919, -0.436326, 0.408100,
		0.465990, -0.029339, 0.884303,
		25.076914, 39.681828, 35.373772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.297483, 39.952648, 35.201069>,  <24.750721, 39.702362, 34.754761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.297483, 39.952648, 35.201069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612112, 39.999653, 35.443554>,  <24.800890, 40.027855, 35.589046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612112, 39.999653, 35.443554>,  <24.297483, 39.952648, 35.201069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.612112, 39.999653, 35.443554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392311, 0.853232, 0.343638,
		-0.476863, -0.508121, 0.717227,
		0.786571, 0.117508, 0.606216,
		24.848083, 40.034904, 35.625420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.054296, 40.207943, 35.907997>,  <24.297483, 39.952648, 35.201069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.054296, 40.207943, 35.907997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431976, 40.329483, 35.857155>,  <24.658585, 40.402409, 35.826649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431976, 40.329483, 35.857155>,  <24.054296, 40.207943, 35.907997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431976, 40.329483, 35.857155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233295, 0.889400, 0.393117,
		0.232502, -0.341527, 0.910660,
		0.944201, 0.303853, -0.127110,
		24.715237, 40.420639, 35.819023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.151180, 40.571697, 36.568989>,  <24.054296, 40.207943, 35.907997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.151180, 40.571697, 36.568989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460424, 40.675243, 36.337372>,  <24.645971, 40.737370, 36.198402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460424, 40.675243, 36.337372>,  <24.151180, 40.571697, 36.568989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460424, 40.675243, 36.337372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011813, 0.906891, 0.421199,
		0.634161, -0.332473, 0.698070,
		0.773111, 0.258861, -0.579043,
		24.692358, 40.752903, 36.163658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708191, 40.908489, 36.952930>,  <24.151180, 40.571697, 36.568989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708191, 40.908489, 36.952930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755768, 41.043312, 36.579353>,  <24.784315, 41.124207, 36.355209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755768, 41.043312, 36.579353>,  <24.708191, 40.908489, 36.952930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755768, 41.043312, 36.579353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182435, 0.917185, 0.354243,
		0.975997, -0.212518, 0.047603,
		0.118944, 0.337056, -0.933941,
		24.791451, 41.144428, 36.299171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239222, 41.362530, 37.002357>,  <24.708191, 40.908489, 36.952930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239222, 41.362530, 37.002357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062233, 41.453228, 36.655300>,  <24.956039, 41.507648, 36.447067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062233, 41.453228, 36.655300>,  <25.239222, 41.362530, 37.002357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.062233, 41.453228, 36.655300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279210, 0.954251, 0.106989,
		0.852208, -0.194915, -0.485539,
		-0.442473, 0.226745, -0.867643,
		24.929491, 41.521252, 36.395008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720903, 41.875702, 36.693344>,  <25.239222, 41.362530, 37.002357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720903, 41.875702, 36.693344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380426, 41.913280, 36.486794>,  <25.176140, 41.935825, 36.362865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380426, 41.913280, 36.486794>,  <25.720903, 41.875702, 36.693344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380426, 41.913280, 36.486794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173691, 0.978834, -0.108235,
		0.495277, -0.181819, -0.849495,
		-0.851195, 0.093943, -0.516374,
		25.125069, 41.941463, 36.331882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870346, 42.203709, 36.136971>,  <25.720903, 41.875702, 36.693344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870346, 42.203709, 36.136971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476706, 42.264023, 36.174515>,  <25.240522, 42.300213, 36.197041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476706, 42.264023, 36.174515>,  <25.870346, 42.203709, 36.136971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476706, 42.264023, 36.174515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150614, 0.988552, -0.008975,
		-0.094138, 0.005304, -0.995545,
		-0.984100, 0.150788, 0.093859,
		25.181475, 42.309258, 36.202671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653004, 42.751812, 35.714481>,  <25.870346, 42.203709, 36.136971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653004, 42.751812, 35.714481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356096, 42.737270, 35.982128>,  <25.177952, 42.728546, 36.142715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356096, 42.737270, 35.982128>,  <25.653004, 42.751812, 35.714481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356096, 42.737270, 35.982128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011008, 0.999054, 0.042070,
		-0.670014, 0.023862, -0.741965,
		-0.742267, -0.036355, 0.669118,
		25.133417, 42.726364, 36.182865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243654, 43.279915, 35.532131>,  <25.653004, 42.751812, 35.714481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243654, 43.279915, 35.532131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109249, 43.220329, 35.904133>,  <25.028606, 43.184578, 36.127335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109249, 43.220329, 35.904133>,  <25.243654, 43.279915, 35.532131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109249, 43.220329, 35.904133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055551, 0.982559, 0.177457,
		-0.940218, 0.111290, -0.321876,
		-0.336012, -0.148968, 0.930002,
		25.008446, 43.175640, 36.183132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.661961, 43.668301, 35.587746>,  <25.243654, 43.279915, 35.532131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.661961, 43.668301, 35.587746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841295, 43.606487, 35.939907>,  <24.948896, 43.569401, 36.151203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841295, 43.606487, 35.939907>,  <24.661961, 43.668301, 35.587746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841295, 43.606487, 35.939907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207802, 0.975976, 0.065487,
		-0.869376, 0.153590, 0.469676,
		0.448335, -0.154532, 0.880407,
		24.975796, 43.560127, 36.204029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418049, 44.223797, 36.126633>,  <24.661961, 43.668301, 35.587746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418049, 44.223797, 36.126633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767500, 44.082413, 36.260403>,  <24.977171, 43.997581, 36.340664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767500, 44.082413, 36.260403>,  <24.418049, 44.223797, 36.126633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.767500, 44.082413, 36.260403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326290, 0.935397, 0.136263,
		-0.360983, -0.009924, 0.932519,
		0.873628, -0.353461, 0.334424,
		25.029589, 43.976376, 36.360729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553345, 44.563587, 36.663662>,  <24.418049, 44.223797, 36.126633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553345, 44.563587, 36.663662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917261, 44.418884, 36.582260>,  <25.135611, 44.332062, 36.533421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917261, 44.418884, 36.582260>,  <24.553345, 44.563587, 36.663662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917261, 44.418884, 36.582260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391298, 0.911060, 0.129830,
		0.138437, -0.197749, 0.970428,
		0.909792, -0.361753, -0.203503,
		25.190199, 44.310360, 36.521210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040911, 44.836021, 37.100029>,  <24.553345, 44.563587, 36.663662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040911, 44.836021, 37.100029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227579, 44.746742, 36.757710>,  <25.339581, 44.693172, 36.552319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227579, 44.746742, 36.757710>,  <25.040911, 44.836021, 37.100029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227579, 44.746742, 36.757710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542432, 0.836506, 0.077620,
		0.698559, -0.500438, 0.511446,
		0.466672, -0.223202, -0.855802,
		25.367580, 44.679783, 36.500969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714710, 44.901211, 37.264496>,  <25.040911, 44.836021, 37.100029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714710, 44.901211, 37.264496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676868, 44.984085, 36.875008>,  <25.654163, 45.033810, 36.641315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676868, 44.984085, 36.875008>,  <25.714710, 44.901211, 37.264496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676868, 44.984085, 36.875008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539135, 0.832916, 0.124841,
		0.836889, -0.513155, -0.190496,
		-0.094604, 0.207181, -0.973718,
		25.648487, 45.046238, 36.582893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400366, 44.805714, 36.910244>,  <25.714710, 44.901211, 37.264496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400366, 44.805714, 36.910244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172432, 45.064922, 36.708115>,  <26.035671, 45.220448, 36.586838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172432, 45.064922, 36.708115>,  <26.400366, 44.805714, 36.910244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172432, 45.064922, 36.708115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725526, 0.685493, 0.060922,
		0.385874, -0.331909, -0.860777,
		-0.569836, 0.648024, -0.505323,
		26.001482, 45.259331, 36.556519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770069, 44.995205, 36.236076>,  <26.400366, 44.805714, 36.910244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770069, 44.995205, 36.236076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560097, 45.275249, 36.429688>,  <26.434113, 45.443275, 36.545856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560097, 45.275249, 36.429688>,  <26.770069, 44.995205, 36.236076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560097, 45.275249, 36.429688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678315, 0.687623, -0.258965,
		-0.514136, 0.192386, -0.835854,
		-0.524931, 0.700116, 0.484030,
		26.402617, 45.485283, 36.574898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764969, 45.610352, 35.824886>,  <26.770069, 44.995205, 36.236076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764969, 45.610352, 35.824886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701462, 45.737911, 36.198647>,  <26.663357, 45.814445, 36.422901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701462, 45.737911, 36.198647>,  <26.764969, 45.610352, 35.824886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701462, 45.737911, 36.198647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655450, 0.741808, -0.141800,
		-0.738362, 0.589936, -0.326798,
		-0.158768, 0.318899, 0.934396,
		26.653831, 45.833580, 36.478966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699102, 45.390499, 35.180027>,  <26.764969, 45.610352, 35.824886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699102, 45.390499, 35.180027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430458, 45.516994, 34.912018>,  <26.269272, 45.592892, 34.751213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430458, 45.516994, 34.912018>,  <26.699102, 45.390499, 35.180027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430458, 45.516994, 34.912018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704459, 0.552703, -0.445260,
		0.229514, -0.771044, -0.593981,
		-0.671610, 0.316242, -0.670023,
		26.228975, 45.611866, 34.711010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920074, 45.223888, 34.617031>,  <26.699102, 45.390499, 35.180027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920074, 45.223888, 34.617031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692022, 45.548481, 34.565723>,  <26.555191, 45.743237, 34.534939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692022, 45.548481, 34.565723>,  <26.920074, 45.223888, 34.617031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692022, 45.548481, 34.565723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759130, 0.460653, -0.459913,
		-0.314124, -0.359581, -0.878651,
		-0.570129, 0.811480, -0.128266,
		26.520983, 45.791924, 34.527245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654629, 45.421631, 34.509640>,  <26.920074, 45.223888, 34.617031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654629, 45.421631, 34.509640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024014, 45.384872, 34.360634>,  <28.245646, 45.362820, 34.271229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024014, 45.384872, 34.360634>,  <27.654629, 45.421631, 34.509640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024014, 45.384872, 34.360634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219308, -0.923079, -0.315957,
		-0.314830, 0.373471, -0.872583,
		0.923464, -0.091892, -0.372518,
		28.301052, 45.357304, 34.248878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654404, 45.196751, 33.766685>,  <27.654629, 45.421631, 34.509640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654404, 45.196751, 33.766685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005096, 45.076431, 33.916813>,  <28.215511, 45.004242, 34.006889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005096, 45.076431, 33.916813>,  <27.654404, 45.196751, 33.766685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005096, 45.076431, 33.916813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182158, -0.929844, -0.319700,
		0.445154, 0.211923, -0.870015,
		0.876730, -0.300796, 0.375321,
		28.268116, 44.986191, 34.029408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044600, 44.942383, 33.244144>,  <27.654404, 45.196751, 33.766685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044600, 44.942383, 33.244144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121277, 44.758358, 33.590923>,  <28.167284, 44.647945, 33.798992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121277, 44.758358, 33.590923>,  <28.044600, 44.942383, 33.244144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121277, 44.758358, 33.590923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141959, -0.887038, -0.439331,
		0.971134, -0.038855, -0.235349,
		0.191693, -0.460059, 0.866948,
		28.178785, 44.620338, 33.851009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078197, 44.239082, 33.073486>,  <28.044600, 44.942383, 33.244144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078197, 44.239082, 33.073486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130285, 44.163269, 33.462769>,  <28.161537, 44.117783, 33.696339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130285, 44.163269, 33.462769>,  <28.078197, 44.239082, 33.073486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130285, 44.163269, 33.462769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063258, -0.981147, -0.182617,
		0.989465, -0.037782, -0.139754,
		0.130219, -0.189534, 0.973200,
		28.169352, 44.106407, 33.754730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626856, 43.865517, 33.073139>,  <28.078197, 44.239082, 33.073486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626856, 43.865517, 33.073139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411087, 43.775688, 33.397755>,  <28.281626, 43.721790, 33.592525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411087, 43.775688, 33.397755>,  <28.626856, 43.865517, 33.073139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411087, 43.775688, 33.397755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211427, -0.969027, -0.127615,
		0.815060, 0.102743, 0.570193,
		-0.539421, -0.224569, 0.811538,
		28.249260, 43.708317, 33.641216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935612, 43.170395, 33.368580>,  <28.626856, 43.865517, 33.073139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935612, 43.170395, 33.368580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581539, 43.231361, 33.544411>,  <28.369095, 43.267941, 33.649910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581539, 43.231361, 33.544411>,  <28.935612, 43.170395, 33.368580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581539, 43.231361, 33.544411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144403, -0.988160, 0.051835,
		0.442269, -0.017593, 0.896710,
		-0.885181, 0.152412, 0.439573,
		28.315985, 43.277084, 33.676281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972923, 42.779594, 33.996769>,  <28.935612, 43.170395, 33.368580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972923, 42.779594, 33.996769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594997, 42.829437, 33.875576>,  <28.368242, 42.859344, 33.802860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594997, 42.829437, 33.875576>,  <28.972923, 42.779594, 33.996769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594997, 42.829437, 33.875576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197812, -0.954206, 0.224412,
		-0.261143, 0.271962, 0.926197,
		-0.944815, 0.124610, -0.302982,
		28.311554, 42.866821, 33.784683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543552, 42.569218, 34.533234>,  <28.972923, 42.779594, 33.996769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543552, 42.569218, 34.533234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325474, 42.539890, 34.199196>,  <28.194626, 42.522293, 33.998772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325474, 42.539890, 34.199196>,  <28.543552, 42.569218, 34.533234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325474, 42.539890, 34.199196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181475, -0.962225, 0.202952,
		-0.818429, 0.262198, 0.511298,
		-0.545198, -0.073314, -0.835096,
		28.161915, 42.517895, 33.948666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957369, 42.102985, 34.708969>,  <28.543552, 42.569218, 34.533234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957369, 42.102985, 34.708969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928522, 42.085888, 34.310379>,  <27.911213, 42.075630, 34.071224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928522, 42.085888, 34.310379>,  <27.957369, 42.102985, 34.708969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928522, 42.085888, 34.310379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327090, -0.942816, 0.064114,
		-0.942237, 0.330562, 0.054012,
		-0.072118, -0.042744, -0.996480,
		27.906887, 42.073063, 34.011436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315289, 41.749554, 34.566029>,  <27.957369, 42.102985, 34.708969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315289, 41.749554, 34.566029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545568, 41.695366, 34.243484>,  <27.683737, 41.662853, 34.049957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545568, 41.695366, 34.243484>,  <27.315289, 41.749554, 34.566029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545568, 41.695366, 34.243484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246577, -0.969033, -0.013242,
		-0.779597, 0.206454, -0.591274,
		0.575698, -0.135472, -0.806362,
		27.718277, 41.654724, 34.001575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869503, 41.381157, 34.034103>,  <27.315289, 41.749554, 34.566029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869503, 41.381157, 34.034103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250633, 41.322922, 33.927574>,  <27.479311, 41.287979, 33.863655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250633, 41.322922, 33.927574>,  <26.869503, 41.381157, 34.034103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250633, 41.322922, 33.927574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182559, -0.975888, -0.119650,
		-0.242486, 0.162625, -0.956428,
		0.952824, -0.145591, -0.266328,
		27.536480, 41.279243, 33.847675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856731, 40.861145, 33.585045>,  <26.869503, 41.381157, 34.034103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856731, 40.861145, 33.585045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255264, 40.855347, 33.618782>,  <27.494383, 40.851868, 33.639027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255264, 40.855347, 33.618782>,  <26.856731, 40.861145, 33.585045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255264, 40.855347, 33.618782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010969, -0.955792, -0.293840,
		0.084877, 0.293687, -0.952126,
		0.996331, -0.014496, 0.084346,
		27.554163, 40.850998, 33.644085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062967, 40.613235, 33.006531>,  <26.856731, 40.861145, 33.585045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062967, 40.613235, 33.006531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334862, 40.532307, 33.288532>,  <27.497997, 40.483749, 33.457733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334862, 40.532307, 33.288532>,  <27.062967, 40.613235, 33.006531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334862, 40.532307, 33.288532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025956, -0.953965, -0.298793,
		0.732998, 0.221399, -0.643192,
		0.679735, -0.202320, 0.705001,
		27.538782, 40.471611, 33.500034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682549, 40.272591, 32.759285>,  <27.062967, 40.613235, 33.006531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682549, 40.272591, 32.759285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693062, 40.180614, 33.148426>,  <27.699369, 40.125427, 33.381908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693062, 40.180614, 33.148426>,  <27.682549, 40.272591, 32.759285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693062, 40.180614, 33.148426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057934, -0.971901, -0.228151,
		0.997974, -0.050365, -0.038866,
		0.026283, -0.229940, 0.972850,
		27.700947, 40.111633, 33.440281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911522, 39.625023, 32.697960>,  <27.682549, 40.272591, 32.759285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911522, 39.625023, 32.697960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773550, 39.653522, 33.072327>,  <27.690767, 39.670624, 33.296947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773550, 39.653522, 33.072327>,  <27.911522, 39.625023, 32.697960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773550, 39.653522, 33.072327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211474, -0.977377, -0.003534,
		0.914495, -0.199142, 0.352194,
		-0.344930, 0.071248, 0.935920,
		27.670071, 39.674896, 33.353104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202868, 39.062210, 33.058437>,  <27.911522, 39.625023, 32.697960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202868, 39.062210, 33.058437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885733, 39.126247, 33.293652>,  <27.695452, 39.164669, 33.434780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885733, 39.126247, 33.293652>,  <28.202868, 39.062210, 33.058437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885733, 39.126247, 33.293652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149771, -0.986473, 0.066634,
		0.590745, -0.035240, 0.806088,
		-0.792836, 0.160092, 0.588032,
		27.647882, 39.174274, 33.470062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211695, 38.670971, 33.782719>,  <28.202868, 39.062210, 33.058437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211695, 38.670971, 33.782719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824249, 38.764156, 33.748035>,  <27.591782, 38.820068, 33.727226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824249, 38.764156, 33.748035>,  <28.211695, 38.670971, 33.782719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824249, 38.764156, 33.748035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236616, -0.970996, 0.034358,
		-0.076191, 0.053797, 0.995641,
		-0.968611, 0.232967, -0.086711,
		27.533667, 38.834045, 33.722023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911009, 38.229816, 34.237640>,  <28.211695, 38.670971, 33.782719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911009, 38.229816, 34.237640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623951, 38.350464, 33.986561>,  <27.451715, 38.422852, 33.835911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623951, 38.350464, 33.986561>,  <27.911009, 38.229816, 34.237640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623951, 38.350464, 33.986561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370680, -0.928491, -0.022356,
		-0.589558, 0.216633, 0.778133,
		-0.717647, 0.301619, -0.627701,
		27.408657, 38.440948, 33.798252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337101, 37.854424, 34.472271>,  <27.911009, 38.229816, 34.237640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337101, 37.854424, 34.472271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211693, 38.007046, 34.124451>,  <27.136448, 38.098621, 33.915760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211693, 38.007046, 34.124451>,  <27.337101, 37.854424, 34.472271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211693, 38.007046, 34.124451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653634, -0.750969, -0.093853,
		-0.688816, 0.538943, 0.484843,
		-0.313521, 0.381558, -0.869551,
		27.117636, 38.121513, 33.863586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589079, 37.792789, 34.467491>,  <27.337101, 37.854424, 34.472271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589079, 37.792789, 34.467491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708517, 37.806759, 34.085995>,  <26.780180, 37.815140, 33.857098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708517, 37.806759, 34.085995>,  <26.589079, 37.792789, 34.467491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708517, 37.806759, 34.085995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549434, -0.810825, -0.201705,
		-0.780361, 0.584246, -0.222922,
		0.298596, 0.034921, -0.953741,
		26.798096, 37.817234, 33.799873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938660, 37.769478, 34.052174>,  <26.589079, 37.792789, 34.467491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938660, 37.769478, 34.052174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234253, 37.638821, 33.816479>,  <26.411610, 37.560425, 33.675060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234253, 37.638821, 33.816479>,  <25.938660, 37.769478, 34.052174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234253, 37.638821, 33.816479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559740, -0.784427, -0.267142,
		-0.374955, 0.527236, -0.762516,
		0.738985, -0.326645, -0.589240,
		26.455948, 37.540829, 33.639706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579412, 37.535946, 33.473320>,  <25.938660, 37.769478, 34.052174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579412, 37.535946, 33.473320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936241, 37.366009, 33.411713>,  <26.150339, 37.264046, 33.374748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936241, 37.366009, 33.411713>,  <25.579412, 37.535946, 33.473320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936241, 37.366009, 33.411713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443082, -0.889287, -0.113347,
		-0.088810, 0.169355, -0.981546,
		0.892072, -0.424839, -0.154016,
		26.203863, 37.238556, 33.365509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474358, 37.093948, 32.835358>,  <25.579412, 37.535946, 33.473320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474358, 37.093948, 32.835358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784466, 36.945183, 33.039566>,  <25.970530, 36.855923, 33.162090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784466, 36.945183, 33.039566>,  <25.474358, 37.093948, 32.835358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784466, 36.945183, 33.039566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386048, -0.918732, -0.083057,
		0.499927, -0.132696, -0.855842,
		0.775268, -0.371919, 0.510525,
		26.017046, 36.833607, 33.192722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624413, 36.473923, 32.542896>,  <25.474358, 37.093948, 32.835358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624413, 36.473923, 32.542896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773230, 36.475838, 32.914177>,  <25.862520, 36.476986, 33.136944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773230, 36.475838, 32.914177>,  <25.624413, 36.473923, 32.542896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773230, 36.475838, 32.914177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198896, -0.976349, 0.084756,
		0.906655, -0.216149, -0.362294,
		0.372045, 0.004785, 0.928202,
		25.884844, 36.477272, 33.192638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079922, 35.933403, 32.591000>,  <25.624413, 36.473923, 32.542896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079922, 35.933403, 32.591000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961475, 35.992802, 32.968414>,  <25.890408, 36.028439, 33.194862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961475, 35.992802, 32.968414>,  <26.079922, 35.933403, 32.591000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961475, 35.992802, 32.968414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094903, -0.987527, 0.125632,
		0.950426, -0.052343, 0.306515,
		-0.296116, 0.148493, 0.943539,
		25.872641, 36.037350, 33.251476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441559, 35.566517, 33.059593>,  <26.079922, 35.933403, 32.591000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441559, 35.566517, 33.059593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086309, 35.606964, 33.238930>,  <25.873159, 35.631233, 33.346531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086309, 35.606964, 33.238930>,  <26.441559, 35.566517, 33.059593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086309, 35.606964, 33.238930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075488, -0.994342, 0.074734,
		0.453362, 0.032529, 0.890733,
		-0.888124, 0.101121, 0.448341,
		25.819872, 35.637299, 33.373432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385014, 34.939388, 33.407547>,  <26.441559, 35.566517, 33.059593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385014, 34.939388, 33.407547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006426, 35.067184, 33.425953>,  <25.779272, 35.143864, 33.436996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006426, 35.067184, 33.425953>,  <26.385014, 34.939388, 33.407547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006426, 35.067184, 33.425953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304641, -0.931267, 0.199839,
		0.106702, 0.175122, 0.978747,
		-0.946471, 0.319490, 0.046019,
		25.722485, 35.163033, 33.439758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066650, 34.706100, 33.986332>,  <26.385014, 34.939388, 33.407547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066650, 34.706100, 33.986332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772552, 34.770035, 33.722858>,  <25.596094, 34.808395, 33.564774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772552, 34.770035, 33.722858>,  <26.066650, 34.706100, 33.986332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772552, 34.770035, 33.722858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365347, -0.911996, 0.186508,
		-0.570910, 0.377779, 0.728934,
		-0.735243, 0.159835, -0.658688,
		25.551979, 34.817986, 33.525253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429714, 34.561737, 34.680851>,  <26.066650, 34.706100, 33.986332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429714, 34.561737, 34.680851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732981, 34.304996, 34.726822>,  <26.914940, 34.150951, 34.754406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732981, 34.304996, 34.726822>,  <26.429714, 34.561737, 34.680851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732981, 34.304996, 34.726822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120513, -0.311147, -0.942690,
		0.640828, 0.700865, -0.313253,
		0.758166, -0.641853, 0.114928,
		26.960430, 34.112442, 34.761299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979593, 34.689880, 34.149277>,  <26.429714, 34.561737, 34.680851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979593, 34.689880, 34.149277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953255, 34.319923, 34.299072>,  <26.937452, 34.097950, 34.388950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953255, 34.319923, 34.299072>,  <26.979593, 34.689880, 34.149277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953255, 34.319923, 34.299072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219137, -0.352740, -0.909700,
		0.973470, -0.141966, -0.179450,
		-0.065847, -0.924890, 0.374491,
		26.933500, 34.042458, 34.411419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415358, 34.269558, 33.739185>,  <26.979593, 34.689880, 34.149277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415358, 34.269558, 33.739185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094648, 34.072987, 33.875217>,  <26.902224, 33.955044, 33.956837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094648, 34.072987, 33.875217>,  <27.415358, 34.269558, 33.739185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094648, 34.072987, 33.875217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173313, -0.353397, -0.919279,
		0.571946, -0.795993, 0.198172,
		-0.801773, -0.491432, 0.340080,
		26.854116, 33.925556, 33.977242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180407, 34.387794, 33.636295>,  <27.415358, 34.269558, 33.739185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180407, 34.387794, 33.636295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030867, 34.758686, 33.627453>,  <27.941143, 34.981220, 33.622147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030867, 34.758686, 33.627453>,  <28.180407, 34.387794, 33.636295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030867, 34.758686, 33.627453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172882, 0.046253, -0.983856,
		-0.911235, -0.371634, -0.177592,
		-0.373848, 0.927226, -0.022101,
		27.918713, 35.036854, 33.620823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730629, 34.217770, 33.210697>,  <28.180407, 34.387794, 33.636295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730629, 34.217770, 33.210697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055285, 33.988770, 33.164242>,  <29.250078, 33.851368, 33.136368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055285, 33.988770, 33.164242>,  <28.730629, 34.217770, 33.210697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055285, 33.988770, 33.164242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452439, 0.490307, 0.744915,
		-0.369518, -0.657149, 0.656972,
		0.811638, -0.572499, -0.116143,
		29.298777, 33.817020, 33.129398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939043, 34.067497, 33.947006>,  <28.730629, 34.217770, 33.210697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939043, 34.067497, 33.947006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236637, 34.099018, 33.681591>,  <29.415194, 34.117931, 33.522343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236637, 34.099018, 33.681591>,  <28.939043, 34.067497, 33.947006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236637, 34.099018, 33.681591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511021, 0.572703, 0.640991,
		0.430519, -0.815967, 0.385813,
		0.743983, 0.078800, -0.663535,
		29.459833, 34.122658, 33.482529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525856, 33.745354, 34.234344>,  <28.939043, 34.067497, 33.947006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525856, 33.745354, 34.234344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680899, 33.988251, 33.956921>,  <29.773924, 34.133987, 33.790466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680899, 33.988251, 33.956921>,  <29.525856, 33.745354, 34.234344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680899, 33.988251, 33.956921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527426, 0.470969, 0.707114,
		0.756031, -0.639882, -0.137724,
		0.387606, 0.607239, -0.693557,
		29.797180, 34.170422, 33.748852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225161, 34.012001, 34.551495>,  <29.525856, 33.745354, 34.234344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225161, 34.012001, 34.551495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124201, 34.258205, 34.252850>,  <30.063625, 34.405930, 34.073662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124201, 34.258205, 34.252850>,  <30.225161, 34.012001, 34.551495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124201, 34.258205, 34.252850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522988, 0.735964, 0.429930,
		0.814111, -0.281957, -0.507665,
		-0.252401, 0.615514, -0.746616,
		30.048481, 34.442860, 34.028866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840628, 34.280128, 34.340485>,  <30.225161, 34.012001, 34.551495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840628, 34.280128, 34.340485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542641, 34.526821, 34.238770>,  <30.363848, 34.674835, 34.177742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542641, 34.526821, 34.238770>,  <30.840628, 34.280128, 34.340485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542641, 34.526821, 34.238770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403481, 0.720119, 0.564474,
		0.531247, 0.317915, -0.785307,
		-0.744969, 0.616732, -0.254288,
		30.319149, 34.711842, 34.162483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147419, 34.955387, 34.379421>,  <30.840628, 34.280128, 34.340485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147419, 34.955387, 34.379421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758673, 35.049564, 34.376823>,  <30.525425, 35.106071, 34.375263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758673, 35.049564, 34.376823>,  <31.147419, 34.955387, 34.379421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758673, 35.049564, 34.376823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177425, 0.749955, 0.637250,
		0.154911, 0.618169, -0.770630,
		-0.971866, 0.235446, -0.006497,
		30.467113, 35.120197, 34.374874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212793, 35.608124, 34.429295>,  <31.147419, 34.955387, 34.379421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212793, 35.608124, 34.429295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837584, 35.529526, 34.543484>,  <30.612457, 35.482368, 34.612000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837584, 35.529526, 34.543484>,  <31.212793, 35.608124, 34.429295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837584, 35.529526, 34.543484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043029, 0.751332, 0.658520,
		-0.343882, 0.629994, -0.696314,
		-0.938027, -0.196491, 0.285477,
		30.556175, 35.470577, 34.629128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705061, 36.262775, 34.428551>,  <31.212793, 35.608124, 34.429295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705061, 36.262775, 34.428551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543663, 35.989002, 34.671448>,  <30.446825, 35.824738, 34.817184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543663, 35.989002, 34.671448>,  <30.705061, 36.262775, 34.428551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543663, 35.989002, 34.671448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132070, 0.700281, 0.701544,
		-0.905401, 0.202871, -0.372952,
		-0.403494, -0.684434, 0.607242,
		30.422615, 35.783672, 34.853619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205933, 36.675457, 34.830135>,  <30.705061, 36.262775, 34.428551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205933, 36.675457, 34.830135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256901, 36.347893, 35.053974>,  <30.287481, 36.151356, 35.188278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256901, 36.347893, 35.053974>,  <30.205933, 36.675457, 34.830135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256901, 36.347893, 35.053974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221130, 0.526542, 0.820887,
		-0.966885, -0.228341, -0.113993,
		0.127420, -0.818910, 0.559599,
		30.295126, 36.102219, 35.221855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670437, 36.705921, 35.332100>,  <30.205933, 36.675457, 34.830135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670437, 36.705921, 35.332100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963209, 36.462990, 35.455666>,  <30.138872, 36.317230, 35.529804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963209, 36.462990, 35.455666>,  <29.670437, 36.705921, 35.332100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963209, 36.462990, 35.455666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022562, 0.431511, 0.901826,
		-0.681004, -0.667045, 0.302134,
		0.731932, -0.607330, 0.308910,
		30.182789, 36.280792, 35.548340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325731, 36.433678, 35.964821>,  <29.670437, 36.705921, 35.332100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325731, 36.433678, 35.964821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721359, 36.378998, 35.986912>,  <29.958736, 36.346191, 36.000168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721359, 36.378998, 35.986912>,  <29.325731, 36.433678, 35.964821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721359, 36.378998, 35.986912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007767, 0.325766, 0.945419,
		-0.147229, -0.935516, 0.321144,
		0.989072, -0.136698, 0.055228,
		30.018082, 36.337990, 36.003479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471718, 35.921360, 36.516518>,  <29.325731, 36.433678, 35.964821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471718, 35.921360, 36.516518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795437, 36.149746, 36.461327>,  <29.989668, 36.286777, 36.428211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795437, 36.149746, 36.461327>,  <29.471718, 35.921360, 36.516518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795437, 36.149746, 36.461327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067300, 0.143226, 0.987399,
		0.583530, -0.808386, 0.077486,
		0.809298, 0.570962, -0.137981,
		30.038227, 36.321033, 36.419933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813471, 35.699818, 37.129311>,  <29.471718, 35.921360, 36.516518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813471, 35.699818, 37.129311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999058, 36.029911, 37.000484>,  <30.110409, 36.227966, 36.923187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999058, 36.029911, 37.000484>,  <29.813471, 35.699818, 37.129311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999058, 36.029911, 37.000484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203988, 0.254269, 0.945376,
		0.862047, -0.504320, -0.050365,
		0.463966, 0.825232, -0.322067,
		30.138248, 36.277481, 36.903866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419626, 35.879242, 37.571804>,  <29.813471, 35.699818, 37.129311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419626, 35.879242, 37.571804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313293, 36.220787, 37.392803>,  <30.249495, 36.425713, 37.285404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313293, 36.220787, 37.392803>,  <30.419626, 35.879242, 37.571804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313293, 36.220787, 37.392803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068812, 0.479828, 0.874660,
		0.961560, 0.201719, -0.186310,
		-0.265833, 0.853858, -0.447503,
		30.233543, 36.476944, 37.258553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956669, 36.417114, 37.809692>,  <30.419626, 35.879242, 37.571804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956669, 36.417114, 37.809692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622448, 36.600101, 37.687988>,  <30.421915, 36.709896, 37.614967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622448, 36.600101, 37.687988>,  <30.956669, 36.417114, 37.809692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622448, 36.600101, 37.687988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112843, 0.684879, 0.719866,
		0.537698, 0.567152, -0.623874,
		-0.835552, 0.457470, -0.304259,
		30.371782, 36.737343, 37.596710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175659, 37.067879, 37.997173>,  <30.956669, 36.417114, 37.809692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175659, 37.067879, 37.997173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785475, 37.062710, 37.909252>,  <30.551365, 37.059608, 37.856499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785475, 37.062710, 37.909252>,  <31.175659, 37.067879, 37.997173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785475, 37.062710, 37.909252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167569, 0.691133, 0.703033,
		0.142827, 0.722612, -0.676338,
		-0.975459, -0.012921, -0.219799,
		30.492836, 37.058834, 37.843311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962008, 37.763981, 38.017601>,  <31.175659, 37.067879, 37.997173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962008, 37.763981, 38.017601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651733, 37.515133, 38.060078>,  <30.465569, 37.365822, 38.085564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651733, 37.515133, 38.060078>,  <30.962008, 37.763981, 38.017601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651733, 37.515133, 38.060078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318262, 0.530883, 0.785412,
		-0.544996, 0.575437, -0.609796,
		-0.775686, -0.622122, 0.106189,
		30.419027, 37.328495, 38.091934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535999, 38.146286, 38.095184>,  <30.962008, 37.763981, 38.017601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535999, 38.146286, 38.095184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336842, 37.840137, 38.258305>,  <30.217348, 37.656448, 38.356178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336842, 37.840137, 38.258305>,  <30.535999, 38.146286, 38.095184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336842, 37.840137, 38.258305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366567, 0.611892, 0.700868,
		-0.785959, 0.199469, -0.585218,
		-0.497892, -0.765376, 0.407803,
		30.187473, 37.610523, 38.380646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854599, 38.364594, 38.219898>,  <30.535999, 38.146286, 38.095184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854599, 38.364594, 38.219898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923199, 38.040382, 38.443909>,  <29.964357, 37.845856, 38.578316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923199, 38.040382, 38.443909>,  <29.854599, 38.364594, 38.219898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923199, 38.040382, 38.443909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418412, 0.454714, 0.786236,
		-0.891919, -0.369160, -0.261153,
		0.171497, -0.810528, 0.560029,
		29.974648, 37.797222, 38.611916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167606, 38.140583, 38.406429>,  <29.854599, 38.364594, 38.219898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167606, 38.140583, 38.406429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421438, 37.997185, 38.680302>,  <29.573736, 37.911148, 38.844627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421438, 37.997185, 38.680302>,  <29.167606, 38.140583, 38.406429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421438, 37.997185, 38.680302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503499, 0.480350, 0.718159,
		-0.586344, -0.800466, 0.124318,
		0.634578, -0.358494, 0.684685,
		29.611811, 37.889637, 38.885708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681396, 37.931381, 38.919701>,  <29.167606, 38.140583, 38.406429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681396, 37.931381, 38.919701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041761, 37.930645, 39.093300>,  <29.257980, 37.930202, 39.197460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041761, 37.930645, 39.093300>,  <28.681396, 37.931381, 38.919701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041761, 37.930645, 39.093300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391051, 0.430319, 0.813575,
		-0.188256, -0.902675, 0.386959,
		0.900910, -0.001840, 0.434002,
		29.312035, 37.930092, 39.223499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477203, 37.754635, 39.554859>,  <28.681396, 37.931381, 38.919701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477203, 37.754635, 39.554859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837872, 37.925728, 39.580261>,  <29.054272, 38.028385, 39.595501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837872, 37.925728, 39.580261>,  <28.477203, 37.754635, 39.554859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837872, 37.925728, 39.580261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265617, 0.431961, 0.861892,
		0.341229, -0.794011, 0.503100,
		0.901671, 0.427734, 0.063505,
		29.108372, 38.054050, 39.599312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681868, 37.731049, 40.262424>,  <28.477203, 37.754635, 39.554859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681868, 37.731049, 40.262424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924814, 38.027527, 40.148071>,  <29.070583, 38.205414, 40.079460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924814, 38.027527, 40.148071>,  <28.681868, 37.731049, 40.262424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924814, 38.027527, 40.148071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197501, 0.489446, 0.849374,
		0.769479, -0.459420, 0.443662,
		0.607368, 0.741199, -0.285882,
		29.107025, 38.249886, 40.062305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044888, 37.815109, 40.830566>,  <28.681868, 37.731049, 40.262424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044888, 37.815109, 40.830566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087933, 38.152035, 40.619312>,  <29.113760, 38.354191, 40.492561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087933, 38.152035, 40.619312>,  <29.044888, 37.815109, 40.830566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087933, 38.152035, 40.619312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142614, 0.538801, 0.830274,
		0.983911, -0.014031, 0.178109,
		0.107615, 0.842317, -0.528131,
		29.120216, 38.404728, 40.460873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411804, 38.269768, 41.255081>,  <29.044888, 37.815109, 40.830566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411804, 38.269768, 41.255081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210766, 38.504852, 41.001469>,  <29.090143, 38.645905, 40.849300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210766, 38.504852, 41.001469>,  <29.411804, 38.269768, 41.255081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210766, 38.504852, 41.001469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156351, 0.659502, 0.735263,
		0.850267, 0.468670, -0.239573,
		-0.502594, 0.587712, -0.634030,
		29.059988, 38.681168, 40.811260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662472, 39.000656, 41.354263>,  <29.411804, 38.269768, 41.255081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662472, 39.000656, 41.354263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305519, 39.045788, 41.179482>,  <29.091349, 39.072868, 41.074612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305519, 39.045788, 41.179482>,  <29.662472, 39.000656, 41.354263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305519, 39.045788, 41.179482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245036, 0.691927, 0.679113,
		0.378964, 0.713096, -0.589814,
		-0.892381, 0.112834, -0.436950,
		29.037806, 39.079639, 41.048397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574387, 39.681526, 41.429447>,  <29.662472, 39.000656, 41.354263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574387, 39.681526, 41.429447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197298, 39.567696, 41.359833>,  <28.971045, 39.499397, 41.318062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197298, 39.567696, 41.359833>,  <29.574387, 39.681526, 41.429447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197298, 39.567696, 41.359833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332556, 0.761010, 0.557020,
		-0.026071, 0.582993, -0.812059,
		-0.942723, -0.284577, -0.174038,
		28.914480, 39.482323, 41.307621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161230, 40.330887, 41.209923>,  <29.574387, 39.681526, 41.429447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161230, 40.330887, 41.209923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908140, 40.049435, 41.339268>,  <28.756287, 39.880566, 41.416874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908140, 40.049435, 41.339268>,  <29.161230, 40.330887, 41.209923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908140, 40.049435, 41.339268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450761, 0.674204, 0.585033,
		-0.629659, 0.224405, -0.743755,
		-0.632727, -0.703627, 0.323366,
		28.718323, 39.838348, 41.436279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502523, 40.645710, 41.144493>,  <29.161230, 40.330887, 41.209923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502523, 40.645710, 41.144493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447235, 40.345623, 41.403126>,  <28.414062, 40.165573, 41.558308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447235, 40.345623, 41.403126>,  <28.502523, 40.645710, 41.144493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447235, 40.345623, 41.403126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539202, 0.604619, 0.586257,
		-0.830756, -0.267606, -0.488089,
		-0.138222, -0.750215, 0.646585,
		28.405769, 40.120560, 41.597103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840582, 40.708447, 41.257511>,  <28.502523, 40.645710, 41.144493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840582, 40.708447, 41.257511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984905, 40.501205, 41.567707>,  <28.071499, 40.376862, 41.753826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984905, 40.501205, 41.567707>,  <27.840582, 40.708447, 41.257511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984905, 40.501205, 41.567707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696454, 0.403356, 0.593512,
		-0.620298, -0.754240, -0.215297,
		0.360808, -0.518098, 0.775494,
		28.093147, 40.345776, 41.800354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204639, 40.676548, 41.654808>,  <27.840582, 40.708447, 41.257511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204639, 40.676548, 41.654808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492767, 40.562340, 41.907669>,  <27.665644, 40.493813, 42.059387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492767, 40.562340, 41.907669>,  <27.204639, 40.676548, 41.654808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492767, 40.562340, 41.907669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548378, 0.323667, 0.771052,
		-0.424761, -0.902062, 0.076568,
		0.720319, -0.285525, 0.632152,
		27.708862, 40.476681, 42.097313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930275, 40.341145, 42.198807>,  <27.204639, 40.676548, 41.654808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930275, 40.341145, 42.198807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275280, 40.462391, 42.360889>,  <27.482283, 40.535137, 42.458141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275280, 40.462391, 42.360889>,  <26.930275, 40.341145, 42.198807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275280, 40.462391, 42.360889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485506, 0.269905, 0.831526,
		0.142679, -0.913932, 0.379961,
		0.862512, 0.303115, 0.405210,
		27.534033, 40.553326, 42.482452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981508, 39.998829, 42.748234>,  <26.930275, 40.341145, 42.198807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981508, 39.998829, 42.748234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207064, 40.323780, 42.807655>,  <27.342398, 40.518749, 42.843307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207064, 40.323780, 42.807655>,  <26.981508, 39.998829, 42.748234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207064, 40.323780, 42.807655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553530, 0.238288, 0.798012,
		0.612888, -0.532222, 0.584044,
		0.563891, 0.812378, 0.148557,
		27.376230, 40.567493, 42.852222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228573, 40.091309, 43.504406>,  <26.981508, 39.998829, 42.748234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228573, 40.091309, 43.504406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260000, 40.464237, 43.363209>,  <27.278856, 40.687996, 43.278492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260000, 40.464237, 43.363209>,  <27.228573, 40.091309, 43.504406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260000, 40.464237, 43.363209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288928, 0.360182, 0.887012,
		0.954122, 0.032299, 0.297672,
		0.078566, 0.932323, -0.352990,
		27.283569, 40.743935, 43.257313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653540, 40.415615, 43.923698>,  <27.228573, 40.091309, 43.504406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653540, 40.415615, 43.923698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444010, 40.711319, 43.754417>,  <27.318293, 40.888741, 43.652847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444010, 40.711319, 43.754417>,  <27.653540, 40.415615, 43.923698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444010, 40.711319, 43.754417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194654, 0.379790, 0.904361,
		0.829287, 0.556105, -0.055043,
		-0.523825, 0.739261, -0.423203,
		27.286861, 40.933098, 43.627457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012121, 41.082523, 43.959183>,  <27.653540, 40.415615, 43.923698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012121, 41.082523, 43.959183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616396, 41.138325, 43.942196>,  <27.378962, 41.171806, 43.932003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616396, 41.138325, 43.942196>,  <28.012121, 41.082523, 43.959183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616396, 41.138325, 43.942196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021587, 0.428142, 0.903454,
		0.144215, 0.892880, -0.426576,
		-0.989311, 0.139500, -0.042470,
		27.319603, 41.180176, 43.929455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864134, 41.171368, 44.621658>,  <28.012121, 41.082523, 43.959183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864134, 41.171368, 44.621658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494923, 41.254601, 44.492214>,  <27.273396, 41.304539, 44.414547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494923, 41.254601, 44.492214>,  <27.864134, 41.171368, 44.621658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494923, 41.254601, 44.492214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271529, 0.243590, 0.931094,
		0.272572, 0.947294, -0.168340,
		-0.923026, 0.208081, -0.323613,
		27.218016, 41.317024, 44.395130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605970, 41.879925, 44.887543>,  <27.864134, 41.171368, 44.621658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605970, 41.879925, 44.887543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273670, 41.684063, 44.781643>,  <27.074289, 41.566547, 44.718105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273670, 41.684063, 44.781643>,  <27.605970, 41.879925, 44.887543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273670, 41.684063, 44.781643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453593, 0.319807, 0.831851,
		-0.322652, 0.811149, -0.487784,
		-0.830752, -0.489654, -0.264745,
		27.024445, 41.537167, 44.702221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958012, 42.402363, 44.794071>,  <27.605970, 41.879925, 44.887543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958012, 42.402363, 44.794071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821007, 42.037758, 44.885139>,  <26.738804, 41.818996, 44.939781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821007, 42.037758, 44.885139>,  <26.958012, 42.402363, 44.794071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821007, 42.037758, 44.885139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537691, 0.388901, 0.748094,
		-0.770437, 0.133814, -0.623314,
		-0.342512, -0.911510, 0.227673,
		26.718252, 41.764305, 44.953442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292931, 42.518467, 44.939678>,  <26.958012, 42.402363, 44.794071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292931, 42.518467, 44.939678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430613, 42.187611, 45.117378>,  <26.513222, 41.989098, 45.223999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430613, 42.187611, 45.117378>,  <26.292931, 42.518467, 44.939678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430613, 42.187611, 45.117378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485052, 0.248471, 0.838443,
		-0.803894, -0.504082, -0.315682,
		0.344207, -0.827142, 0.444251,
		26.533875, 41.939468, 45.250652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744595, 42.372711, 45.300087>,  <26.292931, 42.518467, 44.939678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744595, 42.372711, 45.300087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039585, 42.173504, 45.482559>,  <26.216579, 42.053978, 45.592041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039585, 42.173504, 45.482559>,  <25.744595, 42.372711, 45.300087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039585, 42.173504, 45.482559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483804, 0.081720, 0.871353,
		-0.471233, -0.863304, -0.180680,
		0.737478, -0.498024, 0.456179,
		26.260828, 42.024097, 45.619411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433464, 41.849514, 45.721268>,  <25.744595, 42.372711, 45.300087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433464, 41.849514, 45.721268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798132, 41.927429, 45.865997>,  <26.016933, 41.974178, 45.952835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798132, 41.927429, 45.865997>,  <25.433464, 41.849514, 45.721268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798132, 41.927429, 45.865997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365006, -0.020591, 0.930777,
		0.188754, -0.980629, 0.052326,
		0.911670, 0.194787, 0.361823,
		26.071632, 41.985867, 45.974545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659424, 41.246254, 46.216438>,  <25.433464, 41.849514, 45.721268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659424, 41.246254, 46.216438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779127, 41.620449, 46.291592>,  <25.850948, 41.844967, 46.336685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779127, 41.620449, 46.291592>,  <25.659424, 41.246254, 46.216438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779127, 41.620449, 46.291592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552298, 0.009258, 0.833595,
		0.778082, -0.353227, 0.519441,
		0.299257, 0.935492, 0.187883,
		25.868904, 41.901096, 46.347958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828840, 41.190945, 46.876602>,  <25.659424, 41.246254, 46.216438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828840, 41.190945, 46.876602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695045, 41.554615, 46.777386>,  <25.614769, 41.772816, 46.717857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695045, 41.554615, 46.777386>,  <25.828840, 41.190945, 46.876602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695045, 41.554615, 46.777386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837082, -0.165722, 0.521372,
		0.432911, 0.382024, 0.816484,
		-0.334486, 0.909172, -0.248043,
		25.594700, 41.827366, 46.702972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417389, 41.439781, 47.462074>,  <25.828840, 41.190945, 46.876602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417389, 41.439781, 47.462074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286024, 41.649445, 47.147774>,  <25.207205, 41.775242, 46.959194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286024, 41.649445, 47.147774>,  <25.417389, 41.439781, 47.462074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286024, 41.649445, 47.147774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917645, 0.020019, 0.396896,
		0.223767, 0.851384, 0.474419,
		-0.328414, 0.524161, -0.785748,
		25.187500, 41.806694, 46.912048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909466, 41.849937, 47.905621>,  <25.417389, 41.439781, 47.462074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909466, 41.849937, 47.905621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695847, 42.185131, 47.860756>,  <25.567675, 42.386246, 47.833839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695847, 42.185131, 47.860756>,  <25.909466, 41.849937, 47.905621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695847, 42.185131, 47.860756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269819, -0.294654, -0.916721,
		-0.801244, -0.459309, 0.383463,
		-0.534047, 0.837982, -0.112159,
		25.535633, 42.436527, 47.827106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740042, 41.705597, 48.596363>,  <25.909466, 41.849937, 47.905621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740042, 41.705597, 48.596363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469532, 41.723141, 48.302227>,  <25.307226, 41.733665, 48.125744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469532, 41.723141, 48.302227>,  <25.740042, 41.705597, 48.596363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469532, 41.723141, 48.302227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570529, 0.600280, 0.560501,
		0.465993, 0.798587, -0.380933,
		-0.676275, 0.043856, -0.735343,
		25.266649, 41.736298, 48.081623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304930, 41.145508, 48.572170>,  <25.740042, 41.705597, 48.596363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304930, 41.145508, 48.572170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571697, 40.918427, 48.765221>,  <26.731758, 40.782177, 48.881050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571697, 40.918427, 48.765221>,  <26.304930, 41.145508, 48.572170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571697, 40.918427, 48.765221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052337, -0.681796, -0.729668,
		0.743289, 0.461371, -0.484415,
		0.666920, -0.567707, 0.482624,
		26.771774, 40.748116, 48.910007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078060, 41.030121, 48.197140>,  <26.304930, 41.145508, 48.572170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078060, 41.030121, 48.197140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908806, 40.736065, 48.409000>,  <26.807253, 40.559631, 48.536118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908806, 40.736065, 48.409000>,  <27.078060, 41.030121, 48.197140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908806, 40.736065, 48.409000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007661, -0.587444, -0.809228,
		0.906035, -0.338354, 0.254200,
		-0.423134, -0.735137, 0.529653,
		26.781866, 40.515526, 48.567898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458374, 40.226154, 48.210148>,  <27.078060, 41.030121, 48.197140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458374, 40.226154, 48.210148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059528, 40.256344, 48.213505>,  <26.820221, 40.274456, 48.215519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059528, 40.256344, 48.213505>,  <27.458374, 40.226154, 48.210148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059528, 40.256344, 48.213505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058696, -0.695896, -0.715740,
		-0.048177, -0.714166, 0.698317,
		-0.997113, 0.075471, 0.008392,
		26.760395, 40.278984, 48.216022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140484, 39.604965, 48.389370>,  <27.458374, 40.226154, 48.210148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140484, 39.604965, 48.389370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935879, 39.823978, 48.124474>,  <26.813116, 39.955387, 47.965534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935879, 39.823978, 48.124474>,  <27.140484, 39.604965, 48.389370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935879, 39.823978, 48.124474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226375, -0.657602, -0.718550,
		-0.828921, -0.517462, 0.212424,
		-0.511513, 0.547533, -0.662240,
		26.782425, 39.988239, 47.925800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985518, 39.193481, 47.769859>,  <27.140484, 39.604965, 48.389370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985518, 39.193481, 47.769859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863453, 39.552853, 47.643555>,  <26.790215, 39.768475, 47.567772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863453, 39.552853, 47.643555>,  <26.985518, 39.193481, 47.769859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863453, 39.552853, 47.643555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213581, -0.258561, -0.942088,
		-0.928041, -0.354928, -0.112985,
		-0.305160, 0.898428, -0.315761,
		26.771906, 39.822380, 47.548828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502802, 39.140724, 47.290848>,  <26.985518, 39.193481, 47.769859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502802, 39.140724, 47.290848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629873, 39.508045, 47.196354>,  <26.706116, 39.728436, 47.139656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629873, 39.508045, 47.196354>,  <26.502802, 39.140724, 47.290848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629873, 39.508045, 47.196354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244875, -0.320143, -0.915175,
		-0.916033, 0.232885, -0.326571,
		0.317680, 0.918299, -0.236233,
		26.725178, 39.783535, 47.125484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159418, 39.498646, 46.683506>,  <26.502802, 39.140724, 47.290848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159418, 39.498646, 46.683506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531927, 39.639809, 46.719700>,  <26.755432, 39.724506, 46.741417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531927, 39.639809, 46.719700>,  <26.159418, 39.498646, 46.683506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531927, 39.639809, 46.719700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209819, -0.316482, -0.925103,
		-0.297835, 0.880509, -0.368778,
		0.931273, 0.352905, 0.090488,
		26.811310, 39.745682, 46.746845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268305, 39.885918, 46.143353>,  <26.159418, 39.498646, 46.683506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268305, 39.885918, 46.143353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623119, 39.775234, 46.291191>,  <26.836008, 39.708824, 46.379894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623119, 39.775234, 46.291191>,  <26.268305, 39.885918, 46.143353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623119, 39.775234, 46.291191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250252, -0.384565, -0.888529,
		0.388000, 0.880648, -0.271875,
		0.887034, -0.276712, 0.369595,
		26.889229, 39.692223, 46.402069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673443, 39.812687, 45.520668>,  <26.268305, 39.885918, 46.143353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673443, 39.812687, 45.520668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919464, 39.650806, 45.791348>,  <27.067078, 39.553677, 45.953754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919464, 39.650806, 45.791348>,  <26.673443, 39.812687, 45.520668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919464, 39.650806, 45.791348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552045, -0.391760, -0.736051,
		0.562986, 0.826281, -0.017539,
		0.615055, -0.404704, 0.676699,
		27.103981, 39.529396, 45.994358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340891, 39.833866, 45.199120>,  <26.673443, 39.812687, 45.520668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340891, 39.833866, 45.199120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360634, 39.548889, 45.479115>,  <27.372480, 39.377903, 45.647114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360634, 39.548889, 45.479115>,  <27.340891, 39.833866, 45.199120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360634, 39.548889, 45.479115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664435, -0.499846, -0.555590,
		0.745714, 0.492522, 0.448700,
		0.049360, -0.712444, 0.699991,
		27.375443, 39.335155, 45.689114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104073, 39.751381, 45.303207>,  <27.340891, 39.833866, 45.199120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104073, 39.751381, 45.303207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888033, 39.423939, 45.381355>,  <27.758410, 39.227470, 45.428246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888033, 39.423939, 45.381355>,  <28.104073, 39.751381, 45.303207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888033, 39.423939, 45.381355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649605, -0.553088, -0.521638,
		0.535074, -0.154824, 0.830497,
		-0.540100, -0.818610, 0.195369,
		27.726004, 39.178356, 45.439964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543528, 39.226250, 45.193584>,  <28.104073, 39.751381, 45.303207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543528, 39.226250, 45.193584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208370, 39.010578, 45.227581>,  <28.007277, 38.881176, 45.247978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208370, 39.010578, 45.227581>,  <28.543528, 39.226250, 45.193584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208370, 39.010578, 45.227581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431072, -0.749170, -0.502912,
		0.334835, -0.384747, 0.860148,
		-0.837892, -0.539178, 0.084995,
		27.957003, 38.848824, 45.253078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737272, 38.517139, 45.248199>,  <28.543528, 39.226250, 45.193584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737272, 38.517139, 45.248199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352995, 38.480667, 45.143314>,  <28.122429, 38.458786, 45.080383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352995, 38.480667, 45.143314>,  <28.737272, 38.517139, 45.248199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352995, 38.480667, 45.143314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260055, -0.626136, -0.735068,
		-0.097157, -0.774365, 0.625236,
		-0.960693, -0.091178, -0.262211,
		28.064787, 38.453312, 45.064651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544191, 37.798153, 45.315357>,  <28.737272, 38.517139, 45.248199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544191, 37.798153, 45.315357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311131, 37.992649, 45.054871>,  <28.171293, 38.109348, 44.898579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311131, 37.992649, 45.054871>,  <28.544191, 37.798153, 45.315357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311131, 37.992649, 45.054871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186926, -0.699621, -0.689629,
		-0.790933, -0.523544, 0.316745,
		-0.582653, 0.486242, -0.651217,
		28.136333, 38.138523, 44.859505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400688, 37.339973, 44.858738>,  <28.544191, 37.798153, 45.315357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400688, 37.339973, 44.858738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238129, 37.637119, 44.645954>,  <28.140593, 37.815407, 44.518284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238129, 37.637119, 44.645954>,  <28.400688, 37.339973, 44.858738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238129, 37.637119, 44.645954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243891, -0.472887, -0.846696,
		-0.880543, -0.473839, 0.011003,
		-0.406401, 0.742869, -0.531962,
		28.116209, 37.859982, 44.486366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836864, 37.156055, 44.443619>,  <28.400688, 37.339973, 44.858738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836864, 37.156055, 44.443619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973768, 37.472706, 44.241158>,  <28.055910, 37.662697, 44.119682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973768, 37.472706, 44.241158>,  <27.836864, 37.156055, 44.443619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973768, 37.472706, 44.241158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086603, -0.562972, -0.821926,
		-0.935605, 0.237479, -0.261241,
		0.342262, 0.791623, -0.506153,
		28.076447, 37.710194, 44.089314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652199, 36.959885, 43.848858>,  <27.836864, 37.156055, 44.443619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652199, 36.959885, 43.848858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891069, 37.269981, 43.766514>,  <28.034391, 37.456039, 43.717106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891069, 37.269981, 43.766514>,  <27.652199, 36.959885, 43.848858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891069, 37.269981, 43.766514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238010, -0.416359, -0.877495,
		-0.765984, 0.475021, -0.433155,
		0.597177, 0.775242, -0.205864,
		28.070223, 37.502556, 43.704754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420589, 37.250496, 43.255211>,  <27.652199, 36.959885, 43.848858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420589, 37.250496, 43.255211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806110, 37.348846, 43.296455>,  <28.037422, 37.407856, 43.321201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806110, 37.348846, 43.296455>,  <27.420589, 37.250496, 43.255211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806110, 37.348846, 43.296455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192790, -0.375559, -0.906525,
		-0.184165, 0.893590, -0.409366,
		0.963802, 0.245872, 0.103111,
		28.095251, 37.422607, 43.327389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653517, 37.578114, 42.637554>,  <27.420589, 37.250496, 43.255211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653517, 37.578114, 42.637554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020241, 37.505302, 42.779724>,  <28.240274, 37.461617, 42.865025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020241, 37.505302, 42.779724>,  <27.653517, 37.578114, 42.637554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020241, 37.505302, 42.779724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280007, -0.341530, -0.897192,
		0.284705, 0.922075, -0.262148,
		0.916809, -0.182031, 0.355423,
		28.295284, 37.450691, 42.886353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124506, 37.895603, 42.131329>,  <27.653517, 37.578114, 42.637554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124506, 37.895603, 42.131329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309948, 37.605816, 42.335377>,  <28.421213, 37.431946, 42.457806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309948, 37.605816, 42.335377>,  <28.124506, 37.895603, 42.131329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309948, 37.605816, 42.335377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247668, -0.446821, -0.859658,
		0.850724, 0.524881, -0.027722,
		0.463605, -0.724466, 0.510117,
		28.449030, 37.388477, 42.488411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676743, 37.841576, 41.775528>,  <28.124506, 37.895603, 42.131329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676743, 37.841576, 41.775528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666971, 37.505676, 41.992500>,  <28.661108, 37.304138, 42.122684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666971, 37.505676, 41.992500>,  <28.676743, 37.841576, 41.775528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666971, 37.505676, 41.992500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275875, -0.527189, -0.803719,
		0.960883, 0.130008, 0.244544,
		-0.024431, -0.839744, 0.542433,
		28.659641, 37.253754, 42.155231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168308, 37.493984, 41.521557>,  <28.676743, 37.841576, 41.775528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168308, 37.493984, 41.521557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967609, 37.198700, 41.701912>,  <28.847189, 37.021530, 41.810123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967609, 37.198700, 41.701912>,  <29.168308, 37.493984, 41.521557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967609, 37.198700, 41.701912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183832, -0.600340, -0.778330,
		0.845254, -0.307639, 0.436926,
		-0.501749, -0.738207, 0.450886,
		28.817085, 36.977238, 41.837177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598942, 36.815170, 41.438332>,  <29.168308, 37.493984, 41.521557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598942, 36.815170, 41.438332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207739, 36.749527, 41.489815>,  <28.973017, 36.710140, 41.520706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207739, 36.749527, 41.489815>,  <29.598942, 36.815170, 41.438332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207739, 36.749527, 41.489815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042633, -0.761420, -0.646856,
		0.204156, -0.627144, 0.751672,
		-0.978009, -0.164105, 0.128711,
		28.914335, 36.700294, 41.528427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678644, 36.139942, 41.489014>,  <29.598942, 36.815170, 41.438332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678644, 36.139942, 41.489014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295712, 36.222759, 41.408367>,  <29.065952, 36.272449, 41.359978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295712, 36.222759, 41.408367>,  <29.678644, 36.139942, 41.489014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295712, 36.222759, 41.408367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048166, -0.802209, -0.595097,
		-0.284953, -0.559993, 0.777952,
		-0.957331, 0.207045, -0.201619,
		29.008512, 36.284874, 41.347881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278070, 35.646690, 41.800472>,  <29.678644, 36.139942, 41.489014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278070, 35.646690, 41.800472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099819, 35.815273, 41.484550>,  <28.992868, 35.916424, 41.294998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099819, 35.815273, 41.484550>,  <29.278070, 35.646690, 41.800472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099819, 35.815273, 41.484550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008972, -0.884305, -0.466824,
		-0.895174, -0.200943, 0.397851,
		-0.445626, 0.421458, -0.789804,
		28.966131, 35.941711, 41.247608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035601, 35.052200, 41.480114>,  <29.278070, 35.646690, 41.800472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035601, 35.052200, 41.480114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926870, 35.320591, 41.204170>,  <28.861631, 35.481625, 41.038605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926870, 35.320591, 41.204170>,  <29.035601, 35.052200, 41.480114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926870, 35.320591, 41.204170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160517, -0.675195, -0.719963,
		-0.948865, -0.306439, 0.075834,
		-0.271827, 0.670974, -0.689857,
		28.845322, 35.521885, 40.997211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575872, 34.705006, 41.058960>,  <29.035601, 35.052200, 41.480114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575872, 34.705006, 41.058960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709291, 35.012589, 40.840805>,  <28.789343, 35.197140, 40.709911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709291, 35.012589, 40.840805>,  <28.575872, 34.705006, 41.058960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709291, 35.012589, 40.840805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010050, -0.575588, -0.817678,
		-0.942680, 0.278215, -0.184257,
		0.333547, 0.768957, -0.545391,
		28.809355, 35.243275, 40.677189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155863, 34.691780, 40.498661>,  <28.575872, 34.705006, 41.058960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155863, 34.691780, 40.498661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469862, 34.922474, 40.408188>,  <28.658262, 35.060890, 40.353905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469862, 34.922474, 40.408188>,  <28.155863, 34.691780, 40.498661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469862, 34.922474, 40.408188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015074, -0.382779, -0.923717,
		-0.619312, 0.721708, -0.309175,
		0.785000, 0.576730, -0.226180,
		28.705362, 35.095493, 40.340332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150555, 34.839115, 39.763969>,  <28.155863, 34.691780, 40.498661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150555, 34.839115, 39.763969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533039, 34.920692, 39.847939>,  <28.762529, 34.969639, 39.898319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533039, 34.920692, 39.847939>,  <28.150555, 34.839115, 39.763969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533039, 34.920692, 39.847939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245571, -0.168821, -0.954565,
		-0.159241, 0.964316, -0.211512,
		0.956210, 0.203947, 0.209925,
		28.819902, 34.981876, 39.910915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424301, 35.241566, 39.204674>,  <28.150555, 34.839115, 39.763969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424301, 35.241566, 39.204674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716108, 35.042183, 39.392010>,  <28.891193, 34.922554, 39.504410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716108, 35.042183, 39.392010>,  <28.424301, 35.241566, 39.204674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716108, 35.042183, 39.392010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357429, -0.305963, -0.882401,
		0.583135, 0.811126, -0.045042,
		0.729519, -0.498460, 0.468337,
		28.934963, 34.892647, 39.532513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074060, 35.411194, 38.845234>,  <28.424301, 35.241566, 39.204674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074060, 35.411194, 38.845234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127865, 35.070671, 39.048088>,  <29.160147, 34.866360, 39.169800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127865, 35.070671, 39.048088>,  <29.074060, 35.411194, 38.845234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127865, 35.070671, 39.048088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539354, -0.366436, -0.758170,
		0.831267, 0.375507, 0.409865,
		0.134509, -0.851304, 0.507137,
		29.168217, 34.815281, 39.200230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741020, 35.238754, 38.694218>,  <29.074060, 35.411194, 38.845234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741020, 35.238754, 38.694218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574862, 34.894581, 38.812267>,  <29.475166, 34.688076, 38.883099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574862, 34.894581, 38.812267>,  <29.741020, 35.238754, 38.694218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574862, 34.894581, 38.812267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491837, -0.485378, -0.722845,
		0.765208, -0.155114, 0.624817,
		-0.415396, -0.860435, 0.295125,
		29.450243, 34.636452, 38.900806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300888, 34.889179, 38.611141>,  <29.741020, 35.238754, 38.694218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300888, 34.889179, 38.611141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019409, 34.606361, 38.639114>,  <29.850521, 34.436668, 38.655899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019409, 34.606361, 38.639114>,  <30.300888, 34.889179, 38.611141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019409, 34.606361, 38.639114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453349, -0.522616, -0.722044,
		0.547066, -0.476399, 0.688304,
		-0.703699, -0.707048, 0.069930,
		29.808300, 34.394245, 38.660095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599621, 34.215782, 38.585823>,  <30.300888, 34.889179, 38.611141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599621, 34.215782, 38.585823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218687, 34.143658, 38.487404>,  <29.990126, 34.100384, 38.428352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218687, 34.143658, 38.487404>,  <30.599621, 34.215782, 38.585823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218687, 34.143658, 38.487404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303638, -0.482852, -0.821375,
		0.029300, -0.856936, 0.514589,
		-0.952337, -0.180315, -0.246051,
		29.932985, 34.089561, 38.413589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515995, 33.474319, 38.260891>,  <30.599621, 34.215782, 38.585823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515995, 33.474319, 38.260891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179117, 33.659203, 38.149845>,  <29.976990, 33.770134, 38.083218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179117, 33.659203, 38.149845>,  <30.515995, 33.474319, 38.260891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179117, 33.659203, 38.149845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046937, -0.450084, -0.891752,
		-0.537127, -0.764059, 0.357363,
		-0.842194, 0.462211, -0.277615,
		29.926458, 33.797867, 38.066563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016657, 32.967278, 38.054501>,  <30.515995, 33.474319, 38.260891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016657, 32.967278, 38.054501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912153, 33.301235, 37.860718>,  <29.849451, 33.501610, 37.744450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912153, 33.301235, 37.860718>,  <30.016657, 32.967278, 38.054501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912153, 33.301235, 37.860718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041601, -0.491684, -0.869780,
		-0.964372, -0.247390, 0.093723,
		-0.261257, 0.834893, -0.484458,
		29.833776, 33.551704, 37.715382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660257, 32.737019, 37.548275>,  <30.016657, 32.967278, 38.054501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660257, 32.737019, 37.548275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761372, 33.101898, 37.419277>,  <29.822041, 33.320824, 37.341881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761372, 33.101898, 37.419277>,  <29.660257, 32.737019, 37.548275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761372, 33.101898, 37.419277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147747, -0.365801, -0.918891,
		-0.956175, 0.184636, -0.227243,
		0.252786, 0.912195, -0.322491,
		29.837208, 33.375557, 37.322529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320126, 32.831139, 36.864143>,  <29.660257, 32.737019, 37.548275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320126, 32.831139, 36.864143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626652, 33.082329, 36.918404>,  <29.810568, 33.233044, 36.950958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626652, 33.082329, 36.918404>,  <29.320126, 32.831139, 36.864143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626652, 33.082329, 36.918404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332601, -0.207136, -0.920039,
		-0.549668, 0.750157, -0.367599,
		0.766317, 0.627980, 0.135647,
		29.856546, 33.270721, 36.959099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269447, 33.217354, 36.116196>,  <29.320126, 32.831139, 36.864143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269447, 33.217354, 36.116196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615829, 33.272022, 36.308628>,  <29.823660, 33.304825, 36.424088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615829, 33.272022, 36.308628>,  <29.269447, 33.217354, 36.116196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615829, 33.272022, 36.308628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496388, -0.117591, -0.860099,
		-0.060980, 0.983612, -0.169671,
		0.865956, 0.136672, 0.481083,
		29.875616, 33.313023, 36.452953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591309, 33.894741, 35.942047>,  <29.269447, 33.217354, 36.116196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591309, 33.894741, 35.942047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894470, 33.655132, 36.045395>,  <30.076366, 33.511368, 36.107403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894470, 33.655132, 36.045395>,  <29.591309, 33.894741, 35.942047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894470, 33.655132, 36.045395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335527, 0.018277, -0.941853,
		0.559469, 0.800524, 0.214840,
		0.757903, -0.599022, 0.258372,
		30.121841, 33.475426, 36.122906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134422, 34.198612, 35.603645>,  <29.591309, 33.894741, 35.942047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134422, 34.198612, 35.603645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272472, 33.830235, 35.676033>,  <30.355303, 33.609207, 35.719467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272472, 33.830235, 35.676033>,  <30.134422, 34.198612, 35.603645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272472, 33.830235, 35.676033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286874, -0.080080, -0.954615,
		0.893639, 0.381380, 0.236557,
		0.345127, -0.920943, 0.180971,
		30.376011, 33.553951, 35.730324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838793, 34.253204, 35.324409>,  <30.134422, 34.198612, 35.603645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838793, 34.253204, 35.324409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777679, 33.860878, 35.372829>,  <30.741011, 33.625481, 35.401882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777679, 33.860878, 35.372829>,  <30.838793, 34.253204, 35.324409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777679, 33.860878, 35.372829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565426, -0.187219, -0.803270,
		0.810525, -0.054280, 0.583184,
		-0.152785, -0.980817, 0.121054,
		30.731844, 33.566631, 35.409145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419020, 33.986103, 35.238972>,  <30.838793, 34.253204, 35.324409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419020, 33.986103, 35.238972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147314, 33.703457, 35.159676>,  <30.984291, 33.533871, 35.112099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147314, 33.703457, 35.159676>,  <31.419020, 33.986103, 35.238972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147314, 33.703457, 35.159676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408630, -0.139773, -0.901934,
		0.609609, -0.693658, 0.383686,
		-0.679263, -0.706613, -0.198243,
		30.943535, 33.491474, 35.100204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824940, 33.345325, 35.107052>,  <31.419020, 33.986103, 35.238972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824940, 33.345325, 35.107052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473717, 33.296585, 34.921940>,  <31.262983, 33.267342, 34.810871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473717, 33.296585, 34.921940>,  <31.824940, 33.345325, 35.107052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473717, 33.296585, 34.921940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477045, -0.146174, -0.866638,
		0.037950, -0.981726, 0.186476,
		-0.878059, -0.121847, -0.462780,
		31.210299, 33.260033, 34.783108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343521, 32.940681, 35.355293>,  <31.824940, 33.345325, 35.107052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343521, 32.940681, 35.355293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736576, 33.000160, 35.310905>,  <32.972408, 33.035847, 35.284275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736576, 33.000160, 35.310905>,  <32.343521, 32.940681, 35.355293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736576, 33.000160, 35.310905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108304, 0.025902, 0.993780,
		0.150647, -0.988543, 0.009348,
		0.982637, 0.148697, -0.110965,
		33.031368, 33.044769, 35.277615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664642, 32.429092, 35.732204>,  <32.343521, 32.940681, 35.355293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664642, 32.429092, 35.732204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926357, 32.729481, 35.696533>,  <33.083385, 32.909714, 35.675133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926357, 32.729481, 35.696533>,  <32.664642, 32.429092, 35.732204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926357, 32.729481, 35.696533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237211, -0.091831, 0.967108,
		0.718080, -0.653920, -0.238223,
		0.654288, 0.750970, -0.089175,
		33.122643, 32.954773, 35.669781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046345, 32.239494, 36.240299>,  <32.664642, 32.429092, 35.732204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046345, 32.239494, 36.240299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091599, 32.630505, 36.169151>,  <33.118752, 32.865112, 36.126461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091599, 32.630505, 36.169151>,  <33.046345, 32.239494, 36.240299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091599, 32.630505, 36.169151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105494, 0.166190, 0.980435,
		0.987963, -0.129684, -0.084322,
		0.113134, 0.977529, -0.177870,
		33.125538, 32.923763, 36.115791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604321, 32.528721, 36.644070>,  <33.046345, 32.239494, 36.240299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604321, 32.528721, 36.644070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379147, 32.848446, 36.559971>,  <33.244041, 33.040279, 36.509514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379147, 32.848446, 36.559971>,  <33.604321, 32.528721, 36.644070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379147, 32.848446, 36.559971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202305, 0.379901, 0.902634,
		0.801357, 0.465594, -0.375565,
		-0.562938, 0.799311, -0.210245,
		33.210266, 33.088238, 36.496899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021461, 33.030834, 36.944286>,  <33.604321, 32.528721, 36.644070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021461, 33.030834, 36.944286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666222, 33.204082, 36.882721>,  <33.453079, 33.308033, 36.845783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666222, 33.204082, 36.882721>,  <34.021461, 33.030834, 36.944286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666222, 33.204082, 36.882721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038933, 0.404516, 0.913702,
		0.458003, 0.805464, -0.376112,
		-0.888097, 0.433122, -0.153910,
		33.399792, 33.334019, 36.836548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043594, 33.621376, 37.388733>,  <34.021461, 33.030834, 36.944286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043594, 33.621376, 37.388733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649082, 33.594570, 37.328396>,  <33.412373, 33.578487, 37.292194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649082, 33.594570, 37.328396>,  <34.043594, 33.621376, 37.388733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649082, 33.594570, 37.328396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163315, 0.263829, 0.950643,
		-0.023911, 0.962239, -0.271155,
		-0.986284, -0.067015, -0.150840,
		33.353195, 33.574467, 37.283142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758179, 34.207664, 37.659492>,  <34.043594, 33.621376, 37.388733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758179, 34.207664, 37.659492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423126, 33.989243, 37.665123>,  <33.222095, 33.858189, 37.668503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423126, 33.989243, 37.665123>,  <33.758179, 34.207664, 37.659492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423126, 33.989243, 37.665123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151300, 0.256702, 0.954575,
		-0.524864, 0.797452, -0.297640,
		-0.837632, -0.546054, 0.014079,
		33.171837, 33.825428, 37.669346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210800, 34.631287, 37.894169>,  <33.758179, 34.207664, 37.659492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210800, 34.631287, 37.894169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100895, 34.254986, 37.973663>,  <33.034950, 34.029205, 38.021358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100895, 34.254986, 37.973663>,  <33.210800, 34.631287, 37.894169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100895, 34.254986, 37.973663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229589, 0.264904, 0.936544,
		-0.933698, 0.211705, -0.288773,
		-0.274768, -0.940748, 0.198735,
		33.018463, 33.972763, 38.033283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552464, 34.821720, 38.092072>,  <33.210800, 34.631287, 37.894169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552464, 34.821720, 38.092072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634266, 34.452705, 38.222977>,  <32.683346, 34.231297, 38.301521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634266, 34.452705, 38.222977>,  <32.552464, 34.821720, 38.092072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634266, 34.452705, 38.222977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209607, 0.285304, 0.935236,
		-0.956160, -0.259857, -0.135025,
		0.204504, -0.922538, 0.327264,
		32.695618, 34.175945, 38.321156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977690, 34.600773, 38.570564>,  <32.552464, 34.821720, 38.092072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977690, 34.600773, 38.570564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297592, 34.382637, 38.670963>,  <32.489532, 34.251755, 38.731201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297592, 34.382637, 38.670963>,  <31.977690, 34.600773, 38.570564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297592, 34.382637, 38.670963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157940, 0.212240, 0.964370,
		-0.579178, -0.810902, 0.083610,
		0.799754, -0.545337, 0.250998,
		32.537518, 34.219036, 38.746262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825350, 34.541370, 39.262897>,  <31.977690, 34.600773, 38.570564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825350, 34.541370, 39.262897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205067, 34.415894, 39.254467>,  <32.432896, 34.340607, 39.249409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205067, 34.415894, 39.254467>,  <31.825350, 34.541370, 39.262897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205067, 34.415894, 39.254467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122297, 0.306672, 0.943926,
		-0.289635, -0.898639, 0.329484,
		0.949292, -0.313689, -0.021078,
		32.489853, 34.321789, 39.248142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959797, 34.136662, 39.790493>,  <31.825350, 34.541370, 39.262897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959797, 34.136662, 39.790493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337009, 34.246971, 39.716045>,  <32.563335, 34.313156, 39.671379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337009, 34.246971, 39.716045>,  <31.959797, 34.136662, 39.790493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337009, 34.246971, 39.716045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087117, 0.335206, 0.938109,
		0.321085, -0.900882, 0.292087,
		0.943035, 0.275767, -0.186112,
		32.619919, 34.329704, 39.660210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403656, 33.878338, 40.276325>,  <31.959797, 34.136662, 39.790493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403656, 33.878338, 40.276325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582020, 34.215015, 40.154522>,  <32.689037, 34.417023, 40.081440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582020, 34.215015, 40.154522>,  <32.403656, 33.878338, 40.276325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582020, 34.215015, 40.154522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003277, 0.341735, 0.939791,
		0.895074, -0.418061, 0.155140,
		0.445907, 0.841690, -0.304508,
		32.715794, 34.467522, 40.063171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820274, 34.081665, 40.934254>,  <32.403656, 33.878338, 40.276325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820274, 34.081665, 40.934254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821659, 34.404808, 40.698505>,  <32.822491, 34.598694, 40.557056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821659, 34.404808, 40.698505>,  <32.820274, 34.081665, 40.934254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821659, 34.404808, 40.698505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085726, 0.587443, 0.804712,
		0.996313, 0.047735, 0.071290,
		0.003466, 0.807856, -0.589369,
		32.822701, 34.647163, 40.521694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292805, 34.569195, 41.156578>,  <32.820274, 34.081665, 40.934254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292805, 34.569195, 41.156578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051636, 34.801628, 40.937916>,  <32.906937, 34.941090, 40.806717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051636, 34.801628, 40.937916>,  <33.292805, 34.569195, 41.156578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051636, 34.801628, 40.937916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160482, 0.582860, 0.796567,
		0.781495, 0.567994, -0.258164,
		-0.602919, 0.581083, -0.546655,
		32.870762, 34.975952, 40.773918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447926, 35.173443, 41.423012>,  <33.292805, 34.569195, 41.156578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447926, 35.173443, 41.423012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103294, 35.224407, 41.226463>,  <32.896515, 35.254986, 41.108532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103294, 35.224407, 41.226463>,  <33.447926, 35.173443, 41.423012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103294, 35.224407, 41.226463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300668, 0.651831, 0.696214,
		0.409002, 0.747584, -0.523294,
		-0.861578, 0.127415, -0.491375,
		32.844822, 35.262630, 41.079052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313736, 35.909962, 41.260994>,  <33.447926, 35.173443, 41.423012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313736, 35.909962, 41.260994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972790, 35.702766, 41.289742>,  <32.768223, 35.578449, 41.306988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972790, 35.702766, 41.289742>,  <33.313736, 35.909962, 41.260994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972790, 35.702766, 41.289742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405188, 0.741036, 0.535432,
		-0.330601, 0.427264, -0.841515,
		-0.852364, -0.517986, 0.071865,
		32.717079, 35.547371, 41.311302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731133, 36.381519, 41.211922>,  <33.313736, 35.909962, 41.260994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731133, 36.381519, 41.211922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534985, 36.082951, 41.391872>,  <32.417297, 35.903809, 41.499844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534985, 36.082951, 41.391872>,  <32.731133, 36.381519, 41.211922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534985, 36.082951, 41.391872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347378, 0.640826, 0.684595,
		-0.799293, 0.179425, -0.573531,
		-0.490367, -0.746424, 0.449879,
		32.387875, 35.859024, 41.526836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042549, 36.653400, 41.530197>,  <32.731133, 36.381519, 41.211922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042549, 36.653400, 41.530197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079044, 36.290470, 41.694363>,  <32.100941, 36.072712, 41.792862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079044, 36.290470, 41.694363>,  <32.042549, 36.653400, 41.530197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079044, 36.290470, 41.694363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471422, 0.323674, 0.820364,
		-0.877175, -0.268328, -0.398200,
		0.091239, -0.907323, 0.410414,
		32.106415, 36.018272, 41.817486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409744, 36.593102, 41.803642>,  <32.042549, 36.653400, 41.530197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409744, 36.593102, 41.803642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652840, 36.322487, 41.969994>,  <31.798697, 36.160118, 42.069805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652840, 36.322487, 41.969994>,  <31.409744, 36.593102, 41.803642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652840, 36.322487, 41.969994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328517, 0.262595, 0.907260,
		-0.723003, -0.687997, -0.062666,
		0.607737, -0.676538, 0.415875,
		31.835161, 36.119526, 42.094757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011642, 36.123043, 42.170910>,  <31.409744, 36.593102, 41.803642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011642, 36.123043, 42.170910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370138, 36.124115, 42.348335>,  <31.585236, 36.124756, 42.454788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370138, 36.124115, 42.348335>,  <31.011642, 36.123043, 42.170910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370138, 36.124115, 42.348335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418672, 0.335416, 0.843925,
		-0.146518, -0.942066, 0.301734,
		0.896240, 0.002677, 0.443562,
		31.639009, 36.124920, 42.481403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011932, 35.745358, 42.850742>,  <31.011642, 36.123043, 42.170910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011932, 35.745358, 42.850742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334553, 35.978077, 42.892666>,  <31.528124, 36.117710, 42.917820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334553, 35.978077, 42.892666>,  <31.011932, 35.745358, 42.850742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334553, 35.978077, 42.892666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447405, 0.484856, 0.751494,
		0.386400, -0.653011, 0.651361,
		0.806550, 0.581800, 0.104812,
		31.576517, 36.152618, 42.924110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161043, 35.829369, 43.557587>,  <31.011932, 35.745358, 42.850742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161043, 35.829369, 43.557587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355904, 36.141079, 43.399899>,  <31.472820, 36.328106, 43.305286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355904, 36.141079, 43.399899>,  <31.161043, 35.829369, 43.557587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355904, 36.141079, 43.399899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563444, 0.625347, 0.539882,
		0.667242, -0.040883, 0.743718,
		0.487153, 0.779275, -0.394223,
		31.502050, 36.374863, 43.281631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305948, 36.249161, 44.098843>,  <31.161043, 35.829369, 43.557587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305948, 36.249161, 44.098843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329754, 36.486637, 43.777847>,  <31.344036, 36.629124, 43.585251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329754, 36.486637, 43.777847>,  <31.305948, 36.249161, 44.098843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329754, 36.486637, 43.777847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632562, 0.644333, 0.429768,
		0.772220, 0.482050, 0.413889,
		0.059512, 0.593686, -0.802493,
		31.347609, 36.664742, 43.537098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601128, 36.970837, 44.416496>,  <31.305948, 36.249161, 44.098843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601128, 36.970837, 44.416496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434916, 37.026840, 44.056999>,  <31.335188, 37.060444, 43.841301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434916, 37.026840, 44.056999>,  <31.601128, 36.970837, 44.416496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434916, 37.026840, 44.056999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303599, 0.910067, 0.282145,
		0.857416, 0.390097, -0.335654,
		-0.415531, 0.140011, -0.898738,
		31.310257, 37.068844, 43.787376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601831, 37.630672, 44.394085>,  <31.601128, 36.970837, 44.416496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601831, 37.630672, 44.394085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346897, 37.541969, 44.098888>,  <31.193935, 37.488747, 43.921772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346897, 37.541969, 44.098888>,  <31.601831, 37.630672, 44.394085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346897, 37.541969, 44.098888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408172, 0.909461, 0.079223,
		0.653603, 0.351717, -0.670147,
		-0.637337, -0.221755, -0.737988,
		31.155697, 37.475445, 43.877491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707645, 38.040257, 43.796627>,  <31.601831, 37.630672, 44.394085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707645, 38.040257, 43.796627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324539, 37.927303, 43.818317>,  <31.094675, 37.859531, 43.831333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324539, 37.927303, 43.818317>,  <31.707645, 38.040257, 43.796627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324539, 37.927303, 43.818317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278555, 0.957965, 0.068628,
		-0.071329, 0.050624, -0.996168,
		-0.957768, -0.282383, 0.054229,
		31.037209, 37.842590, 43.834587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268698, 38.481510, 43.300240>,  <31.707645, 38.040257, 43.796627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268698, 38.481510, 43.300240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041677, 38.336514, 43.595940>,  <30.905466, 38.249516, 43.773361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041677, 38.336514, 43.595940>,  <31.268698, 38.481510, 43.300240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041677, 38.336514, 43.595940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328619, 0.922980, 0.200292,
		-0.754916, -0.129256, -0.642958,
		-0.567549, -0.362492, 0.739249,
		30.871412, 38.227764, 43.817715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559856, 38.750065, 43.144932>,  <31.268698, 38.481510, 43.300240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559856, 38.750065, 43.144932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541954, 38.621933, 43.523430>,  <30.531212, 38.545052, 43.750530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541954, 38.621933, 43.523430>,  <30.559856, 38.750065, 43.144932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541954, 38.621933, 43.523430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370627, 0.884923, 0.282041,
		-0.927703, -0.338082, -0.158329,
		-0.044756, -0.320331, 0.946248,
		30.528528, 38.525833, 43.807304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069012, 39.241631, 43.394684>,  <30.559856, 38.750065, 43.144932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069012, 39.241631, 43.394684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209227, 39.069672, 43.727505>,  <30.293356, 38.966496, 43.927197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209227, 39.069672, 43.727505>,  <30.069012, 39.241631, 43.394684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209227, 39.069672, 43.727505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183535, 0.839665, 0.511152,
		-0.918390, -0.331888, 0.215431,
		0.350535, -0.429898, 0.832053,
		30.314386, 38.940701, 43.977119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605865, 39.395988, 43.813847>,  <30.069012, 39.241631, 43.394684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605865, 39.395988, 43.813847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902395, 39.296791, 44.063305>,  <30.080313, 39.237274, 44.212982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902395, 39.296791, 44.063305>,  <29.605865, 39.395988, 43.813847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902395, 39.296791, 44.063305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125569, 0.861570, 0.491863,
		-0.659296, -0.442941, 0.607562,
		0.741324, -0.247992, 0.623650,
		30.124792, 39.222393, 44.250401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347811, 39.289112, 44.532177>,  <29.605865, 39.395988, 43.813847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347811, 39.289112, 44.532177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736893, 39.380207, 44.549969>,  <29.970343, 39.434864, 44.560642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736893, 39.380207, 44.549969>,  <29.347811, 39.289112, 44.532177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736893, 39.380207, 44.549969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193803, 0.691926, 0.695471,
		0.127612, -0.685108, 0.717176,
		0.972705, 0.227741, 0.044477,
		30.028704, 39.448528, 44.563313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580252, 39.271862, 45.315990>,  <29.347811, 39.289112, 44.532177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580252, 39.271862, 45.315990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836679, 39.500813, 45.111477>,  <29.990536, 39.638184, 44.988770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836679, 39.500813, 45.111477>,  <29.580252, 39.271862, 45.315990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836679, 39.500813, 45.111477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060197, 0.701631, 0.709993,
		0.765120, -0.424376, 0.484248,
		0.641068, 0.572380, -0.511286,
		30.028999, 39.672527, 44.958092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011013, 39.564571, 45.833019>,  <29.580252, 39.271862, 45.315990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011013, 39.564571, 45.833019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042721, 39.810810, 45.519394>,  <30.061745, 39.958553, 45.331219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042721, 39.810810, 45.519394>,  <30.011013, 39.564571, 45.833019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042721, 39.810810, 45.519394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026832, 0.787574, 0.615636,
		0.996492, -0.027763, 0.078948,
		0.079270, 0.615594, -0.784066,
		30.066502, 39.995487, 45.284176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473890, 40.084812, 46.035629>,  <30.011013, 39.564571, 45.833019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473890, 40.084812, 46.035629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274307, 40.234852, 45.723133>,  <30.154558, 40.324875, 45.535633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274307, 40.234852, 45.723133>,  <30.473890, 40.084812, 46.035629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274307, 40.234852, 45.723133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132703, 0.857778, 0.496595,
		0.856406, 0.351453, -0.378219,
		-0.498958, 0.375096, -0.781245,
		30.124620, 40.347382, 45.488758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715929, 40.711922, 46.063515>,  <30.473890, 40.084812, 46.035629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715929, 40.711922, 46.063515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396791, 40.734138, 45.823395>,  <30.205309, 40.747467, 45.679321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396791, 40.734138, 45.823395>,  <30.715929, 40.711922, 46.063515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396791, 40.734138, 45.823395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300914, 0.826148, 0.476372,
		0.522392, 0.560709, -0.642426,
		-0.797845, 0.055539, -0.600299,
		30.157438, 40.750801, 45.643307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776361, 41.324341, 45.735363>,  <30.715929, 40.711922, 46.063515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776361, 41.324341, 45.735363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385622, 41.239479, 45.746334>,  <30.151178, 41.188560, 45.752918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385622, 41.239479, 45.746334>,  <30.776361, 41.324341, 45.735363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385622, 41.239479, 45.746334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175179, 0.866919, 0.466652,
		-0.122784, 0.451044, -0.884016,
		-0.976850, -0.212159, 0.027431,
		30.092567, 41.175831, 45.754562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439011, 41.927452, 45.567097>,  <30.776361, 41.324341, 45.735363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439011, 41.927452, 45.567097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170034, 41.694008, 45.749184>,  <30.008648, 41.553940, 45.858437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170034, 41.694008, 45.749184>,  <30.439011, 41.927452, 45.567097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170034, 41.694008, 45.749184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338071, 0.789306, 0.512546,
		-0.658432, 0.190763, -0.728064,
		-0.672440, -0.583613, 0.455213,
		29.968302, 41.518925, 45.885746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975622, 42.420536, 45.851227>,  <30.439011, 41.927452, 45.567097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975622, 42.420536, 45.851227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343075, 42.565857, 45.789093>,  <31.563545, 42.653049, 45.751812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343075, 42.565857, 45.789093>,  <30.975622, 42.420536, 45.851227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343075, 42.565857, 45.789093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170347, -0.718872, -0.673947,
		-0.356511, 0.592648, -0.722266,
		0.918630, 0.363306, -0.155330,
		31.618664, 42.674850, 45.742493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180296, 42.294968, 45.078632>,  <30.975622, 42.420536, 45.851227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180296, 42.294968, 45.078632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533583, 42.365986, 45.252254>,  <31.745554, 42.408596, 45.356430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533583, 42.365986, 45.252254>,  <31.180296, 42.294968, 45.078632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533583, 42.365986, 45.252254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447150, -0.597850, -0.665306,
		0.141379, 0.781698, -0.607421,
		0.883215, 0.177548, 0.434060,
		31.798548, 42.419250, 45.382473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633373, 42.262936, 44.560276>,  <31.180296, 42.294968, 45.078632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633373, 42.262936, 44.560276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880514, 42.210884, 44.870457>,  <32.028797, 42.179653, 45.056564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880514, 42.210884, 44.870457>,  <31.633373, 42.262936, 44.560276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880514, 42.210884, 44.870457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652223, -0.466007, -0.597865,
		0.439165, 0.875160, -0.203050,
		0.617850, -0.130127, 0.775454,
		32.065868, 42.171844, 45.103092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264462, 42.463474, 44.301552>,  <31.633373, 42.262936, 44.560276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264462, 42.463474, 44.301552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364025, 42.249714, 44.624653>,  <32.423763, 42.121456, 44.818512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364025, 42.249714, 44.624653>,  <32.264462, 42.463474, 44.301552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364025, 42.249714, 44.624653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490953, -0.649290, -0.580851,
		0.834871, 0.541147, 0.100750,
		0.248910, -0.534400, 0.807751,
		32.438698, 42.089394, 44.866978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013660, 42.347687, 44.154591>,  <32.264462, 42.463474, 44.301552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013660, 42.347687, 44.154591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826141, 42.081627, 44.387077>,  <32.713631, 41.921993, 44.526569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826141, 42.081627, 44.387077>,  <33.013660, 42.347687, 44.154591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826141, 42.081627, 44.387077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538377, -0.736812, -0.408973,
		0.700273, 0.121188, 0.703513,
		-0.468794, -0.665147, 0.581215,
		32.685501, 41.882084, 44.561443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664318, 41.930828, 44.360367>,  <33.013660, 42.347687, 44.154591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664318, 41.930828, 44.360367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328064, 41.717258, 44.396729>,  <33.126312, 41.589119, 44.418545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328064, 41.717258, 44.396729>,  <33.664318, 41.930828, 44.360367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328064, 41.717258, 44.396729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419119, -0.747599, -0.515204,
		0.343040, -0.394997, 0.852233,
		-0.840633, -0.533922, 0.090906,
		33.075874, 41.557083, 44.424000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919460, 41.326405, 44.612350>,  <33.664318, 41.930828, 44.360367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919460, 41.326405, 44.612350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548847, 41.236996, 44.491306>,  <33.326481, 41.183350, 44.418682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548847, 41.236996, 44.491306>,  <33.919460, 41.326405, 44.612350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548847, 41.236996, 44.491306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363990, -0.735979, -0.570830,
		-0.095117, -0.639039, 0.763270,
		-0.926533, -0.223527, -0.302608,
		33.270885, 41.169937, 44.400524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916782, 40.581184, 44.544632>,  <33.919460, 41.326405, 44.612350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916782, 40.581184, 44.544632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591385, 40.691860, 44.340015>,  <33.396145, 40.758266, 44.217247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591385, 40.691860, 44.340015>,  <33.916782, 40.581184, 44.544632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591385, 40.691860, 44.340015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132583, -0.768182, -0.626353,
		-0.566259, -0.577355, 0.588227,
		-0.813494, 0.276689, -0.511538,
		33.347336, 40.774868, 44.186554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679665, 39.915882, 44.321033>,  <33.916782, 40.581184, 44.544632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679665, 39.915882, 44.321033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542080, 40.198097, 44.073193>,  <33.459530, 40.367424, 43.924488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542080, 40.198097, 44.073193>,  <33.679665, 39.915882, 44.321033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542080, 40.198097, 44.073193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256238, -0.564295, -0.784801,
		-0.903345, -0.428707, 0.013310,
		-0.343961, 0.705536, -0.619604,
		33.438892, 40.409760, 43.887310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383385, 39.538956, 43.902119>,  <33.679665, 39.915882, 44.321033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383385, 39.538956, 43.902119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457405, 39.881592, 43.709454>,  <33.501820, 40.087173, 43.593853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457405, 39.881592, 43.709454>,  <33.383385, 39.538956, 43.902119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457405, 39.881592, 43.709454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262386, -0.515404, -0.815789,
		-0.947052, 0.024584, -0.320137,
		0.185056, 0.856595, -0.481664,
		33.512920, 40.138569, 43.564953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242599, 39.422230, 43.254684>,  <33.383385, 39.538956, 43.902119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242599, 39.422230, 43.254684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443222, 39.764412, 43.203098>,  <33.563595, 39.969723, 43.172146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443222, 39.764412, 43.203098>,  <33.242599, 39.422230, 43.254684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443222, 39.764412, 43.203098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233333, -0.277313, -0.932016,
		-0.833067, 0.437363, -0.338694,
		0.501553, 0.855460, -0.128969,
		33.593689, 40.021049, 43.164406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995243, 39.686672, 42.687405>,  <33.242599, 39.422230, 43.254684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995243, 39.686672, 42.687405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346840, 39.874298, 42.721684>,  <33.557800, 39.986874, 42.742249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346840, 39.874298, 42.721684>,  <32.995243, 39.686672, 42.687405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346840, 39.874298, 42.721684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230474, -0.260615, -0.937530,
		-0.417430, 0.843835, -0.337187,
		0.878996, 0.469065, 0.085694,
		33.610538, 40.015018, 42.747391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077431, 40.068233, 42.100216>,  <32.995243, 39.686672, 42.687405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077431, 40.068233, 42.100216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445000, 40.008492, 42.246239>,  <33.665543, 39.972645, 42.333851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445000, 40.008492, 42.246239>,  <33.077431, 40.068233, 42.100216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445000, 40.008492, 42.246239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284559, -0.389869, -0.875802,
		0.273132, 0.908677, -0.315760,
		0.918926, -0.149357, 0.365058,
		33.720676, 39.963684, 42.355755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428387, 40.219215, 41.536587>,  <33.077431, 40.068233, 42.100216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428387, 40.219215, 41.536587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678661, 40.040218, 41.792168>,  <33.828827, 39.932819, 41.945518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678661, 40.040218, 41.792168>,  <33.428387, 40.219215, 41.536587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678661, 40.040218, 41.792168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367619, -0.553287, -0.747482,
		0.688018, 0.702584, -0.181679,
		0.625690, -0.447492, 0.638955,
		33.866367, 39.905972, 41.983852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038589, 40.224617, 41.163513>,  <33.428387, 40.219215, 41.536587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038589, 40.224617, 41.163513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072437, 39.928154, 41.429901>,  <34.092747, 39.750275, 41.589733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072437, 39.928154, 41.429901>,  <34.038589, 40.224617, 41.163513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072437, 39.928154, 41.429901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248576, -0.631537, -0.734419,
		0.964909, 0.227692, 0.130794,
		0.084619, -0.741160, 0.665974,
		34.097824, 39.705807, 41.629692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617531, 39.927795, 40.945072>,  <34.038589, 40.224617, 41.163513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617531, 39.927795, 40.945072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443031, 39.663399, 41.189293>,  <34.338333, 39.504761, 41.335827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443031, 39.663399, 41.189293>,  <34.617531, 39.927795, 40.945072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443031, 39.663399, 41.189293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221091, -0.736459, -0.639333,
		0.872242, -0.143920, 0.467420,
		-0.436249, -0.660995, 0.610551,
		34.312157, 39.465099, 41.372459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130550, 39.410774, 41.002098>,  <34.617531, 39.927795, 40.945072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130550, 39.410774, 41.002098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787968, 39.248695, 41.130032>,  <34.582417, 39.151447, 41.206791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787968, 39.248695, 41.130032>,  <35.130550, 39.410774, 41.002098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787968, 39.248695, 41.130032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172886, -0.808949, -0.561883,
		0.486403, -0.425934, 0.762884,
		-0.856460, -0.405193, 0.319837,
		34.531029, 39.127136, 41.225983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293377, 38.667965, 41.201382>,  <35.130550, 39.410774, 41.002098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293377, 38.667965, 41.201382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898586, 38.672440, 41.137192>,  <34.661713, 38.675125, 41.098679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898586, 38.672440, 41.137192>,  <35.293377, 38.667965, 41.201382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898586, 38.672440, 41.137192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059882, -0.900330, -0.431069,
		-0.149303, -0.435064, 0.887935,
		-0.986977, 0.011189, -0.160474,
		34.602493, 38.675797, 41.089050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927967, 37.937332, 41.325130>,  <35.293377, 38.667965, 41.201382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927967, 37.937332, 41.325130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649433, 38.131931, 41.114063>,  <34.482311, 38.248692, 40.987423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649433, 38.131931, 41.114063>,  <34.927967, 37.937332, 41.325130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649433, 38.131931, 41.114063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220988, -0.844820, -0.487281,
		-0.682844, -0.222706, 0.695792,
		-0.696340, 0.486499, -0.527665,
		34.440533, 38.277882, 40.955765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438866, 37.434929, 41.326923>,  <34.927967, 37.937332, 41.325130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438866, 37.434929, 41.326923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381611, 37.670052, 41.008430>,  <34.347256, 37.811127, 40.817333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381611, 37.670052, 41.008430>,  <34.438866, 37.434929, 41.326923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381611, 37.670052, 41.008430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317992, -0.789178, -0.525433,
		-0.937226, 0.177986, 0.299882,
		-0.143140, 0.587809, -0.796236,
		34.338669, 37.846394, 40.769558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069019, 36.978989, 41.015072>,  <34.438866, 37.434929, 41.326923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069019, 36.978989, 41.015072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169025, 37.267963, 40.757210>,  <34.229027, 37.441349, 40.602493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169025, 37.267963, 40.757210>,  <34.069019, 36.978989, 41.015072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169025, 37.267963, 40.757210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057135, -0.653628, -0.754656,
		-0.966555, 0.225505, -0.122139,
		0.250012, 0.722438, -0.644652,
		34.244030, 37.484695, 40.563812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577499, 36.967869, 40.485542>,  <34.069019, 36.978989, 41.015072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577499, 36.967869, 40.485542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902946, 37.135597, 40.324448>,  <34.098213, 37.236233, 40.227791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902946, 37.135597, 40.324448>,  <33.577499, 36.967869, 40.485542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902946, 37.135597, 40.324448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027362, -0.719553, -0.693898,
		-0.580759, 0.553547, -0.596913,
		0.813616, 0.419320, -0.402741,
		34.147030, 37.261395, 40.203625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476688, 36.983646, 39.678604>,  <33.577499, 36.967869, 40.485542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476688, 36.983646, 39.678604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867027, 37.005749, 39.763134>,  <34.101231, 37.019009, 39.813854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867027, 37.005749, 39.763134>,  <33.476688, 36.983646, 39.678604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867027, 37.005749, 39.763134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196414, -0.645277, -0.738268,
		0.095574, 0.761948, -0.640547,
		0.975852, 0.055254, 0.211329,
		34.159782, 37.022324, 39.826534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731312, 37.116959, 39.056202>,  <33.476688, 36.983646, 39.678604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731312, 37.116959, 39.056202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017395, 36.960358, 39.287788>,  <34.189045, 36.866398, 39.426739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017395, 36.960358, 39.287788>,  <33.731312, 37.116959, 39.056202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017395, 36.960358, 39.287788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292576, -0.584594, -0.756736,
		0.634724, 0.710616, -0.303563,
		0.715209, -0.391504, 0.578965,
		34.231956, 36.842907, 39.461479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340324, 37.022934, 38.725964>,  <33.731312, 37.116959, 39.056202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340324, 37.022934, 38.725964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451252, 36.772701, 39.017643>,  <34.517811, 36.622562, 39.192650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451252, 36.772701, 39.017643>,  <34.340324, 37.022934, 38.725964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451252, 36.772701, 39.017643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368290, -0.631777, -0.682070,
		0.887386, 0.457712, 0.055191,
		0.277323, -0.625586, 0.729201,
		34.534451, 36.585026, 39.236404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091145, 36.836487, 38.603065>,  <34.340324, 37.022934, 38.725964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091145, 36.836487, 38.603065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936810, 36.550987, 38.836884>,  <34.844208, 36.379688, 38.977173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936810, 36.550987, 38.836884>,  <35.091145, 36.836487, 38.603065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936810, 36.550987, 38.836884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412687, -0.700210, -0.582577,
		0.825117, 0.016454, 0.564722,
		-0.385838, -0.713747, 0.584546,
		34.821056, 36.336864, 39.012249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647778, 36.446945, 38.855980>,  <35.091145, 36.836487, 38.603065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647778, 36.446945, 38.855980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313560, 36.227650, 38.841541>,  <35.113029, 36.096073, 38.832878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313560, 36.227650, 38.841541>,  <35.647778, 36.446945, 38.855980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313560, 36.227650, 38.841541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436935, -0.623204, -0.648617,
		0.333107, -0.557716, 0.760258,
		-0.835541, -0.548242, -0.036092,
		35.062897, 36.063179, 38.830715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934742, 35.735405, 38.856716>,  <35.647778, 36.446945, 38.855980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934742, 35.735405, 38.856716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553928, 35.692028, 38.742260>,  <35.325439, 35.666004, 38.673588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553928, 35.692028, 38.742260>,  <35.934742, 35.735405, 38.856716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553928, 35.692028, 38.742260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297787, -0.543486, -0.784822,
		-0.070405, -0.832384, 0.549709,
		-0.952033, -0.108441, -0.286137,
		35.268318, 35.659496, 38.656418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762207, 35.014278, 38.705807>,  <35.934742, 35.735405, 38.856716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762207, 35.014278, 38.705807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500778, 35.224831, 38.488270>,  <35.343922, 35.351162, 38.357746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500778, 35.224831, 38.488270>,  <35.762207, 35.014278, 38.705807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500778, 35.224831, 38.488270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316823, -0.462291, -0.828197,
		-0.687359, -0.713591, 0.135373,
		-0.653576, 0.526379, -0.543841,
		35.304707, 35.382744, 38.325119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552601, 34.479324, 38.321083>,  <35.762207, 35.014278, 38.705807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552601, 34.479324, 38.321083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430073, 34.818001, 38.147057>,  <35.356556, 35.021206, 38.042641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430073, 34.818001, 38.147057>,  <35.552601, 34.479324, 38.321083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430073, 34.818001, 38.147057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282302, -0.355681, -0.890952,
		-0.909107, -0.395735, -0.130071,
		-0.306318, 0.846690, -0.435069,
		35.338177, 35.072006, 38.016537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994026, 34.314297, 37.793385>,  <35.552601, 34.479324, 38.321083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994026, 34.314297, 37.793385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182877, 34.657146, 37.710991>,  <35.296188, 34.862858, 37.661552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182877, 34.657146, 37.710991>,  <34.994026, 34.314297, 37.793385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182877, 34.657146, 37.710991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250796, -0.354616, -0.900749,
		-0.845103, 0.373606, -0.382388,
		0.472126, 0.857127, -0.205988,
		35.324512, 34.914284, 37.649193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938477, 34.399151, 37.046387>,  <34.994026, 34.314297, 37.793385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938477, 34.399151, 37.046387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243809, 34.637344, 37.146568>,  <35.427006, 34.780262, 37.206676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243809, 34.637344, 37.146568>,  <34.938477, 34.399151, 37.046387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243809, 34.637344, 37.146568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459710, -0.228322, -0.858216,
		-0.453871, 0.770237, -0.448036,
		0.763327, 0.595486, 0.250457,
		35.472805, 34.815990, 37.221706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993053, 34.876888, 36.472038>,  <34.938477, 34.399151, 37.046387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993053, 34.876888, 36.472038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345203, 34.887020, 36.661480>,  <35.556492, 34.893101, 36.775143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345203, 34.887020, 36.661480>,  <34.993053, 34.876888, 36.472038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345203, 34.887020, 36.661480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473666, -0.097719, -0.875266,
		0.024106, 0.994892, -0.098029,
		0.880374, 0.025333, 0.473602,
		35.609314, 34.894619, 36.803562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397896, 35.380512, 36.203621>,  <34.993053, 34.876888, 36.472038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397896, 35.380512, 36.203621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661766, 35.123386, 36.359375>,  <35.820087, 34.969112, 36.452827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661766, 35.123386, 36.359375>,  <35.397896, 35.380512, 36.203621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661766, 35.123386, 36.359375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517690, 0.013068, -0.855468,
		0.544820, 0.765909, 0.341400,
		0.659673, -0.642816, 0.389384,
		35.859669, 34.930542, 36.476189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020325, 35.636471, 36.154858>,  <35.397896, 35.380512, 36.203621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020325, 35.636471, 36.154858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097443, 35.246777, 36.201675>,  <36.143715, 35.012962, 36.229767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097443, 35.246777, 36.201675>,  <36.020325, 35.636471, 36.154858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097443, 35.246777, 36.201675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734670, 0.064248, -0.675375,
		0.650453, 0.216202, 0.728126,
		0.192798, -0.974233, 0.117047,
		36.155281, 34.954506, 36.236790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715199, 35.598919, 36.249023>,  <36.020325, 35.636471, 36.154858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715199, 35.598919, 36.249023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631207, 35.236378, 36.102367>,  <36.580811, 35.018852, 36.014374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631207, 35.236378, 36.102367>,  <36.715199, 35.598919, 36.249023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631207, 35.236378, 36.102367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834939, 0.028883, -0.549584,
		0.508709, -0.421523, 0.750688,
		-0.209980, -0.906357, -0.366639,
		36.568211, 34.964470, 35.992374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339531, 35.232792, 36.216824>,  <36.715199, 35.598919, 36.249023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339531, 35.232792, 36.216824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119129, 34.982616, 35.995834>,  <36.986889, 34.832512, 35.863239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119129, 34.982616, 35.995834>,  <37.339531, 35.232792, 36.216824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119129, 34.982616, 35.995834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766494, -0.117522, -0.631407,
		0.329977, -0.771374, 0.544149,
		-0.551000, -0.625437, -0.552474,
		36.953831, 34.794987, 35.830093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820908, 34.841991, 35.835255>,  <37.339531, 35.232792, 36.216824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820908, 34.841991, 35.835255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488194, 34.723068, 35.647751>,  <37.288563, 34.651714, 35.535248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488194, 34.723068, 35.647751>,  <37.820908, 34.841991, 35.835255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488194, 34.723068, 35.647751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550766, -0.336828, -0.763678,
		0.069156, -0.893395, 0.443917,
		-0.831790, -0.297308, -0.468757,
		37.238655, 34.633877, 35.507122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923851, 34.086929, 35.709743>,  <37.820908, 34.841991, 35.835255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923851, 34.086929, 35.709743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677479, 34.271599, 35.454403>,  <37.529655, 34.382401, 35.301201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677479, 34.271599, 35.454403>,  <37.923851, 34.086929, 35.709743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677479, 34.271599, 35.454403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643097, -0.173374, -0.745901,
		-0.455038, -0.869940, -0.190118,
		-0.615928, 0.461677, -0.638347,
		37.492699, 34.410103, 35.262897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793598, 33.687027, 35.051861>,  <37.923851, 34.086929, 35.709743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793598, 33.687027, 35.051861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741688, 34.076870, 34.978870>,  <37.710541, 34.310776, 34.935078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741688, 34.076870, 34.978870>,  <37.793598, 33.687027, 35.051861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741688, 34.076870, 34.978870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651318, -0.054970, -0.756811,
		-0.747625, -0.217066, -0.627646,
		-0.129776, 0.974608, -0.182476,
		37.702755, 34.369251, 34.924126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598186, 33.781342, 34.315765>,  <37.793598, 33.687027, 35.051861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598186, 33.781342, 34.315765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811855, 34.095150, 34.441738>,  <37.940056, 34.283436, 34.517323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811855, 34.095150, 34.441738>,  <37.598186, 33.781342, 34.315765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811855, 34.095150, 34.441738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492421, 0.014063, -0.870243,
		-0.687156, 0.619938, -0.378804,
		0.534170, 0.784525, 0.314934,
		37.972107, 34.330509, 34.536217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698708, 34.294155, 33.663120>,  <37.598186, 33.781342, 34.315765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698708, 34.294155, 33.663120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979954, 34.339481, 33.943916>,  <38.148701, 34.366676, 34.112396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979954, 34.339481, 33.943916>,  <37.698708, 34.294155, 33.663120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979954, 34.339481, 33.943916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711076, -0.108869, -0.694636,
		-0.002284, 0.987577, -0.157120,
		0.703112, 0.113311, 0.701993,
		38.190887, 34.373474, 34.154514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296814, 34.317108, 33.213081>,  <37.698708, 34.294155, 33.663120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296814, 34.317108, 33.213081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443577, 34.368446, 33.581627>,  <38.531635, 34.399250, 33.802753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443577, 34.368446, 33.581627>,  <38.296814, 34.317108, 33.213081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443577, 34.368446, 33.581627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905914, -0.274393, -0.322534,
		0.211418, 0.953014, -0.216949,
		0.366908, 0.128348, 0.921360,
		38.553650, 34.406952, 33.858036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684509, 34.919430, 33.294411>,  <38.296814, 34.317108, 33.213081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684509, 34.919430, 33.294411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785847, 34.612309, 33.529800>,  <38.846649, 34.428036, 33.671036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785847, 34.612309, 33.529800>,  <38.684509, 34.919430, 33.294411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785847, 34.612309, 33.529800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913327, -0.010648, -0.407088,
		0.318828, 0.640601, 0.698555,
		0.253343, -0.767800, 0.588473,
		38.861851, 34.381969, 33.706341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258545, 34.916130, 33.729939>,  <38.684509, 34.919430, 33.294411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258545, 34.916130, 33.729939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239399, 34.531502, 33.621792>,  <39.227913, 34.300724, 33.556904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239399, 34.531502, 33.621792>,  <39.258545, 34.916130, 33.729939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239399, 34.531502, 33.621792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908415, 0.070644, -0.412059,
		0.415321, -0.265328, 0.870120,
		-0.047862, -0.961567, -0.270367,
		39.225040, 34.243031, 33.540680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903790, 34.432091, 33.928116>,  <39.258545, 34.916130, 33.729939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903790, 34.432091, 33.928116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701794, 34.345863, 33.593807>,  <39.580597, 34.294128, 33.393223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701794, 34.345863, 33.593807>,  <39.903790, 34.432091, 33.928116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701794, 34.345863, 33.593807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809240, 0.218524, -0.545324,
		0.300189, -0.951725, 0.064090,
		-0.504993, -0.215564, -0.835772,
		39.550297, 34.281193, 33.343075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460979, 34.792355, 34.108269>,  <39.903790, 34.432091, 33.928116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460979, 34.792355, 34.108269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697388, 35.114868, 34.098450>,  <40.839233, 35.308376, 34.092560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697388, 35.114868, 34.098450>,  <40.460979, 34.792355, 34.108269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697388, 35.114868, 34.098450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268827, -0.168184, 0.948392,
		0.760540, -0.567122, -0.316150,
		0.591025, 0.806280, -0.024547,
		40.874695, 35.356750, 34.091087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173538, 34.374016, 33.895145>,  <40.460979, 34.792355, 34.108269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173538, 34.374016, 33.895145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568810, 34.432320, 33.876156>,  <41.805973, 34.467300, 33.864761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568810, 34.432320, 33.876156>,  <41.173538, 34.374016, 33.895145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568810, 34.432320, 33.876156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103364, 0.862248, 0.495826,
		0.113206, -0.485059, 0.867123,
		0.988180, 0.145760, -0.047474,
		41.865265, 34.476048, 33.861912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462208, 34.614162, 34.542397>,  <41.173538, 34.374016, 33.895145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462208, 34.614162, 34.542397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754822, 34.729137, 34.295094>,  <41.930389, 34.798122, 34.146713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754822, 34.729137, 34.295094>,  <41.462208, 34.614162, 34.542397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754822, 34.729137, 34.295094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009137, 0.902579, 0.430428,
		0.681744, -0.320522, 0.657640,
		0.731534, 0.287433, -0.618256,
		41.974281, 34.815369, 34.109615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902924, 34.918613, 34.942223>,  <41.462208, 34.614162, 34.542397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902924, 34.918613, 34.942223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946712, 35.083916, 34.580620>,  <41.972984, 35.183098, 34.363659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946712, 35.083916, 34.580620>,  <41.902924, 34.918613, 34.942223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946712, 35.083916, 34.580620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039039, 0.906988, 0.419342,
		0.993223, -0.081198, 0.083158,
		0.109473, 0.413254, -0.904011,
		41.979553, 35.207893, 34.309418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392609, 35.458042, 35.019466>,  <41.902924, 34.918613, 34.942223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392609, 35.458042, 35.019466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224205, 35.560631, 34.671448>,  <42.123161, 35.622185, 34.462639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224205, 35.560631, 34.671448>,  <42.392609, 35.458042, 35.019466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224205, 35.560631, 34.671448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041412, 0.952759, 0.300892,
		0.906110, 0.162708, -0.390500,
		-0.421010, 0.256470, -0.870043,
		42.097900, 35.637573, 34.410435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671879, 36.056026, 34.926361>,  <42.392609, 35.458042, 35.019466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671879, 36.056026, 34.926361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368847, 36.047668, 34.665398>,  <42.187027, 36.042652, 34.508820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368847, 36.047668, 34.665398>,  <42.671879, 36.056026, 34.926361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368847, 36.047668, 34.665398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204083, 0.956964, 0.206326,
		0.620019, 0.289454, -0.729241,
		-0.757579, -0.020900, -0.652409,
		42.141575, 36.041397, 34.469673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722652, 36.602634, 34.707893>,  <42.671879, 36.056026, 34.926361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722652, 36.602634, 34.707893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342194, 36.531376, 34.607033>,  <42.113918, 36.488621, 34.546516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342194, 36.531376, 34.607033>,  <42.722652, 36.602634, 34.707893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342194, 36.531376, 34.607033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265982, 0.887503, 0.376287,
		0.156747, 0.424971, -0.891532,
		-0.951149, -0.178150, -0.252148,
		42.056850, 36.477932, 34.531387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532036, 37.220123, 34.430580>,  <42.722652, 36.602634, 34.707893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532036, 37.220123, 34.430580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191677, 37.039532, 34.538013>,  <41.987461, 36.931179, 34.602474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191677, 37.039532, 34.538013>,  <42.532036, 37.220123, 34.430580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191677, 37.039532, 34.538013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273641, 0.817352, 0.507007,
		-0.448430, 0.357916, -0.819028,
		-0.850900, -0.451477, 0.268584,
		41.936405, 36.904087, 34.618587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045464, 37.682323, 34.363819>,  <42.532036, 37.220123, 34.430580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045464, 37.682323, 34.363819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828087, 37.430103, 34.585480>,  <41.697662, 37.278770, 34.718475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828087, 37.430103, 34.585480>,  <42.045464, 37.682323, 34.363819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828087, 37.430103, 34.585480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496810, 0.773697, 0.393156,
		-0.676648, -0.061651, -0.733721,
		-0.543440, -0.630548, 0.554149,
		41.665054, 37.240940, 34.751724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314552, 37.827404, 34.315418>,  <42.045464, 37.682323, 34.363819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314552, 37.827404, 34.315418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353886, 37.644314, 34.668873>,  <41.377483, 37.534462, 34.880947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353886, 37.644314, 34.668873>,  <41.314552, 37.827404, 34.315418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353886, 37.644314, 34.668873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331663, 0.822106, 0.462755,
		-0.938259, -0.338575, -0.070971,
		0.098331, -0.457722, 0.883641,
		41.383385, 37.506996, 34.933964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789986, 38.007198, 34.815460>,  <41.314552, 37.827404, 34.315418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789986, 38.007198, 34.815460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072170, 37.884426, 35.070995>,  <41.241482, 37.810764, 35.224316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072170, 37.884426, 35.070995>,  <40.789986, 38.007198, 34.815460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072170, 37.884426, 35.070995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039708, 0.882831, 0.468009,
		-0.707630, -0.355532, 0.610620,
		0.705466, -0.306931, 0.638836,
		41.283810, 37.792347, 35.262646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549149, 38.145443, 35.558937>,  <40.789986, 38.007198, 34.815460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549149, 38.145443, 35.558937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935486, 38.083412, 35.641979>,  <41.167286, 38.046192, 35.691807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935486, 38.083412, 35.641979>,  <40.549149, 38.145443, 35.558937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935486, 38.083412, 35.641979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033865, 0.718762, 0.694431,
		-0.256911, -0.677741, 0.688959,
		0.965842, -0.155075, 0.207610,
		41.225239, 38.036888, 35.704262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620499, 38.140430, 36.304787>,  <40.549149, 38.145443, 35.558937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620499, 38.140430, 36.304787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988380, 38.193474, 36.156971>,  <41.209110, 38.225300, 36.068283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988380, 38.193474, 36.156971>,  <40.620499, 38.140430, 36.304787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988380, 38.193474, 36.156971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165023, 0.723485, 0.670326,
		0.356246, -0.677484, 0.643509,
		0.919704, 0.132607, -0.369539,
		41.264290, 38.233257, 36.046108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018341, 38.184559, 36.889080>,  <40.620499, 38.140430, 36.304787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018341, 38.184559, 36.889080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224983, 38.371613, 36.602184>,  <41.348969, 38.483845, 36.430046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224983, 38.371613, 36.602184>,  <41.018341, 38.184559, 36.889080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224983, 38.371613, 36.602184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147223, 0.776687, 0.612440,
		0.843468, -0.421986, 0.332398,
		0.516611, 0.467637, -0.717237,
		41.379967, 38.511902, 36.387012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505165, 38.610920, 37.242805>,  <41.018341, 38.184559, 36.889080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505165, 38.610920, 37.242805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532478, 38.745045, 36.866955>,  <41.548866, 38.825520, 36.641445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532478, 38.745045, 36.866955>,  <41.505165, 38.610920, 37.242805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532478, 38.745045, 36.866955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292606, 0.893678, 0.340178,
		0.953792, -0.298170, -0.037092,
		0.068283, 0.335312, -0.939629,
		41.552963, 38.845638, 36.585068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109577, 38.973755, 37.196243>,  <41.505165, 38.610920, 37.242805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109577, 38.973755, 37.196243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856152, 39.125904, 36.926750>,  <41.704098, 39.217194, 36.765057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856152, 39.125904, 36.926750>,  <42.109577, 38.973755, 37.196243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856152, 39.125904, 36.926750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102684, 0.904439, 0.414061,
		0.766845, 0.193153, -0.612079,
		-0.633565, 0.380371, -0.673731,
		41.666080, 39.240017, 36.724632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453537, 39.545311, 36.964207>,  <42.109577, 38.973755, 37.196243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453537, 39.545311, 36.964207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077919, 39.623848, 36.851318>,  <41.852551, 39.670971, 36.783585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077919, 39.623848, 36.851318>,  <42.453537, 39.545311, 36.964207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077919, 39.623848, 36.851318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097588, 0.939348, 0.328790,
		0.329660, 0.281207, -0.901248,
		-0.939043, 0.196340, -0.282223,
		41.796207, 39.682751, 36.766651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430943, 40.259758, 36.634865>,  <42.453537, 39.545311, 36.964207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430943, 40.259758, 36.634865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060593, 40.167156, 36.754307>,  <41.838383, 40.111595, 36.825974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060593, 40.167156, 36.754307>,  <42.430943, 40.259758, 36.634865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060593, 40.167156, 36.754307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057163, 0.867031, 0.494964,
		-0.373487, 0.441204, -0.815994,
		-0.925873, -0.231507, 0.298604,
		41.782829, 40.097706, 36.843887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995216, 40.844627, 36.412865>,  <42.430943, 40.259758, 36.634865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995216, 40.844627, 36.412865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795418, 40.663715, 36.708416>,  <41.675537, 40.555168, 36.885746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795418, 40.663715, 36.708416>,  <41.995216, 40.844627, 36.412865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795418, 40.663715, 36.708416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090104, 0.875397, 0.474934,
		-0.861617, 0.170652, -0.478011,
		-0.499498, -0.452282, 0.738880,
		41.645569, 40.528030, 36.930080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401562, 41.316078, 36.536007>,  <41.995216, 40.844627, 36.412865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401562, 41.316078, 36.536007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441883, 41.093353, 36.865807>,  <41.466076, 40.959721, 37.063686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441883, 41.093353, 36.865807>,  <41.401562, 41.316078, 36.536007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441883, 41.093353, 36.865807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037294, 0.830255, 0.556135,
		-0.994207, -0.025311, 0.104459,
		0.100804, -0.556809, 0.824501,
		41.472126, 40.926311, 37.113155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912060, 41.603558, 36.852673>,  <41.401562, 41.316078, 36.536007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912060, 41.603558, 36.852673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163616, 41.429031, 37.110085>,  <41.314548, 41.324318, 37.264530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163616, 41.429031, 37.110085>,  <40.912060, 41.603558, 36.852673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163616, 41.429031, 37.110085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171335, 0.885120, 0.432674,
		-0.758383, -0.161844, 0.631397,
		0.628887, -0.436313, 0.643530,
		41.352283, 41.298138, 37.303143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779839, 41.845928, 37.580757>,  <40.912060, 41.603558, 36.852673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779839, 41.845928, 37.580757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161770, 41.727169, 37.585770>,  <41.390930, 41.655914, 37.588776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161770, 41.727169, 37.585770>,  <40.779839, 41.845928, 37.580757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161770, 41.727169, 37.585770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282645, 0.920392, 0.270169,
		-0.091747, -0.254422, 0.962732,
		0.954827, -0.296898, 0.012532,
		41.448219, 41.638100, 37.589531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183659, 42.249481, 38.161186>,  <40.779839, 41.845928, 37.580757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183659, 42.249481, 38.161186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473885, 42.123955, 37.916214>,  <41.648018, 42.048637, 37.769230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473885, 42.123955, 37.916214>,  <41.183659, 42.249481, 38.161186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473885, 42.123955, 37.916214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562334, 0.783365, 0.264801,
		0.396659, -0.536522, 0.744853,
		0.725563, -0.313820, -0.612434,
		41.691555, 42.029808, 37.732483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828632, 42.314976, 38.470062>,  <41.183659, 42.249481, 38.161186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828632, 42.314976, 38.470062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925842, 42.353558, 38.083977>,  <41.984169, 42.376705, 37.852325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925842, 42.353558, 38.083977>,  <41.828632, 42.314976, 38.470062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925842, 42.353558, 38.083977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651787, 0.720707, 0.236125,
		0.718412, -0.686497, 0.112278,
		0.243019, 0.096454, -0.965214,
		41.998749, 42.382492, 37.794411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541290, 42.094234, 38.324741>,  <41.828632, 42.314976, 38.470062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541290, 42.094234, 38.324741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409199, 42.381649, 38.079906>,  <42.329945, 42.554100, 37.933006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409199, 42.381649, 38.079906>,  <42.541290, 42.094234, 38.324741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409199, 42.381649, 38.079906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643200, 0.645902, 0.411222,
		0.690826, -0.257893, -0.675464,
		-0.330232, 0.718541, -0.612083,
		42.310127, 42.597210, 37.896282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088131, 42.720520, 38.586243>,  <42.541290, 42.094234, 38.324741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.088131, 42.720520, 38.586243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177132, 42.798065, 38.204056>,  <43.230534, 42.844593, 37.974743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177132, 42.798065, 38.204056>,  <43.088131, 42.720520, 38.586243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177132, 42.798065, 38.204056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350751, -0.930326, -0.107081,
		-0.909651, -0.311304, -0.274998,
		0.222504, 0.193862, -0.955463,
		43.243881, 42.856224, 37.917416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710766, 42.939178, 38.097771>,  <43.088131, 42.720520, 38.586243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710766, 42.939178, 38.097771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612160, 43.220188, 38.364811>,  <43.552998, 43.388794, 38.525036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612160, 43.220188, 38.364811>,  <43.710766, 42.939178, 38.097771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612160, 43.220188, 38.364811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925045, 0.034850, -0.378255,
		-0.289001, -0.710802, 0.641279,
		-0.246516, 0.702528, 0.667596,
		43.538204, 43.430946, 38.565090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478531, 42.790230, 38.174385>,  <43.710766, 42.939178, 38.097771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478531, 42.790230, 38.174385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865166, 42.851940, 38.092506>,  <45.097149, 42.888966, 38.043381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865166, 42.851940, 38.092506>,  <44.478531, 42.790230, 38.174385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865166, 42.851940, 38.092506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137711, -0.360983, -0.922349,
		-0.216186, 0.919723, -0.327678,
		0.966592, 0.154274, -0.204695,
		45.155144, 42.898224, 38.031097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606453, 43.045944, 37.430969>,  <44.478531, 42.790230, 38.174385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606453, 43.045944, 37.430969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951160, 42.869381, 37.530983>,  <45.157986, 42.763443, 37.590992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951160, 42.869381, 37.530983>,  <44.606453, 43.045944, 37.430969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951160, 42.869381, 37.530983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105864, -0.638490, -0.762314,
		0.496132, 0.630469, -0.596960,
		0.861769, -0.441405, 0.250031,
		45.209690, 42.736958, 37.605991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132092, 42.954460, 36.848629>,  <44.606453, 43.045944, 37.430969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132092, 42.954460, 36.848629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121258, 42.654922, 37.113506>,  <45.114758, 42.475201, 37.272434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121258, 42.654922, 37.113506>,  <45.132092, 42.954460, 36.848629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121258, 42.654922, 37.113506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187877, -0.646817, -0.739142,
		0.981819, -0.144428, -0.123173,
		-0.027082, -0.748845, 0.662192,
		45.113132, 42.430267, 37.312164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539162, 42.319172, 36.434868>,  <45.132092, 42.954460, 36.848629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539162, 42.319172, 36.434868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283245, 42.223263, 36.726944>,  <45.129696, 42.165718, 36.902187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283245, 42.223263, 36.726944>,  <45.539162, 42.319172, 36.434868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.283245, 42.223263, 36.726944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318070, -0.782298, -0.535576,
		0.699639, -0.574909, 0.424246,
		-0.639794, -0.239771, 0.730187,
		45.091309, 42.151333, 36.945999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808041, 41.618195, 36.661301>,  <45.539162, 42.319172, 36.434868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808041, 41.618195, 36.661301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419418, 41.636314, 36.754276>,  <45.186245, 41.647186, 36.810062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419418, 41.636314, 36.754276>,  <45.808041, 41.618195, 36.661301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419418, 41.636314, 36.754276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153065, -0.869072, -0.470410,
		0.180697, -0.492608, 0.851285,
		-0.971555, 0.045300, 0.232440,
		45.127953, 41.649906, 36.824009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644890, 40.993534, 36.852879>,  <45.808041, 41.618195, 36.661301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644890, 40.993534, 36.852879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302334, 41.138836, 36.706100>,  <45.096802, 41.226017, 36.618034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302334, 41.138836, 36.706100>,  <45.644890, 40.993534, 36.852879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302334, 41.138836, 36.706100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125436, -0.835744, -0.534601,
		-0.500865, -0.411799, 0.761286,
		-0.856388, 0.363256, -0.366940,
		45.045418, 41.247814, 36.596020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103943, 40.546711, 37.051487>,  <45.644890, 40.993534, 36.852879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103943, 40.546711, 37.051487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969425, 40.741394, 36.728992>,  <44.888714, 40.858204, 36.535496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969425, 40.741394, 36.728992>,  <45.103943, 40.546711, 37.051487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969425, 40.741394, 36.728992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248170, -0.871642, -0.422671,
		-0.908470, 0.057942, 0.413915,
		-0.336296, 0.486705, -0.806240,
		44.868538, 40.887405, 36.487122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534416, 40.235237, 36.882278>,  <45.103943, 40.546711, 37.051487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534416, 40.235237, 36.882278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623219, 40.451542, 36.557739>,  <44.676498, 40.581326, 36.363014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623219, 40.451542, 36.557739>,  <44.534416, 40.235237, 36.882278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623219, 40.451542, 36.557739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163079, -0.799802, -0.577687,
		-0.961312, 0.260562, -0.089371,
		0.222003, 0.540763, -0.811351,
		44.689819, 40.613770, 36.314335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034065, 39.999195, 36.355930>,  <44.534416, 40.235237, 36.882278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034065, 39.999195, 36.355930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295059, 40.217869, 36.146019>,  <44.451656, 40.349075, 36.020073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295059, 40.217869, 36.146019>,  <44.034065, 39.999195, 36.355930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295059, 40.217869, 36.146019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099614, -0.624615, -0.774554,
		-0.751222, 0.557663, -0.353096,
		0.652489, 0.546689, -0.524776,
		44.490807, 40.381874, 35.988586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712727, 40.206905, 35.626881>,  <44.034065, 39.999195, 36.355930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712727, 40.206905, 35.626881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109001, 40.193943, 35.573971>,  <44.346764, 40.186165, 35.542225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109001, 40.193943, 35.573971>,  <43.712727, 40.206905, 35.626881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109001, 40.193943, 35.573971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122247, -0.639634, -0.758896,
		-0.060018, 0.767996, -0.637636,
		0.990683, -0.032402, -0.132275,
		44.406208, 40.184223, 35.534286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850243, 40.221127, 34.880871>,  <43.712727, 40.206905, 35.626881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850243, 40.221127, 34.880871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175091, 40.068390, 35.057354>,  <44.369999, 39.976749, 35.163242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175091, 40.068390, 35.057354>,  <43.850243, 40.221127, 34.880871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175091, 40.068390, 35.057354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020730, -0.774547, -0.632177,
		0.583126, 0.504256, -0.636938,
		0.812117, -0.381843, 0.441205,
		44.418724, 39.953838, 35.189716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308529, 40.000736, 34.352356>,  <43.850243, 40.221127, 34.880871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308529, 40.000736, 34.352356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453861, 39.816357, 34.676212>,  <44.541061, 39.705730, 34.870525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453861, 39.816357, 34.676212>,  <44.308529, 40.000736, 34.352356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453861, 39.816357, 34.676212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109657, -0.841833, -0.528481,
		0.925184, 0.280797, -0.255319,
		0.363332, -0.460945, 0.809642,
		44.562862, 39.678074, 34.919106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925068, 39.663261, 34.076538>,  <44.308529, 40.000736, 34.352356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925068, 39.663261, 34.076538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769653, 39.492966, 34.403412>,  <44.676407, 39.390789, 34.599537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769653, 39.492966, 34.403412>,  <44.925068, 39.663261, 34.076538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769653, 39.492966, 34.403412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077122, -0.898775, -0.431573,
		0.918202, -0.104657, 0.382037,
		-0.388533, -0.425735, 0.817186,
		44.653095, 39.365246, 34.648567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274879, 39.117199, 34.215622>,  <44.925068, 39.663261, 34.076538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274879, 39.117199, 34.215622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954163, 39.004181, 34.426258>,  <44.761734, 38.936371, 34.552639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954163, 39.004181, 34.426258>,  <45.274879, 39.117199, 34.215622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954163, 39.004181, 34.426258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135206, -0.944088, -0.300696,
		0.582111, -0.169897, 0.795162,
		-0.801789, -0.282549, 0.526593,
		44.713627, 38.919415, 34.584236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516167, 38.488594, 34.520203>,  <45.274879, 39.117199, 34.215622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516167, 38.488594, 34.520203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116333, 38.477123, 34.519958>,  <44.876431, 38.470242, 34.519810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116333, 38.477123, 34.519958>,  <45.516167, 38.488594, 34.520203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116333, 38.477123, 34.519958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027991, -0.970655, -0.238843,
		0.006253, -0.238762, 0.971058,
		-0.999589, -0.028675, -0.000614,
		44.816456, 38.468521, 34.519775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450470, 38.103676, 35.094292>,  <45.516167, 38.488594, 34.520203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450470, 38.103676, 35.094292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135620, 38.096077, 34.847691>,  <44.946709, 38.091518, 34.699730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135620, 38.096077, 34.847691>,  <45.450470, 38.103676, 35.094292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135620, 38.096077, 34.847691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114952, -0.986532, -0.116367,
		-0.605984, -0.162463, 0.778710,
		-0.787127, -0.018998, -0.616498,
		44.899483, 38.090378, 34.662743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165817, 37.428699, 35.260086>,  <45.450470, 38.103676, 35.094292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165817, 37.428699, 35.260086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.975960, 37.528496, 34.922455>,  <44.862045, 37.588375, 34.719875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.975960, 37.528496, 34.922455>,  <45.165817, 37.428699, 35.260086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.975960, 37.528496, 34.922455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020091, -0.955665, -0.293769,
		-0.879949, -0.156394, 0.448587,
		-0.474643, 0.249489, -0.844079,
		44.833569, 37.603344, 34.669231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602398, 36.990078, 35.305317>,  <45.165817, 37.428699, 35.260086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602398, 36.990078, 35.305317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663464, 37.095272, 34.924259>,  <44.700104, 37.158390, 34.695625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663464, 37.095272, 34.924259>,  <44.602398, 36.990078, 35.305317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663464, 37.095272, 34.924259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140460, -0.948385, -0.284318,
		-0.978245, 0.177214, -0.107848,
		0.152666, 0.262985, -0.952645,
		44.709263, 37.174168, 34.638466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993351, 36.759037, 34.842384>,  <44.602398, 36.990078, 35.305317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993351, 36.759037, 34.842384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335739, 36.787388, 34.637527>,  <44.541172, 36.804398, 34.514614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335739, 36.787388, 34.637527>,  <43.993351, 36.759037, 34.842384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335739, 36.787388, 34.637527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130801, -0.928652, -0.347125,
		-0.500207, 0.364118, -0.785628,
		0.855970, 0.070873, -0.512145,
		44.592529, 36.808651, 34.483883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875340, 36.332977, 34.318768>,  <43.993351, 36.759037, 34.842384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875340, 36.332977, 34.318768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269733, 36.372940, 34.265331>,  <44.506371, 36.396915, 34.233269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269733, 36.372940, 34.265331>,  <43.875340, 36.332977, 34.318768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269733, 36.372940, 34.265331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037692, -0.913538, -0.405004,
		-0.162498, 0.394294, -0.904503,
		0.985988, 0.099905, -0.133587,
		44.565529, 36.402912, 34.225254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907192, 35.889473, 33.751324>,  <43.875340, 36.332977, 34.318768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907192, 35.889473, 33.751324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282345, 35.946045, 33.878056>,  <44.507435, 35.979988, 33.954094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282345, 35.946045, 33.878056>,  <43.907192, 35.889473, 33.751324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282345, 35.946045, 33.878056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242752, -0.919907, -0.307964,
		0.247895, 0.365743, -0.897095,
		0.937880, 0.141429, 0.316825,
		44.563709, 35.988472, 33.973103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386738, 35.596973, 33.256176>,  <43.907192, 35.889473, 33.751324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386738, 35.596973, 33.256176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613556, 35.621334, 33.584751>,  <44.749645, 35.635948, 33.781895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613556, 35.621334, 33.584751>,  <44.386738, 35.596973, 33.256176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613556, 35.621334, 33.584751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238383, -0.966719, -0.092888,
		0.788441, 0.248488, -0.562686,
		0.567040, 0.060898, 0.821436,
		44.783669, 35.639603, 33.831181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064270, 35.295921, 33.133656>,  <44.386738, 35.596973, 33.256176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064270, 35.295921, 33.133656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036152, 35.290154, 33.532623>,  <45.019283, 35.286694, 33.772003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036152, 35.290154, 33.532623>,  <45.064270, 35.295921, 33.133656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036152, 35.290154, 33.532623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079858, -0.996768, -0.008784,
		0.994325, 0.079035, 0.071214,
		-0.070290, -0.014421, 0.997423,
		45.015064, 35.285828, 33.831848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568325, 34.771572, 33.254295>,  <45.064270, 35.295921, 33.133656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568325, 34.771572, 33.254295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357525, 34.803074, 33.592777>,  <45.231045, 34.821976, 33.795868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357525, 34.803074, 33.592777>,  <45.568325, 34.771572, 33.254295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357525, 34.803074, 33.592777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153212, -0.970578, 0.185751,
		0.835941, 0.227540, 0.499428,
		-0.527000, 0.078759, 0.846208,
		45.199425, 34.826702, 33.846642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966587, 34.399738, 33.813896>,  <45.568325, 34.771572, 33.254295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966587, 34.399738, 33.813896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573658, 34.414513, 33.887299>,  <45.337898, 34.423378, 33.931339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573658, 34.414513, 33.887299>,  <45.966587, 34.399738, 33.813896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573658, 34.414513, 33.887299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036687, -0.999315, 0.004754,
		0.183556, -0.002062, 0.983007,
		-0.982324, 0.036936, 0.183506,
		45.278961, 34.425594, 33.942348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814377, 34.035866, 34.425251>,  <45.966587, 34.399738, 33.813896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814377, 34.035866, 34.425251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486427, 34.060871, 34.197601>,  <45.289658, 34.075874, 34.061012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486427, 34.060871, 34.197601>,  <45.814377, 34.035866, 34.425251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.486427, 34.060871, 34.197601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190220, -0.967299, 0.167776,
		-0.540026, 0.245814, 0.804952,
		-0.819871, 0.062515, -0.569125,
		45.240467, 34.079624, 34.026863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.063644, 34.683777, 34.611183>,  <45.814377, 34.035866, 34.425251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.063644, 34.683777, 34.611183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358978, 34.904572, 34.456177>,  <46.536179, 35.037048, 34.363174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358978, 34.904572, 34.456177>,  <46.063644, 34.683777, 34.611183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358978, 34.904572, 34.456177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641717, -0.398194, 0.655470,
		0.207506, -0.732632, -0.648222,
		0.738336, 0.551990, -0.387515,
		46.580479, 35.070168, 34.339924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676968, 34.266338, 34.242115>,  <46.063644, 34.683777, 34.611183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676968, 34.266338, 34.242115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786678, 34.611267, 34.412373>,  <46.852505, 34.818226, 34.514526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786678, 34.611267, 34.412373>,  <46.676968, 34.266338, 34.242115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.786678, 34.611267, 34.412373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676454, -0.487603, 0.551953,
		0.683506, 0.136539, -0.717061,
		0.274278, 0.862323, 0.425642,
		46.868961, 34.869965, 34.540066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.401249, 34.319756, 34.242558>,  <46.676968, 34.266338, 34.242115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.401249, 34.319756, 34.242558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266819, 34.558624, 34.533882>,  <47.186161, 34.701946, 34.708679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266819, 34.558624, 34.533882>,  <47.401249, 34.319756, 34.242558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.266819, 34.558624, 34.533882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772751, -0.267242, 0.575706,
		0.538429, 0.756288, -0.371649,
		-0.336079, 0.597169, 0.728313,
		47.165997, 34.737774, 34.752377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.940308, 34.839554, 34.424793>,  <47.401249, 34.319756, 34.242558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.940308, 34.839554, 34.424793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718941, 34.753567, 34.746670>,  <47.586121, 34.701977, 34.939796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718941, 34.753567, 34.746670>,  <47.940308, 34.839554, 34.424793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718941, 34.753567, 34.746670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826982, -0.256827, 0.500141,
		0.099153, 0.942248, 0.319903,
		-0.553417, -0.214963, 0.804687,
		47.552917, 34.689079, 34.988075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.041595, 41.530949, 38.835697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.683403, 41.392822, 38.723362>,  <29.468489, 41.309944, 38.655960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.683403, 41.392822, 38.723362>,  <30.041595, 41.530949, 38.835697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683403, 41.392822, 38.723362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444813, -0.717011, -0.536690,
		-0.016036, -0.605516, 0.795672,
		-0.895480, -0.345319, -0.280839,
		29.414759, 41.289227, 38.639111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109167, 40.824806, 38.929642>,  <30.041595, 41.530949, 38.835697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109167, 40.824806, 38.929642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.791452, 40.853035, 38.688271>,  <29.600822, 40.869972, 38.543449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.791452, 40.853035, 38.688271>,  <30.109167, 40.824806, 38.929642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791452, 40.853035, 38.688271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412704, -0.666212, -0.621158,
		-0.445848, -0.742416, 0.500038,
		-0.794289, 0.070574, -0.603427,
		29.553165, 40.874207, 38.507244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916758, 40.136581, 38.858021>,  <30.109167, 40.824806, 38.929642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916758, 40.136581, 38.858021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.732220, 40.341629, 38.568363>,  <29.621496, 40.464657, 38.394569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.732220, 40.341629, 38.568363>,  <29.916758, 40.136581, 38.858021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732220, 40.341629, 38.568363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322289, -0.663609, -0.675095,
		-0.826615, -0.544834, 0.140940,
		-0.461344, 0.512620, -0.724143,
		29.593817, 40.495415, 38.351120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481144, 39.590813, 38.464592>,  <29.916758, 40.136581, 38.858021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481144, 39.590813, 38.464592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.516006, 39.896755, 38.209278>,  <29.536924, 40.080318, 38.056091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.516006, 39.896755, 38.209278>,  <29.481144, 39.590813, 38.464592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516006, 39.896755, 38.209278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367196, -0.620270, -0.693133,
		-0.926051, -0.173964, -0.334911,
		0.087155, 0.764854, -0.638280,
		29.542152, 40.126213, 38.017796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091625, 39.433735, 37.838451>,  <29.481144, 39.590813, 38.464592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091625, 39.433735, 37.838451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.359283, 39.713223, 37.737228>,  <29.519878, 39.880913, 37.676495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.359283, 39.713223, 37.737228>,  <29.091625, 39.433735, 37.838451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359283, 39.713223, 37.737228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271021, -0.546534, -0.792369,
		-0.691946, 0.461626, -0.555078,
		0.669147, 0.698715, -0.253061,
		29.560028, 39.922836, 37.661308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059816, 39.623131, 37.136398>,  <29.091625, 39.433735, 37.838451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059816, 39.623131, 37.136398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.437298, 39.722210, 37.224094>,  <29.663788, 39.781658, 37.276711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.437298, 39.722210, 37.224094>,  <29.059816, 39.623131, 37.136398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437298, 39.722210, 37.224094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329358, -0.642004, -0.692354,
		-0.030743, 0.725587, -0.687444,
		0.943704, 0.247700, 0.219241,
		29.720409, 39.796520, 37.289867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468607, 39.489647, 36.430336>,  <29.059816, 39.623131, 37.136398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468607, 39.489647, 36.430336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.771252, 39.529148, 36.688881>,  <29.952839, 39.552849, 36.844009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.771252, 39.529148, 36.688881>,  <29.468607, 39.489647, 36.430336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771252, 39.529148, 36.688881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593036, -0.520006, -0.614737,
		0.275407, 0.848435, -0.452006,
		0.756610, 0.098753, 0.646366,
		29.998234, 39.558773, 36.882790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982670, 39.592289, 35.955353>,  <29.468607, 39.489647, 36.430336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982670, 39.592289, 35.955353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.154325, 39.475086, 36.297112>,  <30.257318, 39.404766, 36.502167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.154325, 39.475086, 36.297112>,  <29.982670, 39.592289, 35.955353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154325, 39.475086, 36.297112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784136, -0.348630, -0.513408,
		0.448297, 0.890285, 0.080143,
		0.429139, -0.293002, 0.854394,
		30.283068, 39.387184, 36.553429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586830, 39.782967, 35.891800>,  <29.982670, 39.592289, 35.955353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586830, 39.782967, 35.891800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.632086, 39.535069, 36.202442>,  <30.659239, 39.386330, 36.388828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.632086, 39.535069, 36.202442>,  <30.586830, 39.782967, 35.891800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632086, 39.535069, 36.202442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896156, -0.273887, -0.349127,
		0.429072, 0.735457, 0.524404,
		0.113141, -0.619749, 0.776602,
		30.666029, 39.349144, 36.435421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232731, 39.965115, 36.057247>,  <30.586830, 39.782967, 35.891800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232731, 39.965115, 36.057247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.098583, 39.605232, 36.168995>,  <31.018095, 39.389301, 36.236046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.098583, 39.605232, 36.168995>,  <31.232731, 39.965115, 36.057247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098583, 39.605232, 36.168995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889979, -0.399826, -0.219264,
		0.308975, 0.175102, 0.934812,
		-0.335368, -0.899710, 0.279373,
		30.997972, 39.335320, 36.252808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777805, 39.690262, 36.534924>,  <31.232731, 39.965115, 36.057247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777805, 39.690262, 36.534924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.573179, 39.384682, 36.377602>,  <31.450403, 39.201336, 36.283211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.573179, 39.384682, 36.377602>,  <31.777805, 39.690262, 36.534924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573179, 39.384682, 36.377602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853692, -0.503843, -0.131726,
		-0.097530, -0.403144, 0.909925,
		-0.511564, -0.763948, -0.393301,
		31.419710, 39.155499, 36.259613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107674, 39.184177, 36.903084>,  <31.777805, 39.690262, 36.534924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107674, 39.184177, 36.903084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.878174, 39.035774, 36.611012>,  <31.740473, 38.946732, 36.435768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.878174, 39.035774, 36.611012>,  <32.107674, 39.184177, 36.903084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878174, 39.035774, 36.611012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754480, -0.586323, -0.294934,
		-0.318701, -0.720126, 0.616318,
		-0.573751, -0.371004, -0.730182,
		31.706049, 38.924473, 36.391956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179180, 38.379047, 37.078266>,  <32.107674, 39.184177, 36.903084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179180, 38.379047, 37.078266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.041821, 38.410774, 36.703934>,  <31.959406, 38.429810, 36.479332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.041821, 38.410774, 36.703934>,  <32.179180, 38.379047, 37.078266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041821, 38.410774, 36.703934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659364, -0.689219, -0.300362,
		-0.668818, -0.720199, 0.184379,
		-0.343398, 0.079315, -0.935835,
		31.938801, 38.434570, 36.423183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147038, 37.695656, 36.816803>,  <32.179180, 38.379047, 37.078266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147038, 37.695656, 36.816803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.134621, 37.921497, 36.486893>,  <32.127171, 38.057003, 36.288944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.134621, 37.921497, 36.486893>,  <32.147038, 37.695656, 36.816803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134621, 37.921497, 36.486893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591728, -0.654651, -0.470414,
		-0.805539, -0.502647, -0.313770,
		-0.031042, 0.564604, -0.824778,
		32.125309, 38.090878, 36.239460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931005, 37.268318, 36.268044>,  <32.147038, 37.695656, 36.816803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931005, 37.268318, 36.268044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.145084, 37.560280, 36.097961>,  <32.273533, 37.735458, 35.995911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.145084, 37.560280, 36.097961>,  <31.931005, 37.268318, 36.268044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145084, 37.560280, 36.097961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523394, -0.681633, -0.511307,
		-0.663042, 0.051099, -0.746836,
		0.535196, 0.729908, -0.425207,
		32.305641, 37.779251, 35.970398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040569, 37.030930, 35.643566>,  <31.931005, 37.268318, 36.268044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040569, 37.030930, 35.643566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.309959, 37.326595, 35.646896>,  <32.471596, 37.503994, 35.648895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.309959, 37.326595, 35.646896>,  <32.040569, 37.030930, 35.643566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309959, 37.326595, 35.646896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550176, -0.493695, -0.673477,
		-0.493695, 0.458154, -0.739161,
		0.673477, 0.739161, 0.008330,
		32.512001, 37.548344, 35.649395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183372, 37.177998, 34.892803>,  <32.040569, 37.030930, 35.643566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183372, 37.177998, 34.892803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.499855, 37.319828, 35.092110>,  <32.689743, 37.404926, 35.211693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.499855, 37.319828, 35.092110>,  <32.183372, 37.177998, 34.892803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499855, 37.319828, 35.092110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596504, -0.267842, -0.756600,
		-0.134813, 0.895845, -0.423423,
		0.791207, 0.354573, 0.498267,
		32.737217, 37.426201, 35.241589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530388, 37.697300, 34.405891>,  <32.183372, 37.177998, 34.892803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530388, 37.697300, 34.405891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.785828, 37.576550, 34.689037>,  <32.939091, 37.504101, 34.858925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.785828, 37.576550, 34.689037>,  <32.530388, 37.697300, 34.405891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785828, 37.576550, 34.689037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715034, -0.107267, -0.690811,
		0.284469, 0.947294, 0.147351,
		0.638595, -0.301875, 0.707861,
		32.977406, 37.485989, 34.901394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218609, 38.017769, 34.271729>,  <32.530388, 37.697300, 34.405891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218609, 38.017769, 34.271729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.269192, 37.688953, 34.493816>,  <33.299541, 37.491665, 34.627068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.269192, 37.688953, 34.493816>,  <33.218609, 38.017769, 34.271729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269192, 37.688953, 34.493816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732024, -0.300391, -0.611478,
		0.669439, 0.483761, 0.563762,
		0.126461, -0.822035, 0.555218,
		33.307129, 37.442345, 34.660381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905434, 37.856602, 34.216980>,  <33.218609, 38.017769, 34.271729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905434, 37.856602, 34.216980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.795494, 37.513042, 34.389839>,  <33.729530, 37.306908, 34.493553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.795494, 37.513042, 34.389839>,  <33.905434, 37.856602, 34.216980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795494, 37.513042, 34.389839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755470, -0.470940, -0.455501,
		0.594744, 0.201280, 0.778310,
		-0.274854, -0.858896, 0.432149,
		33.713039, 37.255375, 34.519485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553715, 37.538715, 34.413284>,  <33.905434, 37.856602, 34.216980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553715, 37.538715, 34.413284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.274754, 37.252804, 34.392426>,  <34.107376, 37.081257, 34.379910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.274754, 37.252804, 34.392426>,  <34.553715, 37.538715, 34.413284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274754, 37.252804, 34.392426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623055, -0.568738, -0.536973,
		0.354155, -0.406982, 0.841986,
		-0.697408, -0.714775, -0.052150,
		34.065533, 37.038372, 34.376781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908535, 36.920780, 34.490379>,  <34.553715, 37.538715, 34.413284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908535, 36.920780, 34.490379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563759, 36.832710, 34.307693>,  <34.356892, 36.779869, 34.198082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563759, 36.832710, 34.307693>,  <34.908535, 36.920780, 34.490379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563759, 36.832710, 34.307693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500935, -0.508855, -0.700093,
		-0.078259, -0.832220, 0.548894,
		-0.861940, -0.220172, -0.456711,
		34.305176, 36.766659, 34.170681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912987, 36.192341, 34.314335>,  <34.908535, 36.920780, 34.490379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912987, 36.192341, 34.314335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673397, 36.399704, 34.070210>,  <34.529644, 36.524120, 33.923733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673397, 36.399704, 34.070210>,  <34.912987, 36.192341, 34.314335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673397, 36.399704, 34.070210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516054, -0.332891, -0.789223,
		-0.612306, -0.787679, -0.068133,
		-0.598974, 0.518406, -0.610316,
		34.493706, 36.555225, 33.887115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450253, 36.451935, 34.721729>,  <34.912987, 36.192341, 34.314335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450253, 36.451935, 34.721729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764336, 36.691563, 34.784420>,  <35.952785, 36.835339, 34.822037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764336, 36.691563, 34.784420>,  <35.450253, 36.451935, 34.721729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764336, 36.691563, 34.784420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374186, 0.257363, 0.890926,
		0.493391, -0.758208, 0.426247,
		0.785207, 0.599070, 0.156730,
		35.999897, 36.871284, 34.831440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619923, 36.361469, 35.394836>,  <35.450253, 36.451935, 34.721729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619923, 36.361469, 35.394836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792858, 36.706432, 35.289505>,  <35.896618, 36.913410, 35.226307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792858, 36.706432, 35.289505>,  <35.619923, 36.361469, 35.394836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792858, 36.706432, 35.289505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303479, 0.414158, 0.858122,
		0.849108, -0.291084, 0.440778,
		0.432337, 0.862406, -0.263327,
		35.922558, 36.965153, 35.210506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052410, 36.552521, 35.951103>,  <35.619923, 36.361469, 35.394836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052410, 36.552521, 35.951103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.985344, 36.881840, 35.734192>,  <35.945103, 37.079433, 35.604046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.985344, 36.881840, 35.734192>,  <36.052410, 36.552521, 35.951103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985344, 36.881840, 35.734192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384534, 0.451878, 0.804947,
		0.907756, 0.343486, 0.240823,
		-0.167665, 0.823301, -0.542277,
		35.935043, 37.128830, 35.571510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404724, 37.101341, 36.442535>,  <36.052410, 36.552521, 35.951103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404724, 37.101341, 36.442535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.162525, 37.271866, 36.173721>,  <36.017204, 37.374180, 36.012432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.162525, 37.271866, 36.173721>,  <36.404724, 37.101341, 36.442535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162525, 37.271866, 36.173721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278110, 0.677850, 0.680569,
		0.745672, 0.598984, -0.291877,
		-0.605498, 0.426307, -0.672037,
		35.980877, 37.399757, 35.972111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517094, 37.820393, 36.452248>,  <36.404724, 37.101341, 36.442535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517094, 37.820393, 36.452248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143219, 37.787224, 36.313980>,  <35.918896, 37.767323, 36.231018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143219, 37.787224, 36.313980>,  <36.517094, 37.820393, 36.452248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143219, 37.787224, 36.313980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326371, 0.585555, 0.742029,
		0.140878, 0.806380, -0.574373,
		-0.934685, -0.082923, -0.345670,
		35.862812, 37.762348, 36.210278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303722, 38.484589, 36.516399>,  <36.517094, 37.820393, 36.452248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303722, 38.484589, 36.516399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970284, 38.264214, 36.500526>,  <35.770218, 38.131989, 36.491005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970284, 38.264214, 36.500526>,  <36.303722, 38.484589, 36.516399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970284, 38.264214, 36.500526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488292, 0.701416, 0.519217,
		-0.258225, 0.452195, -0.853721,
		-0.833601, -0.550940, -0.039680,
		35.720203, 38.098930, 36.488621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730400, 38.949585, 36.448311>,  <36.303722, 38.484589, 36.516399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730400, 38.949585, 36.448311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537045, 38.614300, 36.549290>,  <35.421032, 38.413128, 36.609879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537045, 38.614300, 36.549290>,  <35.730400, 38.949585, 36.448311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537045, 38.614300, 36.549290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696214, 0.542924, 0.469594,
		-0.530683, 0.051235, -0.846020,
		-0.483385, -0.838217, 0.252450,
		35.392029, 38.362835, 36.625023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007595, 39.095280, 36.381226>,  <35.730400, 38.949585, 36.448311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007595, 39.095280, 36.381226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034077, 38.791527, 36.640133>,  <35.049965, 38.609276, 36.795475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034077, 38.791527, 36.640133>,  <35.007595, 39.095280, 36.381226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034077, 38.791527, 36.640133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639996, 0.465358, 0.611430,
		-0.765521, -0.454727, -0.455194,
		0.066206, -0.759385, 0.647265,
		35.053940, 38.563713, 36.834312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351025, 38.881977, 36.407795>,  <35.007595, 39.095280, 36.381226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351025, 38.881977, 36.407795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.530434, 38.768166, 36.746704>,  <34.638077, 38.699879, 36.950050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.530434, 38.768166, 36.746704>,  <34.351025, 38.881977, 36.407795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530434, 38.768166, 36.746704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723457, 0.441076, 0.531096,
		-0.524824, -0.851173, -0.008012,
		0.448521, -0.284528, 0.847274,
		34.664989, 38.682808, 37.000885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762524, 38.751114, 36.851410>,  <34.351025, 38.881977, 36.407795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762524, 38.751114, 36.851410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076736, 38.792660, 37.095428>,  <34.265263, 38.817589, 37.241840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076736, 38.792660, 37.095428>,  <33.762524, 38.751114, 36.851410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076736, 38.792660, 37.095428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605413, 0.333106, 0.722853,
		-0.128129, -0.937151, 0.324547,
		0.785531, 0.103866, 0.610044,
		34.312397, 38.823818, 37.278442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594410, 38.330963, 37.446472>,  <33.762524, 38.751114, 36.851410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594410, 38.330963, 37.446472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.852924, 38.615215, 37.557697>,  <34.008034, 38.785767, 37.624432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.852924, 38.615215, 37.557697>,  <33.594410, 38.330963, 37.446472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852924, 38.615215, 37.557697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671127, 0.355885, 0.650334,
		0.363199, -0.606906, 0.706931,
		0.646278, 0.710641, 0.278054,
		34.046810, 38.828403, 37.641117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507622, 38.321808, 38.141369>,  <33.594410, 38.330963, 37.446472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507622, 38.321808, 38.141369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679188, 38.673168, 38.057053>,  <33.782127, 38.883984, 38.006462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679188, 38.673168, 38.057053>,  <33.507622, 38.321808, 38.141369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679188, 38.673168, 38.057053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706694, 0.471632, 0.527396,
		0.562683, -0.077246, 0.823056,
		0.428919, 0.878405, -0.210790,
		33.807865, 38.936691, 37.993816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560127, 38.699856, 38.700741>,  <33.507622, 38.321808, 38.141369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560127, 38.699856, 38.700741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605350, 38.997047, 38.436859>,  <33.632484, 39.175362, 38.278530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605350, 38.997047, 38.436859>,  <33.560127, 38.699856, 38.700741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605350, 38.997047, 38.436859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705604, 0.527493, 0.473152,
		0.699529, 0.411995, 0.583884,
		0.113059, 0.742974, -0.659702,
		33.639267, 39.219940, 38.238949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860958, 39.273487, 38.976784>,  <33.560127, 38.699856, 38.700741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860958, 39.273487, 38.976784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.651173, 39.407707, 38.663776>,  <33.525299, 39.488239, 38.475971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.651173, 39.407707, 38.663776>,  <33.860958, 39.273487, 38.976784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651173, 39.407707, 38.663776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605179, 0.499575, 0.619825,
		0.598909, 0.798645, -0.058944,
		-0.524467, 0.335548, -0.782523,
		33.493832, 39.508373, 38.429020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689503, 39.900364, 39.190945>,  <33.860958, 39.273487, 38.976784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689503, 39.900364, 39.190945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461170, 39.868839, 38.864033>,  <33.324169, 39.849926, 38.667885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461170, 39.868839, 38.864033>,  <33.689503, 39.900364, 39.190945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461170, 39.868839, 38.864033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731362, 0.501209, 0.462492,
		0.373176, 0.861730, -0.343747,
		-0.570832, -0.078813, -0.817276,
		33.289921, 39.845196, 38.618851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485077, 40.555668, 39.022923>,  <33.689503, 39.900364, 39.190945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485077, 40.555668, 39.022923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.223301, 40.303261, 38.856297>,  <33.066235, 40.151817, 38.756321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.223301, 40.303261, 38.856297>,  <33.485077, 40.555668, 39.022923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223301, 40.303261, 38.856297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752586, 0.596756, 0.278382,
		0.072924, 0.495685, -0.865435,
		-0.654444, -0.631013, -0.416564,
		33.026966, 40.113956, 38.731327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001541, 40.995358, 38.544785>,  <33.485077, 40.555668, 39.022923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001541, 40.995358, 38.544785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.839508, 40.650505, 38.666527>,  <32.742287, 40.443592, 38.739571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.839508, 40.650505, 38.666527>,  <33.001541, 40.995358, 38.544785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839508, 40.650505, 38.666527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840516, 0.482158, 0.247097,
		-0.359777, -0.155718, -0.919953,
		-0.405085, -0.862134, 0.304352,
		32.717983, 40.391865, 38.757832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.085464, 41.133015, 38.307003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083694, 40.795345, 38.521423>,  <32.082634, 40.592743, 38.650074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083694, 40.795345, 38.521423>,  <32.085464, 41.133015, 38.307003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083694, 40.795345, 38.521423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669986, 0.400452, 0.625106,
		-0.742361, -0.356382, -0.567356,
		-0.004423, -0.844174, 0.536050,
		32.082367, 40.542091, 38.682240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357952, 40.828217, 38.493702>,  <32.085464, 41.133015, 38.307003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357952, 40.828217, 38.493702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616432, 40.692406, 38.767094>,  <31.771521, 40.610920, 38.931129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616432, 40.692406, 38.767094>,  <31.357952, 40.828217, 38.493702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616432, 40.692406, 38.767094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548893, 0.415455, 0.725337,
		-0.530227, -0.843871, 0.082102,
		0.646201, -0.339528, 0.683481,
		31.810293, 40.590546, 38.972137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921883, 40.615326, 38.945900>,  <31.357952, 40.828217, 38.493702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921883, 40.615326, 38.945900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.255749, 40.664951, 39.160542>,  <31.456068, 40.694725, 39.289326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.255749, 40.664951, 39.160542>,  <30.921883, 40.615326, 38.945900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255749, 40.664951, 39.160542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527283, 0.461430, 0.713481,
		-0.159091, -0.878460, 0.450554,
		0.834663, 0.124061, 0.536607,
		31.506147, 40.702171, 39.321522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757317, 40.621548, 39.609890>,  <30.921883, 40.615326, 38.945900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757317, 40.621548, 39.609890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.123863, 40.779629, 39.635460>,  <31.343792, 40.874477, 39.650803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.123863, 40.779629, 39.635460>,  <30.757317, 40.621548, 39.609890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123863, 40.779629, 39.635460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237756, 0.408772, 0.881123,
		0.322089, -0.822631, 0.468547,
		0.916368, 0.395200, 0.063925,
		31.398773, 40.898190, 39.654636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992102, 40.483772, 40.264965>,  <30.757317, 40.621548, 39.609890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992102, 40.483772, 40.264965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165077, 40.810230, 40.111652>,  <31.268862, 41.006107, 40.019665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165077, 40.810230, 40.111652>,  <30.992102, 40.483772, 40.264965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165077, 40.810230, 40.111652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268366, 0.522315, 0.809424,
		0.860801, -0.247165, 0.444894,
		0.432436, 0.816147, -0.383278,
		31.294807, 41.055073, 39.996670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324114, 40.813015, 40.825302>,  <30.992102, 40.483772, 40.264965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324114, 40.813015, 40.825302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.356522, 41.110085, 40.559406>,  <31.375967, 41.288326, 40.399868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.356522, 41.110085, 40.559406>,  <31.324114, 40.813015, 40.825302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356522, 41.110085, 40.559406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170161, 0.667447, 0.724955,
		0.982080, 0.054376, 0.180451,
		0.081021, 0.742669, -0.664739,
		31.380829, 41.332886, 40.359985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736265, 41.298729, 41.081776>,  <31.324114, 40.813015, 40.825302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736265, 41.298729, 41.081776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.524220, 41.507004, 40.814083>,  <31.396992, 41.631969, 40.653469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.524220, 41.507004, 40.814083>,  <31.736265, 41.298729, 41.081776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524220, 41.507004, 40.814083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271536, 0.643445, 0.715713,
		0.803273, 0.561129, -0.199715,
		-0.530113, 0.520684, -0.669230,
		31.365185, 41.663208, 40.613316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963211, 41.940086, 41.076660>,  <31.736265, 41.298729, 41.081776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963211, 41.940086, 41.076660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582846, 41.943352, 40.952919>,  <31.354628, 41.945312, 40.878674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582846, 41.943352, 40.952919>,  <31.963211, 41.940086, 41.076660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582846, 41.943352, 40.952919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258177, 0.530226, 0.807592,
		0.170620, 0.847817, -0.502091,
		-0.950912, 0.008163, -0.309354,
		31.297571, 41.945801, 40.860111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812483, 42.663185, 41.016369>,  <31.963211, 41.940086, 41.076660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812483, 42.663185, 41.016369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.463560, 42.467926, 41.005123>,  <31.254206, 42.350769, 40.998375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.463560, 42.467926, 41.005123>,  <31.812483, 42.663185, 41.016369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463560, 42.467926, 41.005123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350049, 0.583316, 0.732945,
		-0.341389, 0.649193, -0.679707,
		-0.872307, -0.488150, -0.028112,
		31.201868, 42.321480, 40.996689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293774, 43.171982, 40.952309>,  <31.812483, 42.663185, 41.016369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293774, 43.171982, 40.952309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.121649, 42.855137, 41.125462>,  <31.018373, 42.665028, 41.229351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.121649, 42.855137, 41.125462>,  <31.293774, 43.171982, 40.952309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121649, 42.855137, 41.125462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442554, 0.603087, 0.663650,
		-0.786752, 0.094003, -0.610070,
		-0.430310, -0.792117, 0.432878,
		30.992556, 42.617500, 41.255325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641733, 43.436779, 41.102928>,  <31.293774, 43.171982, 40.952309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641733, 43.436779, 41.102928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.726030, 43.124058, 41.337662>,  <30.776609, 42.936424, 41.478504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.726030, 43.124058, 41.337662>,  <30.641733, 43.436779, 41.102928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726030, 43.124058, 41.337662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474541, 0.443021, 0.760621,
		-0.854633, -0.438775, -0.277631,
		0.210745, -0.781799, 0.586837,
		30.789253, 42.889519, 41.513714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064499, 43.436226, 41.554592>,  <30.641733, 43.436779, 41.102928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064499, 43.436226, 41.554592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293961, 43.146954, 41.708439>,  <30.431637, 42.973389, 41.800747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293961, 43.146954, 41.708439>,  <30.064499, 43.436226, 41.554592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293961, 43.146954, 41.708439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357747, 0.201204, 0.911885,
		-0.736844, -0.660702, -0.143295,
		0.573653, -0.723181, 0.384620,
		30.466057, 42.930000, 41.823826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737473, 42.883308, 41.952286>,  <30.064499, 43.436226, 41.554592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737473, 42.883308, 41.952286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109030, 42.895596, 42.099915>,  <30.331964, 42.902969, 42.188492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109030, 42.895596, 42.099915>,  <29.737473, 42.883308, 41.952286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109030, 42.895596, 42.099915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370310, 0.091557, 0.924385,
		-0.005394, -0.995326, 0.096423,
		0.928893, 0.030720, 0.369073,
		30.387697, 42.904812, 42.210636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647890, 42.564930, 42.578594>,  <29.737473, 42.883308, 41.952286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647890, 42.564930, 42.578594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004164, 42.744659, 42.606277>,  <30.217928, 42.852497, 42.622887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004164, 42.744659, 42.606277>,  <29.647890, 42.564930, 42.578594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004164, 42.744659, 42.606277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219472, 0.291654, 0.931005,
		0.398139, -0.844420, 0.358386,
		0.890684, 0.449325, 0.069207,
		30.271370, 42.879456, 42.627041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901482, 42.378136, 43.240089>,  <29.647890, 42.564930, 42.578594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901482, 42.378136, 43.240089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143524, 42.685780, 43.157814>,  <30.288750, 42.870365, 43.108448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143524, 42.685780, 43.157814>,  <29.901482, 42.378136, 43.240089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143524, 42.685780, 43.157814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061953, 0.303066, 0.950954,
		0.793729, -0.562687, 0.231037,
		0.605108, 0.769113, -0.205692,
		30.325056, 42.916512, 43.096107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376848, 42.376057, 43.884048>,  <29.901482, 42.378136, 43.240089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376848, 42.376057, 43.884048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377333, 42.725204, 43.688866>,  <30.377623, 42.934692, 43.571754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377333, 42.725204, 43.688866>,  <30.376848, 42.376057, 43.884048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377333, 42.725204, 43.688866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095797, 0.485612, 0.868909,
		0.995400, -0.047796, -0.083031,
		0.001209, 0.872866, -0.487957,
		30.377695, 42.987064, 43.542477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026981, 42.750786, 44.230919>,  <30.376848, 42.376057, 43.884048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026981, 42.750786, 44.230919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.764057, 43.010483, 44.077854>,  <30.606302, 43.166302, 43.986015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.764057, 43.010483, 44.077854>,  <31.026981, 42.750786, 44.230919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764057, 43.010483, 44.077854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002028, 0.509284, 0.860596,
		0.753616, 0.564904, -0.336075,
		-0.657312, 0.649241, -0.382659,
		30.566864, 43.205254, 43.963058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363285, 43.426605, 44.295795>,  <31.026981, 42.750786, 44.230919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363285, 43.426605, 44.295795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.977976, 43.528427, 44.261589>,  <30.746790, 43.589520, 44.241066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.977976, 43.528427, 44.261589>,  <31.363285, 43.426605, 44.295795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977976, 43.528427, 44.261589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076893, 0.566587, 0.820406,
		0.257286, 0.783698, -0.565350,
		-0.963271, 0.254551, -0.085514,
		30.688995, 43.604794, 44.235935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333673, 44.152050, 44.398342>,  <31.363285, 43.426605, 44.295795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333673, 44.152050, 44.398342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.960752, 44.021317, 44.460297>,  <30.737000, 43.942875, 44.497471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.960752, 44.021317, 44.460297>,  <31.333673, 44.152050, 44.398342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960752, 44.021317, 44.460297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127444, 0.697642, 0.705020,
		-0.338479, 0.637554, -0.692067,
		-0.932303, -0.326835, 0.154885,
		30.681061, 43.923267, 44.506763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044365, 44.727627, 44.403870>,  <31.333673, 44.152050, 44.398342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044365, 44.727627, 44.403870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.793623, 44.476395, 44.588291>,  <30.643177, 44.325657, 44.698944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.793623, 44.476395, 44.588291>,  <31.044365, 44.727627, 44.403870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793623, 44.476395, 44.588291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082979, 0.642205, 0.762028,
		-0.774705, 0.439423, -0.454686,
		-0.626855, -0.628076, 0.461057,
		30.605566, 44.287971, 44.726608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447887, 45.157383, 44.623142>,  <31.044365, 44.727627, 44.403870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447887, 45.157383, 44.623142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.461706, 44.833527, 44.857506>,  <30.469997, 44.639214, 44.998123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.461706, 44.833527, 44.857506>,  <30.447887, 45.157383, 44.623142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461706, 44.833527, 44.857506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173257, 0.572532, 0.801367,
		-0.984271, -0.129197, -0.120497,
		0.034546, -0.809639, 0.585911,
		30.472071, 44.590633, 45.033279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945332, 45.251923, 45.156303>,  <30.447887, 45.157383, 44.623142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945332, 45.251923, 45.156303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188631, 44.974777, 45.311207>,  <30.334610, 44.808491, 45.404148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188631, 44.974777, 45.311207>,  <29.945332, 45.251923, 45.156303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188631, 44.974777, 45.311207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141978, 0.385049, 0.911910,
		-0.780945, -0.609650, 0.135834,
		0.608249, -0.692866, 0.387260,
		30.371105, 44.766918, 45.427383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189175, 45.330696, 45.339050>,  <29.945332, 45.251923, 45.156303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189175, 45.330696, 45.339050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.171003, 45.680767, 45.531719>,  <29.160101, 45.890808, 45.647320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.171003, 45.680767, 45.531719>,  <29.189175, 45.330696, 45.339050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171003, 45.680767, 45.531719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996502, -0.073554, 0.039661,
		0.070139, -0.478185, 0.875454,
		-0.045428, 0.875174, 0.481671,
		29.157375, 45.943317, 45.676220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808111, 45.466774, 46.017757>,  <29.189175, 45.330696, 45.339050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808111, 45.466774, 46.017757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.783108, 45.803421, 45.803177>,  <28.768105, 46.005409, 45.674431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.783108, 45.803421, 45.803177>,  <28.808111, 45.466774, 46.017757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783108, 45.803421, 45.803177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997821, -0.064082, 0.015737,
		-0.021132, 0.536262, 0.843787,
		-0.062511, 0.841615, -0.536448,
		28.764355, 46.055904, 45.642242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336264, 45.303085, 45.457016>,  <28.808111, 45.466774, 46.017757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336264, 45.303085, 45.457016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.988689, 45.426662, 45.302353>,  <27.780146, 45.500809, 45.209553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.988689, 45.426662, 45.302353>,  <28.336264, 45.303085, 45.457016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988689, 45.426662, 45.302353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156109, -0.912452, -0.378236,
		-0.469663, -0.268301, 0.841090,
		-0.868934, 0.308945, -0.386660,
		27.728008, 45.519344, 45.186356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807959, 44.765995, 45.544411>,  <28.336264, 45.303085, 45.457016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807959, 44.765995, 45.544411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.665594, 44.975765, 45.235008>,  <27.580175, 45.101627, 45.049366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.665594, 44.975765, 45.235008>,  <27.807959, 44.765995, 45.544411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665594, 44.975765, 45.235008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095421, -0.843771, -0.528153,
		-0.929636, -0.114166, 0.350348,
		-0.355910, 0.524421, -0.773505,
		27.558821, 45.133091, 45.002956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217745, 44.292789, 45.280830>,  <27.807959, 44.765995, 45.544411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217745, 44.292789, 45.280830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.351456, 44.532753, 44.990074>,  <27.431683, 44.676731, 44.815620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.351456, 44.532753, 44.990074>,  <27.217745, 44.292789, 45.280830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351456, 44.532753, 44.990074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103344, -0.743276, -0.660954,
		-0.936792, 0.296062, -0.186464,
		0.334278, 0.599907, -0.726891,
		27.451738, 44.712727, 44.772007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844187, 44.071209, 44.719780>,  <27.217745, 44.292789, 45.280830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844187, 44.071209, 44.719780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.144062, 44.272755, 44.548157>,  <27.323988, 44.393681, 44.445183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.144062, 44.272755, 44.548157>,  <26.844187, 44.071209, 44.719780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144062, 44.272755, 44.548157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008306, -0.655445, -0.755198,
		-0.661740, 0.562598, -0.495564,
		0.749687, 0.503861, -0.429061,
		27.368969, 44.423912, 44.419437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679790, 43.946907, 44.098804>,  <26.844187, 44.071209, 44.719780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679790, 43.946907, 44.098804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.052807, 44.085941, 44.059704>,  <27.276617, 44.169361, 44.036243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.052807, 44.085941, 44.059704>,  <26.679790, 43.946907, 44.098804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052807, 44.085941, 44.059704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057675, -0.410640, -0.909972,
		-0.356431, 0.842947, -0.402985,
		0.932540, 0.347585, -0.097748,
		27.332569, 44.190216, 44.030380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735155, 44.431740, 43.458023>,  <26.679790, 43.946907, 44.098804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735155, 44.431740, 43.458023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.085234, 44.269882, 43.564072>,  <27.295280, 44.172768, 43.627701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.085234, 44.269882, 43.564072>,  <26.735155, 44.431740, 43.458023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085234, 44.269882, 43.564072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098352, -0.387769, -0.916494,
		0.473662, 0.828189, -0.299577,
		0.875198, -0.404645, 0.265125,
		27.347794, 44.148487, 43.643608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045603, 44.362133, 42.900677>,  <26.735155, 44.431740, 43.458023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045603, 44.362133, 42.900677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.301926, 44.134113, 43.106361>,  <27.455719, 43.997299, 43.229771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.301926, 44.134113, 43.106361>,  <27.045603, 44.362133, 42.900677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301926, 44.134113, 43.106361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226456, -0.499639, -0.836109,
		0.733544, 0.652229, -0.191080,
		0.640806, -0.570051, 0.514208,
		27.494167, 43.963097, 43.260624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578878, 44.296127, 42.494415>,  <27.045603, 44.362133, 42.900677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578878, 44.296127, 42.494415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.639645, 43.979576, 42.731277>,  <27.676104, 43.789646, 42.873394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.639645, 43.979576, 42.731277>,  <27.578878, 44.296127, 42.494415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639645, 43.979576, 42.731277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041987, -0.593403, -0.803810,
		0.987502, 0.146973, -0.056919,
		0.151914, -0.791373, 0.592157,
		27.685219, 43.742165, 42.908924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150625, 44.083595, 42.210564>,  <27.578878, 44.296127, 42.494415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150625, 44.083595, 42.210564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.032785, 43.777168, 42.439072>,  <27.962082, 43.593311, 42.576176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.032785, 43.777168, 42.439072>,  <28.150625, 44.083595, 42.210564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032785, 43.777168, 42.439072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126944, -0.623877, -0.771144,
		0.947152, -0.154657, 0.281040,
		-0.294597, -0.766067, 0.571274,
		27.944407, 43.547348, 42.610455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718838, 43.645123, 42.206207>,  <28.150625, 44.083595, 42.210564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718838, 43.645123, 42.206207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.395864, 43.424076, 42.288830>,  <28.202080, 43.291447, 42.338402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.395864, 43.424076, 42.288830>,  <28.718838, 43.645123, 42.206207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395864, 43.424076, 42.288830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178800, -0.562878, -0.806969,
		0.562210, -0.614642, 0.553295,
		-0.807434, -0.552615, 0.206558,
		28.153635, 43.258293, 42.350796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887112, 42.962418, 42.202740>,  <28.718838, 43.645123, 42.206207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887112, 42.962418, 42.202740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.496338, 42.933186, 42.122482>,  <28.261873, 42.915646, 42.074326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.496338, 42.933186, 42.122482>,  <28.887112, 42.962418, 42.202740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496338, 42.933186, 42.122482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204411, -0.591809, -0.779729,
		-0.061764, -0.802759, 0.593097,
		-0.976934, -0.073077, -0.200645,
		28.203257, 42.911263, 42.062290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715813, 42.262203, 42.103439>,  <28.887112, 42.962418, 42.202740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715813, 42.262203, 42.103439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.396378, 42.426998, 41.927929>,  <28.204716, 42.525875, 41.822624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.396378, 42.426998, 41.927929>,  <28.715813, 42.262203, 42.103439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396378, 42.426998, 41.927929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191244, -0.517534, -0.834017,
		-0.570687, -0.749948, 0.334505,
		-0.798588, 0.411991, -0.438773,
		28.156801, 42.550594, 41.796299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456593, 41.688683, 41.726257>,  <28.715813, 42.262203, 42.103439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456593, 41.688683, 41.726257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.272179, 42.000954, 41.557503>,  <28.161530, 42.188316, 41.456249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.272179, 42.000954, 41.557503>,  <28.456593, 41.688683, 41.726257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272179, 42.000954, 41.557503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254555, -0.339092, -0.905659,
		-0.850087, -0.524934, -0.042392,
		-0.461037, 0.780680, -0.421882,
		28.133867, 42.235157, 41.430939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013363, 41.451553, 41.233349>,  <28.456593, 41.688683, 41.726257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013363, 41.451553, 41.233349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.064030, 41.826996, 41.104992>,  <28.094429, 42.052261, 41.027977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.064030, 41.826996, 41.104992>,  <28.013363, 41.451553, 41.233349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064030, 41.826996, 41.104992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232310, -0.342567, -0.910319,
		-0.964359, 0.040761, -0.261439,
		0.126666, 0.938609, -0.320888,
		28.102030, 42.108578, 41.008724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609661, 41.572353, 40.631386>,  <28.013363, 41.451553, 41.233349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609661, 41.572353, 40.631386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892937, 41.852413, 40.595032>,  <28.062902, 42.020447, 40.573219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892937, 41.852413, 40.595032>,  <27.609661, 41.572353, 40.631386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892937, 41.852413, 40.595032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233002, -0.353290, -0.906033,
		-0.666465, 0.620468, -0.413332,
		0.708191, 0.700147, -0.090886,
		28.105394, 42.062458, 40.567764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464167, 41.824299, 40.031158>,  <27.609661, 41.572353, 40.631386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464167, 41.824299, 40.031158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.839811, 41.938576, 40.107533>,  <28.065197, 42.007141, 40.153358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.839811, 41.938576, 40.107533>,  <27.464167, 41.824299, 40.031158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839811, 41.938576, 40.107533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236978, -0.136099, -0.961935,
		-0.248827, 0.948609, -0.195513,
		0.939110, 0.285688, 0.190935,
		28.121544, 42.024281, 40.164814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767654, 42.205151, 39.393196>,  <27.464167, 41.824299, 40.031158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767654, 42.205151, 39.393196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.096556, 42.109764, 39.599899>,  <28.293896, 42.052532, 39.723919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.096556, 42.109764, 39.599899>,  <27.767654, 42.205151, 39.393196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096556, 42.109764, 39.599899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464861, -0.242420, -0.851550,
		0.328337, 0.940408, -0.088477,
		0.822252, -0.238466, 0.516754,
		28.343231, 42.038223, 39.754925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338116, 42.477116, 39.059479>,  <27.767654, 42.205151, 39.393196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338116, 42.477116, 39.059479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.465441, 42.162636, 39.271351>,  <28.541836, 41.973946, 39.398476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.465441, 42.162636, 39.271351>,  <28.338116, 42.477116, 39.059479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465441, 42.162636, 39.271351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414505, -0.387074, -0.823626,
		0.852562, 0.481728, 0.202673,
		0.318314, -0.786201, 0.529682,
		28.560934, 41.926777, 39.430256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914169, 42.361324, 38.716732>,  <28.338116, 42.477116, 39.059479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914169, 42.361324, 38.716732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.873337, 42.035656, 38.945366>,  <28.848837, 41.840256, 39.082546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.873337, 42.035656, 38.945366>,  <28.914169, 42.361324, 38.716732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873337, 42.035656, 38.945366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703223, -0.465463, -0.537422,
		0.703603, 0.347088, 0.620058,
		-0.102082, -0.814170, 0.571582,
		28.842712, 41.791405, 39.116840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575064, 42.127224, 38.913025>,  <28.914169, 42.361324, 38.716732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575064, 42.127224, 38.913025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.355511, 41.792870, 38.911037>,  <29.223780, 41.592258, 38.909843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.355511, 41.792870, 38.911037>,  <29.575064, 42.127224, 38.913025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355511, 41.792870, 38.911037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668931, -0.435672, -0.602263,
		0.501258, -0.333896, 0.798282,
		-0.548882, -0.835885, -0.004970,
		29.190845, 41.542103, 38.909546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.667862, 41.242268, 37.692394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286541, 41.356895, 37.654247>,  <42.057751, 41.425674, 37.631359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286541, 41.356895, 37.654247>,  <42.667862, 41.242268, 37.692394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286541, 41.356895, 37.654247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225494, -0.885395, -0.406483,
		-0.200927, -0.365995, 0.908667,
		-0.953300, 0.286573, -0.095370,
		42.000549, 41.442867, 37.625637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244915, 40.737392, 38.084419>,  <42.667862, 41.242268, 37.692394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244915, 40.737392, 38.084419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980938, 40.906395, 37.835915>,  <41.822552, 41.007797, 37.686810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980938, 40.906395, 37.835915>,  <42.244915, 40.737392, 38.084419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980938, 40.906395, 37.835915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272475, -0.905195, -0.326160,
		-0.700168, -0.045968, 0.712497,
		-0.659942, 0.422504, -0.621263,
		41.782955, 41.033146, 37.649536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625626, 40.271324, 38.228710>,  <42.244915, 40.737392, 38.084419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625626, 40.271324, 38.228710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.585148, 40.461426, 37.879105>,  <41.560860, 40.575485, 37.669342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.585148, 40.461426, 37.879105>,  <41.625626, 40.271324, 38.228710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585148, 40.461426, 37.879105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313749, -0.848933, -0.425293,
		-0.944098, 0.231182, 0.235019,
		-0.101195, 0.475255, -0.874009,
		41.554790, 40.604004, 37.616901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052773, 39.881935, 37.933296>,  <41.625626, 40.271324, 38.228710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052773, 39.881935, 37.933296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.233543, 40.090900, 37.644066>,  <41.342007, 40.216278, 37.470528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.233543, 40.090900, 37.644066>,  <41.052773, 39.881935, 37.933296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233543, 40.090900, 37.644066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198245, -0.731490, -0.652397,
		-0.869745, 0.438185, -0.227017,
		0.451931, 0.522414, -0.723078,
		41.369122, 40.247623, 37.427143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614910, 39.860325, 37.400200>,  <41.052773, 39.881935, 37.933296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614910, 39.860325, 37.400200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.980541, 39.903042, 37.243706>,  <41.199921, 39.928673, 37.149811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.980541, 39.903042, 37.243706>,  <40.614910, 39.860325, 37.400200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980541, 39.903042, 37.243706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216341, -0.687575, -0.693136,
		-0.343022, 0.718217, -0.605392,
		0.914075, 0.106790, -0.391233,
		41.254765, 39.935078, 37.126335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523857, 39.690189, 36.671616>,  <40.614910, 39.860325, 37.400200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523857, 39.690189, 36.671616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.922241, 39.691383, 36.707508>,  <41.161274, 39.692101, 36.729042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.922241, 39.691383, 36.707508>,  <40.523857, 39.690189, 36.671616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922241, 39.691383, 36.707508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055731, -0.804121, -0.591848,
		0.070384, 0.594458, -0.801040,
		0.995962, 0.002986, 0.089727,
		41.221031, 39.692280, 36.734425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862972, 39.726246, 35.883938>,  <40.523857, 39.690189, 36.671616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862972, 39.726246, 35.883938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104168, 39.568481, 36.161308>,  <41.248886, 39.473824, 36.327732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104168, 39.568481, 36.161308>,  <40.862972, 39.726246, 35.883938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104168, 39.568481, 36.161308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105775, -0.822026, -0.559540,
		0.790706, 0.410744, -0.453954,
		0.602990, -0.394414, 0.693427,
		41.285065, 39.450157, 36.369335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384525, 39.420105, 35.459435>,  <40.862972, 39.726246, 35.883938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384525, 39.420105, 35.459435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422672, 39.266605, 35.826836>,  <41.445560, 39.174507, 36.047276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422672, 39.266605, 35.826836>,  <41.384525, 39.420105, 35.459435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422672, 39.266605, 35.826836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133042, -0.909515, -0.393806,
		0.986512, 0.159754, -0.035682,
		0.095365, -0.383747, 0.918501,
		41.451283, 39.151482, 36.102386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073849, 39.103176, 35.539131>,  <41.384525, 39.420105, 35.459435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073849, 39.103176, 35.539131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.826828, 38.909954, 35.787418>,  <41.678616, 38.794022, 35.936390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.826828, 38.909954, 35.787418>,  <42.073849, 39.103176, 35.539131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826828, 38.909954, 35.787418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208126, -0.861411, -0.463309,
		0.758497, -0.156929, 0.632499,
		-0.617548, -0.483058, 0.620717,
		41.641563, 38.765038, 35.973633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453083, 38.569073, 35.682175>,  <42.073849, 39.103176, 35.539131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453083, 38.569073, 35.682175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084064, 38.454746, 35.785881>,  <41.862656, 38.386150, 35.848106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084064, 38.454746, 35.785881>,  <42.453083, 38.569073, 35.682175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084064, 38.454746, 35.785881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147734, -0.882276, -0.446949,
		0.356495, -0.374027, 0.856163,
		-0.922543, -0.285819, 0.259270,
		41.807301, 38.368999, 35.863663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472458, 37.892090, 35.862694>,  <42.453083, 38.569073, 35.682175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472458, 37.892090, 35.862694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.081078, 37.924225, 35.786621>,  <41.846249, 37.943508, 35.740978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.081078, 37.924225, 35.786621>,  <42.472458, 37.892090, 35.862694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081078, 37.924225, 35.786621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017305, -0.886025, -0.463314,
		-0.205731, -0.456623, 0.865546,
		-0.978456, 0.080340, -0.190185,
		41.787540, 37.948326, 35.729565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171051, 37.201050, 36.002216>,  <42.472458, 37.892090, 35.862694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171051, 37.201050, 36.002216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.891979, 37.406498, 35.802441>,  <41.724537, 37.529766, 35.682575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.891979, 37.406498, 35.802441>,  <42.171051, 37.201050, 36.002216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891979, 37.406498, 35.802441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246853, -0.826798, -0.505439,
		-0.672543, -0.229343, 0.703625,
		-0.697675, 0.513621, -0.499443,
		41.682678, 37.560585, 35.652607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562050, 36.800407, 36.018230>,  <42.171051, 37.201050, 36.002216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562050, 36.800407, 36.018230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532570, 37.020885, 35.685783>,  <41.514881, 37.153172, 35.486317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532570, 37.020885, 35.685783>,  <41.562050, 36.800407, 36.018230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532570, 37.020885, 35.685783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119028, -0.832287, -0.541415,
		-0.990152, 0.059023, 0.126949,
		-0.073703, 0.551194, -0.831116,
		41.510460, 37.186245, 35.436447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054787, 36.458862, 35.566345>,  <41.562050, 36.800407, 36.018230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054787, 36.458862, 35.566345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.227394, 36.691795, 35.290756>,  <41.330959, 36.831554, 35.125404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.227394, 36.691795, 35.290756>,  <41.054787, 36.458862, 35.566345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227394, 36.691795, 35.290756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069826, -0.783009, -0.618079,
		-0.899396, 0.218607, -0.378547,
		0.431522, 0.582330, -0.688971,
		41.356850, 36.866493, 35.084064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946705, 36.099457, 34.993378>,  <41.054787, 36.458862, 35.566345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946705, 36.099457, 34.993378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.232975, 36.354092, 34.878441>,  <41.404736, 36.506874, 34.809479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.232975, 36.354092, 34.878441>,  <40.946705, 36.099457, 34.993378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232975, 36.354092, 34.878441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266278, -0.629026, -0.730358,
		-0.645684, 0.446184, -0.619687,
		0.715673, 0.636590, -0.287342,
		41.447678, 36.545067, 34.792236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805164, 36.329670, 34.292225>,  <40.946705, 36.099457, 34.993378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805164, 36.329670, 34.292225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.194317, 36.362740, 34.378632>,  <41.427807, 36.382584, 34.430477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.194317, 36.362740, 34.378632>,  <40.805164, 36.329670, 34.292225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194317, 36.362740, 34.378632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212497, -0.688343, -0.693562,
		0.091355, 0.720658, -0.687245,
		0.972882, 0.082677, 0.216021,
		41.486183, 36.387543, 34.443439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086079, 36.032887, 33.703632>,  <40.805164, 36.329670, 34.292225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086079, 36.032887, 33.703632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.405785, 36.056015, 33.942909>,  <41.597607, 36.069893, 34.086475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.405785, 36.056015, 33.942909>,  <41.086079, 36.032887, 33.703632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405785, 36.056015, 33.942909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367965, -0.834060, -0.411031,
		0.475160, 0.548636, -0.687911,
		0.799265, 0.057822, 0.598190,
		41.645565, 36.073360, 34.122368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600258, 35.972897, 33.275139>,  <41.086079, 36.032887, 33.703632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600258, 35.972897, 33.275139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.730701, 35.856682, 33.634972>,  <41.808968, 35.786953, 33.850872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.730701, 35.856682, 33.634972>,  <41.600258, 35.972897, 33.275139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730701, 35.856682, 33.634972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371296, -0.835763, -0.404525,
		0.869363, 0.465929, -0.164676,
		0.326110, -0.290535, 0.899578,
		41.828533, 35.769520, 33.904846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275181, 35.732635, 33.168137>,  <41.600258, 35.972897, 33.275139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275181, 35.732635, 33.168137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.174751, 35.559853, 33.514633>,  <42.114494, 35.456184, 33.722530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.174751, 35.559853, 33.514633>,  <42.275181, 35.732635, 33.168137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174751, 35.559853, 33.514633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433389, -0.850364, -0.298421,
		0.865525, 0.300493, 0.400713,
		-0.251078, -0.431956, 0.866242,
		42.099426, 35.430267, 33.774506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812691, 35.325985, 33.266933>,  <42.275181, 35.732635, 33.168137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812691, 35.325985, 33.266933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567127, 35.159801, 33.535412>,  <42.419788, 35.060093, 33.696499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567127, 35.159801, 33.535412>,  <42.812691, 35.325985, 33.266933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567127, 35.159801, 33.535412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402910, -0.896109, -0.186152,
		0.678805, 0.156152, 0.717523,
		-0.613911, -0.415459, 0.671198,
		42.382954, 35.035164, 33.736771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200935, 34.839119, 33.560734>,  <42.812691, 35.325985, 33.266933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200935, 34.839119, 33.560734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820347, 34.741032, 33.635109>,  <42.591995, 34.682178, 33.679733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820347, 34.741032, 33.635109>,  <43.200935, 34.839119, 33.560734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820347, 34.741032, 33.635109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273516, -0.950764, 0.145731,
		0.141052, 0.189516, 0.971693,
		-0.951469, -0.245218, 0.185942,
		42.534904, 34.667465, 33.690891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828156, 34.383339, 33.519028>,  <43.200935, 34.839119, 33.560734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828156, 34.383339, 33.519028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.771378, 34.103184, 33.239227>,  <43.737309, 33.935089, 33.071346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.771378, 34.103184, 33.239227>,  <43.828156, 34.383339, 33.519028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771378, 34.103184, 33.239227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989874, -0.100238, -0.100508,
		0.000277, -0.706687, 0.707526,
		-0.141949, -0.700389, -0.699504,
		43.728794, 33.893066, 33.029377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980930, 34.528316, 34.279087>,  <43.828156, 34.383339, 33.519028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980930, 34.528316, 34.279087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.366013, 34.481243, 34.181641>,  <44.597061, 34.452999, 34.123173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.366013, 34.481243, 34.181641>,  <43.980930, 34.528316, 34.279087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366013, 34.481243, 34.181641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197350, 0.921407, 0.334756,
		0.185072, -0.370349, 0.910269,
		0.962705, -0.117688, -0.243615,
		44.654823, 34.445938, 34.108555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372669, 34.848385, 34.897011>,  <43.980930, 34.528316, 34.279087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372669, 34.848385, 34.897011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.630920, 34.847534, 34.591553>,  <44.785870, 34.847023, 34.408276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.630920, 34.847534, 34.591553>,  <44.372669, 34.848385, 34.897011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630920, 34.847534, 34.591553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003442, 0.999978, -0.005690,
		0.763645, 0.006303, 0.645606,
		0.645627, -0.002123, -0.763650,
		44.824608, 34.846897, 34.362457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873947, 35.347382, 35.098324>,  <44.372669, 34.848385, 34.897011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.873947, 35.347382, 35.098324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930004, 35.332954, 34.702534>,  <44.963638, 35.324299, 34.465061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930004, 35.332954, 34.702534>,  <44.873947, 35.347382, 35.098324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930004, 35.332954, 34.702534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003173, 0.999348, -0.035979,
		0.990127, 0.001902, 0.140161,
		0.140138, -0.036068, -0.989475,
		44.972046, 35.322132, 34.405693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437298, 35.675148, 34.941902>,  <44.873947, 35.347382, 35.098324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437298, 35.675148, 34.941902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.242523, 35.662334, 34.592762>,  <45.125660, 35.654644, 34.383278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.242523, 35.662334, 34.592762>,  <45.437298, 35.675148, 34.941902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242523, 35.662334, 34.592762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166605, 0.984386, 0.056812,
		0.857400, 0.173085, -0.484672,
		-0.486937, -0.032038, -0.872849,
		45.096443, 35.652721, 34.330906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790092, 36.143555, 34.445030>,  <45.437298, 35.675148, 34.941902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790092, 36.143555, 34.445030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414185, 36.094475, 34.317425>,  <45.188641, 36.065025, 34.240860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414185, 36.094475, 34.317425>,  <45.790092, 36.143555, 34.445030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414185, 36.094475, 34.317425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119703, 0.992384, -0.029068,
		0.320155, 0.010870, -0.947302,
		-0.939772, -0.122701, -0.319018,
		45.132252, 36.057663, 34.221718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852360, 36.587177, 33.951836>,  <45.790092, 36.143555, 34.445030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852360, 36.587177, 33.951836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.468079, 36.521095, 34.041069>,  <45.237511, 36.481445, 34.094608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.468079, 36.521095, 34.041069>,  <45.852360, 36.587177, 33.951836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468079, 36.521095, 34.041069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170286, 0.985388, -0.003614,
		-0.219224, -0.041459, -0.974793,
		-0.960699, -0.165202, 0.223081,
		45.179871, 36.471535, 34.107994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520798, 37.142879, 33.686745>,  <45.852360, 36.587177, 33.951836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.520798, 37.142879, 33.686745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.221165, 37.024284, 33.923717>,  <45.041386, 36.953125, 34.065899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.221165, 37.024284, 33.923717>,  <45.520798, 37.142879, 33.686745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221165, 37.024284, 33.923717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401657, 0.914411, -0.050232,
		-0.526830, -0.275582, -0.804055,
		-0.749080, -0.296491, 0.592429,
		44.996441, 36.935337, 34.101444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910454, 37.469791, 33.408367>,  <45.520798, 37.142879, 33.686745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910454, 37.469791, 33.408367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.827129, 37.386608, 33.790646>,  <44.777134, 37.336697, 34.020012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.827129, 37.386608, 33.790646>,  <44.910454, 37.469791, 33.408367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827129, 37.386608, 33.790646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220429, 0.961977, 0.161282,
		-0.952899, -0.177067, -0.246231,
		-0.208311, -0.207962, 0.955698,
		44.764637, 37.324219, 34.077354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328178, 37.873714, 33.558292>,  <44.910454, 37.469791, 33.408367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328178, 37.873714, 33.558292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464779, 37.782875, 33.923107>,  <44.546738, 37.728371, 34.141994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464779, 37.782875, 33.923107>,  <44.328178, 37.873714, 33.558292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464779, 37.782875, 33.923107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168736, 0.939790, 0.297193,
		-0.924612, -0.255384, 0.282617,
		0.341499, -0.227100, 0.912033,
		44.567230, 37.714745, 34.196716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779758, 38.054256, 33.977840>,  <44.328178, 37.873714, 33.558292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779758, 38.054256, 33.977840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.131733, 38.059208, 34.167812>,  <44.342918, 38.062180, 34.281796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.131733, 38.059208, 34.167812>,  <43.779758, 38.054256, 33.977840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131733, 38.059208, 34.167812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263663, 0.844315, 0.466491,
		-0.395216, -0.535704, 0.746208,
		0.879936, 0.012383, 0.474932,
		44.395714, 38.062923, 34.310291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623066, 38.209011, 34.679714>,  <43.779758, 38.054256, 33.977840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623066, 38.209011, 34.679714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.006897, 38.313175, 34.636993>,  <44.237194, 38.375675, 34.611362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.006897, 38.313175, 34.636993>,  <43.623066, 38.209011, 34.679714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006897, 38.313175, 34.636993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173990, 0.847081, 0.502176,
		0.221239, -0.463292, 0.858145,
		0.959573, 0.260410, -0.106799,
		44.294769, 38.391296, 34.604954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845726, 38.373260, 35.414909>,  <43.623066, 38.209011, 34.679714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845726, 38.373260, 35.414909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.088470, 38.551258, 35.151485>,  <44.234116, 38.658058, 34.993431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.088470, 38.551258, 35.151485>,  <43.845726, 38.373260, 35.414909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088470, 38.551258, 35.151485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001600, 0.827893, 0.560884,
		0.794808, -0.341431, 0.501702,
		0.606859, 0.444992, -0.658562,
		44.270527, 38.684757, 34.953918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290569, 38.814423, 35.832619>,  <43.845726, 38.373260, 35.414909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290569, 38.814423, 35.832619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362514, 38.972900, 35.472469>,  <44.405682, 39.067986, 35.256378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362514, 38.972900, 35.472469>,  <44.290569, 38.814423, 35.832619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362514, 38.972900, 35.472469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311282, 0.845344, 0.434162,
		0.933142, -0.358360, 0.028715,
		0.179861, 0.396196, -0.900377,
		44.416473, 39.091759, 35.202354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992641, 39.083881, 35.962410>,  <44.290569, 38.814423, 35.832619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992641, 39.083881, 35.962410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.859184, 39.260883, 35.629456>,  <44.779110, 39.367085, 35.429684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.859184, 39.260883, 35.629456>,  <44.992641, 39.083881, 35.962410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.859184, 39.260883, 35.629456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285199, 0.888986, 0.358280,
		0.898524, -0.117860, -0.422805,
		-0.333641, 0.442507, -0.832389,
		44.759090, 39.393635, 35.379738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525917, 39.575897, 35.747738>,  <44.992641, 39.083881, 35.962410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525917, 39.575897, 35.747738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172138, 39.676849, 35.590740>,  <44.959869, 39.737423, 35.496540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172138, 39.676849, 35.590740>,  <45.525917, 39.575897, 35.747738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172138, 39.676849, 35.590740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145915, 0.948518, 0.281110,
		0.443239, 0.191356, -0.875741,
		-0.884448, 0.252383, -0.392498,
		44.906803, 39.752563, 35.472992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681591, 40.221207, 35.561306>,  <45.525917, 39.575897, 35.747738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681591, 40.221207, 35.561306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.282700, 40.192272, 35.568153>,  <45.043365, 40.174911, 35.572262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.282700, 40.192272, 35.568153>,  <45.681591, 40.221207, 35.561306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282700, 40.192272, 35.568153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061461, 0.931885, 0.357510,
		-0.041815, 0.355469, -0.933752,
		-0.997233, -0.072339, 0.017120,
		44.983528, 40.170570, 35.573288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462219, 40.799652, 35.236889>,  <45.681591, 40.221207, 35.561306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462219, 40.799652, 35.236889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.155582, 40.677860, 35.463036>,  <44.971600, 40.604786, 35.598724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.155582, 40.677860, 35.463036>,  <45.462219, 40.799652, 35.236889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155582, 40.677860, 35.463036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035791, 0.858811, 0.511041,
		-0.641141, 0.411992, -0.647457,
		-0.766588, -0.304476, 0.565364,
		44.925606, 40.586517, 35.632645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986359, 41.293736, 35.210445>,  <45.462219, 40.799652, 35.236889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986359, 41.293736, 35.210445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.895161, 41.089600, 35.542126>,  <44.840443, 40.967117, 35.741135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.895161, 41.089600, 35.542126>,  <44.986359, 41.293736, 35.210445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895161, 41.089600, 35.542126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169486, 0.859431, 0.482340,
		-0.958798, -0.030567, -0.282441,
		-0.227995, -0.510336, 0.829201,
		44.826763, 40.936501, 35.790886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373539, 41.588718, 35.489647>,  <44.986359, 41.293736, 35.210445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373539, 41.588718, 35.489647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525440, 41.380661, 35.795650>,  <44.616581, 41.255829, 35.979252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525440, 41.380661, 35.795650>,  <44.373539, 41.588718, 35.489647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525440, 41.380661, 35.795650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119039, 0.792609, 0.597997,
		-0.917396, -0.318158, 0.239081,
		0.379755, -0.520141, 0.765010,
		44.639366, 41.224617, 36.025154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884903, 41.627605, 36.153206>,  <44.373539, 41.588718, 35.489647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884903, 41.627605, 36.153206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.247036, 41.521469, 36.285851>,  <44.464317, 41.457787, 36.365437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.247036, 41.521469, 36.285851>,  <43.884903, 41.627605, 36.153206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247036, 41.521469, 36.285851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047718, 0.712312, 0.700239,
		-0.422014, -0.649774, 0.632217,
		0.905333, -0.265343, 0.331612,
		44.518635, 41.441868, 36.385334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.979752, 39.692780, 37.874847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695000, 39.415531, 37.829571>,  <34.524151, 39.249180, 37.802406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695000, 39.415531, 37.829571>,  <34.979752, 39.692780, 37.874847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695000, 39.415531, 37.829571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693893, -0.669281, -0.265660,
		0.108380, -0.267658, 0.957399,
		-0.711875, -0.693124, -0.113189,
		34.481438, 39.207592, 37.795612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333626, 38.956078, 38.069099>,  <34.979752, 39.692780, 37.874847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333626, 38.956078, 38.069099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000816, 38.892319, 37.856560>,  <34.801132, 38.854065, 37.729038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000816, 38.892319, 37.856560>,  <35.333626, 38.956078, 38.069099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000816, 38.892319, 37.856560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485521, -0.672556, -0.558514,
		-0.268337, -0.722677, 0.636972,
		-0.832024, -0.159393, -0.531346,
		34.751209, 38.844501, 37.697155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244946, 38.196789, 38.074314>,  <35.333626, 38.956078, 38.069099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244946, 38.196789, 38.074314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061413, 38.343494, 37.750595>,  <34.951294, 38.431519, 37.556362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061413, 38.343494, 37.750595>,  <35.244946, 38.196789, 38.074314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061413, 38.343494, 37.750595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454602, -0.685687, -0.568481,
		-0.763421, -0.628744, 0.147884,
		-0.458831, 0.366762, -0.809296,
		34.923763, 38.453522, 37.507805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181232, 37.619232, 37.656734>,  <35.244946, 38.196789, 38.074314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181232, 37.619232, 37.656734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112301, 37.911945, 37.392979>,  <35.070942, 38.087574, 37.234726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112301, 37.911945, 37.392979>,  <35.181232, 37.619232, 37.656734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112301, 37.911945, 37.392979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436964, -0.543149, -0.716974,
		-0.882817, -0.411683, -0.226165,
		-0.172325, 0.731783, -0.659392,
		35.060604, 38.131481, 37.195160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796375, 37.296997, 37.023052>,  <35.181232, 37.619232, 37.656734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796375, 37.296997, 37.023052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977436, 37.629620, 36.894291>,  <35.086071, 37.829193, 36.817036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977436, 37.629620, 36.894291>,  <34.796375, 37.296997, 37.023052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977436, 37.629620, 36.894291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402489, -0.512675, -0.758398,
		-0.795681, 0.213728, -0.566755,
		0.452652, 0.831556, -0.321903,
		35.113232, 37.879086, 36.797722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647980, 37.258629, 36.388058>,  <34.796375, 37.296997, 37.023052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647980, 37.258629, 36.388058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952663, 37.517326, 36.403694>,  <35.135471, 37.672546, 36.413074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952663, 37.517326, 36.403694>,  <34.647980, 37.258629, 36.388058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952663, 37.517326, 36.403694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389033, -0.408276, -0.825811,
		-0.518130, 0.644230, -0.562591,
		0.761705, 0.646744, 0.039087,
		35.181175, 37.711349, 36.415421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759159, 37.488705, 35.724346>,  <34.647980, 37.258629, 36.388058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759159, 37.488705, 35.724346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105862, 37.610172, 35.882595>,  <35.313885, 37.683052, 35.977543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105862, 37.610172, 35.882595>,  <34.759159, 37.488705, 35.724346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105862, 37.610172, 35.882595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480664, -0.297102, -0.825041,
		-0.132998, 0.905272, -0.403478,
		0.866760, 0.303666, 0.395618,
		35.365891, 37.701271, 36.001282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977715, 37.828644, 35.146366>,  <34.759159, 37.488705, 35.724346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977715, 37.828644, 35.146366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258045, 37.732998, 35.415192>,  <35.426243, 37.675610, 35.576488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258045, 37.732998, 35.415192>,  <34.977715, 37.828644, 35.146366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258045, 37.732998, 35.415192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613935, -0.277540, -0.738956,
		0.363220, 0.930481, -0.047706,
		0.700825, -0.239115, 0.672063,
		35.468292, 37.661263, 35.616810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629444, 38.201904, 34.929684>,  <34.977715, 37.828644, 35.146366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629444, 38.201904, 34.929684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724277, 37.871853, 35.134800>,  <35.781178, 37.673820, 35.257870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724277, 37.871853, 35.134800>,  <35.629444, 38.201904, 34.929684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724277, 37.871853, 35.134800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629357, -0.271648, -0.728091,
		0.740068, 0.495345, 0.454899,
		0.237084, -0.825131, 0.512787,
		35.795403, 37.624313, 35.288635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291527, 38.184811, 34.799252>,  <35.629444, 38.201904, 34.929684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291527, 38.184811, 34.799252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153637, 37.824371, 34.904469>,  <36.070904, 37.608109, 34.967598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153637, 37.824371, 34.904469>,  <36.291527, 38.184811, 34.799252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153637, 37.824371, 34.904469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655156, -0.431640, -0.620046,
		0.672262, -0.041408, 0.739154,
		-0.344724, -0.901095, 0.263047,
		36.050220, 37.554043, 34.983383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912109, 37.768639, 35.071259>,  <36.291527, 38.184811, 34.799252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912109, 37.768639, 35.071259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623253, 37.517490, 34.955124>,  <36.449940, 37.366802, 34.885445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623253, 37.517490, 34.955124>,  <36.912109, 37.768639, 35.071259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623253, 37.517490, 34.955124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636496, -0.438729, -0.634342,
		0.270908, -0.642878, 0.716461,
		-0.722137, -0.627873, -0.290334,
		36.406612, 37.329128, 34.868023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906349, 37.049732, 35.235958>,  <36.912109, 37.768639, 35.071259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906349, 37.049732, 35.235958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733486, 37.060627, 34.875404>,  <36.629768, 37.067165, 34.659073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733486, 37.060627, 34.875404>,  <36.906349, 37.049732, 35.235958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733486, 37.060627, 34.875404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767954, -0.512872, -0.383678,
		-0.472746, -0.858033, 0.200725,
		-0.432155, 0.027235, -0.901388,
		36.603840, 37.068798, 34.604988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286388, 36.553486, 34.893101>,  <36.906349, 37.049732, 35.235958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286388, 36.553486, 34.893101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114532, 36.769558, 34.603657>,  <37.011417, 36.899200, 34.429989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114532, 36.769558, 34.603657>,  <37.286388, 36.553486, 34.893101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114532, 36.769558, 34.603657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763005, -0.211403, -0.610845,
		-0.482941, -0.814564, -0.321333,
		-0.429641, 0.540180, -0.723611,
		36.985641, 36.931614, 34.386574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085155, 36.105488, 34.210472>,  <37.286388, 36.553486, 34.893101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085155, 36.105488, 34.210472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213665, 36.483963, 34.194881>,  <37.290771, 36.711048, 34.185528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213665, 36.483963, 34.194881>,  <37.085155, 36.105488, 34.210472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213665, 36.483963, 34.194881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695318, -0.263631, -0.668604,
		-0.642897, 0.187706, -0.742597,
		0.321273, 0.946184, -0.038972,
		37.310047, 36.767818, 34.183189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167595, 35.401012, 34.407856>,  <37.085155, 36.105488, 34.210472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167595, 35.401012, 34.407856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338402, 35.058197, 34.523190>,  <37.440884, 34.852509, 34.592392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338402, 35.058197, 34.523190>,  <37.167595, 35.401012, 34.407856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338402, 35.058197, 34.523190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772107, -0.179613, 0.609583,
		-0.470648, -0.482929, -0.738424,
		0.427015, -0.857041, 0.288338,
		37.466507, 34.801086, 34.609692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571220, 34.857693, 34.390072>,  <37.167595, 35.401012, 34.407856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571220, 34.857693, 34.390072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856758, 34.752487, 34.649689>,  <37.028080, 34.689362, 34.805458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856758, 34.752487, 34.649689>,  <36.571220, 34.857693, 34.390072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856758, 34.752487, 34.649689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688787, -0.096277, 0.718543,
		-0.126504, -0.959974, -0.249892,
		0.713841, -0.263021, 0.649038,
		37.070911, 34.673584, 34.844402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170334, 34.464638, 34.826813>,  <36.571220, 34.857693, 34.390072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170334, 34.464638, 34.826813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512844, 34.486923, 35.032219>,  <36.718349, 34.500294, 35.155460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512844, 34.486923, 35.032219>,  <36.170334, 34.464638, 34.826813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512844, 34.486923, 35.032219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500805, -0.153855, 0.851776,
		0.126467, -0.986521, -0.103837,
		0.856271, 0.055720, 0.513512,
		36.769726, 34.503639, 35.186272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215572, 33.932102, 35.142086>,  <36.170334, 34.464638, 34.826813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215572, 33.932102, 35.142086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434792, 34.199959, 35.342575>,  <36.566322, 34.360672, 35.462868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434792, 34.199959, 35.342575>,  <36.215572, 33.932102, 35.142086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434792, 34.199959, 35.342575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635932, -0.055682, 0.769734,
		0.543354, -0.740595, 0.395329,
		0.548048, 0.669641, 0.501223,
		36.599205, 34.400852, 35.492943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341385, 33.686821, 35.843178>,  <36.215572, 33.932102, 35.142086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341385, 33.686821, 35.843178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410324, 34.079578, 35.874645>,  <36.451687, 34.315231, 35.893524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410324, 34.079578, 35.874645>,  <36.341385, 33.686821, 35.843178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410324, 34.079578, 35.874645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433264, 0.003840, 0.901259,
		0.884635, -0.189412, 0.426079,
		0.172345, 0.981890, 0.078668,
		36.462029, 34.374146, 35.898247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418026, 33.734703, 36.570141>,  <36.341385, 33.686821, 35.843178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418026, 33.734703, 36.570141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375919, 34.115776, 36.456070>,  <36.350655, 34.344418, 36.387627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375919, 34.115776, 36.456070>,  <36.418026, 33.734703, 36.570141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375919, 34.115776, 36.456070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348020, 0.233341, 0.907984,
		0.931559, 0.194825, 0.306989,
		-0.105265, 0.952678, -0.285173,
		36.344341, 34.401581, 36.370518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778538, 34.208584, 37.048054>,  <36.418026, 33.734703, 36.570141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778538, 34.208584, 37.048054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487782, 34.427139, 36.881638>,  <36.313328, 34.558273, 36.781788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487782, 34.427139, 36.881638>,  <36.778538, 34.208584, 37.048054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487782, 34.427139, 36.881638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253185, 0.349923, 0.901915,
		0.638378, 0.760930, -0.116018,
		-0.726891, 0.546389, -0.416039,
		36.269714, 34.591057, 36.756824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714741, 34.914330, 37.490833>,  <36.778538, 34.208584, 37.048054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714741, 34.914330, 37.490833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374557, 34.901455, 37.280807>,  <36.170448, 34.893730, 37.154793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374557, 34.901455, 37.280807>,  <36.714741, 34.914330, 37.490833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374557, 34.901455, 37.280807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454430, 0.547747, 0.702472,
		0.264990, 0.836025, -0.480462,
		-0.850455, -0.032188, -0.525062,
		36.119419, 34.891800, 37.123287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387291, 35.674690, 37.562340>,  <36.714741, 34.914330, 37.490833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387291, 35.674690, 37.562340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110325, 35.410564, 37.446026>,  <35.944145, 35.252090, 37.376240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110325, 35.410564, 37.446026>,  <36.387291, 35.674690, 37.562340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110325, 35.410564, 37.446026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669940, 0.438779, 0.598877,
		-0.267857, 0.609476, -0.746185,
		-0.692411, -0.660313, -0.290782,
		35.902603, 35.212471, 37.358791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797707, 36.089149, 37.379402>,  <36.387291, 35.674690, 37.562340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797707, 36.089149, 37.379402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661995, 35.722229, 37.462769>,  <35.580566, 35.502075, 37.512791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661995, 35.722229, 37.462769>,  <35.797707, 36.089149, 37.379402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661995, 35.722229, 37.462769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566125, 0.376059, 0.733541,
		-0.751259, 0.130888, -0.646899,
		-0.339284, -0.917305, 0.208418,
		35.560211, 35.447037, 37.525295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084332, 36.113888, 37.251732>,  <35.797707, 36.089149, 37.379402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084332, 36.113888, 37.251732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196186, 35.823811, 37.503414>,  <35.263298, 35.649765, 37.654423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196186, 35.823811, 37.503414>,  <35.084332, 36.113888, 37.251732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196186, 35.823811, 37.503414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715796, 0.279295, 0.640024,
		-0.639873, -0.629360, -0.440986,
		0.279640, -0.725190, 0.629207,
		35.280079, 35.606255, 37.692177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466202, 36.118774, 37.604603>,  <35.084332, 36.113888, 37.251732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466202, 36.118774, 37.604603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724846, 35.921169, 37.837097>,  <34.880032, 35.802605, 37.976593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724846, 35.921169, 37.837097>,  <34.466202, 36.118774, 37.604603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724846, 35.921169, 37.837097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569134, 0.194913, 0.798808,
		-0.507916, -0.847323, -0.155128,
		0.646612, -0.494016, 0.581240,
		34.918831, 35.772964, 38.011471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106415, 35.851299, 38.180702>,  <34.466202, 36.118774, 37.604603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106415, 35.851299, 38.180702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461487, 35.762100, 38.341843>,  <34.674530, 35.708580, 38.438526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461487, 35.762100, 38.341843>,  <34.106415, 35.851299, 38.180702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461487, 35.762100, 38.341843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367557, 0.183807, 0.911656,
		-0.277345, -0.957333, 0.081198,
		0.887683, -0.222999, 0.402853,
		34.727791, 35.695202, 38.462700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038139, 35.248489, 38.725876>,  <34.106415, 35.851299, 38.180702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038139, 35.248489, 38.725876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342258, 35.503078, 38.777817>,  <34.524731, 35.655830, 38.808983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342258, 35.503078, 38.777817>,  <34.038139, 35.248489, 38.725876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342258, 35.503078, 38.777817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303291, 0.171046, 0.937421,
		0.574429, -0.752097, 0.323081,
		0.760293, 0.636469, 0.129851,
		34.570347, 35.694019, 38.816772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759789, 34.871307, 39.374737>,  <34.038139, 35.248489, 38.725876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759789, 34.871307, 39.374737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395763, 34.724228, 39.451237>,  <33.177349, 34.635979, 39.497135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395763, 34.724228, 39.451237>,  <33.759789, 34.871307, 39.374737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395763, 34.724228, 39.451237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088323, -0.622893, -0.777305,
		0.404946, -0.690506, 0.599350,
		-0.910065, -0.367703, 0.191250,
		33.122746, 34.613918, 39.508614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759266, 34.153145, 39.104736>,  <33.759789, 34.871307, 39.374737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759266, 34.153145, 39.104736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369545, 34.229073, 39.153233>,  <33.135712, 34.274632, 39.182331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369545, 34.229073, 39.153233>,  <33.759266, 34.153145, 39.104736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369545, 34.229073, 39.153233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209029, -0.561547, -0.800607,
		-0.083891, -0.805378, 0.586796,
		-0.974305, 0.189821, 0.121239,
		33.077255, 34.286018, 39.189606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531998, 33.507656, 38.989441>,  <33.759266, 34.153145, 39.104736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531998, 33.507656, 38.989441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217056, 33.742870, 38.915371>,  <33.028091, 33.883999, 38.870930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217056, 33.742870, 38.915371>,  <33.531998, 33.507656, 38.989441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217056, 33.742870, 38.915371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117500, -0.437993, -0.891267,
		-0.605204, -0.679982, 0.413949,
		-0.787351, 0.588037, -0.185177,
		32.980850, 33.919281, 38.859818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102173, 33.018032, 38.709515>,  <33.531998, 33.507656, 38.989441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102173, 33.018032, 38.709515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951363, 33.373989, 38.606804>,  <32.860874, 33.587563, 38.545177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951363, 33.373989, 38.606804>,  <33.102173, 33.018032, 38.709515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951363, 33.373989, 38.606804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143357, -0.329967, -0.933044,
		-0.915040, -0.314972, 0.251979,
		-0.377027, 0.889896, -0.256779,
		32.838253, 33.640957, 38.529770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450737, 32.844116, 38.284378>,  <33.102173, 33.018032, 38.709515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450737, 32.844116, 38.284378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625713, 33.193779, 38.200008>,  <32.730701, 33.403576, 38.149387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625713, 33.193779, 38.200008>,  <32.450737, 32.844116, 38.284378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625713, 33.193779, 38.200008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216441, -0.330011, -0.918828,
		-0.872809, 0.356283, -0.333566,
		0.437444, 0.874159, -0.210923,
		32.756947, 33.456028, 38.136730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223282, 32.967178, 37.556339>,  <32.450737, 32.844116, 38.284378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223282, 32.967178, 37.556339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530094, 33.221031, 37.594093>,  <32.714180, 33.373344, 37.616745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530094, 33.221031, 37.594093>,  <32.223282, 32.967178, 37.556339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530094, 33.221031, 37.594093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194162, -0.089385, -0.976889,
		-0.611531, 0.767626, -0.191782,
		0.767027, 0.634634, 0.094382,
		32.760201, 33.411423, 37.622410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055561, 33.395226, 37.031933>,  <32.223282, 32.967178, 37.556339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055561, 33.395226, 37.031933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439514, 33.478031, 37.107586>,  <32.669888, 33.527714, 37.152977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439514, 33.478031, 37.107586>,  <32.055561, 33.395226, 37.031933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439514, 33.478031, 37.107586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170094, 0.106361, -0.979671,
		-0.222925, 0.972539, 0.066881,
		0.959881, 0.207017, 0.189134,
		32.727478, 33.540138, 37.164326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290890, 34.036495, 36.765572>,  <32.055561, 33.395226, 37.031933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290890, 34.036495, 36.765572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617893, 33.806499, 36.778667>,  <32.814095, 33.668503, 36.786526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617893, 33.806499, 36.778667>,  <32.290890, 34.036495, 36.765572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617893, 33.806499, 36.778667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087753, 0.068187, -0.993806,
		0.569192, 0.815317, 0.106200,
		0.817509, -0.574985, 0.032735,
		32.863144, 33.634003, 36.788486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600159, 34.204166, 36.182755>,  <32.290890, 34.036495, 36.765572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600159, 34.204166, 36.182755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809608, 33.872662, 36.261723>,  <32.935276, 33.673759, 36.309105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809608, 33.872662, 36.261723>,  <32.600159, 34.204166, 36.182755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809608, 33.872662, 36.261723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309898, -0.030573, -0.950278,
		0.793589, 0.558768, 0.240822,
		0.523622, -0.828761, 0.197423,
		32.966694, 33.624035, 36.320950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293667, 34.264282, 35.881725>,  <32.600159, 34.204166, 36.182755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293667, 34.264282, 35.881725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271740, 33.870083, 35.945953>,  <33.258583, 33.633564, 35.984489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271740, 33.870083, 35.945953>,  <33.293667, 34.264282, 35.881725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271740, 33.870083, 35.945953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445574, -0.168051, -0.879331,
		0.893565, 0.023343, 0.448326,
		-0.054816, -0.985502, 0.160566,
		33.255295, 33.574432, 35.994122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921131, 33.958996, 35.660583>,  <33.293667, 34.264282, 35.881725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921131, 33.958996, 35.660583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656502, 33.659531, 35.643478>,  <33.497726, 33.479851, 35.633217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656502, 33.659531, 35.643478>,  <33.921131, 33.958996, 35.660583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656502, 33.659531, 35.643478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273689, -0.187975, -0.943271,
		0.698156, -0.635741, 0.329259,
		-0.661569, -0.748665, -0.042759,
		33.458031, 33.434933, 35.630650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282639, 33.528946, 35.187813>,  <33.921131, 33.958996, 35.660583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282639, 33.528946, 35.187813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901199, 33.408726, 35.194942>,  <33.672337, 33.336594, 35.199219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901199, 33.408726, 35.194942>,  <34.282639, 33.528946, 35.187813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901199, 33.408726, 35.194942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066760, -0.268803, -0.960879,
		0.293582, -0.915104, 0.276395,
		-0.953600, -0.300549, 0.017823,
		33.615120, 33.318562, 35.200291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.786659, 35.946686, 42.990807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.437305, 36.039501, 42.819527>,  <32.227692, 36.095192, 42.716759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.437305, 36.039501, 42.819527>,  <32.786659, 35.946686, 42.990807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437305, 36.039501, 42.819527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197517, -0.634906, -0.746915,
		-0.445184, -0.736921, 0.508684,
		-0.873383, 0.232041, -0.428204,
		32.175289, 36.109112, 42.691067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644615, 35.330090, 42.774426>,  <32.786659, 35.946686, 42.990807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644615, 35.330090, 42.774426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.402996, 35.562653, 42.556400>,  <32.258026, 35.702190, 42.425587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.402996, 35.562653, 42.556400>,  <32.644615, 35.330090, 42.774426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402996, 35.562653, 42.556400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084575, -0.633305, -0.769267,
		-0.792449, -0.510771, 0.333372,
		-0.604046, 0.581410, -0.545061,
		32.221783, 35.737076, 42.392883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380642, 34.878883, 42.335213>,  <32.644615, 35.330090, 42.774426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380642, 34.878883, 42.335213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.266296, 35.228416, 42.177891>,  <32.197689, 35.438137, 42.083496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.266296, 35.228416, 42.177891>,  <32.380642, 34.878883, 42.335213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266296, 35.228416, 42.177891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061601, -0.392828, -0.917547,
		-0.956288, -0.286521, 0.058466,
		-0.285864, 0.873837, -0.393307,
		32.180538, 35.490566, 42.059898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832897, 34.737068, 41.871246>,  <32.380642, 34.878883, 42.335213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832897, 34.737068, 41.871246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.981749, 35.092457, 41.763817>,  <32.071060, 35.305691, 41.699360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.981749, 35.092457, 41.763817>,  <31.832897, 34.737068, 41.871246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981749, 35.092457, 41.763817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158458, -0.345918, -0.924787,
		-0.914555, 0.301582, -0.269512,
		0.372128, 0.888476, -0.268573,
		32.093388, 35.359001, 41.683247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595211, 34.949165, 41.181751>,  <31.832897, 34.737068, 41.871246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595211, 34.949165, 41.181751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.942722, 35.145348, 41.209095>,  <32.151230, 35.263058, 41.225502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.942722, 35.145348, 41.209095>,  <31.595211, 34.949165, 41.181751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942722, 35.145348, 41.209095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215548, -0.250253, -0.943882,
		-0.445825, 0.834761, -0.323132,
		0.868780, 0.490456, 0.068362,
		32.203358, 35.292484, 41.229603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632570, 35.344746, 40.621796>,  <31.595211, 34.949165, 41.181751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632570, 35.344746, 40.621796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.008945, 35.316700, 40.754288>,  <32.234772, 35.299873, 40.833782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.008945, 35.316700, 40.754288>,  <31.632570, 35.344746, 40.621796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008945, 35.316700, 40.754288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258641, -0.482461, -0.836861,
		0.218486, 0.873107, -0.435831,
		0.940940, -0.070118, 0.331232,
		32.291229, 35.295666, 40.853657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048576, 35.567532, 40.011295>,  <31.632570, 35.344746, 40.621796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048576, 35.567532, 40.011295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.309727, 35.409966, 40.270088>,  <32.466415, 35.315426, 40.425365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.309727, 35.409966, 40.270088>,  <32.048576, 35.567532, 40.011295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309727, 35.409966, 40.270088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420700, -0.521718, -0.742174,
		0.629895, 0.756732, -0.174897,
		0.652874, -0.393912, 0.646985,
		32.505589, 35.291790, 40.464184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680340, 35.748009, 39.728817>,  <32.048576, 35.567532, 40.011295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680340, 35.748009, 39.728817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.747181, 35.428345, 39.959785>,  <32.787285, 35.236546, 40.098366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.747181, 35.428345, 39.959785>,  <32.680340, 35.748009, 39.728817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747181, 35.428345, 39.959785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499318, -0.436397, -0.748491,
		0.850151, 0.413393, 0.326113,
		0.167106, -0.799164, 0.577418,
		32.797314, 35.188595, 40.133011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337528, 35.429729, 39.550350>,  <32.680340, 35.748009, 39.728817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337528, 35.429729, 39.550350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.128353, 35.136299, 39.723969>,  <33.002846, 34.960239, 39.828140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.128353, 35.136299, 39.723969>,  <33.337528, 35.429729, 39.550350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128353, 35.136299, 39.723969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180348, -0.592916, -0.784809,
		0.833071, -0.332131, 0.442360,
		-0.522942, -0.733580, 0.434042,
		32.971470, 34.916225, 39.854179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146004, 35.504456, 39.796074>,  <33.337528, 35.429729, 39.550350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146004, 35.504456, 39.796074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.402760, 35.714775, 39.572819>,  <34.556812, 35.840965, 39.438866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.402760, 35.714775, 39.572819>,  <34.146004, 35.504456, 39.796074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402760, 35.714775, 39.572819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122575, 0.788879, 0.602200,
		0.756932, -0.318136, 0.570827,
		0.641894, 0.525794, -0.558133,
		34.595329, 35.872513, 39.405380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632126, 35.860981, 40.253147>,  <34.146004, 35.504456, 39.796074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632126, 35.860981, 40.253147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625713, 36.080711, 39.918964>,  <34.621868, 36.212547, 39.718456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625713, 36.080711, 39.918964>,  <34.632126, 35.860981, 40.253147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625713, 36.080711, 39.918964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011900, 0.835609, 0.549196,
		0.999801, -0.001140, -0.019931,
		-0.016028, 0.549324, -0.835456,
		34.620907, 36.245510, 39.668327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087566, 36.514465, 40.393597>,  <34.632126, 35.860981, 40.253147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087566, 36.514465, 40.393597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.843403, 36.614574, 40.092991>,  <34.696907, 36.674641, 39.912628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.843403, 36.614574, 40.092991>,  <35.087566, 36.514465, 40.393597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843403, 36.614574, 40.092991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088849, 0.921148, 0.378935,
		0.787091, 0.298075, -0.540037,
		-0.610405, 0.250274, -0.751511,
		34.660282, 36.689655, 39.867538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412357, 37.077385, 40.080856>,  <35.087566, 36.514465, 40.393597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412357, 37.077385, 40.080856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.021667, 37.074150, 39.995117>,  <34.787254, 37.072208, 39.943676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.021667, 37.074150, 39.995117>,  <35.412357, 37.077385, 40.080856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021667, 37.074150, 39.995117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070417, 0.955996, 0.284803,
		0.202608, 0.293268, -0.934315,
		-0.976725, -0.008089, -0.214344,
		34.728649, 37.071724, 39.930813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261673, 37.758827, 39.803738>,  <35.412357, 37.077385, 40.080856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261673, 37.758827, 39.803738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.895870, 37.635921, 39.909012>,  <34.676388, 37.562180, 39.972176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.895870, 37.635921, 39.909012>,  <35.261673, 37.758827, 39.803738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895870, 37.635921, 39.909012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216922, 0.921521, 0.322094,
		-0.341498, 0.237467, -0.909389,
		-0.914508, -0.307261, 0.263186,
		34.621517, 37.543743, 39.987968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741867, 38.308834, 39.661545>,  <35.261673, 37.758827, 39.803738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741867, 38.308834, 39.661545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.552250, 38.064545, 39.915253>,  <34.438480, 37.917969, 40.067478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.552250, 38.064545, 39.915253>,  <34.741867, 38.308834, 39.661545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552250, 38.064545, 39.915253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274854, 0.786992, 0.552357,
		-0.836506, 0.087506, -0.540925,
		-0.474038, -0.610726, 0.634273,
		34.410038, 37.881329, 40.105534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977188, 38.555710, 39.775993>,  <34.741867, 38.308834, 39.661545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977188, 38.555710, 39.775993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.130539, 38.352760, 40.084694>,  <34.222549, 38.230991, 40.269913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.130539, 38.352760, 40.084694>,  <33.977188, 38.555710, 39.775993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130539, 38.352760, 40.084694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245050, 0.749767, 0.614654,
		-0.890488, -0.424763, 0.163116,
		0.383381, -0.507371, 0.771747,
		34.245552, 38.200550, 40.316219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611603, 38.875763, 40.231243>,  <33.977188, 38.555710, 39.775993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611603, 38.875763, 40.231243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.865303, 38.680122, 40.470745>,  <34.017521, 38.562737, 40.614445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.865303, 38.680122, 40.470745>,  <33.611603, 38.875763, 40.231243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865303, 38.680122, 40.470745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251750, 0.601595, 0.758093,
		-0.730993, -0.631556, 0.258430,
		0.634249, -0.489101, 0.598756,
		34.055576, 38.533394, 40.650372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299587, 38.737419, 40.915970>,  <33.611603, 38.875763, 40.231243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299587, 38.737419, 40.915970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.694073, 38.720215, 40.979877>,  <33.930763, 38.709892, 41.018223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.694073, 38.720215, 40.979877>,  <33.299587, 38.737419, 40.915970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694073, 38.720215, 40.979877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089171, 0.675221, 0.732206,
		-0.139367, -0.736361, 0.662080,
		0.986218, -0.043007, 0.159766,
		33.989937, 38.707314, 41.027805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356812, 38.566189, 41.600426>,  <33.299587, 38.737419, 40.915970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356812, 38.566189, 41.600426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.692642, 38.744751, 41.476604>,  <33.894142, 38.851891, 41.402309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.692642, 38.744751, 41.476604>,  <33.356812, 38.566189, 41.600426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692642, 38.744751, 41.476604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066638, 0.650164, 0.756866,
		0.539132, -0.614822, 0.575613,
		0.839581, 0.446409, -0.309554,
		33.944515, 38.878674, 41.383739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665497, 38.672844, 42.160172>,  <33.356812, 38.566189, 41.600426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665497, 38.672844, 42.160172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.890408, 38.888260, 41.909149>,  <34.025352, 39.017509, 41.758537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.890408, 38.888260, 41.909149>,  <33.665497, 38.672844, 42.160172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890408, 38.888260, 41.909149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151490, 0.678957, 0.718379,
		0.812957, -0.498994, 0.300176,
		0.562273, 0.538537, -0.627555,
		34.059090, 39.049820, 41.720882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279175, 38.767273, 42.480640>,  <33.665497, 38.672844, 42.160172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279175, 38.767273, 42.480640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.242584, 39.067173, 42.218491>,  <34.220631, 39.247112, 42.061203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.242584, 39.067173, 42.218491>,  <34.279175, 38.767273, 42.480640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242584, 39.067173, 42.218491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002771, 0.658320, 0.752733,
		0.995803, 0.067042, -0.062299,
		-0.091477, 0.749747, -0.655371,
		34.215141, 39.292099, 42.021881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746590, 39.227940, 42.601612>,  <34.279175, 38.767273, 42.480640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746590, 39.227940, 42.601612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.452015, 39.433426, 42.425545>,  <34.275269, 39.556717, 42.319904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.452015, 39.433426, 42.425545>,  <34.746590, 39.227940, 42.601612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452015, 39.433426, 42.425545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001462, 0.649445, 0.760407,
		0.676501, 0.560638, -0.477526,
		-0.736441, 0.513718, -0.440169,
		34.231083, 39.587540, 42.293495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935184, 39.826756, 42.779404>,  <34.746590, 39.227940, 42.601612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935184, 39.826756, 42.779404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.561756, 39.887180, 42.649403>,  <34.337700, 39.923435, 42.571404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.561756, 39.887180, 42.649403>,  <34.935184, 39.826756, 42.779404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561756, 39.887180, 42.649403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177217, 0.593638, 0.784976,
		0.311509, 0.790428, -0.527433,
		-0.933571, 0.151057, -0.325001,
		34.281685, 39.932499, 42.551903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.699503, 39.011841, 41.113228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.073944, 39.145226, 41.157970>,  <28.298609, 39.225258, 41.184814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.073944, 39.145226, 41.157970>,  <27.699503, 39.011841, 41.113228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073944, 39.145226, 41.157970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248075, -0.400531, -0.882062,
		-0.249337, 0.853449, -0.457663,
		0.936104, 0.333465, 0.111852,
		28.354774, 39.245266, 41.191525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901600, 39.245419, 40.495064>,  <27.699503, 39.011841, 41.113228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901600, 39.245419, 40.495064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.255795, 39.174435, 40.666843>,  <28.468311, 39.131844, 40.769909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.255795, 39.174435, 40.666843>,  <27.901600, 39.245419, 40.495064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255795, 39.174435, 40.666843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355012, -0.337919, -0.871652,
		0.299802, 0.924293, -0.236221,
		0.885486, -0.177462, 0.429444,
		28.521441, 39.121197, 40.795677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458933, 39.452473, 39.941708>,  <27.901600, 39.245419, 40.495064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458933, 39.452473, 39.941708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.650084, 39.225018, 40.209526>,  <28.764774, 39.088547, 40.370216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.650084, 39.225018, 40.209526>,  <28.458933, 39.452473, 39.941708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650084, 39.225018, 40.209526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595580, -0.350529, -0.722782,
		0.645693, 0.744168, 0.171157,
		0.477876, -0.568633, 0.669546,
		28.793446, 39.054428, 40.410389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144178, 39.515030, 39.875217>,  <28.458933, 39.452473, 39.941708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144178, 39.515030, 39.875217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.119141, 39.151875, 40.041023>,  <29.104118, 38.933983, 40.140507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.119141, 39.151875, 40.041023>,  <29.144178, 39.515030, 39.875217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119141, 39.151875, 40.041023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652579, -0.351475, -0.671272,
		0.755131, 0.228488, 0.614468,
		-0.062593, -0.907887, 0.414516,
		29.100363, 38.879509, 40.165379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688211, 39.203590, 39.513149>,  <29.144178, 39.515030, 39.875217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688211, 39.203590, 39.513149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.520029, 38.896797, 39.707039>,  <29.419121, 38.712723, 39.823372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.520029, 38.896797, 39.707039>,  <29.688211, 39.203590, 39.513149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520029, 38.896797, 39.707039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513671, -0.641598, -0.569644,
		0.747904, 0.009478, 0.663740,
		-0.420455, -0.766983, 0.484722,
		29.393892, 38.666702, 39.852455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220245, 38.716118, 39.774403>,  <29.688211, 39.203590, 39.513149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220245, 38.716118, 39.774403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.885054, 38.507336, 39.710709>,  <29.683939, 38.382069, 39.672493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.885054, 38.507336, 39.710709>,  <30.220245, 38.716118, 39.774403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885054, 38.507336, 39.710709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535006, -0.728322, -0.428154,
		0.107503, -0.443976, 0.889566,
		-0.837981, -0.521951, -0.159233,
		29.633659, 38.350750, 39.662937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416321, 38.104847, 39.889896>,  <30.220245, 38.716118, 39.774403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416321, 38.104847, 39.889896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.088278, 38.043236, 39.669464>,  <29.891451, 38.006268, 39.537205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.088278, 38.043236, 39.669464>,  <30.416321, 38.104847, 39.889896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088278, 38.043236, 39.669464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462516, -0.745479, -0.479938,
		-0.336896, -0.648487, 0.682616,
		-0.820110, -0.154032, -0.551085,
		29.842245, 37.997025, 39.504139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448122, 37.421661, 39.734531>,  <30.416321, 38.104847, 39.889896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448122, 37.421661, 39.734531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.183455, 37.558666, 39.467735>,  <30.024654, 37.640869, 39.307655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.183455, 37.558666, 39.467735>,  <30.448122, 37.421661, 39.734531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183455, 37.558666, 39.467735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297245, -0.696853, -0.652718,
		-0.688349, -0.630150, 0.359287,
		-0.661681, 0.342501, -0.666987,
		29.984955, 37.661419, 39.267635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032368, 36.862526, 39.524284>,  <30.448122, 37.421661, 39.734531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032368, 36.862526, 39.524284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.009598, 37.139828, 39.236908>,  <29.995935, 37.306210, 39.064484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.009598, 37.139828, 39.236908>,  <30.032368, 36.862526, 39.524284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009598, 37.139828, 39.236908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014212, -0.720097, -0.693728,
		-0.998277, -0.029281, 0.050845,
		-0.056927, 0.693256, -0.718440,
		29.992519, 37.347805, 39.021378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784702, 36.560223, 38.999794>,  <30.032368, 36.862526, 39.524284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784702, 36.560223, 38.999794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.869003, 36.887394, 38.785664>,  <29.919584, 37.083698, 38.657185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.869003, 36.887394, 38.785664>,  <29.784702, 36.560223, 38.999794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869003, 36.887394, 38.785664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167716, -0.569765, -0.804512,
		-0.963045, 0.079769, -0.257259,
		0.210753, 0.817927, -0.535331,
		29.932230, 37.132771, 38.625065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353046, 36.636116, 38.366478>,  <29.784702, 36.560223, 38.999794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353046, 36.636116, 38.366478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.677845, 36.853622, 38.281643>,  <29.872725, 36.984127, 38.230743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.677845, 36.853622, 38.281643>,  <29.353046, 36.636116, 38.366478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677845, 36.853622, 38.281643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051286, -0.428441, -0.902113,
		-0.581405, 0.721636, -0.375780,
		0.811996, 0.543765, -0.212088,
		29.921444, 37.016750, 38.218018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196053, 37.068218, 37.717350>,  <29.353046, 36.636116, 38.366478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196053, 37.068218, 37.717350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.594059, 37.071266, 37.757114>,  <29.832863, 37.073097, 37.780972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.594059, 37.071266, 37.757114>,  <29.196053, 37.068218, 37.717350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594059, 37.071266, 37.757114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099450, -0.146288, -0.984230,
		0.007039, 0.989213, -0.146317,
		0.995018, 0.007624, 0.099407,
		29.892565, 37.073555, 37.786938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384418, 37.382130, 37.071812>,  <29.196053, 37.068218, 37.717350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384418, 37.382130, 37.071812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.699894, 37.199039, 37.235985>,  <29.889179, 37.089184, 37.334488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.699894, 37.199039, 37.235985>,  <29.384418, 37.382130, 37.071812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699894, 37.199039, 37.235985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248443, -0.373361, -0.893800,
		0.562356, 0.806899, -0.180747,
		0.788690, -0.457728, 0.410430,
		29.936501, 37.061722, 37.359116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998503, 37.583076, 36.691353>,  <29.384418, 37.382130, 37.071812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998503, 37.583076, 36.691353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.079178, 37.234680, 36.870552>,  <30.127583, 37.025642, 36.978073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.079178, 37.234680, 36.870552>,  <29.998503, 37.583076, 36.691353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079178, 37.234680, 36.870552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267457, -0.391037, -0.880657,
		0.942225, 0.297439, 0.154084,
		0.201689, -0.870988, 0.447997,
		30.139685, 36.973385, 37.004951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364010, 38.150799, 36.832397>,  <29.998503, 37.583076, 36.691353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364010, 38.150799, 36.832397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590441, 38.447498, 36.688526>,  <30.726299, 38.625519, 36.602203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590441, 38.447498, 36.688526>,  <30.364010, 38.150799, 36.832397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590441, 38.447498, 36.688526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409006, 0.631540, 0.658688,
		0.715730, -0.225759, 0.660880,
		0.566078, 0.741748, -0.359676,
		30.760263, 38.670021, 36.580624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623615, 38.420887, 37.386169>,  <30.364010, 38.150799, 36.832397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623615, 38.420887, 37.386169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.628769, 38.690926, 37.091122>,  <30.631861, 38.852947, 36.914093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.628769, 38.690926, 37.091122>,  <30.623615, 38.420887, 37.386169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628769, 38.690926, 37.091122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191859, 0.725641, 0.660783,
		0.981338, 0.133004, 0.138873,
		0.012885, 0.675096, -0.737617,
		30.632635, 38.893456, 36.869835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003733, 38.941261, 37.551567>,  <30.623615, 38.420887, 37.386169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003733, 38.941261, 37.551567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.756613, 39.101574, 37.280952>,  <30.608341, 39.197762, 37.118584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.756613, 39.101574, 37.280952>,  <31.003733, 38.941261, 37.551567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756613, 39.101574, 37.280952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271284, 0.698908, 0.661765,
		0.738058, 0.592370, -0.323059,
		-0.617799, 0.400780, -0.676535,
		30.571274, 39.221809, 37.077991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996347, 39.729645, 37.679401>,  <31.003733, 38.941261, 37.551567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996347, 39.729645, 37.679401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.691320, 39.687229, 37.424137>,  <30.508305, 39.661781, 37.270977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.691320, 39.687229, 37.424137>,  <30.996347, 39.729645, 37.679401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691320, 39.687229, 37.424137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449175, 0.796703, 0.404359,
		0.465547, 0.594996, -0.655168,
		-0.762566, -0.106037, -0.638161,
		30.462551, 39.655418, 37.232689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868338, 40.299442, 37.536568>,  <30.996347, 39.729645, 37.679401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868338, 40.299442, 37.536568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.515537, 40.129021, 37.456017>,  <30.303856, 40.026768, 37.407688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.515537, 40.129021, 37.456017>,  <30.868338, 40.299442, 37.536568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515537, 40.129021, 37.456017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446521, 0.618992, 0.646117,
		-0.150629, 0.659795, -0.736193,
		-0.882003, -0.426050, -0.201374,
		30.250937, 40.001205, 37.395603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414602, 40.850986, 37.270107>,  <30.868338, 40.299442, 37.536568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414602, 40.850986, 37.270107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.149158, 40.581654, 37.400486>,  <29.989891, 40.420052, 37.478714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.149158, 40.581654, 37.400486>,  <30.414602, 40.850986, 37.270107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149158, 40.581654, 37.400486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498039, 0.722777, 0.479114,
		-0.558191, 0.155611, -0.814989,
		-0.663611, -0.673334, 0.325947,
		29.950075, 40.379654, 37.498272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724621, 41.086601, 37.156826>,  <30.414602, 40.850986, 37.270107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724621, 41.086601, 37.156826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.688755, 40.809643, 37.443195>,  <29.667234, 40.643467, 37.615017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.688755, 40.809643, 37.443195>,  <29.724621, 41.086601, 37.156826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688755, 40.809643, 37.443195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666443, 0.575895, 0.473497,
		-0.740145, -0.434667, -0.513079,
		-0.089666, -0.692394, 0.715927,
		29.661856, 40.601925, 37.657974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090721, 41.112038, 37.315853>,  <29.724621, 41.086601, 37.156826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090721, 41.112038, 37.315853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.268511, 40.950531, 37.635708>,  <29.375185, 40.853626, 37.827621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.268511, 40.950531, 37.635708>,  <29.090721, 41.112038, 37.315853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268511, 40.950531, 37.635708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574818, 0.556079, 0.600300,
		-0.687041, -0.726462, 0.015070,
		0.444475, -0.403768, 0.799633,
		29.401854, 40.829399, 37.875599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508045, 40.964298, 37.687244>,  <29.090721, 41.112038, 37.315853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508045, 40.964298, 37.687244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.830488, 40.944775, 37.923145>,  <29.023954, 40.933060, 38.064686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.830488, 40.944775, 37.923145>,  <28.508045, 40.964298, 37.687244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830488, 40.944775, 37.923145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492570, 0.496995, 0.714402,
		-0.327976, -0.866379, 0.376588,
		0.806106, -0.048811, 0.589755,
		29.072319, 40.930130, 38.100071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248341, 40.791698, 38.308113>,  <28.508045, 40.964298, 37.687244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248341, 40.791698, 38.308113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.595633, 40.958614, 38.415474>,  <28.804008, 41.058765, 38.479893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.595633, 40.958614, 38.415474>,  <28.248341, 40.791698, 38.308113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595633, 40.958614, 38.415474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437068, 0.387212, 0.811812,
		0.234830, -0.822154, 0.518573,
		0.868232, 0.417289, 0.268408,
		28.856102, 41.083801, 38.495995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336626, 40.600807, 38.966366>,  <28.248341, 40.791698, 38.308113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336626, 40.600807, 38.966366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.611319, 40.891506, 38.960125>,  <28.776134, 41.065926, 38.956383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.611319, 40.891506, 38.960125>,  <28.336626, 40.600807, 38.966366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611319, 40.891506, 38.960125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337171, 0.337471, 0.878880,
		0.643986, -0.598293, 0.476788,
		0.686730, 0.726745, -0.015600,
		28.817337, 41.109531, 38.955444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526474, 40.697704, 39.697708>,  <28.336626, 40.600807, 38.966366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526474, 40.697704, 39.697708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.651501, 41.035572, 39.523888>,  <28.726517, 41.238293, 39.419598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.651501, 41.035572, 39.523888>,  <28.526474, 40.697704, 39.697708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651501, 41.035572, 39.523888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242680, 0.513297, 0.823184,
		0.918373, -0.151842, 0.365424,
		0.312564, 0.844672, -0.434549,
		28.745270, 41.288975, 39.393524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977827, 40.992252, 40.162281>,  <28.526474, 40.697704, 39.697708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977827, 40.992252, 40.162281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.853634, 41.293041, 39.929680>,  <28.779118, 41.473515, 39.790119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.853634, 41.293041, 39.929680>,  <28.977827, 40.992252, 40.162281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853634, 41.293041, 39.929680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163513, 0.560367, 0.811944,
		0.936410, 0.347177, -0.051028,
		-0.310482, 0.751969, -0.581501,
		28.760489, 41.518631, 39.755230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403008, 41.610115, 40.326942>,  <28.977827, 40.992252, 40.162281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403008, 41.610115, 40.326942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.047146, 41.727539, 40.187038>,  <28.833628, 41.797993, 40.103096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.047146, 41.727539, 40.187038>,  <29.403008, 41.610115, 40.326942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047146, 41.727539, 40.187038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105697, 0.612776, 0.783156,
		0.444229, 0.733709, -0.514132,
		-0.889656, 0.293558, -0.349764,
		28.780249, 41.815605, 40.082108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131298, 42.035534, 40.251686>,  <29.403008, 41.610115, 40.326942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131298, 42.035534, 40.251686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491091, 42.025875, 40.426201>,  <30.706966, 42.020081, 40.530910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491091, 42.025875, 40.426201>,  <30.131298, 42.035534, 40.251686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491091, 42.025875, 40.426201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416654, -0.253417, -0.873029,
		0.131641, 0.967056, -0.217884,
		0.899483, -0.024144, 0.436288,
		30.760935, 42.018631, 40.557087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607460, 42.336246, 39.847546>,  <30.131298, 42.035534, 40.251686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607460, 42.336246, 39.847546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.845034, 42.114807, 40.081051>,  <30.987577, 41.981945, 40.221153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.845034, 42.114807, 40.081051>,  <30.607460, 42.336246, 39.847546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845034, 42.114807, 40.081051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418557, -0.407044, -0.811865,
		0.687061, 0.726530, -0.010046,
		0.593934, -0.553596, 0.583759,
		31.023214, 41.948727, 40.256180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281017, 42.275833, 39.514915>,  <30.607460, 42.336246, 39.847546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281017, 42.275833, 39.514915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.302485, 41.976875, 39.779800>,  <31.315365, 41.797501, 39.938732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.302485, 41.976875, 39.779800>,  <31.281017, 42.275833, 39.514915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302485, 41.976875, 39.779800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672564, -0.463128, -0.577209,
		0.738090, 0.476357, 0.477815,
		0.053668, -0.747393, 0.662211,
		31.318584, 41.752659, 39.978462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967915, 42.103924, 39.476372>,  <31.281017, 42.275833, 39.514915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967915, 42.103924, 39.476372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.769518, 41.789215, 39.623333>,  <31.650480, 41.600391, 39.711510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.769518, 41.789215, 39.623333>,  <31.967915, 42.103924, 39.476372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769518, 41.789215, 39.623333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589213, -0.615750, -0.523145,
		0.637825, -0.042995, 0.768981,
		-0.495992, -0.786768, 0.367407,
		31.620720, 41.553185, 39.733555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431618, 41.575554, 39.742863>,  <31.967915, 42.103924, 39.476372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431618, 41.575554, 39.742863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093887, 41.366566, 39.695309>,  <31.891249, 41.241173, 39.666775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093887, 41.366566, 39.695309>,  <32.431618, 41.575554, 39.742863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093887, 41.366566, 39.695309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523091, -0.755629, -0.394210,
		0.116127, -0.395033, 0.911298,
		-0.844329, -0.522470, -0.118889,
		31.840590, 41.209824, 39.659641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699482, 40.903431, 39.898388>,  <32.431618, 41.575554, 39.742863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699482, 40.903431, 39.898388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.348713, 40.854767, 39.712399>,  <32.138252, 40.825569, 39.600807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.348713, 40.854767, 39.712399>,  <32.699482, 40.903431, 39.898388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348713, 40.854767, 39.712399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363210, -0.801334, -0.475334,
		-0.314765, -0.585715, 0.746901,
		-0.876927, -0.121664, -0.464970,
		32.085636, 40.818268, 39.572906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610210, 40.126156, 39.844616>,  <32.699482, 40.903431, 39.898388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610210, 40.126156, 39.844616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358204, 40.269871, 39.569229>,  <32.207001, 40.356098, 39.403996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358204, 40.269871, 39.569229>,  <32.610210, 40.126156, 39.844616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358204, 40.269871, 39.569229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368672, -0.641893, -0.672350,
		-0.683488, -0.677413, 0.271948,
		-0.630020, 0.359283, -0.688469,
		32.169197, 40.377655, 39.362690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342228, 39.591717, 39.542103>,  <32.610210, 40.126156, 39.844616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342228, 39.591717, 39.542103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262592, 39.875908, 39.272118>,  <32.214809, 40.046425, 39.110126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262592, 39.875908, 39.272118>,  <32.342228, 39.591717, 39.542103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262592, 39.875908, 39.272118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560231, -0.482596, -0.673233,
		-0.804056, -0.512170, -0.301955,
		-0.199087, 0.710481, -0.674967,
		32.202866, 40.089050, 39.069626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135597, 39.276600, 38.965004>,  <32.342228, 39.591717, 39.542103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135597, 39.276600, 38.965004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.311172, 39.624489, 38.874752>,  <32.416519, 39.833221, 38.820599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.311172, 39.624489, 38.874752>,  <32.135597, 39.276600, 38.965004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311172, 39.624489, 38.874752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575856, -0.465062, -0.672389,
		-0.689728, 0.165204, -0.704970,
		0.438937, 0.869727, -0.225633,
		32.442852, 39.885406, 38.807064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308475, 39.123932, 38.260487>,  <32.135597, 39.276600, 38.965004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308475, 39.123932, 38.260487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.510517, 39.449207, 38.376141>,  <32.631741, 39.644371, 38.445534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.510517, 39.449207, 38.376141>,  <32.308475, 39.123932, 38.260487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510517, 39.449207, 38.376141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746996, -0.244109, -0.618392,
		-0.432287, 0.528335, -0.730746,
		0.505100, 0.813187, 0.289139,
		32.662048, 39.693165, 38.462883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493114, 39.431087, 37.608978>,  <32.308475, 39.123932, 38.260487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493114, 39.431087, 37.608978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722095, 39.534462, 37.920235>,  <32.859486, 39.596489, 38.106987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722095, 39.534462, 37.920235>,  <32.493114, 39.431087, 37.608978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722095, 39.534462, 37.920235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812017, -0.047105, -0.581730,
		-0.113687, 0.964878, -0.236822,
		0.572454, 0.258439, 0.778143,
		32.893833, 39.611992, 38.153679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928913, 39.915150, 37.333141>,  <32.493114, 39.431087, 37.608978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928913, 39.915150, 37.333141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104164, 39.782608, 37.667385>,  <33.209312, 39.703083, 37.867931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104164, 39.782608, 37.667385>,  <32.928913, 39.915150, 37.333141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104164, 39.782608, 37.667385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866911, -0.090080, -0.490256,
		0.237721, 0.939196, 0.247790,
		0.438126, -0.331356, 0.835613,
		33.235603, 39.683201, 37.918068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691734, 40.032349, 37.257225>,  <32.928913, 39.915150, 37.333141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691734, 40.032349, 37.257225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.673126, 39.783199, 37.569603>,  <33.661961, 39.633709, 37.757030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.673126, 39.783199, 37.569603>,  <33.691734, 40.032349, 37.257225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673126, 39.783199, 37.569603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847911, -0.437926, -0.298776,
		0.528093, 0.648269, 0.548512,
		-0.046520, -0.622871, 0.780940,
		33.659168, 39.596336, 37.803886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340794, 40.078312, 37.669514>,  <33.691734, 40.032349, 37.257225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340794, 40.078312, 37.669514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.172619, 39.718082, 37.713699>,  <34.071712, 39.501945, 37.740211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.172619, 39.718082, 37.713699>,  <34.340794, 40.078312, 37.669514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172619, 39.718082, 37.713699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871247, -0.434710, -0.227936,
		0.253292, 0.000408, 0.967390,
		-0.420441, -0.900570, 0.110464,
		34.046486, 39.447910, 37.746838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.352053, 43.833580, 36.415245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.978971, 43.972401, 36.454468>,  <25.755123, 44.055695, 36.478001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.978971, 43.972401, 36.454468>,  <26.352053, 43.833580, 36.415245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978971, 43.972401, 36.454468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359503, -0.916323, -0.176381,
		0.028640, -0.199764, 0.979425,
		-0.932704, 0.347054, 0.098059,
		25.699160, 44.076515, 36.483887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025715, 43.420029, 36.971481>,  <26.352053, 43.833580, 36.415245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025715, 43.420029, 36.971481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.724432, 43.593853, 36.773964>,  <25.543663, 43.698147, 36.655453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.724432, 43.593853, 36.773964>,  <26.025715, 43.420029, 36.971481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724432, 43.593853, 36.773964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567330, -0.809089, 0.153334,
		-0.332893, 0.395638, 0.855951,
		-0.753206, 0.434563, -0.493797,
		25.498470, 43.724220, 36.625824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442974, 43.317043, 37.389790>,  <26.025715, 43.420029, 36.971481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442974, 43.317043, 37.389790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.294840, 43.394669, 37.026428>,  <25.205959, 43.441246, 36.808411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.294840, 43.394669, 37.026428>,  <25.442974, 43.317043, 37.389790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294840, 43.394669, 37.026428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527549, -0.848855, 0.033726,
		-0.764554, 0.491715, 0.416741,
		-0.370336, 0.194066, -0.908399,
		25.183739, 43.452888, 36.753910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.755827, 43.064667, 37.434402>,  <25.442974, 43.317043, 37.389790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.755827, 43.064667, 37.434402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.812792, 43.123505, 37.042877>,  <24.846972, 43.158810, 36.807961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.812792, 43.123505, 37.042877>,  <24.755827, 43.064667, 37.434402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812792, 43.123505, 37.042877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397588, -0.897108, -0.192667,
		-0.906445, 0.416604, -0.069275,
		0.142413, 0.147099, -0.978816,
		24.855516, 43.167633, 36.749233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.135256, 42.896320, 37.013561>,  <24.755827, 43.064667, 37.434402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.135256, 42.896320, 37.013561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.430481, 42.832077, 36.751427>,  <24.607616, 42.793530, 36.594147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.430481, 42.832077, 36.751427>,  <24.135256, 42.896320, 37.013561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.430481, 42.832077, 36.751427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385912, -0.897193, -0.214746,
		-0.553472, 0.411399, -0.724168,
		0.738065, -0.160610, -0.655335,
		24.651901, 42.783894, 36.554825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.867565, 42.406178, 36.440769>,  <24.135256, 42.896320, 37.013561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.867565, 42.406178, 36.440769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.255234, 42.397125, 36.342628>,  <24.487835, 42.391693, 36.283745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.255234, 42.397125, 36.342628>,  <23.867565, 42.406178, 36.440769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255234, 42.397125, 36.342628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113273, -0.925229, -0.362106,
		-0.218816, 0.378734, -0.899266,
		0.969169, -0.022628, -0.245355,
		24.545984, 42.390335, 36.269020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.934328, 42.177723, 35.774929>,  <23.867565, 42.406178, 36.440769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.934328, 42.177723, 35.774929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.286884, 42.088188, 35.941326>,  <24.498419, 42.034466, 36.041164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.286884, 42.088188, 35.941326>,  <23.934328, 42.177723, 35.774929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.286884, 42.088188, 35.941326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031263, -0.906319, -0.421437,
		0.471354, 0.358445, -0.805818,
		0.881390, -0.223839, 0.415990,
		24.551302, 42.021038, 36.066124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.381498, 41.833275, 35.249680>,  <23.934328, 42.177723, 35.774929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.381498, 41.833275, 35.249680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.557003, 41.736305, 35.595795>,  <24.662306, 41.678123, 35.803463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.557003, 41.736305, 35.595795>,  <24.381498, 41.833275, 35.249680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557003, 41.736305, 35.595795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001220, -0.963084, -0.269200,
		0.898602, 0.117059, -0.422860,
		0.438762, -0.242420, 0.865286,
		24.688631, 41.663578, 35.855381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953793, 41.424850, 34.999008>,  <24.381498, 41.833275, 35.249680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.953793, 41.424850, 34.999008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.920429, 41.358913, 35.392124>,  <24.900412, 41.319351, 35.627995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.920429, 41.358913, 35.392124>,  <24.953793, 41.424850, 34.999008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920429, 41.358913, 35.392124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217475, -0.965463, -0.143478,
		0.972495, 0.201765, 0.116377,
		-0.083409, -0.164841, 0.982787,
		24.895407, 41.309460, 35.686962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636652, 41.157986, 35.252598>,  <24.953793, 41.424850, 34.999008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636652, 41.157986, 35.252598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.339756, 41.047321, 35.496742>,  <25.161619, 40.980923, 35.643227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.339756, 41.047321, 35.496742>,  <25.636652, 41.157986, 35.252598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339756, 41.047321, 35.496742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220173, -0.960916, -0.167821,
		0.632934, 0.009821, 0.774144,
		-0.742239, -0.276665, 0.610359,
		25.117085, 40.964321, 35.679852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962364, 40.737808, 35.794544>,  <25.636652, 41.157986, 35.252598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962364, 40.737808, 35.794544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.574028, 40.644402, 35.816235>,  <25.341026, 40.588356, 35.829247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.574028, 40.644402, 35.816235>,  <25.962364, 40.737808, 35.794544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574028, 40.644402, 35.816235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234698, -0.971929, 0.016468,
		0.048854, 0.028713, 0.998393,
		-0.970840, -0.233516, 0.054221,
		25.282776, 40.574348, 35.832500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931932, 40.225193, 36.312817>,  <25.962364, 40.737808, 35.794544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931932, 40.225193, 36.312817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.603750, 40.170391, 36.090794>,  <25.406841, 40.137508, 35.957581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.603750, 40.170391, 36.090794>,  <25.931932, 40.225193, 36.312817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603750, 40.170391, 36.090794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230433, -0.967755, -0.101736,
		-0.523217, -0.211372, 0.825570,
		-0.820454, -0.137009, -0.555053,
		25.357615, 40.129288, 35.924278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608887, 39.697678, 36.576912>,  <25.931932, 40.225193, 36.312817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608887, 39.697678, 36.576912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.502520, 39.701653, 36.191334>,  <25.438700, 39.704037, 35.959988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.502520, 39.701653, 36.191334>,  <25.608887, 39.697678, 36.576912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502520, 39.701653, 36.191334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164007, -0.984903, -0.055394,
		-0.949942, -0.172824, 0.260271,
		-0.265915, 0.009934, -0.963945,
		25.422745, 39.704632, 35.902149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290554, 39.056885, 36.455376>,  <25.608887, 39.697678, 36.576912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290554, 39.056885, 36.455376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.334936, 39.148201, 36.068478>,  <25.361567, 39.202991, 35.836338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.334936, 39.148201, 36.068478>,  <25.290554, 39.056885, 36.455376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334936, 39.148201, 36.068478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214970, -0.944704, -0.247631,
		-0.970297, 0.235405, -0.055745,
		0.110956, 0.228292, -0.967249,
		25.368223, 39.216690, 35.778301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.756193, 38.756077, 36.082920>,  <25.290554, 39.056885, 36.455376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.756193, 38.756077, 36.082920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.028704, 38.796055, 35.792850>,  <25.192209, 38.820042, 35.618809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.028704, 38.796055, 35.792850>,  <24.756193, 38.756077, 36.082920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028704, 38.796055, 35.792850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236314, -0.907567, -0.347098,
		-0.692835, 0.407838, -0.594684,
		0.681275, 0.099950, -0.725172,
		25.233086, 38.826038, 35.575298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.298733, 38.673122, 35.551292>,  <24.756193, 38.756077, 36.082920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.298733, 38.673122, 35.551292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.664959, 38.602020, 35.406994>,  <24.884695, 38.559361, 35.320415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.664959, 38.602020, 35.406994>,  <24.298733, 38.673122, 35.551292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664959, 38.602020, 35.406994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324410, -0.856587, -0.401269,
		-0.237688, 0.484420, -0.841927,
		0.915567, -0.177753, -0.360751,
		24.939629, 38.548695, 35.298767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.186661, 38.344448, 34.911663>,  <24.298733, 38.673122, 35.551292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.186661, 38.344448, 34.911663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.557125, 38.252651, 35.031368>,  <24.779404, 38.197575, 35.103191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.557125, 38.252651, 35.031368>,  <24.186661, 38.344448, 34.911663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557125, 38.252651, 35.031368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179362, -0.966087, -0.185756,
		0.331747, 0.118363, -0.935914,
		0.926161, -0.229491, 0.299267,
		24.834972, 38.183804, 35.121147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.466475, 37.891541, 34.472584>,  <24.186661, 38.344448, 34.911663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.466475, 37.891541, 34.472584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.697289, 37.816162, 34.790455>,  <24.835777, 37.770935, 34.981178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.697289, 37.816162, 34.790455>,  <24.466475, 37.891541, 34.472584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.697289, 37.816162, 34.790455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165567, -0.979805, -0.112119,
		0.799761, -0.066876, -0.596582,
		0.577036, -0.188443, 0.794682,
		24.870399, 37.759628, 35.028858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792955, 37.380047, 34.320621>,  <24.466475, 37.891541, 34.472584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792955, 37.380047, 34.320621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.867237, 37.348324, 34.712383>,  <24.911806, 37.329288, 34.947441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.867237, 37.348324, 34.712383>,  <24.792955, 37.380047, 34.320621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.867237, 37.348324, 34.712383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039665, -0.995320, -0.088117,
		0.981805, 0.055212, -0.181689,
		0.185704, -0.079307, 0.979400,
		24.922949, 37.324532, 35.006203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547049, 37.208897, 34.591568>,  <24.792955, 37.380047, 34.320621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547049, 37.208897, 34.591568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.657801, 36.824680, 34.602169>,  <25.724253, 36.594151, 34.608528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.657801, 36.824680, 34.602169>,  <25.547049, 37.208897, 34.591568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657801, 36.824680, 34.602169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766027, 0.203993, -0.609581,
		0.580120, 0.189082, 0.792280,
		0.276881, -0.960539, 0.026502,
		25.740866, 36.536518, 34.610119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294388, 37.072487, 34.880894>,  <25.547049, 37.208897, 34.591568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294388, 37.072487, 34.880894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.151081, 36.820827, 34.604977>,  <26.065096, 36.669830, 34.439426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.151081, 36.820827, 34.604977>,  <26.294388, 37.072487, 34.880894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151081, 36.820827, 34.604977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779458, 0.205114, -0.591923,
		0.513895, -0.749732, 0.416910,
		-0.358269, -0.629150, -0.689792,
		26.043600, 36.632084, 34.398041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772776, 36.556793, 34.589256>,  <26.294388, 37.072487, 34.880894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772776, 36.556793, 34.589256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.507965, 36.682243, 34.316975>,  <26.349079, 36.757511, 34.153606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.507965, 36.682243, 34.316975>,  <26.772776, 36.556793, 34.589256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507965, 36.682243, 34.316975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741741, 0.143999, -0.655045,
		-0.107416, -0.938566, -0.327958,
		-0.662028, 0.313622, -0.680705,
		26.309357, 36.776329, 34.112762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972858, 36.476944, 33.897415>,  <26.772776, 36.556793, 34.589256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972858, 36.476944, 33.897415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.698301, 36.566162, 33.620541>,  <26.533567, 36.619694, 33.454418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.698301, 36.566162, 33.620541>,  <26.972858, 36.476944, 33.897415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698301, 36.566162, 33.620541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389251, 0.916665, -0.090609,
		0.614289, -0.331626, -0.716012,
		-0.686391, 0.223048, -0.692183,
		26.492384, 36.633076, 33.412888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333759, 36.618980, 33.219715>,  <26.972858, 36.476944, 33.897415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333759, 36.618980, 33.219715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.982002, 36.802837, 33.269352>,  <26.770948, 36.913151, 33.299133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.982002, 36.802837, 33.269352>,  <27.333759, 36.618980, 33.219715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982002, 36.802837, 33.269352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448975, 0.887347, -0.105052,
		-0.158403, -0.036665, -0.986694,
		-0.879392, 0.459641, 0.124097,
		26.718185, 36.940731, 33.306580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406706, 37.178452, 32.857510>,  <27.333759, 36.618980, 33.219715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406706, 37.178452, 32.857510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.101065, 37.286304, 33.091927>,  <26.917681, 37.351017, 33.232578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.101065, 37.286304, 33.091927>,  <27.406706, 37.178452, 32.857510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101065, 37.286304, 33.091927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356456, 0.933649, 0.035188,
		-0.537671, 0.235786, -0.809516,
		-0.764101, 0.269637, 0.586043,
		26.871834, 37.367195, 33.267738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276058, 37.795837, 32.600342>,  <27.406706, 37.178452, 32.857510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276058, 37.795837, 32.600342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106255, 37.814228, 32.962044>,  <27.004374, 37.825260, 33.179066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106255, 37.814228, 32.962044>,  <27.276058, 37.795837, 32.600342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106255, 37.814228, 32.962044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333766, 0.936323, 0.109084,
		-0.841661, 0.348117, -0.412821,
		-0.424508, 0.045974, 0.904256,
		26.978903, 37.828022, 33.233322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946362, 38.438892, 32.624554>,  <27.276058, 37.795837, 32.600342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946362, 38.438892, 32.624554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.992043, 38.337700, 33.008839>,  <27.019451, 38.276985, 33.239410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.992043, 38.337700, 33.008839>,  <26.946362, 38.438892, 32.624554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992043, 38.337700, 33.008839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300747, 0.930462, 0.209264,
		-0.946842, 0.265032, 0.182342,
		0.114201, -0.252979, 0.960708,
		27.026302, 38.261806, 33.297050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427832, 38.780575, 33.017059>,  <26.946362, 38.438892, 32.624554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427832, 38.780575, 33.017059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.742067, 38.680286, 33.243328>,  <26.930609, 38.620113, 33.379089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.742067, 38.680286, 33.243328>,  <26.427832, 38.780575, 33.017059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742067, 38.680286, 33.243328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158892, 0.965311, 0.207193,
		-0.597997, -0.072888, 0.798178,
		0.785591, -0.250724, 0.565671,
		26.977745, 38.605068, 33.413029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294252, 39.153725, 33.632454>,  <26.427832, 38.780575, 33.017059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294252, 39.153725, 33.632454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.681728, 39.054798, 33.641201>,  <26.914213, 38.995441, 33.646450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.681728, 39.054798, 33.641201>,  <26.294252, 39.153725, 33.632454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681728, 39.054798, 33.641201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227908, 0.920687, 0.316849,
		-0.098491, -0.301945, 0.948224,
		0.968688, -0.247314, 0.021864,
		26.972336, 38.980602, 33.647758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689589, 39.482006, 34.215897>,  <26.294252, 39.153725, 33.632454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689589, 39.482006, 34.215897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.987356, 39.400364, 33.961597>,  <27.166018, 39.351379, 33.809017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.987356, 39.400364, 33.961597>,  <26.689589, 39.482006, 34.215897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987356, 39.400364, 33.961597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423681, 0.880296, 0.213481,
		0.516076, -0.428275, 0.741786,
		0.744420, -0.204108, -0.635751,
		27.210682, 39.339130, 33.770874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270321, 39.601765, 34.603092>,  <26.689589, 39.482006, 34.215897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270321, 39.601765, 34.603092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.388180, 39.632294, 34.222073>,  <27.458895, 39.650612, 33.993462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.388180, 39.632294, 34.222073>,  <27.270321, 39.601765, 34.603092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388180, 39.632294, 34.222073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518987, 0.824206, 0.226578,
		0.802393, -0.561124, 0.203239,
		0.294649, 0.076326, -0.952553,
		27.476574, 39.655190, 33.936306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875751, 39.851738, 34.681984>,  <27.270321, 39.601765, 34.603092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875751, 39.851738, 34.681984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.831829, 39.929935, 34.292168>,  <27.805475, 39.976852, 34.058277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.831829, 39.929935, 34.292168>,  <27.875751, 39.851738, 34.681984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831829, 39.929935, 34.292168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438745, 0.889310, 0.128961,
		0.891878, -0.413414, -0.183422,
		-0.109805, 0.195493, -0.974539,
		27.798887, 39.988583, 33.999805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445974, 40.208359, 34.383446>,  <27.875751, 39.851738, 34.681984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445974, 40.208359, 34.383446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149042, 40.280209, 34.125244>,  <27.970882, 40.323318, 33.970322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149042, 40.280209, 34.125244>,  <28.445974, 40.208359, 34.383446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149042, 40.280209, 34.125244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383428, 0.903943, -0.189397,
		0.549480, -0.388100, -0.739898,
		-0.742331, 0.179628, -0.645507,
		27.926344, 40.334095, 33.931591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791893, 40.711864, 33.884754>,  <28.445974, 40.208359, 34.383446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791893, 40.711864, 33.884754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.395983, 40.755138, 33.847565>,  <28.158438, 40.781101, 33.825253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.395983, 40.755138, 33.847565>,  <28.791893, 40.711864, 33.884754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395983, 40.755138, 33.847565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125328, 0.970787, -0.204612,
		0.068117, -0.214172, -0.974418,
		-0.989774, 0.108184, -0.092969,
		28.099051, 40.787594, 33.819675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733524, 41.157349, 33.409977>,  <28.791893, 40.711864, 33.884754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733524, 41.157349, 33.409977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355806, 41.176289, 33.540245>,  <28.129175, 41.187653, 33.618408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355806, 41.176289, 33.540245>,  <28.733524, 41.157349, 33.409977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355806, 41.176289, 33.540245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034016, 0.970252, -0.239697,
		-0.327334, -0.237423, -0.914595,
		-0.944296, 0.047350, 0.325672,
		28.072517, 41.190495, 33.637947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246778, 41.494629, 32.866859>,  <28.733524, 41.157349, 33.409977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246778, 41.494629, 32.866859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096710, 41.539158, 33.234959>,  <28.006670, 41.565876, 33.455818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096710, 41.539158, 33.234959>,  <28.246778, 41.494629, 32.866859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096710, 41.539158, 33.234959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064547, 0.987215, -0.145741,
		-0.924706, -0.114076, -0.363189,
		-0.375171, 0.111325, 0.920246,
		27.984159, 41.572556, 33.511032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893198, 42.097038, 32.743683>,  <28.246778, 41.494629, 32.866859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893198, 42.097038, 32.743683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912226, 42.088886, 33.143147>,  <27.923641, 42.083996, 33.382824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912226, 42.088886, 33.143147>,  <27.893198, 42.097038, 32.743683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912226, 42.088886, 33.143147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040110, 0.998946, 0.022299,
		-0.998062, -0.041117, 0.046700,
		0.047568, -0.020383, 0.998660,
		27.926497, 42.082771, 33.442745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451752, 42.572807, 32.832561>,  <27.893198, 42.097038, 32.743683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451752, 42.572807, 32.832561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.652222, 42.556320, 33.178307>,  <27.772503, 42.546429, 33.385754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.652222, 42.556320, 33.178307>,  <27.451752, 42.572807, 32.832561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652222, 42.556320, 33.178307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013994, 0.999120, 0.039528,
		-0.865234, -0.007715, 0.501310,
		0.501174, -0.041216, 0.864365,
		27.802574, 42.543957, 33.437614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092987, 42.898487, 33.309113>,  <27.451752, 42.572807, 32.832561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092987, 42.898487, 33.309113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456791, 42.901997, 33.475349>,  <27.675074, 42.904102, 33.575092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456791, 42.901997, 33.475349>,  <27.092987, 42.898487, 33.309113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456791, 42.901997, 33.475349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043146, 0.996370, 0.073380,
		-0.413441, -0.084671, 0.906586,
		0.909508, 0.008777, 0.415594,
		27.729643, 42.904629, 33.600029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046637, 43.173004, 34.030457>,  <27.092987, 42.898487, 33.309113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046637, 43.173004, 34.030457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.419533, 43.216976, 33.892563>,  <27.643270, 43.243359, 33.809826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.419533, 43.216976, 33.892563>,  <27.046637, 43.173004, 34.030457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419533, 43.216976, 33.892563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087419, 0.992935, 0.080239,
		0.351121, -0.044665, 0.935264,
		0.932240, 0.109934, -0.344735,
		27.699205, 43.249958, 33.789143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400917, 43.701782, 34.457466>,  <27.046637, 43.173004, 34.030457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400917, 43.701782, 34.457466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.591444, 43.667732, 34.107407>,  <27.705759, 43.647305, 33.897373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.591444, 43.667732, 34.107407>,  <27.400917, 43.701782, 34.457466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591444, 43.667732, 34.107407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077876, 0.995476, -0.054440,
		0.875819, -0.042223, 0.480789,
		0.476315, -0.085122, -0.875145,
		27.734339, 43.642197, 33.844864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067541, 43.995907, 34.638813>,  <27.400917, 43.701782, 34.457466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067541, 43.995907, 34.638813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956287, 44.018688, 34.255272>,  <27.889534, 44.032356, 34.025146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956287, 44.018688, 34.255272>,  <28.067541, 43.995907, 34.638813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956287, 44.018688, 34.255272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065137, 0.994825, 0.077982,
		0.958330, 0.084146, -0.272988,
		-0.278137, 0.056951, -0.958852,
		27.872847, 44.035774, 33.967617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.775455, 40.591305, 42.857601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415955, 40.416805, 42.839989>,  <34.200256, 40.312107, 42.829422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415955, 40.416805, 42.839989>,  <34.775455, 40.591305, 42.857601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415955, 40.416805, 42.839989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294874, 0.527049, 0.797037,
		-0.324497, 0.729321, -0.602323,
		-0.898750, -0.436246, -0.044032,
		34.146328, 40.285931, 42.826778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382919, 41.022507, 43.125824>,  <34.775455, 40.591305, 42.857601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382919, 41.022507, 43.125824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131973, 40.711014, 43.126049>,  <33.981407, 40.524120, 43.126183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131973, 40.711014, 43.126049>,  <34.382919, 41.022507, 43.125824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131973, 40.711014, 43.126049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478000, 0.385660, 0.789165,
		-0.614762, 0.494823, -0.614180,
		-0.627362, -0.778728, 0.000564,
		33.943764, 40.477394, 43.126217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692070, 41.232876, 42.894836>,  <34.382919, 41.022507, 43.125824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692070, 41.232876, 42.894836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615696, 40.896152, 43.096786>,  <33.569870, 40.694118, 43.217957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615696, 40.896152, 43.096786>,  <33.692070, 41.232876, 42.894836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615696, 40.896152, 43.096786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580526, 0.511591, 0.633454,
		-0.791538, -0.172147, -0.586372,
		-0.190935, -0.841808, 0.504880,
		33.558414, 40.643612, 43.248249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999363, 41.341679, 43.081467>,  <33.692070, 41.232876, 42.894836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999363, 41.341679, 43.081467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.120308, 41.050533, 43.327648>,  <33.192875, 40.875847, 43.475357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.120308, 41.050533, 43.327648>,  <32.999363, 41.341679, 43.081467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120308, 41.050533, 43.327648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556343, 0.389526, 0.733997,
		-0.773988, -0.564339, -0.287165,
		0.302365, -0.727867, 0.615454,
		33.211018, 40.832172, 43.512283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389614, 40.996204, 43.337124>,  <32.999363, 41.341679, 43.081467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389614, 40.996204, 43.337124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684223, 40.966988, 43.606106>,  <32.860989, 40.949459, 43.767494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684223, 40.966988, 43.606106>,  <32.389614, 40.996204, 43.337124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684223, 40.966988, 43.606106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605906, 0.370688, 0.703896,
		-0.300685, -0.925881, 0.228764,
		0.736524, -0.073042, 0.672457,
		32.905182, 40.945076, 43.807842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103600, 40.746151, 43.955902>,  <32.389614, 40.996204, 43.337124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103600, 40.746151, 43.955902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444366, 40.895721, 44.102558>,  <32.648827, 40.985462, 44.190552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444366, 40.895721, 44.102558>,  <32.103600, 40.746151, 43.955902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444366, 40.895721, 44.102558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501041, 0.378354, 0.778335,
		0.152320, -0.846775, 0.509676,
		0.851913, 0.373925, 0.366639,
		32.699940, 41.007900, 44.212551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034275, 40.813931, 44.725521>,  <32.103600, 40.746151, 43.955902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034275, 40.813931, 44.725521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350029, 41.048023, 44.651356>,  <32.539482, 41.188477, 44.606857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350029, 41.048023, 44.651356>,  <32.034275, 40.813931, 44.725521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350029, 41.048023, 44.651356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222162, 0.553880, 0.802410,
		0.572293, -0.592216, 0.567239,
		0.789382, 0.585233, -0.185414,
		32.586845, 41.223591, 44.595734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473434, 40.875191, 45.409374>,  <32.034275, 40.813931, 44.725521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473434, 40.875191, 45.409374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490112, 41.176075, 45.146332>,  <32.500118, 41.356606, 44.988506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490112, 41.176075, 45.146332>,  <32.473434, 40.875191, 45.409374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490112, 41.176075, 45.146332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193188, 0.651824, 0.733350,
		0.980275, 0.096464, 0.172496,
		0.041695, 0.752210, -0.657603,
		32.502621, 41.401737, 44.949051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749271, 41.364197, 45.854294>,  <32.473434, 40.875191, 45.409374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749271, 41.364197, 45.854294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665249, 41.590618, 45.535431>,  <32.614838, 41.726471, 45.344112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665249, 41.590618, 45.535431>,  <32.749271, 41.364197, 45.854294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665249, 41.590618, 45.535431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360599, 0.713014, 0.601315,
		0.908761, 0.413763, 0.054346,
		-0.210052, 0.566049, -0.797162,
		32.602234, 41.760433, 45.296284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068584, 42.022167, 45.795391>,  <32.749271, 41.364197, 45.854294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068584, 42.022167, 45.795391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707859, 42.058937, 45.626495>,  <32.491425, 42.080997, 45.525158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707859, 42.058937, 45.626495>,  <33.068584, 42.022167, 45.795391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707859, 42.058937, 45.626495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248770, 0.688529, 0.681206,
		0.353346, 0.719360, -0.598054,
		-0.901809, 0.091924, -0.422244,
		32.437317, 42.086514, 45.499821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973503, 42.744835, 45.889408>,  <33.068584, 42.022167, 45.795391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973503, 42.744835, 45.889408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614723, 42.638538, 45.748070>,  <32.399456, 42.574760, 45.663265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614723, 42.638538, 45.748070>,  <32.973503, 42.744835, 45.889408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614723, 42.638538, 45.748070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329434, 0.934725, 0.133275,
		0.294868, 0.235947, -0.925949,
		-0.896954, -0.265741, -0.353350,
		32.345638, 42.558815, 45.642063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781174, 43.220387, 45.488331>,  <32.973503, 42.744835, 45.889408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781174, 43.220387, 45.488331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430584, 43.041313, 45.559193>,  <32.220230, 42.933868, 45.601707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430584, 43.041313, 45.559193>,  <32.781174, 43.220387, 45.488331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430584, 43.041313, 45.559193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429291, 0.893259, 0.133412,
		-0.217967, 0.040882, -0.975100,
		-0.876470, -0.447681, 0.177150,
		32.167645, 42.907009, 45.612339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230824, 43.464123, 45.079498>,  <32.781174, 43.220387, 45.488331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230824, 43.464123, 45.079498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073109, 43.314693, 45.415352>,  <31.978481, 43.225037, 45.616863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073109, 43.314693, 45.415352>,  <32.230824, 43.464123, 45.079498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073109, 43.314693, 45.415352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348750, 0.906126, 0.239393,
		-0.850244, -0.198433, -0.487555,
		-0.394283, -0.373577, 0.839632,
		31.954824, 43.202621, 45.667240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433655, 43.453239, 45.193832>,  <32.230824, 43.464123, 45.079498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433655, 43.453239, 45.193832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600414, 43.471195, 45.556969>,  <31.700470, 43.481968, 45.774853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600414, 43.471195, 45.556969>,  <31.433655, 43.453239, 45.193832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600414, 43.471195, 45.556969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423407, 0.893391, 0.150261,
		-0.804313, -0.447031, 0.391463,
		0.416901, 0.044891, 0.907843,
		31.725485, 43.484661, 45.829323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198612, 43.803360, 45.860481>,  <31.433655, 43.453239, 45.193832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198612, 43.803360, 45.860481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918276, 44.069614, 45.757912>,  <30.750074, 44.229366, 45.696369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918276, 44.069614, 45.757912>,  <31.198612, 43.803360, 45.860481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918276, 44.069614, 45.757912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150488, -0.489364, -0.858997,
		-0.697262, -0.563431, 0.443136,
		-0.700841, 0.665634, -0.256425,
		30.708023, 44.269306, 45.680984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451061, 43.519314, 45.773205>,  <31.198612, 43.803360, 45.860481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451061, 43.519314, 45.773205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.446127, 43.853111, 45.552856>,  <30.443167, 44.053391, 45.420647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.446127, 43.853111, 45.552856>,  <30.451061, 43.519314, 45.773205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446127, 43.853111, 45.552856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080108, -0.549969, -0.831334,
		-0.996710, 0.033875, 0.073633,
		-0.012334, 0.834498, -0.550873,
		30.442427, 44.103462, 45.387596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884480, 43.429485, 45.365532>,  <30.451061, 43.519314, 45.773205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884480, 43.429485, 45.365532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.119652, 43.700905, 45.189392>,  <30.260756, 43.863754, 45.083706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.119652, 43.700905, 45.189392>,  <29.884480, 43.429485, 45.365532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119652, 43.700905, 45.189392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003418, -0.542288, -0.840185,
		-0.808903, 0.495477, -0.316509,
		0.587932, 0.678547, -0.440353,
		30.296032, 43.904469, 45.057285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482307, 43.520985, 44.718071>,  <29.884480, 43.429485, 45.365532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482307, 43.520985, 44.718071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.855370, 43.655079, 44.664757>,  <30.079206, 43.735535, 44.632767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.855370, 43.655079, 44.664757>,  <29.482307, 43.520985, 44.718071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855370, 43.655079, 44.664757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001089, -0.372077, -0.928201,
		-0.360761, 0.865549, -0.347386,
		0.932658, 0.335238, -0.133288,
		30.135166, 43.755650, 44.624771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449238, 43.963169, 44.137634>,  <29.482307, 43.520985, 44.718071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449238, 43.963169, 44.137634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.827248, 43.837330, 44.173309>,  <30.054054, 43.761826, 44.194714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.827248, 43.837330, 44.173309>,  <29.449238, 43.963169, 44.137634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827248, 43.837330, 44.173309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022855, -0.335622, -0.941719,
		0.326197, 0.887910, -0.324362,
		0.945026, -0.314599, 0.089186,
		30.110756, 43.742950, 44.200066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686939, 44.077854, 43.454376>,  <29.449238, 43.963169, 44.137634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686939, 44.077854, 43.454376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.950066, 43.827011, 43.621235>,  <30.107941, 43.676506, 43.721348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.950066, 43.827011, 43.621235>,  <29.686939, 44.077854, 43.454376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950066, 43.827011, 43.621235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175675, -0.410815, -0.894633,
		0.732404, 0.661786, -0.160073,
		0.657817, -0.627112, 0.417142,
		30.147411, 43.638878, 43.746376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307354, 44.165466, 43.051792>,  <29.686939, 44.077854, 43.454376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307354, 44.165466, 43.051792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.354177, 43.803879, 43.216297>,  <30.382271, 43.586926, 43.315002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.354177, 43.803879, 43.216297>,  <30.307354, 44.165466, 43.051792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354177, 43.803879, 43.216297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215607, -0.381104, -0.899040,
		0.969439, 0.193912, 0.150290,
		0.117059, -0.903968, 0.411266,
		30.389296, 43.532688, 43.339676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974981, 43.987877, 42.872772>,  <30.307354, 44.165466, 43.051792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974981, 43.987877, 42.872772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791409, 43.640198, 42.946392>,  <30.681265, 43.431591, 42.990562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791409, 43.640198, 42.946392>,  <30.974981, 43.987877, 42.872772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791409, 43.640198, 42.946392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395512, -0.385359, -0.833708,
		0.795584, -0.309821, 0.520632,
		-0.458930, -0.869201, 0.184047,
		30.653730, 43.379436, 43.001606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392799, 43.486126, 42.684464>,  <30.974981, 43.987877, 42.872772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392799, 43.486126, 42.684464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043945, 43.290829, 42.671810>,  <30.834633, 43.173653, 42.664219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043945, 43.290829, 42.671810>,  <31.392799, 43.486126, 42.684464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043945, 43.290829, 42.671810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248605, -0.386538, -0.888135,
		0.421394, -0.782440, 0.458492,
		-0.872137, -0.488238, -0.031634,
		30.782305, 43.144356, 42.662319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600548, 42.859184, 42.481976>,  <31.392799, 43.486126, 42.684464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600548, 42.859184, 42.481976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202740, 42.864979, 42.440567>,  <30.964054, 42.868454, 42.415722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202740, 42.864979, 42.440567>,  <31.600548, 42.859184, 42.481976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202740, 42.864979, 42.440567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079050, -0.543798, -0.835485,
		-0.068400, -0.839091, 0.539674,
		-0.994521, 0.014486, -0.103526,
		30.904383, 42.869324, 42.409508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348877, 42.108936, 42.433067>,  <31.600548, 42.859184, 42.481976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348877, 42.108936, 42.433067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093893, 42.354237, 42.246490>,  <30.940903, 42.501415, 42.134544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093893, 42.354237, 42.246490>,  <31.348877, 42.108936, 42.433067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093893, 42.354237, 42.246490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001677, -0.604281, -0.796770,
		-0.770480, -0.508693, 0.384177,
		-0.637462, 0.613251, -0.466439,
		30.902655, 42.538212, 42.106560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868305, 41.706829, 42.080776>,  <31.348877, 42.108936, 42.433067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868305, 41.706829, 42.080776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.857489, 42.066841, 41.906776>,  <30.850998, 42.282848, 41.802376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.857489, 42.066841, 41.906776>,  <30.868305, 41.706829, 42.080776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857489, 42.066841, 41.906776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067688, -0.435806, -0.897492,
		-0.997340, 0.005175, 0.072706,
		-0.027041, 0.900026, -0.434997,
		30.849377, 42.336849, 41.776276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324770, 41.559410, 41.659916>,  <30.868305, 41.706829, 42.080776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324770, 41.559410, 41.659916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516533, 41.881836, 41.521099>,  <30.631590, 42.075291, 41.437809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516533, 41.881836, 41.521099>,  <30.324770, 41.559410, 41.659916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516533, 41.881836, 41.521099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011107, -0.389840, -0.920815,
		-0.877523, 0.445299, -0.177939,
		0.479406, 0.806060, -0.347040,
		30.660355, 42.123653, 41.416988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956657, 41.803051, 40.963310>,  <30.324770, 41.559410, 41.659916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956657, 41.803051, 40.963310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.329210, 41.941994, 41.006886>,  <30.552742, 42.025360, 41.033031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.329210, 41.941994, 41.006886>,  <29.956657, 41.803051, 40.963310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329210, 41.941994, 41.006886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166773, -0.141120, -0.975844,
		-0.323594, 0.927053, -0.189367,
		0.931383, 0.347359, 0.108941,
		30.608625, 42.046200, 41.039570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415859, 42.353745, 40.536098>,  <29.956657, 41.803051, 40.963310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415859, 42.353745, 40.536098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041971, 42.288555, 40.409775>,  <28.817638, 42.249443, 40.333981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041971, 42.288555, 40.409775>,  <29.415859, 42.353745, 40.536098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041971, 42.288555, 40.409775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344173, 0.636544, 0.690186,
		0.088545, 0.753824, -0.651082,
		-0.934722, -0.162973, -0.315809,
		28.761555, 42.239662, 40.315033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046419, 42.996780, 40.385902>,  <29.415859, 42.353745, 40.536098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046419, 42.996780, 40.385902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.779314, 42.709881, 40.465553>,  <28.619051, 42.537743, 40.513344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.779314, 42.709881, 40.465553>,  <29.046419, 42.996780, 40.385902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779314, 42.709881, 40.465553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383841, 0.560989, 0.733456,
		-0.637776, 0.413342, -0.649916,
		-0.667763, -0.717245, 0.199128,
		28.578985, 42.494709, 40.525291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320339, 43.299000, 40.568768>,  <29.046419, 42.996780, 40.385902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320339, 43.299000, 40.568768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.267019, 42.940544, 40.738079>,  <28.235027, 42.725471, 40.839664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.267019, 42.940544, 40.738079>,  <28.320339, 43.299000, 40.568768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267019, 42.940544, 40.738079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574378, 0.417903, 0.703880,
		-0.807664, -0.149295, -0.570430,
		-0.133299, -0.896140, 0.423277,
		28.227030, 42.671703, 40.865063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703554, 43.355267, 40.880318>,  <28.320339, 43.299000, 40.568768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703554, 43.355267, 40.880318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.829683, 43.016945, 41.052452>,  <27.905361, 42.813953, 41.155731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.829683, 43.016945, 41.052452>,  <27.703554, 43.355267, 40.880318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829683, 43.016945, 41.052452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351356, 0.317187, 0.880875,
		-0.881544, -0.428960, -0.197162,
		0.315323, -0.845805, 0.430332,
		27.924280, 42.763203, 41.181553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139280, 43.154778, 41.285706>,  <27.703554, 43.355267, 40.880318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139280, 43.154778, 41.285706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.445993, 42.952690, 41.444099>,  <27.630022, 42.831440, 41.539135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.445993, 42.952690, 41.444099>,  <27.139280, 43.154778, 41.285706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445993, 42.952690, 41.444099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367250, 0.160677, 0.916139,
		-0.526472, -0.847904, -0.062336,
		0.766782, -0.505214, 0.395985,
		27.676027, 42.801125, 41.562897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875525, 42.754486, 41.865120>,  <27.139280, 43.154778, 41.285706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875525, 42.754486, 41.865120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.266794, 42.818199, 41.918491>,  <27.501556, 42.856426, 41.950512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.266794, 42.818199, 41.918491>,  <26.875525, 42.754486, 41.865120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266794, 42.818199, 41.918491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166961, 0.220293, 0.961039,
		0.123682, -0.962341, 0.242079,
		0.978176, 0.159281, 0.133427,
		27.560247, 42.865982, 41.958519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058537, 42.563267, 42.622059>,  <26.875525, 42.754486, 41.865120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058537, 42.563267, 42.622059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.390509, 42.768108, 42.533543>,  <27.589691, 42.891014, 42.480434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.390509, 42.768108, 42.533543>,  <27.058537, 42.563267, 42.622059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390509, 42.768108, 42.533543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028252, 0.357578, 0.933456,
		0.557153, -0.780954, 0.282296,
		0.829929, 0.512103, -0.221289,
		27.639488, 42.921738, 42.467155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450367, 41.942657, 42.808811>,  <27.058537, 42.563267, 42.622059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450367, 41.942657, 42.808811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.421661, 41.577408, 42.969341>,  <27.404438, 41.358257, 43.065659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.421661, 41.577408, 42.969341>,  <27.450367, 41.942657, 42.808811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421661, 41.577408, 42.969341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640223, -0.350702, -0.683464,
		0.764830, 0.207887, 0.609769,
		-0.071764, -0.913122, 0.401321,
		27.400131, 41.303471, 43.089737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167725, 41.643517, 42.773647>,  <27.450367, 41.942657, 42.808811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167725, 41.643517, 42.773647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.936491, 41.320255, 42.818741>,  <27.797750, 41.126301, 42.845798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.936491, 41.320255, 42.818741>,  <28.167725, 41.643517, 42.773647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936491, 41.320255, 42.818741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517933, -0.470176, -0.714619,
		0.630526, -0.354720, 0.690369,
		-0.578085, -0.808151, 0.112737,
		27.763065, 41.077808, 42.852562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638588, 40.965134, 42.908009>,  <28.167725, 41.643517, 42.773647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638588, 40.965134, 42.908009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.285141, 40.845154, 42.764202>,  <28.073072, 40.773167, 42.677917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.285141, 40.845154, 42.764202>,  <28.638588, 40.965134, 42.908009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285141, 40.845154, 42.764202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463788, -0.666008, -0.584238,
		-0.064203, -0.682983, 0.727607,
		-0.883617, -0.299945, -0.359519,
		28.020056, 40.755169, 42.656345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663956, 40.238968, 42.963692>,  <28.638588, 40.965134, 42.908009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663956, 40.238968, 42.963692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.378025, 40.325588, 42.697720>,  <28.206467, 40.377560, 42.538136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.378025, 40.325588, 42.697720>,  <28.663956, 40.238968, 42.963692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378025, 40.325588, 42.697720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426627, -0.618355, -0.660021,
		-0.554089, -0.755476, 0.349630,
		-0.714825, 0.216549, -0.664930,
		28.163578, 40.390553, 42.498241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495901, 39.665691, 42.829258>,  <28.663956, 40.238968, 42.963692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495901, 39.665691, 42.829258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.328724, 39.837051, 42.508808>,  <28.228418, 39.939869, 42.316540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.328724, 39.837051, 42.508808>,  <28.495901, 39.665691, 42.829258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328724, 39.837051, 42.508808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323135, -0.754063, -0.571815,
		-0.849063, -0.497856, 0.176722,
		-0.417941, 0.428402, -0.801122,
		28.203342, 39.965572, 42.268471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980581, 39.199165, 42.380688>,  <28.495901, 39.665691, 42.829258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980581, 39.199165, 42.380688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.139164, 39.484028, 42.148945>,  <28.234314, 39.654945, 42.009899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.139164, 39.484028, 42.148945>,  <27.980581, 39.199165, 42.380688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139164, 39.484028, 42.148945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333451, -0.699674, -0.631876,
		-0.855356, 0.057324, -0.514860,
		0.396456, 0.712159, -0.579355,
		28.258101, 39.697674, 41.975140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788361, 38.897545, 41.845501>,  <27.980581, 39.199165, 42.380688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788361, 38.897545, 41.845501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.061262, 39.172443, 41.745724>,  <28.225002, 39.337383, 41.685860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.061262, 39.172443, 41.745724>,  <27.788361, 38.897545, 41.845501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061262, 39.172443, 41.745724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314769, -0.584043, -0.748208,
		-0.659888, 0.431951, -0.614789,
		0.682252, 0.687250, -0.249438,
		28.265938, 39.378620, 41.670891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.125805, 40.717102, 46.263077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.351143, 41.012825, 46.115524>,  <29.486345, 41.190258, 46.026993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.351143, 41.012825, 46.115524>,  <29.125805, 40.717102, 46.263077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351143, 41.012825, 46.115524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222995, -0.565944, -0.793713,
		-0.795561, 0.364875, -0.483682,
		0.563343, 0.739306, -0.368878,
		29.520145, 41.234615, 46.004860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839306, 40.875977, 45.551937>,  <29.125805, 40.717102, 46.263077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839306, 40.875977, 45.551937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.221554, 40.980495, 45.606369>,  <29.450903, 41.043205, 45.639027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.221554, 40.980495, 45.606369>,  <28.839306, 40.875977, 45.551937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221554, 40.980495, 45.606369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276615, -0.636863, -0.719646,
		-0.101376, 0.725349, -0.680876,
		0.955619, 0.261295, 0.136080,
		29.508240, 41.058884, 45.647194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075357, 41.002251, 44.917786>,  <28.839306, 40.875977, 45.551937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075357, 41.002251, 44.917786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.379833, 40.923061, 45.164814>,  <29.562519, 40.875546, 45.313030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.379833, 40.923061, 45.164814>,  <29.075357, 41.002251, 44.917786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379833, 40.923061, 45.164814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278937, -0.759742, -0.587355,
		0.585478, 0.619352, -0.523086,
		0.761190, -0.197975, 0.617573,
		29.608191, 40.863670, 45.350086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583797, 40.877037, 44.466667>,  <29.075357, 41.002251, 44.917786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583797, 40.877037, 44.466667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.756947, 40.697353, 44.779289>,  <29.860836, 40.589542, 44.966862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.756947, 40.697353, 44.779289>,  <29.583797, 40.877037, 44.466667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756947, 40.697353, 44.779289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300645, -0.745416, -0.594952,
		0.849844, 0.492509, -0.187616,
		0.432871, -0.449210, 0.781558,
		29.886808, 40.562592, 45.013756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320314, 40.764687, 44.240768>,  <29.583797, 40.877037, 44.466667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320314, 40.764687, 44.240768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.255087, 40.528252, 44.556751>,  <30.215950, 40.386391, 44.746342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.255087, 40.528252, 44.556751>,  <30.320314, 40.764687, 44.240768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255087, 40.528252, 44.556751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472482, -0.749672, -0.463414,
		0.866124, 0.297671, 0.401524,
		-0.163067, -0.591087, 0.789953,
		30.206167, 40.350925, 44.793736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937300, 40.454327, 44.447334>,  <30.320314, 40.764687, 44.240768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937300, 40.454327, 44.447334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.649485, 40.208508, 44.576698>,  <30.476795, 40.061016, 44.654316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.649485, 40.208508, 44.576698>,  <30.937300, 40.454327, 44.447334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649485, 40.208508, 44.576698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421012, -0.756391, -0.500621,
		0.552283, -0.224055, 0.802984,
		-0.719536, -0.614551, 0.323412,
		30.433624, 40.024143, 44.673721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248779, 39.715885, 44.604229>,  <30.937300, 40.454327, 44.447334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248779, 39.715885, 44.604229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.856735, 39.637215, 44.614845>,  <30.621510, 39.590012, 44.621216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.856735, 39.637215, 44.614845>,  <31.248779, 39.715885, 44.604229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856735, 39.637215, 44.614845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166319, -0.886979, -0.430820,
		0.108275, -0.417836, 0.902048,
		-0.980110, -0.196674, 0.026544,
		30.562702, 39.578213, 44.622807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164848, 39.084011, 44.915886>,  <31.248779, 39.715885, 44.604229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164848, 39.084011, 44.915886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.820168, 39.109852, 44.714569>,  <30.613359, 39.125355, 44.593781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.820168, 39.109852, 44.714569>,  <31.164848, 39.084011, 44.915886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820168, 39.109852, 44.714569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009347, -0.989673, -0.143036,
		-0.507331, -0.127958, 0.852198,
		-0.861701, 0.064601, -0.503288,
		30.561657, 39.129230, 44.563583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760765, 38.484581, 45.096920>,  <31.164848, 39.084011, 44.915886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760765, 38.484581, 45.096920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.610052, 38.611572, 44.748840>,  <30.519625, 38.687767, 44.539993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.610052, 38.611572, 44.748840>,  <30.760765, 38.484581, 45.096920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610052, 38.611572, 44.748840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065175, -0.928016, -0.366795,
		-0.924001, -0.194921, 0.328980,
		-0.376794, 0.317478, -0.870192,
		30.497017, 38.706818, 44.487782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250706, 38.034214, 45.058674>,  <30.760765, 38.484581, 45.096920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250706, 38.034214, 45.058674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.349054, 38.178497, 44.698799>,  <30.408064, 38.265068, 44.482876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.349054, 38.178497, 44.698799>,  <30.250706, 38.034214, 45.058674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349054, 38.178497, 44.698799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081948, -0.932590, -0.351510,
		-0.965833, 0.012698, -0.258855,
		0.245870, 0.360713, -0.899686,
		30.422815, 38.286713, 44.428894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973827, 37.683800, 44.607544>,  <30.250706, 38.034214, 45.058674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973827, 37.683800, 44.607544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.235348, 37.845150, 44.351471>,  <30.392260, 37.941959, 44.197826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.235348, 37.845150, 44.351471>,  <29.973827, 37.683800, 44.607544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235348, 37.845150, 44.351471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138039, -0.895438, -0.423244,
		-0.743968, 0.188348, -0.641122,
		0.653802, 0.403380, -0.640178,
		30.431488, 37.966164, 44.159416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860125, 37.433022, 43.810390>,  <29.973827, 37.683800, 44.607544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860125, 37.433022, 43.810390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.243196, 37.540775, 43.850952>,  <30.473040, 37.605427, 43.875290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.243196, 37.540775, 43.850952>,  <29.860125, 37.433022, 43.810390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243196, 37.540775, 43.850952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287110, -0.868968, -0.403066,
		-0.020460, 0.415123, -0.909535,
		0.957679, 0.269383, 0.101407,
		30.530500, 37.621590, 43.881374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407694, 37.816479, 43.456326>,  <29.860125, 37.433022, 43.810390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407694, 37.816479, 43.456326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.018728, 37.732704, 43.415249>,  <28.785349, 37.682442, 43.390602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.018728, 37.732704, 43.415249>,  <29.407694, 37.816479, 43.456326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018728, 37.732704, 43.415249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222727, 0.702897, 0.675521,
		-0.069292, 0.679760, -0.730154,
		-0.972415, -0.209434, -0.102696,
		28.727003, 37.669872, 43.384441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925022, 38.459122, 43.368721>,  <29.407694, 37.816479, 43.456326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925022, 38.459122, 43.368721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.680656, 38.165833, 43.488163>,  <28.534037, 37.989861, 43.559830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.680656, 38.165833, 43.488163>,  <28.925022, 38.459122, 43.368721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680656, 38.165833, 43.488163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298033, 0.562422, 0.771270,
		-0.733458, 0.382184, -0.562116,
		-0.610914, -0.733223, 0.298610,
		28.497383, 37.945866, 43.577747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338528, 38.869205, 43.605450>,  <28.925022, 38.459122, 43.368721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338528, 38.869205, 43.605450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.268253, 38.499115, 43.739964>,  <28.226088, 38.277061, 43.820671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.268253, 38.499115, 43.739964>,  <28.338528, 38.869205, 43.605450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268253, 38.499115, 43.739964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586008, 0.372776, 0.719467,
		-0.791030, -0.070666, -0.607682,
		-0.175688, -0.925226, 0.336288,
		28.215548, 38.221546, 43.840851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610605, 38.821018, 43.782379>,  <28.338528, 38.869205, 43.605450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610605, 38.821018, 43.782379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.762842, 38.519226, 43.996262>,  <27.854185, 38.338150, 44.124592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.762842, 38.519226, 43.996262>,  <27.610605, 38.821018, 43.782379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762842, 38.519226, 43.996262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609407, 0.230274, 0.758681,
		-0.695537, -0.614603, -0.372144,
		0.380592, -0.754478, 0.534707,
		27.877020, 38.292881, 44.156673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031750, 38.578373, 44.172939>,  <27.610605, 38.821018, 43.782379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031750, 38.578373, 44.172939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.353292, 38.437267, 44.364513>,  <27.546217, 38.352604, 44.479458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.353292, 38.437267, 44.364513>,  <27.031750, 38.578373, 44.172939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353292, 38.437267, 44.364513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311876, 0.435665, 0.844352,
		-0.506507, -0.828105, 0.240194,
		0.803856, -0.352760, 0.478933,
		27.594450, 38.331440, 44.508194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811754, 38.259953, 44.685909>,  <27.031750, 38.578373, 44.172939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811754, 38.259953, 44.685909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.184891, 38.319218, 44.817276>,  <27.408772, 38.354778, 44.896095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.184891, 38.319218, 44.817276>,  <26.811754, 38.259953, 44.685909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184891, 38.319218, 44.817276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358238, 0.478643, 0.801602,
		-0.038426, -0.865418, 0.499575,
		0.932839, 0.148165, 0.328418,
		27.464743, 38.363667, 44.915802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730461, 38.308502, 45.350883>,  <26.811754, 38.259953, 44.685909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730461, 38.308502, 45.350883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.111629, 38.427124, 45.325581>,  <27.340330, 38.498295, 45.310398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.111629, 38.427124, 45.325581>,  <26.730461, 38.308502, 45.350883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111629, 38.427124, 45.325581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141604, 0.619679, 0.771976,
		0.268128, -0.726674, 0.632497,
		0.952920, 0.296552, -0.063254,
		27.397505, 38.516090, 45.306602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057798, 38.152740, 45.990017>,  <26.730461, 38.308502, 45.350883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057798, 38.152740, 45.990017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.254930, 38.452534, 45.813206>,  <27.373209, 38.632412, 45.707119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.254930, 38.452534, 45.813206>,  <27.057798, 38.152740, 45.990017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254930, 38.452534, 45.813206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216038, 0.597494, 0.772223,
		0.842881, -0.285078, 0.456380,
		0.492828, 0.749488, -0.442028,
		27.402779, 38.677380, 45.680599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454441, 38.363770, 46.529072>,  <27.057798, 38.152740, 45.990017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454441, 38.363770, 46.529072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.410646, 38.657326, 46.260918>,  <27.384369, 38.833458, 46.100025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.410646, 38.657326, 46.260918>,  <27.454441, 38.363770, 46.529072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410646, 38.657326, 46.260918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203892, 0.643520, 0.737774,
		0.972852, 0.217463, 0.079177,
		-0.109486, 0.733889, -0.670388,
		27.377800, 38.877491, 46.059803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853025, 38.887577, 46.844025>,  <27.454441, 38.363770, 46.529072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853025, 38.887577, 46.844025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.609386, 39.064556, 46.580742>,  <27.463203, 39.170746, 46.422771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.609386, 39.064556, 46.580742>,  <27.853025, 38.887577, 46.844025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609386, 39.064556, 46.580742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309603, 0.631428, 0.710946,
		0.730170, 0.636818, -0.247617,
		-0.609096, 0.442449, -0.658211,
		27.426659, 39.197292, 46.383278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105122, 39.474247, 46.835445>,  <27.853025, 38.887577, 46.844025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105122, 39.474247, 46.835445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.738127, 39.549004, 46.694996>,  <27.517929, 39.593857, 46.610725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.738127, 39.549004, 46.694996>,  <28.105122, 39.474247, 46.835445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738127, 39.549004, 46.694996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177126, 0.598418, 0.781360,
		0.356147, 0.779081, -0.515938,
		-0.917489, 0.186893, -0.351120,
		27.462881, 39.605072, 46.589661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042309, 40.157448, 46.867382>,  <28.105122, 39.474247, 46.835445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042309, 40.157448, 46.867382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.668070, 40.021141, 46.830437>,  <27.443525, 39.939358, 46.808270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.668070, 40.021141, 46.830437>,  <28.042309, 40.157448, 46.867382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668070, 40.021141, 46.830437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282981, 0.567331, 0.773342,
		-0.211132, 0.749674, -0.627226,
		-0.935599, -0.340770, -0.092362,
		27.387390, 39.918911, 46.802727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640667, 40.784946, 46.969467>,  <28.042309, 40.157448, 46.867382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640667, 40.784946, 46.969467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.418177, 40.461967, 47.048100>,  <27.284683, 40.268181, 47.095280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.418177, 40.461967, 47.048100>,  <27.640667, 40.784946, 46.969467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418177, 40.461967, 47.048100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421176, 0.477819, 0.770908,
		-0.716396, 0.346004, -0.605853,
		-0.556225, -0.807446, 0.196579,
		27.251308, 40.219734, 47.107075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856319, 40.818233, 46.818752>,  <27.640667, 40.784946, 46.969467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856319, 40.818233, 46.818752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.952246, 40.590836, 47.133533>,  <27.009802, 40.454395, 47.322403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.952246, 40.590836, 47.133533>,  <26.856319, 40.818233, 46.818752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952246, 40.590836, 47.133533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368083, 0.696843, 0.615569,
		-0.898334, -0.437288, -0.042140,
		0.239816, -0.568497, 0.786955,
		27.024191, 40.420288, 47.369621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135723, 41.210434, 46.156967>,  <26.856319, 40.818233, 46.818752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135723, 41.210434, 46.156967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.849710, 41.428967, 45.982498>,  <26.678102, 41.560085, 45.877815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.849710, 41.428967, 45.982498>,  <27.135723, 41.210434, 46.156967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849710, 41.428967, 45.982498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190836, -0.447686, -0.873590,
		-0.672541, -0.707882, 0.215849,
		-0.715032, 0.546334, -0.436176,
		26.635201, 41.592865, 45.851646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783518, 40.777325, 45.707821>,  <27.135723, 41.210434, 46.156967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783518, 40.777325, 45.707821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.705387, 41.147358, 45.577553>,  <26.658508, 41.369377, 45.499393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.705387, 41.147358, 45.577553>,  <26.783518, 40.777325, 45.707821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705387, 41.147358, 45.577553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031561, -0.325965, -0.944855,
		-0.980230, -0.194834, 0.034473,
		-0.195327, 0.925087, -0.325670,
		26.646790, 41.424885, 45.479851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308056, 40.548744, 45.198059>,  <26.783518, 40.777325, 45.707821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308056, 40.548744, 45.198059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.425276, 40.922733, 45.118107>,  <26.495607, 41.147125, 45.070137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.425276, 40.922733, 45.118107>,  <26.308056, 40.548744, 45.198059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425276, 40.922733, 45.118107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024321, -0.201702, -0.979145,
		-0.955787, 0.291801, -0.036370,
		0.293052, 0.934969, -0.199881,
		26.513191, 41.203224, 45.058144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073915, 40.693199, 44.540066>,  <26.308056, 40.548744, 45.198059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073915, 40.693199, 44.540066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.337917, 40.991417, 44.577065>,  <26.496319, 41.170349, 44.599266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.337917, 40.991417, 44.577065>,  <26.073915, 40.693199, 44.540066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337917, 40.991417, 44.577065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265574, -0.116364, -0.957042,
		-0.702754, 0.656219, -0.274798,
		0.660006, 0.745544, 0.092499,
		26.535919, 41.215080, 44.604813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961994, 41.264709, 44.023495>,  <26.073915, 40.693199, 44.540066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961994, 41.264709, 44.023495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.344803, 41.279312, 44.138580>,  <26.574488, 41.288074, 44.207630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.344803, 41.279312, 44.138580>,  <25.961994, 41.264709, 44.023495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344803, 41.279312, 44.138580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290019, -0.118641, -0.949639,
		-0.000536, 0.992266, -0.124130,
		0.957021, 0.036509, 0.287712,
		26.631908, 41.290264, 44.224895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249485, 41.721329, 43.523087>,  <25.961994, 41.264709, 44.023495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249485, 41.721329, 43.523087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.583403, 41.559708, 43.672680>,  <26.783752, 41.462734, 43.762436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.583403, 41.559708, 43.672680>,  <26.249485, 41.721329, 43.523087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583403, 41.559708, 43.672680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356975, -0.119910, -0.926386,
		0.419151, 0.906843, 0.044137,
		0.834794, -0.404052, 0.373981,
		26.833841, 41.438492, 43.784874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818359, 42.113899, 43.295021>,  <26.249485, 41.721329, 43.523087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818359, 42.113899, 43.295021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.935703, 41.737709, 43.363651>,  <27.006109, 41.511993, 43.404831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.935703, 41.737709, 43.363651>,  <26.818359, 42.113899, 43.295021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935703, 41.737709, 43.363651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336702, -0.066333, -0.939272,
		0.894746, 0.333318, 0.297202,
		0.293362, -0.940478, 0.171580,
		27.023712, 41.455566, 43.415127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480808, 42.529026, 43.295349>,  <26.818359, 42.113899, 43.295021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480808, 42.529026, 43.295349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.650030, 42.829369, 43.092472>,  <27.751564, 43.009575, 42.970745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.650030, 42.829369, 43.092472>,  <27.480808, 42.529026, 43.295349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650030, 42.829369, 43.092472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076170, 0.587238, 0.805822,
		0.902896, -0.302275, 0.305627,
		0.423056, 0.750854, -0.507191,
		27.776947, 43.054626, 42.940315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957817, 42.767536, 43.714638>,  <27.480808, 42.529026, 43.295349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957817, 42.767536, 43.714638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.868288, 43.069874, 43.468513>,  <27.814571, 43.251274, 43.320839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.868288, 43.069874, 43.468513>,  <27.957817, 42.767536, 43.714638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868288, 43.069874, 43.468513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090458, 0.612494, 0.785283,
		0.970423, 0.231424, -0.068718,
		-0.223823, 0.755840, -0.615312,
		27.801142, 43.296627, 43.283920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374924, 43.267502, 43.949615>,  <27.957817, 42.767536, 43.714638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374924, 43.267502, 43.949615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.092094, 43.449947, 43.733467>,  <27.922396, 43.559414, 43.603779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.092094, 43.449947, 43.733467>,  <28.374924, 43.267502, 43.949615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092094, 43.449947, 43.733467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036063, 0.786432, 0.616623,
		0.706219, 0.416511, -0.572515,
		-0.707075, 0.456117, -0.540373,
		27.879972, 43.586784, 43.571354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601976, 43.887882, 43.856205>,  <28.374924, 43.267502, 43.949615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601976, 43.887882, 43.856205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.215313, 43.968849, 43.793472>,  <27.983315, 44.017429, 43.755833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.215313, 43.968849, 43.793472>,  <28.601976, 43.887882, 43.856205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215313, 43.968849, 43.793472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045211, 0.737768, 0.673538,
		0.252046, 0.643991, -0.722322,
		-0.966659, 0.202420, -0.156836,
		27.925316, 44.029575, 43.746422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566410, 44.636948, 43.995663>,  <28.601976, 43.887882, 43.856205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566410, 44.636948, 43.995663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.193581, 44.492901, 44.011444>,  <27.969883, 44.406471, 44.020912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.193581, 44.492901, 44.011444>,  <28.566410, 44.636948, 43.995663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193581, 44.492901, 44.011444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270550, 0.764361, 0.585282,
		-0.240926, 0.534851, -0.809870,
		-0.932072, -0.360120, 0.039450,
		27.913960, 44.384865, 44.023277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195141, 45.228802, 43.867485>,  <28.566410, 44.636948, 43.995663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195141, 45.228802, 43.867485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.929472, 44.975437, 44.026314>,  <27.770071, 44.823418, 44.121609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.929472, 44.975437, 44.026314>,  <28.195141, 45.228802, 43.867485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929472, 44.975437, 44.026314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246521, 0.686997, 0.683566,
		-0.705766, 0.356119, -0.612433,
		-0.664170, -0.633415, 0.397068,
		27.730221, 44.785412, 44.145435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592737, 45.607769, 43.830566>,  <28.195141, 45.228802, 43.867485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592737, 45.607769, 43.830566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.541246, 45.324493, 44.108242>,  <27.510351, 45.154530, 44.274849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.541246, 45.324493, 44.108242>,  <27.592737, 45.607769, 43.830566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541246, 45.324493, 44.108242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312340, 0.693339, 0.649403,
		-0.941208, -0.133226, -0.310449,
		-0.128729, -0.708189, 0.694188,
		27.502628, 45.112038, 44.316498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039255, 45.888367, 44.146385>,  <27.592737, 45.607769, 43.830566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039255, 45.888367, 44.146385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.195841, 45.632210, 44.410706>,  <27.289793, 45.478516, 44.569298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.195841, 45.632210, 44.410706>,  <27.039255, 45.888367, 44.146385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195841, 45.632210, 44.410706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026353, 0.725615, 0.687596,
		-0.919816, -0.251756, 0.300929,
		0.391465, -0.640392, 0.660797,
		27.313280, 45.440090, 44.608944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681726, 46.081753, 44.635193>,  <27.039255, 45.888367, 44.146385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681726, 46.081753, 44.635193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.013823, 45.917767, 44.786259>,  <27.213079, 45.819374, 44.876900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.013823, 45.917767, 44.786259>,  <26.681726, 46.081753, 44.635193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013823, 45.917767, 44.786259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099375, 0.775549, 0.623416,
		-0.548475, -0.480055, 0.684633,
		0.830241, -0.409964, 0.377664,
		27.262896, 45.794777, 44.899559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.184258, 36.431458, 33.686222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548264, 36.485153, 33.843117>,  <33.766666, 36.517372, 33.937252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548264, 36.485153, 33.843117>,  <33.184258, 36.431458, 33.686222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548264, 36.485153, 33.843117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412720, 0.382639, 0.826589,
		-0.039124, -0.914093, 0.403612,
		0.910017, 0.134239, 0.392235,
		33.821270, 36.525425, 33.960789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196568, 36.086533, 34.304783>,  <33.184258, 36.431458, 33.686222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196568, 36.086533, 34.304783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482407, 36.359837, 34.364788>,  <33.653912, 36.523819, 34.400791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482407, 36.359837, 34.364788>,  <33.196568, 36.086533, 34.304783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482407, 36.359837, 34.364788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583385, 0.463748, 0.666784,
		0.386013, -0.564004, 0.729996,
		0.714602, 0.683255, 0.150019,
		33.696789, 36.564812, 34.409794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290737, 36.119949, 34.948383>,  <33.196568, 36.086533, 34.304783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290737, 36.119949, 34.948383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405807, 36.483776, 34.828426>,  <33.474850, 36.702072, 34.756454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405807, 36.483776, 34.828426>,  <33.290737, 36.119949, 34.948383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405807, 36.483776, 34.828426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520020, 0.411292, 0.748611,
		0.804253, -0.059406, 0.591310,
		0.287673, 0.909566, -0.299891,
		33.492111, 36.756645, 34.738461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597694, 36.499657, 35.522690>,  <33.290737, 36.119949, 34.948383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597694, 36.499657, 35.522690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520927, 36.790100, 35.258587>,  <33.474869, 36.964367, 35.100124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520927, 36.790100, 35.258587>,  <33.597694, 36.499657, 35.522690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520927, 36.790100, 35.258587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533693, 0.487376, 0.691112,
		0.823613, 0.485012, 0.293980,
		-0.191919, 0.726104, -0.660257,
		33.463352, 37.007931, 35.060509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864418, 37.166431, 35.793480>,  <33.597694, 36.499657, 35.522690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864418, 37.166431, 35.793480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564362, 37.233685, 35.537663>,  <33.384327, 37.274036, 35.384171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564362, 37.233685, 35.537663>,  <33.864418, 37.166431, 35.793480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564362, 37.233685, 35.537663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491575, 0.505121, 0.709370,
		0.442316, 0.846513, -0.296263,
		-0.750140, 0.168130, -0.639548,
		33.339321, 37.284122, 35.345798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682781, 37.824631, 36.006702>,  <33.864418, 37.166431, 35.793480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682781, 37.824631, 36.006702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386452, 37.718800, 35.759747>,  <33.208652, 37.655300, 35.611572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386452, 37.718800, 35.759747>,  <33.682781, 37.824631, 36.006702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386452, 37.718800, 35.759747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626582, 0.603383, 0.493279,
		0.242012, 0.752281, -0.612784,
		-0.740827, -0.264580, -0.617391,
		33.164204, 37.639427, 35.574528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404705, 38.479877, 35.694912>,  <33.682781, 37.824631, 36.006702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404705, 38.479877, 35.694912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136154, 38.183525, 35.687347>,  <32.975025, 38.005714, 35.682808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136154, 38.183525, 35.687347>,  <33.404705, 38.479877, 35.694912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136154, 38.183525, 35.687347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698938, 0.624469, 0.348603,
		-0.246461, 0.247263, -0.937080,
		-0.671374, -0.740877, -0.018914,
		32.934742, 37.961262, 35.681675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885071, 38.738995, 35.303871>,  <33.404705, 38.479877, 35.694912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885071, 38.738995, 35.303871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715553, 38.453690, 35.527176>,  <32.613842, 38.282505, 35.661160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715553, 38.453690, 35.527176>,  <32.885071, 38.738995, 35.303871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715553, 38.453690, 35.527176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797875, 0.585706, 0.142632,
		-0.428708, -0.384972, -0.817316,
		-0.423797, -0.713263, 0.558257,
		32.588413, 38.239712, 35.694653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237576, 38.765915, 35.098629>,  <32.885071, 38.738995, 35.303871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237576, 38.765915, 35.098629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228764, 38.583385, 35.454445>,  <32.223476, 38.473869, 35.667934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228764, 38.583385, 35.454445>,  <32.237576, 38.765915, 35.098629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228764, 38.583385, 35.454445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759759, 0.585974, 0.281781,
		-0.649831, -0.669629, -0.359606,
		-0.022031, -0.456324, 0.889541,
		32.222153, 38.446487, 35.721306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557705, 38.583115, 35.132088>,  <32.237576, 38.765915, 35.098629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557705, 38.583115, 35.132088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687408, 38.569462, 35.510227>,  <31.765230, 38.561272, 35.737110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687408, 38.569462, 35.510227>,  <31.557705, 38.583115, 35.132088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687408, 38.569462, 35.510227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852985, 0.421519, 0.307796,
		-0.408989, -0.906177, 0.107569,
		0.324260, -0.034131, 0.945352,
		31.784687, 38.559223, 35.793835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151875, 38.165417, 35.496159>,  <31.557705, 38.583115, 35.132088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151875, 38.165417, 35.496159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322216, 38.424286, 35.749081>,  <31.424421, 38.579609, 35.900833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322216, 38.424286, 35.749081>,  <31.151875, 38.165417, 35.496159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322216, 38.424286, 35.749081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904778, 0.308524, 0.293582,
		-0.005083, -0.697121, 0.716936,
		0.425854, 0.647175, 0.632308,
		31.449972, 38.618439, 35.938774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679667, 38.146149, 36.053417>,  <31.151875, 38.165417, 35.496159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679667, 38.146149, 36.053417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915831, 38.466652, 36.092186>,  <31.057529, 38.658955, 36.115448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915831, 38.466652, 36.092186>,  <30.679667, 38.146149, 36.053417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915831, 38.466652, 36.092186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776138, 0.530705, 0.340531,
		0.221416, -0.276280, 0.935224,
		0.590410, 0.801262, 0.096925,
		31.092955, 38.707031, 36.121262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683609, 37.396912, 36.462341>,  <30.679667, 38.146149, 36.053417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683609, 37.396912, 36.462341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536186, 37.049259, 36.594269>,  <30.447733, 36.840668, 36.673424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536186, 37.049259, 36.594269>,  <30.683609, 37.396912, 36.462341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536186, 37.049259, 36.594269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015764, -0.360582, -0.932594,
		0.929472, -0.338513, 0.146595,
		-0.368555, -0.869131, 0.329815,
		30.425619, 36.788521, 36.693214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130991, 36.914799, 36.159538>,  <30.683609, 37.396912, 36.462341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130991, 36.914799, 36.159538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798925, 36.714417, 36.257416>,  <30.599686, 36.594189, 36.316143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798925, 36.714417, 36.257416>,  <31.130991, 36.914799, 36.159538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798925, 36.714417, 36.257416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036470, -0.389160, -0.920448,
		0.556325, -0.773047, 0.304797,
		-0.830164, -0.500952, 0.244692,
		30.549875, 36.564133, 36.330822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310116, 36.149097, 36.025585>,  <31.130991, 36.914799, 36.159538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310116, 36.149097, 36.025585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915955, 36.215126, 36.008934>,  <30.679459, 36.254742, 35.998943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915955, 36.215126, 36.008934>,  <31.310116, 36.149097, 36.025585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915955, 36.215126, 36.008934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046066, -0.493939, -0.868275,
		-0.163886, -0.853684, 0.494333,
		-0.985403, 0.165070, -0.041624,
		30.620333, 36.264648, 35.996449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072865, 35.456093, 35.949467>,  <31.310116, 36.149097, 36.025585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072865, 35.456093, 35.949467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785364, 35.707855, 35.831318>,  <30.612864, 35.858913, 35.760429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785364, 35.707855, 35.831318>,  <31.072865, 35.456093, 35.949467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785364, 35.707855, 35.831318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207959, -0.600004, -0.772495,
		-0.663440, -0.493803, 0.562143,
		-0.718748, 0.629407, -0.295376,
		30.569738, 35.896679, 35.742706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481998, 34.988667, 35.879959>,  <31.072865, 35.456093, 35.949467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481998, 34.988667, 35.879959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410522, 35.330677, 35.685230>,  <30.367636, 35.535885, 35.568394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410522, 35.330677, 35.685230>,  <30.481998, 34.988667, 35.879959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410522, 35.330677, 35.685230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254491, -0.518117, -0.816571,
		-0.950423, -0.022021, 0.310180,
		-0.178691, 0.855026, -0.486826,
		30.356915, 35.587185, 35.539181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783745, 35.004425, 35.651443>,  <30.481998, 34.988667, 35.879959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783745, 35.004425, 35.651443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993484, 35.240780, 35.406197>,  <30.119329, 35.382591, 35.259048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993484, 35.240780, 35.406197>,  <29.783745, 35.004425, 35.651443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993484, 35.240780, 35.406197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288087, -0.554471, -0.780748,
		-0.801288, 0.586016, -0.120511,
		0.524351, 0.590886, -0.613115,
		30.150789, 35.418045, 35.222263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359367, 35.096378, 35.126217>,  <29.783745, 35.004425, 35.651443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359367, 35.096378, 35.126217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712011, 35.189182, 34.961807>,  <29.923597, 35.244865, 34.863163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712011, 35.189182, 34.961807>,  <29.359367, 35.096378, 35.126217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712011, 35.189182, 34.961807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268353, -0.469981, -0.840895,
		-0.388271, 0.851638, -0.352077,
		0.881608, 0.232014, -0.411019,
		29.976494, 35.258785, 34.838501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187227, 35.324581, 34.443623>,  <29.359367, 35.096378, 35.126217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187227, 35.324581, 34.443623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581085, 35.259258, 34.418961>,  <29.817400, 35.220066, 34.404163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581085, 35.259258, 34.418961>,  <29.187227, 35.324581, 34.443623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581085, 35.259258, 34.418961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124124, -0.406669, -0.905104,
		0.122734, 0.898861, -0.420696,
		0.984647, -0.163306, -0.061658,
		29.876480, 35.210266, 34.400463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362709, 35.556015, 33.827579>,  <29.187227, 35.324581, 34.443623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362709, 35.556015, 33.827579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647367, 35.291710, 33.923042>,  <29.818163, 35.133129, 33.980320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647367, 35.291710, 33.923042>,  <29.362709, 35.556015, 33.827579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647367, 35.291710, 33.923042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097893, -0.429661, -0.897668,
		0.695686, 0.615457, -0.370450,
		0.711645, -0.660760, 0.238660,
		29.860861, 35.093483, 33.994640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608448, 35.418865, 33.200367>,  <29.362709, 35.556015, 33.827579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608448, 35.418865, 33.200367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746935, 35.117275, 33.423672>,  <29.830027, 34.936321, 33.557655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746935, 35.117275, 33.423672>,  <29.608448, 35.418865, 33.200367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746935, 35.117275, 33.423672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083963, -0.617576, -0.782016,
		0.934389, 0.223876, -0.277122,
		0.346219, -0.753976, 0.558259,
		29.850801, 34.891083, 33.591148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943287, 35.015015, 32.752907>,  <29.608448, 35.418865, 33.200367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943287, 35.015015, 32.752907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887804, 34.765301, 33.060417>,  <29.854515, 34.615471, 33.244926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887804, 34.765301, 33.060417>,  <29.943287, 35.015015, 32.752907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887804, 34.765301, 33.060417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125636, -0.758920, -0.638949,
		0.982332, -0.185212, 0.026832,
		-0.138705, -0.624289, 0.768780,
		29.846193, 34.578014, 33.291050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274500, 34.421051, 32.516273>,  <29.943287, 35.015015, 32.752907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274500, 34.421051, 32.516273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027475, 34.343731, 32.821232>,  <29.879261, 34.297340, 33.004208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027475, 34.343731, 32.821232>,  <30.274500, 34.421051, 32.516273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027475, 34.343731, 32.821232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316975, -0.825961, -0.466171,
		0.719823, -0.529551, 0.448811,
		-0.617562, -0.193299, 0.762400,
		29.842207, 34.285740, 33.049953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392710, 33.748257, 32.699974>,  <30.274500, 34.421051, 32.516273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392710, 33.748257, 32.699974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010557, 33.851574, 32.757290>,  <29.781265, 33.913567, 32.791679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010557, 33.851574, 32.757290>,  <30.392710, 33.748257, 32.699974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010557, 33.851574, 32.757290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289708, -0.913999, -0.284032,
		0.057603, -0.312871, 0.948047,
		-0.955380, 0.258296, 0.143290,
		29.723944, 33.929062, 32.800278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085356, 33.985893, 32.712124>,  <30.392710, 33.748257, 32.699974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085356, 33.985893, 32.712124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354492, 33.689999, 32.715519>,  <31.515974, 33.512463, 32.717556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354492, 33.689999, 32.715519>,  <31.085356, 33.985893, 32.712124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354492, 33.689999, 32.715519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668578, 0.603129, -0.435016,
		0.316681, 0.298369, 0.900383,
		0.672842, -0.739737, 0.008483,
		31.556345, 33.468079, 32.718063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042053, 33.811153, 33.567940>,  <31.085356, 33.985893, 32.712124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042053, 33.811153, 33.567940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073942, 33.435337, 33.701153>,  <31.093075, 33.209846, 33.781082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073942, 33.435337, 33.701153>,  <31.042053, 33.811153, 33.567940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073942, 33.435337, 33.701153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481187, 0.256324, 0.838306,
		-0.872986, -0.227083, -0.431659,
		0.079721, -0.939538, 0.333036,
		31.097858, 33.153477, 33.801064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405682, 33.561226, 33.798950>,  <31.042053, 33.811153, 33.567940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405682, 33.561226, 33.798950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679379, 33.351128, 34.001312>,  <30.843596, 33.225071, 34.122730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679379, 33.351128, 34.001312>,  <30.405682, 33.561226, 33.798950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679379, 33.351128, 34.001312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562650, 0.061105, 0.824434,
		-0.463941, -0.848756, -0.253716,
		0.684240, -0.525242, 0.505902,
		30.884651, 33.193554, 34.153084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144939, 32.926346, 34.140182>,  <30.405682, 33.561226, 33.798950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144939, 32.926346, 34.140182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469990, 33.033432, 34.347244>,  <30.665020, 33.097683, 34.471481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469990, 33.033432, 34.347244>,  <30.144939, 32.926346, 34.140182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469990, 33.033432, 34.347244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533630, -0.015244, 0.845580,
		0.234268, -0.963377, 0.130475,
		0.812624, 0.267717, 0.517658,
		30.713778, 33.113747, 34.502541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137159, 32.513008, 34.805454>,  <30.144939, 32.926346, 34.140182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137159, 32.513008, 34.805454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377563, 32.821014, 34.891109>,  <30.521807, 33.005817, 34.942501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377563, 32.821014, 34.891109>,  <30.137159, 32.513008, 34.805454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377563, 32.821014, 34.891109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253781, -0.070202, 0.964711,
		0.757879, -0.634146, 0.153225,
		0.601011, 0.770020, 0.214139,
		30.557867, 33.052021, 34.955353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570652, 32.304749, 35.357456>,  <30.137159, 32.513008, 34.805454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570652, 32.304749, 35.357456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602646, 32.701618, 35.395805>,  <30.621843, 32.939739, 35.418816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602646, 32.701618, 35.395805>,  <30.570652, 32.304749, 35.357456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602646, 32.701618, 35.395805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210123, -0.077242, 0.974619,
		0.974397, -0.098102, 0.202300,
		0.079986, 0.992174, 0.095878,
		30.626642, 32.999271, 35.424568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973997, 32.401909, 35.917282>,  <30.570652, 32.304749, 35.357456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973997, 32.401909, 35.917282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797150, 32.759289, 35.885590>,  <30.691042, 32.973717, 35.866573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797150, 32.759289, 35.885590>,  <30.973997, 32.401909, 35.917282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797150, 32.759289, 35.885590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286692, -0.057057, 0.956322,
		0.849905, 0.445524, 0.281371,
		-0.442118, 0.893450, -0.079235,
		30.664515, 33.027325, 35.861820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088228, 32.796597, 36.543377>,  <30.973997, 32.401909, 35.917282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088228, 32.796597, 36.543377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791712, 33.020382, 36.395061>,  <30.613802, 33.154655, 36.306072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791712, 33.020382, 36.395061>,  <31.088228, 32.796597, 36.543377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791712, 33.020382, 36.395061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335404, 0.169741, 0.926656,
		0.581371, 0.811287, 0.061820,
		-0.741291, 0.559466, -0.370791,
		30.569324, 33.188221, 36.283825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130779, 33.407322, 36.879093>,  <31.088228, 32.796597, 36.543377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130779, 33.407322, 36.879093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752968, 33.393219, 36.748482>,  <30.526281, 33.384758, 36.670113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752968, 33.393219, 36.748482>,  <31.130779, 33.407322, 36.879093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752968, 33.393219, 36.748482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309230, 0.430427, 0.848003,
		0.110649, 0.901936, -0.417454,
		-0.944528, -0.035259, -0.326532,
		30.469610, 33.382641, 36.650520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875139, 34.008358, 37.145733>,  <31.130779, 33.407322, 36.879093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875139, 34.008358, 37.145733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560802, 33.774471, 37.065182>,  <30.372200, 33.634140, 37.016853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560802, 33.774471, 37.065182>,  <30.875139, 34.008358, 37.145733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560802, 33.774471, 37.065182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469404, 0.351974, 0.809799,
		-0.402628, 0.730901, -0.551067,
		-0.785844, -0.584721, -0.201373,
		30.325048, 33.599056, 37.004768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367048, 34.556011, 37.054302>,  <30.875139, 34.008358, 37.145733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367048, 34.556011, 37.054302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160490, 34.214985, 37.086460>,  <30.036554, 34.010368, 37.105755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160490, 34.214985, 37.086460>,  <30.367048, 34.556011, 37.054302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160490, 34.214985, 37.086460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440991, 0.345226, 0.828460,
		-0.734071, 0.392362, -0.554249,
		-0.516397, -0.852567, 0.080392,
		30.005571, 33.959213, 37.110577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606010, 34.669952, 37.111515>,  <30.367048, 34.556011, 37.054302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606010, 34.669952, 37.111515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676155, 34.325459, 37.302311>,  <29.718243, 34.118763, 37.416790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676155, 34.325459, 37.302311>,  <29.606010, 34.669952, 37.111515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676155, 34.325459, 37.302311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514469, 0.332919, 0.790245,
		-0.839387, -0.383978, -0.384696,
		0.175364, -0.861235, 0.476992,
		29.728764, 34.067089, 37.445408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926670, 34.507675, 37.627846>,  <29.606010, 34.669952, 37.111515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926670, 34.507675, 37.627846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239256, 34.290230, 37.750355>,  <29.426807, 34.159763, 37.823860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239256, 34.290230, 37.750355>,  <28.926670, 34.507675, 37.627846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239256, 34.290230, 37.750355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258781, 0.164275, 0.951864,
		-0.567756, -0.823105, -0.012302,
		0.781464, -0.543610, 0.306272,
		29.473696, 34.127148, 37.842236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726915, 33.905006, 38.083538>,  <28.926670, 34.507675, 37.627846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726915, 33.905006, 38.083538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100794, 34.012573, 38.176514>,  <29.325121, 34.077114, 38.232300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100794, 34.012573, 38.176514>,  <28.726915, 33.905006, 38.083538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100794, 34.012573, 38.176514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274973, 0.132653, 0.952257,
		0.225248, -0.953984, 0.197936,
		0.934694, 0.268921, 0.232440,
		29.381203, 34.093250, 38.246246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764223, 33.573490, 38.799397>,  <28.726915, 33.905006, 38.083538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764223, 33.573490, 38.799397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078192, 33.819054, 38.765892>,  <29.266573, 33.966393, 38.745789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078192, 33.819054, 38.765892>,  <28.764223, 33.573490, 38.799397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078192, 33.819054, 38.765892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223916, 0.407112, 0.885506,
		0.577718, -0.676298, 0.457014,
		0.784923, 0.613906, -0.083762,
		29.313669, 34.003223, 38.740765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076216, 33.506210, 39.455608>,  <28.764223, 33.573490, 38.799397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076216, 33.506210, 39.455608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187246, 33.847157, 39.278332>,  <29.253864, 34.051723, 39.171967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187246, 33.847157, 39.278332>,  <29.076216, 33.506210, 39.455608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187246, 33.847157, 39.278332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283097, 0.513410, 0.810103,
		0.918046, -0.099397, 0.383812,
		0.277575, 0.852368, -0.443195,
		29.270519, 34.102867, 39.145374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608225, 33.821117, 39.785099>,  <29.076216, 33.506210, 39.455608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608225, 33.821117, 39.785099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484663, 34.143875, 39.583706>,  <29.410526, 34.337532, 39.462872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484663, 34.143875, 39.583706>,  <29.608225, 33.821117, 39.785099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484663, 34.143875, 39.583706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212961, 0.457249, 0.863464,
		0.926945, 0.373948, 0.030592,
		-0.308903, 0.806899, -0.503482,
		29.391993, 34.385944, 39.432663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941833, 34.376087, 40.117531>,  <29.608225, 33.821117, 39.785099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941833, 34.376087, 40.117531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619068, 34.523193, 39.932644>,  <29.425409, 34.611458, 39.821712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619068, 34.523193, 39.932644>,  <29.941833, 34.376087, 40.117531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619068, 34.523193, 39.932644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251400, 0.494281, 0.832156,
		0.534502, 0.787677, -0.306385,
		-0.806911, 0.367764, -0.462217,
		29.376995, 34.633522, 39.793980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049032, 35.071148, 40.308121>,  <29.941833, 34.376087, 40.117531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049032, 35.071148, 40.308121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670120, 35.042934, 40.183102>,  <29.442772, 35.026009, 40.108089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670120, 35.042934, 40.183102>,  <30.049032, 35.071148, 40.308121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670120, 35.042934, 40.183102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277631, 0.667616, 0.690804,
		0.159937, 0.741158, -0.652001,
		-0.947281, -0.070530, -0.312545,
		29.385937, 35.021774, 40.089336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830776, 35.767776, 40.040905>,  <30.049032, 35.071148, 40.308121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830776, 35.767776, 40.040905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495312, 35.566349, 40.123913>,  <29.294033, 35.445492, 40.173717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495312, 35.566349, 40.123913>,  <29.830776, 35.767776, 40.040905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495312, 35.566349, 40.123913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271733, 0.717061, 0.641861,
		-0.472028, 0.481913, -0.738207,
		-0.838660, -0.503571, 0.207522,
		29.243713, 35.415279, 40.186169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301628, 36.259159, 39.947487>,  <29.830776, 35.767776, 40.040905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301628, 36.259159, 39.947487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133949, 35.970165, 40.167408>,  <29.033342, 35.796768, 40.299362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133949, 35.970165, 40.167408>,  <29.301628, 36.259159, 39.947487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133949, 35.970165, 40.167408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264950, 0.676571, 0.687061,
		-0.868376, 0.142342, -0.475039,
		-0.419195, -0.722489, 0.549805,
		29.008190, 35.753418, 40.332348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614988, 36.492493, 40.123856>,  <29.301628, 36.259159, 39.947487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614988, 36.492493, 40.123856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705526, 36.204548, 40.386326>,  <28.759850, 36.031780, 40.543808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705526, 36.204548, 40.386326>,  <28.614988, 36.492493, 40.123856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705526, 36.204548, 40.386326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449476, 0.520459, 0.726012,
		-0.864141, -0.459265, -0.205758,
		0.226344, -0.719860, 0.656178,
		28.773430, 35.988590, 40.583179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039062, 36.412884, 40.514126>,  <28.614988, 36.492493, 40.123856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039062, 36.412884, 40.514126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339018, 36.275784, 40.740467>,  <28.518991, 36.193523, 40.876270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339018, 36.275784, 40.740467>,  <28.039062, 36.412884, 40.514126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339018, 36.275784, 40.740467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439832, 0.380622, 0.813434,
		-0.494181, -0.858865, 0.134671,
		0.749889, -0.342751, 0.565852,
		28.563984, 36.172958, 40.910221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743917, 36.125961, 41.087322>,  <28.039062, 36.412884, 40.514126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743917, 36.125961, 41.087322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123077, 36.213013, 41.180382>,  <28.350573, 36.265244, 41.236217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123077, 36.213013, 41.180382>,  <27.743917, 36.125961, 41.087322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123077, 36.213013, 41.180382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317092, 0.574226, 0.754796,
		0.030671, -0.789241, 0.613316,
		0.947898, 0.217629, 0.232650,
		28.407448, 36.278301, 41.250175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649940, 36.323902, 41.763733>,  <27.743917, 36.125961, 41.087322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649940, 36.323902, 41.763733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035315, 36.412086, 41.702820>,  <28.266539, 36.464996, 41.666271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035315, 36.412086, 41.702820>,  <27.649940, 36.323902, 41.763733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035315, 36.412086, 41.702820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007001, 0.588863, 0.808203,
		0.267851, -0.777585, 0.568874,
		0.963435, 0.220460, -0.152284,
		28.324345, 36.478226, 41.657135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984577, 36.232960, 42.406517>,  <27.649940, 36.323902, 41.763733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984577, 36.232960, 42.406517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256889, 36.464474, 42.226944>,  <28.420277, 36.603382, 42.119202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256889, 36.464474, 42.226944>,  <27.984577, 36.232960, 42.406517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256889, 36.464474, 42.226944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131843, 0.506052, 0.852367,
		0.720523, -0.639464, 0.268202,
		0.680782, 0.578789, -0.448931,
		28.461124, 36.638111, 42.092266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695251, 36.176517, 42.809944>,  <27.984577, 36.232960, 42.406517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695251, 36.176517, 42.809944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646450, 36.515926, 42.603985>,  <28.617168, 36.719574, 42.480412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646450, 36.515926, 42.603985>,  <28.695251, 36.176517, 42.809944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646450, 36.515926, 42.603985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070186, 0.524848, 0.848297,
		0.990045, 0.067356, -0.123588,
		-0.122003, 0.848527, -0.514896,
		28.609850, 36.770485, 42.449516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197525, 36.466099, 43.138580>,  <28.695251, 36.176517, 42.809944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197525, 36.466099, 43.138580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946600, 36.722115, 42.961121>,  <28.796045, 36.875725, 42.854645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946600, 36.722115, 42.961121>,  <29.197525, 36.466099, 43.138580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946600, 36.722115, 42.961121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005344, 0.573203, 0.819396,
		0.778748, 0.511647, -0.362999,
		-0.627314, 0.640043, -0.443647,
		28.758406, 36.914127, 42.828026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366941, 37.082676, 43.406517>,  <29.197525, 36.466099, 43.138580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366941, 37.082676, 43.406517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026564, 37.196472, 43.229900>,  <28.822336, 37.264751, 43.123932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026564, 37.196472, 43.229900>,  <29.366941, 37.082676, 43.406517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026564, 37.196472, 43.229900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050998, 0.791900, 0.608517,
		0.522772, 0.540333, -0.659356,
		-0.850946, 0.284490, -0.441539,
		28.771280, 37.281818, 43.097439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134197, 37.236252, 43.123459>,  <29.366941, 37.082676, 43.406517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134197, 37.236252, 43.123459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450798, 37.318451, 43.353691>,  <30.640759, 37.367771, 43.491829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450798, 37.318451, 43.353691>,  <30.134197, 37.236252, 43.123459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450798, 37.318451, 43.353691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523666, -0.713609, -0.465334,
		0.315112, 0.669725, -0.672439,
		0.791504, 0.205501, 0.575578,
		30.688250, 37.380100, 43.526363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653221, 37.306522, 42.725067>,  <30.134197, 37.236252, 43.123459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653221, 37.306522, 42.725067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859509, 37.236614, 43.060566>,  <30.983280, 37.194668, 43.261864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859509, 37.236614, 43.060566>,  <30.653221, 37.306522, 42.725067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859509, 37.236614, 43.060566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591132, -0.636040, -0.496001,
		0.620161, 0.751604, -0.224704,
		0.515717, -0.174770, 0.838744,
		31.014223, 37.184185, 43.312187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339474, 37.567532, 42.591614>,  <30.653221, 37.306522, 42.725067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339474, 37.567532, 42.591614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358162, 37.296577, 42.885269>,  <31.369375, 37.134003, 43.061462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358162, 37.296577, 42.885269>,  <31.339474, 37.567532, 42.591614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358162, 37.296577, 42.885269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659411, -0.531137, -0.532044,
		0.750329, 0.508957, 0.421863,
		0.046720, -0.677389, 0.734140,
		31.372177, 37.093361, 43.105511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073914, 37.363453, 42.730247>,  <31.339474, 37.567532, 42.591614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073914, 37.363453, 42.730247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880383, 37.050747, 42.887604>,  <31.764265, 36.863121, 42.982018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880383, 37.050747, 42.887604>,  <32.073914, 37.363453, 42.730247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880383, 37.050747, 42.887604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615883, -0.623502, -0.481595,
		0.621774, 0.009275, 0.783142,
		-0.483823, -0.781767, 0.393390,
		31.735235, 36.816216, 43.005619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617714, 36.869576, 42.830055>,  <32.073914, 37.363453, 42.730247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617714, 36.869576, 42.830055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304390, 36.624458, 42.871845>,  <32.116398, 36.477390, 42.896919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304390, 36.624458, 42.871845>,  <32.617714, 36.869576, 42.830055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304390, 36.624458, 42.871845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414592, -0.640219, -0.646709,
		0.463186, -0.463257, 0.755547,
		-0.783308, -0.612791, 0.104478,
		32.069397, 36.440620, 42.903187>
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
