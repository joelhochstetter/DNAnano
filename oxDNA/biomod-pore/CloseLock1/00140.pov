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
	<24.313272, 34.703293, 34.947807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377584, 35.094925, 34.897938>,  <24.416172, 35.329906, 34.868015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377584, 35.094925, 34.897938>,  <24.313272, 34.703293, 34.947807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.377584, 35.094925, 34.897938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984367, -0.168270, -0.052012,
		-0.071904, -0.114365, -0.990833,
		0.160780, 0.979084, -0.124676,
		24.425817, 35.388649, 34.860535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886221, 34.774986, 34.603199>,  <24.313272, 34.703293, 34.947807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886221, 34.774986, 34.603199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914860, 35.163879, 34.692322>,  <24.932043, 35.397213, 34.745796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914860, 35.163879, 34.692322>,  <24.886221, 34.774986, 34.603199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914860, 35.163879, 34.692322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975187, -0.021317, -0.220354,
		-0.209485, 0.233056, -0.949632,
		0.071598, 0.972230, 0.222807,
		24.936338, 35.455547, 34.759163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259983, 34.993279, 34.014397>,  <24.886221, 34.774986, 34.603199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259983, 34.993279, 34.014397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321829, 35.199677, 34.351406>,  <25.358936, 35.323513, 34.553612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321829, 35.199677, 34.351406>,  <25.259983, 34.993279, 34.014397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321829, 35.199677, 34.351406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979183, 0.033485, -0.200197,
		-0.131512, 0.855940, -0.500072,
		0.154612, 0.515990, 0.842526,
		25.368212, 35.354473, 34.604164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657862, 35.575077, 33.801338>,  <25.259983, 34.993279, 34.014397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657862, 35.575077, 33.801338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708799, 35.484562, 34.187618>,  <25.739363, 35.430252, 34.419388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708799, 35.484562, 34.187618>,  <25.657862, 35.575077, 33.801338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708799, 35.484562, 34.187618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991848, 0.024560, -0.125036,
		0.004577, 0.973750, 0.227572,
		0.127343, -0.226289, 0.965700,
		25.747002, 35.416676, 34.477329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129934, 36.184303, 34.045177>,  <25.657862, 35.575077, 33.801338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129934, 36.184303, 34.045177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167273, 35.819305, 34.204494>,  <26.189674, 35.600307, 34.300087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167273, 35.819305, 34.204494>,  <26.129934, 36.184303, 34.045177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167273, 35.819305, 34.204494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935818, -0.056161, -0.347982,
		0.339900, 0.405215, 0.848687,
		0.093344, -0.912495, 0.398296,
		26.195276, 35.545555, 34.323982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920681, 36.841576, 33.957436>,  <26.129934, 36.184303, 34.045177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.920681, 36.841576, 33.957436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307987, 36.796913, 33.867992>,  <26.540371, 36.770115, 33.814327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307987, 36.796913, 33.867992>,  <25.920681, 36.841576, 33.957436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307987, 36.796913, 33.867992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059241, 0.766629, -0.639352,
		0.242810, 0.632308, 0.735684,
		0.968263, -0.111658, -0.223604,
		26.598467, 36.763416, 33.800911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253241, 37.469170, 34.194355>,  <25.920681, 36.841576, 33.957436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253241, 37.469170, 34.194355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465174, 37.298355, 33.901257>,  <26.592335, 37.195866, 33.725399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465174, 37.298355, 33.901257>,  <26.253241, 37.469170, 34.194355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465174, 37.298355, 33.901257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139766, 0.808202, -0.572079,
		0.836506, 0.405519, 0.368527,
		0.529834, -0.427040, -0.732744,
		26.624125, 37.170242, 33.681435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830719, 37.781544, 34.054871>,  <26.253241, 37.469170, 34.194355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830719, 37.781544, 34.054871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808521, 37.591179, 33.703773>,  <26.795202, 37.476959, 33.493114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808521, 37.591179, 33.703773>,  <26.830719, 37.781544, 34.054871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808521, 37.591179, 33.703773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130470, 0.868100, -0.478936,
		0.989898, -0.141096, 0.013918,
		-0.055494, -0.475913, -0.877740,
		26.791874, 37.448406, 33.440453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391571, 37.982807, 33.803886>,  <26.830719, 37.781544, 34.054871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391571, 37.982807, 33.803886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143250, 37.877811, 33.508400>,  <26.994257, 37.814816, 33.331108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143250, 37.877811, 33.508400>,  <27.391571, 37.982807, 33.803886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143250, 37.877811, 33.508400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233534, 0.837585, -0.493875,
		0.748375, -0.479115, -0.458676,
		-0.620803, -0.262488, -0.738718,
		26.957008, 37.799065, 33.286785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820316, 38.110340, 33.214176>,  <27.391571, 37.982807, 33.803886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820316, 38.110340, 33.214176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446991, 38.082031, 33.073368>,  <27.222996, 38.065048, 32.988884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446991, 38.082031, 33.073368>,  <27.820316, 38.110340, 33.214176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446991, 38.082031, 33.073368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102983, 0.886440, -0.451242,
		0.343980, -0.457402, -0.820037,
		-0.933313, -0.070768, -0.352022,
		27.166998, 38.060802, 32.967762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979975, 38.029465, 32.478222>,  <27.820316, 38.110340, 33.214176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979975, 38.029465, 32.478222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597834, 38.136990, 32.527279>,  <27.368549, 38.201504, 32.556713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597834, 38.136990, 32.527279>,  <27.979975, 38.029465, 32.478222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597834, 38.136990, 32.527279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142412, 0.782614, -0.605999,
		-0.258884, -0.561477, -0.785954,
		-0.955352, 0.268813, 0.122645,
		27.311228, 38.217632, 32.564072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773867, 38.172508, 31.807079>,  <27.979975, 38.029465, 32.478222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773867, 38.172508, 31.807079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525976, 38.348938, 32.066738>,  <27.377243, 38.454796, 32.222534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525976, 38.348938, 32.066738>,  <27.773867, 38.172508, 31.807079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525976, 38.348938, 32.066738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044235, 0.845447, -0.532225,
		-0.783572, -0.301117, -0.543455,
		-0.619724, 0.441076, 0.649149,
		27.340059, 38.481262, 32.261482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422735, 38.532288, 31.370214>,  <27.773867, 38.172508, 31.807079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422735, 38.532288, 31.370214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372244, 38.690407, 31.734150>,  <27.341949, 38.785278, 31.952511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372244, 38.690407, 31.734150>,  <27.422735, 38.532288, 31.370214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372244, 38.690407, 31.734150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074912, 0.918354, -0.388605,
		-0.989168, 0.019105, -0.145536,
		-0.126230, 0.395298, 0.909838,
		27.334375, 38.808998, 32.007103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040762, 39.084850, 31.171625>,  <27.422735, 38.532288, 31.370214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040762, 39.084850, 31.171625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184689, 39.157944, 31.537607>,  <27.271044, 39.201797, 31.757196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184689, 39.157944, 31.537607>,  <27.040762, 39.084850, 31.171625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184689, 39.157944, 31.537607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172524, 0.950694, -0.257714,
		-0.916933, 0.250582, 0.310551,
		0.359817, 0.182729, 0.914955,
		27.292633, 39.212761, 31.812094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643248, 39.707813, 31.572557>,  <27.040762, 39.084850, 31.171625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643248, 39.707813, 31.572557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014193, 39.651382, 31.711176>,  <27.236759, 39.617523, 31.794346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014193, 39.651382, 31.711176>,  <26.643248, 39.707813, 31.572557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014193, 39.651382, 31.711176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211015, 0.962047, -0.173027,
		-0.308982, 0.233585, 0.921937,
		0.927363, -0.141081, 0.346545,
		27.292402, 39.609058, 31.815140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849335, 40.345745, 31.885782>,  <26.643248, 39.707813, 31.572557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849335, 40.345745, 31.885782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198259, 40.151051, 31.867155>,  <27.407614, 40.034233, 31.855978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198259, 40.151051, 31.867155>,  <26.849335, 40.345745, 31.885782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198259, 40.151051, 31.867155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466161, 0.856605, -0.221183,
		0.147549, 0.171231, 0.974120,
		0.872309, -0.486732, -0.046570,
		27.459951, 40.005032, 31.853184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268896, 40.824451, 32.159962>,  <26.849335, 40.345745, 31.885782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268896, 40.824451, 32.159962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521072, 40.585835, 31.961292>,  <27.672379, 40.442665, 31.842091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521072, 40.585835, 31.961292>,  <27.268896, 40.824451, 32.159962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521072, 40.585835, 31.961292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562066, 0.792125, -0.237949,
		0.535374, -0.129151, 0.834682,
		0.630441, -0.596539, -0.496675,
		27.710205, 40.406872, 31.812290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991119, 41.054016, 32.378429>,  <27.268896, 40.824451, 32.159962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991119, 41.054016, 32.378429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030321, 40.837807, 32.044189>,  <28.053843, 40.708080, 31.843645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030321, 40.837807, 32.044189>,  <27.991119, 41.054016, 32.378429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030321, 40.837807, 32.044189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582789, 0.711782, -0.392075,
		0.806692, -0.448555, 0.384767,
		0.098003, -0.540522, -0.835603,
		28.059723, 40.675652, 31.793509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798939, 40.997055, 32.226227>,  <27.991119, 41.054016, 32.378429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798939, 40.997055, 32.226227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585295, 40.917797, 31.897482>,  <28.457108, 40.870243, 31.700233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585295, 40.917797, 31.897482>,  <28.798939, 40.997055, 32.226227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585295, 40.917797, 31.897482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462837, 0.744985, -0.480395,
		0.707465, -0.636974, -0.306197,
		-0.534111, -0.198144, -0.821866,
		28.425060, 40.858353, 31.650923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298576, 40.876404, 31.649780>,  <28.798939, 40.997055, 32.226227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298576, 40.876404, 31.649780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935692, 40.997486, 31.532928>,  <28.717960, 41.070133, 31.462818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935692, 40.997486, 31.532928>,  <29.298576, 40.876404, 31.649780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935692, 40.997486, 31.532928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420241, 0.683723, -0.596591,
		0.019145, -0.663998, -0.747488,
		-0.907210, 0.302703, -0.292130,
		28.663528, 41.088299, 31.445290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363659, 41.087097, 30.915808>,  <29.298576, 40.876404, 31.649780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363659, 41.087097, 30.915808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001997, 41.239815, 30.992481>,  <28.785000, 41.331444, 31.038486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001997, 41.239815, 30.992481>,  <29.363659, 41.087097, 30.915808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001997, 41.239815, 30.992481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140556, 0.689562, -0.710456,
		-0.403423, -0.615419, -0.677133,
		-0.904154, 0.381790, 0.191685,
		28.730751, 41.354351, 31.049986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168036, 41.342491, 30.233244>,  <29.363659, 41.087097, 30.915808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168036, 41.342491, 30.233244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937355, 41.518188, 30.508774>,  <28.798946, 41.623608, 30.674091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937355, 41.518188, 30.508774>,  <29.168036, 41.342491, 30.233244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937355, 41.518188, 30.508774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182829, 0.891170, -0.415198,
		-0.796233, -0.113509, -0.594246,
		-0.576703, 0.439240, 0.688827,
		28.764343, 41.649960, 30.715422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685852, 41.651031, 29.884161>,  <29.168036, 41.342491, 30.233244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685852, 41.651031, 29.884161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700478, 41.863613, 30.222679>,  <28.709253, 41.991161, 30.425791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700478, 41.863613, 30.222679>,  <28.685852, 41.651031, 29.884161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700478, 41.863613, 30.222679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092768, 0.845011, -0.526640,
		-0.995016, -0.059255, 0.080198,
		0.036562, 0.531455, 0.846297,
		28.711447, 42.023048, 30.476568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149204, 42.170799, 29.814823>,  <28.685852, 41.651031, 29.884161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149204, 42.170799, 29.814823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388056, 42.298374, 30.109230>,  <28.531366, 42.374920, 30.285873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388056, 42.298374, 30.109230>,  <28.149204, 42.170799, 29.814823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388056, 42.298374, 30.109230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129871, 0.943891, -0.303649,
		-0.791563, 0.085730, 0.605044,
		0.597128, 0.318935, 0.736015,
		28.567194, 42.394054, 30.330034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955938, 42.902615, 29.884018>,  <28.149204, 42.170799, 29.814823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955938, 42.902615, 29.884018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319103, 42.866840, 30.047823>,  <28.537003, 42.845375, 30.146105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319103, 42.866840, 30.047823>,  <27.955938, 42.902615, 29.884018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319103, 42.866840, 30.047823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145525, 0.983457, -0.107862,
		-0.393089, 0.157523, 0.905907,
		0.907912, -0.089433, 0.409510,
		28.591476, 42.840012, 30.170675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066275, 43.327477, 30.546322>,  <27.955938, 42.902615, 29.884018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066275, 43.327477, 30.546322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384895, 43.284061, 30.308422>,  <28.576067, 43.258011, 30.165682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384895, 43.284061, 30.308422>,  <28.066275, 43.327477, 30.546322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384895, 43.284061, 30.308422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027425, 0.989227, -0.143802,
		0.603951, 0.098234, 0.790945,
		0.796550, -0.108541, -0.594750,
		28.623859, 43.251499, 30.129997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354939, 44.010262, 30.581562>,  <28.066275, 43.327477, 30.546322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354939, 44.010262, 30.581562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525272, 43.824089, 30.271196>,  <28.627472, 43.712387, 30.084976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525272, 43.824089, 30.271196>,  <28.354939, 44.010262, 30.581562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525272, 43.824089, 30.271196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107808, 0.877542, -0.467224,
		0.898356, 0.115309, 0.423864,
		0.425833, -0.465429, -0.775913,
		28.653023, 43.684460, 30.038422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108900, 44.222603, 30.365290>,  <28.354939, 44.010262, 30.581562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108900, 44.222603, 30.365290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828947, 44.119949, 30.098665>,  <28.660975, 44.058357, 29.938690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828947, 44.119949, 30.098665>,  <29.108900, 44.222603, 30.365290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828947, 44.119949, 30.098665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146120, 0.862038, -0.485324,
		0.699152, -0.437067, -0.565826,
		-0.699883, -0.256637, -0.666560,
		28.618982, 44.042957, 29.898697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451658, 44.316261, 29.773630>,  <29.108900, 44.222603, 30.365290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451658, 44.316261, 29.773630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055843, 44.346310, 29.724361>,  <28.818354, 44.364338, 29.694801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055843, 44.346310, 29.724361>,  <29.451658, 44.316261, 29.773630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055843, 44.346310, 29.724361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119650, 0.904338, -0.409702,
		0.080611, -0.420153, -0.903865,
		-0.989538, 0.075121, -0.123171,
		28.758982, 44.368847, 29.687410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183569, 44.393375, 30.080061>,  <29.451658, 44.316261, 29.773630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183569, 44.393375, 30.080061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253754, 44.785824, 30.047512>,  <30.295864, 45.021294, 30.027983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253754, 44.785824, 30.047512>,  <30.183569, 44.393375, 30.080061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253754, 44.785824, 30.047512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979071, -0.165245, 0.118802,
		0.103112, -0.100515, -0.989578,
		0.175464, 0.981117, -0.081373,
		30.306393, 45.080158, 30.023100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605116, 44.520962, 29.496275>,  <30.183569, 44.393375, 30.080061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605116, 44.520962, 29.496275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643448, 44.757053, 29.816885>,  <30.666447, 44.898708, 30.009251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643448, 44.757053, 29.816885>,  <30.605116, 44.520962, 29.496275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643448, 44.757053, 29.816885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965528, -0.250898, 0.069318,
		0.242016, 0.767254, -0.593927,
		0.095831, 0.590229, 0.801527,
		30.672197, 44.934124, 30.057343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088604, 45.169983, 29.572599>,  <30.605116, 44.520962, 29.496275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088604, 45.169983, 29.572599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099066, 45.053471, 29.955111>,  <31.105343, 44.983562, 30.184618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099066, 45.053471, 29.955111>,  <31.088604, 45.169983, 29.572599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099066, 45.053471, 29.955111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970937, -0.220252, -0.093646,
		0.237900, 0.930937, 0.277056,
		0.026157, -0.291283, 0.956279,
		31.106913, 44.966087, 30.241995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611254, 44.823456, 29.898560>,  <31.088604, 45.169983, 29.572599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611254, 44.823456, 29.898560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849073, 44.968269, 30.185738>,  <31.991764, 45.055157, 30.358044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849073, 44.968269, 30.185738>,  <31.611254, 44.823456, 29.898560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849073, 44.968269, 30.185738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229495, -0.779347, 0.583053,
		0.770614, -0.511417, -0.380273,
		0.594547, 0.362038, 0.717943,
		32.027439, 45.076881, 30.401121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883192, 44.343410, 30.242170>,  <31.611254, 44.823456, 29.898560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883192, 44.343410, 30.242170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962517, 44.593353, 30.544224>,  <32.010113, 44.743320, 30.725456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962517, 44.593353, 30.544224>,  <31.883192, 44.343410, 30.242170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962517, 44.593353, 30.544224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213400, -0.724426, 0.655490,
		0.956625, -0.291138, -0.010319,
		0.198314, 0.624856, 0.755133,
		32.022011, 44.780811, 30.770763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322262, 43.930592, 30.691572>,  <31.883192, 44.343410, 30.242170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322262, 43.930592, 30.691572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097256, 44.200760, 30.882315>,  <31.962254, 44.362862, 30.996759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097256, 44.200760, 30.882315>,  <32.322262, 43.930592, 30.691572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097256, 44.200760, 30.882315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255963, -0.690683, 0.676342,
		0.786170, 0.258394, 0.561400,
		-0.562512, 0.675418, 0.476855,
		31.928503, 44.403385, 31.025372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380146, 43.689770, 31.357904>,  <32.322262, 43.930592, 30.691572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380146, 43.689770, 31.357904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051369, 43.912716, 31.311007>,  <31.854101, 44.046482, 31.282867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051369, 43.912716, 31.311007>,  <32.380146, 43.689770, 31.357904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051369, 43.912716, 31.311007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519999, -0.650353, 0.553752,
		0.232391, 0.516123, 0.824386,
		-0.821946, 0.557367, -0.117247,
		31.804785, 44.079926, 31.275833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110146, 43.692863, 32.009274>,  <32.380146, 43.689770, 31.357904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110146, 43.692863, 32.009274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809597, 43.781734, 31.760733>,  <31.629269, 43.835056, 31.611609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809597, 43.781734, 31.760733>,  <32.110146, 43.692863, 32.009274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809597, 43.781734, 31.760733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599838, -0.622401, 0.502803,
		-0.275019, 0.750502, 0.600925,
		-0.751371, 0.222177, -0.621352,
		31.584187, 43.848389, 31.574327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577127, 43.573418, 32.497623>,  <32.110146, 43.692863, 32.009274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577127, 43.573418, 32.497623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386871, 43.567520, 32.145817>,  <31.272718, 43.563980, 31.934732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386871, 43.567520, 32.145817>,  <31.577127, 43.573418, 32.497623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386871, 43.567520, 32.145817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526690, -0.796046, 0.298176,
		-0.704532, 0.605057, 0.370865,
		-0.475639, -0.014744, -0.879517,
		31.244181, 43.563099, 31.881962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870968, 43.485199, 32.676456>,  <31.577127, 43.573418, 32.497623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870968, 43.485199, 32.676456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928638, 43.355282, 32.302563>,  <30.963240, 43.277332, 32.078228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928638, 43.355282, 32.302563>,  <30.870968, 43.485199, 32.676456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928638, 43.355282, 32.302563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417507, -0.876375, 0.240114,
		-0.897163, 0.355639, -0.261954,
		0.144176, -0.324789, -0.934733,
		30.971891, 43.257847, 32.022144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349329, 42.970604, 32.618637>,  <30.870968, 43.485199, 32.676456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349329, 42.970604, 32.618637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594406, 42.904297, 32.309540>,  <30.741453, 42.864513, 32.124081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594406, 42.904297, 32.309540>,  <30.349329, 42.970604, 32.618637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594406, 42.904297, 32.309540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210916, -0.976590, 0.042264,
		-0.761658, 0.137089, -0.633311,
		0.612692, -0.165766, -0.772742,
		30.778214, 42.854568, 32.077717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965429, 42.597572, 32.079880>,  <30.349329, 42.970604, 32.618637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965429, 42.597572, 32.079880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345865, 42.497482, 32.007420>,  <30.574127, 42.437428, 31.963943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345865, 42.497482, 32.007420>,  <29.965429, 42.597572, 32.079880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345865, 42.497482, 32.007420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252207, -0.967594, 0.012392,
		-0.178382, 0.033902, -0.983377,
		0.951089, -0.250225, -0.181152,
		30.631191, 42.422413, 31.953074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010115, 42.018703, 31.555229>,  <29.965429, 42.597572, 32.079880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010115, 42.018703, 31.555229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369820, 41.994350, 31.728489>,  <30.585642, 41.979740, 31.832445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369820, 41.994350, 31.728489>,  <30.010115, 42.018703, 31.555229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369820, 41.994350, 31.728489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132144, -0.981808, 0.136347,
		0.416970, -0.179851, -0.890949,
		0.899263, -0.060881, 0.433151,
		30.639599, 41.976086, 31.858435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277205, 41.527935, 31.276644>,  <30.010115, 42.018703, 31.555229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277205, 41.527935, 31.276644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468058, 41.568344, 31.625845>,  <30.582569, 41.592590, 31.835365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468058, 41.568344, 31.625845>,  <30.277205, 41.527935, 31.276644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468058, 41.568344, 31.625845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146519, -0.970325, 0.192358,
		0.866531, -0.219692, -0.448174,
		0.477134, 0.101019, 0.873005,
		30.611198, 41.598648, 31.887747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583090, 40.858055, 31.252344>,  <30.277205, 41.527935, 31.276644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583090, 40.858055, 31.252344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614283, 41.006447, 31.622488>,  <30.632999, 41.095482, 31.844574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614283, 41.006447, 31.622488>,  <30.583090, 40.858055, 31.252344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614283, 41.006447, 31.622488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307184, -0.874087, 0.376311,
		0.948449, -0.313603, 0.045794,
		0.077984, 0.370979, 0.925361,
		30.637678, 41.117741, 31.900097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968218, 40.322910, 31.534073>,  <30.583090, 40.858055, 31.252344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968218, 40.322910, 31.534073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804295, 40.539227, 31.827904>,  <30.705940, 40.669014, 32.004204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804295, 40.539227, 31.827904>,  <30.968218, 40.322910, 31.534073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804295, 40.539227, 31.827904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258939, -0.841147, 0.474786,
		0.874648, 0.004360, 0.484739,
		-0.409807, 0.540788, 0.734579,
		30.681353, 40.701462, 32.048279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271568, 40.123131, 32.106945>,  <30.968218, 40.322910, 31.534073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271568, 40.123131, 32.106945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916895, 40.274296, 32.213505>,  <30.704090, 40.364994, 32.277443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916895, 40.274296, 32.213505>,  <31.271568, 40.123131, 32.106945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916895, 40.274296, 32.213505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184690, -0.817684, 0.545236,
		0.423886, 0.434251, 0.794825,
		-0.886685, 0.377914, 0.266403,
		30.650888, 40.387669, 32.293427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198471, 39.959637, 32.788982>,  <31.271568, 40.123131, 32.106945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198471, 39.959637, 32.788982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823391, 40.028263, 32.668129>,  <30.598343, 40.069439, 32.595615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823391, 40.028263, 32.668129>,  <31.198471, 39.959637, 32.788982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823391, 40.028263, 32.668129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311117, -0.801747, 0.510302,
		-0.154687, 0.572510, 0.805174,
		-0.937698, 0.171566, -0.302137,
		30.542082, 40.079735, 32.577488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777412, 39.872723, 33.466942>,  <31.198471, 39.959637, 32.788982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777412, 39.872723, 33.466942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537895, 39.814690, 33.151882>,  <30.394184, 39.779869, 32.962845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537895, 39.814690, 33.151882>,  <30.777412, 39.872723, 33.466942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537895, 39.814690, 33.151882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274121, -0.886933, 0.371762,
		-0.752532, 0.438521, 0.491320,
		-0.598793, -0.145082, -0.787653,
		30.358257, 39.771164, 32.915585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095003, 39.766014, 33.740543>,  <30.777412, 39.872723, 33.466942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095003, 39.766014, 33.740543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099205, 39.609516, 33.372452>,  <30.101727, 39.515617, 33.151596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099205, 39.609516, 33.372452>,  <30.095003, 39.766014, 33.740543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099205, 39.609516, 33.372452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249320, -0.892238, 0.376498,
		-0.968364, 0.225477, -0.106916,
		0.010503, -0.391244, -0.920227,
		30.102356, 39.492142, 33.096382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512888, 39.373802, 33.708038>,  <30.095003, 39.766014, 33.740543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512888, 39.373802, 33.708038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718977, 39.240692, 33.392113>,  <29.842630, 39.160828, 33.202557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718977, 39.240692, 33.392113>,  <29.512888, 39.373802, 33.708038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718977, 39.240692, 33.392113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441246, -0.893020, 0.088419,
		-0.734744, 0.302948, -0.606938,
		0.515222, -0.332774, -0.789815,
		29.873543, 39.140862, 33.155167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042076, 39.058872, 33.365246>,  <29.512888, 39.373802, 33.708038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042076, 39.058872, 33.365246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377565, 38.892063, 33.225170>,  <29.578859, 38.791977, 33.141125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377565, 38.892063, 33.225170>,  <29.042076, 39.058872, 33.365246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377565, 38.892063, 33.225170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391439, -0.908760, 0.144674,
		-0.378574, 0.015738, -0.925437,
		0.838723, -0.417022, -0.350194,
		29.629183, 38.766956, 33.120113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863356, 38.563889, 32.923679>,  <29.042076, 39.058872, 33.365246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863356, 38.563889, 32.923679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237247, 38.432156, 32.977070>,  <29.461582, 38.353115, 33.009102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237247, 38.432156, 32.977070>,  <28.863356, 38.563889, 32.923679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237247, 38.432156, 32.977070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341091, -0.936866, 0.077062,
		0.099668, -0.117559, -0.988052,
		0.934732, -0.329335, 0.133474,
		29.517668, 38.333355, 33.017113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909668, 37.994274, 32.579330>,  <28.863356, 38.563889, 32.923679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909668, 37.994274, 32.579330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201294, 37.967487, 32.851795>,  <29.376268, 37.951416, 33.015274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201294, 37.967487, 32.851795>,  <28.909668, 37.994274, 32.579330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201294, 37.967487, 32.851795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170547, -0.981586, 0.086035,
		0.662858, -0.178896, -0.727059,
		0.729063, -0.066969, 0.681163,
		29.420013, 37.947395, 33.056145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401165, 37.383335, 32.419933>,  <28.909668, 37.994274, 32.579330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401165, 37.383335, 32.419933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459024, 37.436867, 32.812092>,  <29.493740, 37.468987, 33.047386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459024, 37.436867, 32.812092>,  <29.401165, 37.383335, 32.419933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459024, 37.436867, 32.812092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094389, -0.988160, 0.120959,
		0.984971, 0.075042, -0.155567,
		0.144648, 0.133825, 0.980392,
		29.502419, 37.477013, 33.106209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943180, 36.996670, 32.629826>,  <29.401165, 37.383335, 32.419933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943180, 36.996670, 32.629826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786354, 37.078773, 32.988525>,  <29.692259, 37.128036, 33.203743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786354, 37.078773, 32.988525>,  <29.943180, 36.996670, 32.629826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786354, 37.078773, 32.988525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256641, -0.911684, 0.320885,
		0.883413, 0.355950, 0.304763,
		-0.392067, 0.205259, 0.896745,
		29.668734, 37.140350, 33.257549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380617, 36.703430, 33.162109>,  <29.943180, 36.996670, 32.629826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380617, 36.703430, 33.162109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022360, 36.762009, 33.330097>,  <29.807405, 36.797153, 33.430889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022360, 36.762009, 33.330097>,  <30.380617, 36.703430, 33.162109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022360, 36.762009, 33.330097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015632, -0.954022, 0.299329,
		0.444498, 0.261527, 0.856753,
		-0.895644, 0.146444, 0.419972,
		29.753666, 36.805943, 33.456089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456366, 36.349419, 33.869034>,  <30.380617, 36.703430, 33.162109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456366, 36.349419, 33.869034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064333, 36.383099, 33.797089>,  <29.829113, 36.403305, 33.753922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064333, 36.383099, 33.797089>,  <30.456366, 36.349419, 33.869034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064333, 36.383099, 33.797089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124917, -0.965442, 0.228731,
		-0.154386, 0.246642, 0.956730,
		-0.980082, 0.084199, -0.179861,
		29.770308, 36.408360, 33.743130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975479, 36.790928, 33.952423>,  <30.456366, 36.349419, 33.869034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975479, 36.790928, 33.952423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096342, 36.860062, 34.327408>,  <31.168859, 36.901543, 34.552399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096342, 36.860062, 34.327408>,  <30.975479, 36.790928, 33.952423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096342, 36.860062, 34.327408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751771, -0.647877, -0.122867,
		0.586123, 0.741880, -0.325691,
		0.302160, 0.172830, 0.937459,
		31.186991, 36.911911, 34.608646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692261, 37.080688, 34.099442>,  <30.975479, 36.790928, 33.952423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692261, 37.080688, 34.099442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556326, 36.840504, 34.388981>,  <31.474766, 36.696392, 34.562706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556326, 36.840504, 34.388981>,  <31.692261, 37.080688, 34.099442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556326, 36.840504, 34.388981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756177, -0.632081, -0.169323,
		0.559203, 0.489815, 0.668859,
		-0.339837, -0.600461, 0.723849,
		31.454374, 36.660366, 34.606136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367783, 36.763237, 34.377804>,  <31.692261, 37.080688, 34.099442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367783, 36.763237, 34.377804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041309, 36.538586, 34.432076>,  <31.845425, 36.403793, 34.464638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041309, 36.538586, 34.432076>,  <32.367783, 36.763237, 34.377804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041309, 36.538586, 34.432076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499403, -0.803832, -0.323189,
		0.290579, -0.196022, 0.936557,
		-0.816186, -0.561632, 0.135683,
		31.796453, 36.370094, 34.472782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611153, 36.240768, 34.798279>,  <32.367783, 36.763237, 34.377804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611153, 36.240768, 34.798279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279076, 36.135559, 34.601669>,  <32.079830, 36.072433, 34.483704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279076, 36.135559, 34.601669>,  <32.611153, 36.240768, 34.798279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279076, 36.135559, 34.601669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456004, -0.827595, -0.327333,
		-0.320685, -0.495886, 0.807006,
		-0.830194, -0.263027, -0.491523,
		32.030018, 36.056652, 34.454212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307774, 35.617489, 35.061771>,  <32.611153, 36.240768, 34.798279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307774, 35.617489, 35.061771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264233, 35.674809, 34.668301>,  <32.238110, 35.709202, 34.432217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264233, 35.674809, 34.668301>,  <32.307774, 35.617489, 35.061771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264233, 35.674809, 34.668301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545399, -0.818704, -0.179618,
		-0.831078, -0.556047, 0.010962,
		-0.108851, 0.143298, -0.983675,
		32.231579, 35.717796, 34.373199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940830, 35.440426, 35.491276>,  <32.307774, 35.617489, 35.061771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940830, 35.440426, 35.491276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881649, 35.056355, 35.586079>,  <32.846138, 34.825912, 35.642960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881649, 35.056355, 35.586079>,  <32.940830, 35.440426, 35.491276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881649, 35.056355, 35.586079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372477, 0.167903, 0.912726,
		-0.916171, 0.223324, 0.332801,
		-0.147955, -0.960174, 0.237011,
		32.837261, 34.768303, 35.657181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612564, 35.354919, 36.138023>,  <32.940830, 35.440426, 35.491276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612564, 35.354919, 36.138023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800621, 35.006348, 36.082047>,  <32.913456, 34.797207, 36.048458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800621, 35.006348, 36.082047>,  <32.612564, 35.354919, 36.138023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800621, 35.006348, 36.082047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406429, 0.073010, 0.910761,
		-0.783443, -0.485063, 0.388498,
		0.470141, -0.871426, -0.139945,
		32.941662, 34.744919, 36.040062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476875, 34.950623, 36.652817>,  <32.612564, 35.354919, 36.138023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476875, 34.950623, 36.652817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823589, 34.820408, 36.501713>,  <33.031616, 34.742279, 36.411049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823589, 34.820408, 36.501713>,  <32.476875, 34.950623, 36.652817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823589, 34.820408, 36.501713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448657, 0.178396, 0.875718,
		-0.217689, -0.928547, 0.300687,
		0.866786, -0.325539, -0.377764,
		33.083626, 34.722748, 36.388382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765381, 34.427551, 37.125473>,  <32.476875, 34.950623, 36.652817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765381, 34.427551, 37.125473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076702, 34.570072, 36.918667>,  <33.263493, 34.655582, 36.794582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076702, 34.570072, 36.918667>,  <32.765381, 34.427551, 37.125473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076702, 34.570072, 36.918667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456521, 0.244217, 0.855539,
		0.431091, -0.901892, 0.027416,
		0.778299, 0.356299, -0.517012,
		33.310192, 34.676960, 36.763561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419231, 34.101711, 37.369007>,  <32.765381, 34.427551, 37.125473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419231, 34.101711, 37.369007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530750, 34.434891, 37.177814>,  <33.597660, 34.634800, 37.063099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530750, 34.434891, 37.177814>,  <33.419231, 34.101711, 37.369007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530750, 34.434891, 37.177814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641341, 0.208976, 0.738248,
		0.714810, -0.512371, -0.475943,
		0.278797, 0.832949, -0.477983,
		33.614388, 34.684776, 37.034420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076431, 33.998394, 37.387447>,  <33.419231, 34.101711, 37.369007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076431, 33.998394, 37.387447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014301, 34.381351, 37.290070>,  <33.977024, 34.611126, 37.231644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014301, 34.381351, 37.290070>,  <34.076431, 33.998394, 37.387447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014301, 34.381351, 37.290070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664285, 0.283625, 0.691580,
		0.731163, -0.054292, -0.680039,
		-0.155329, 0.957397, -0.243441,
		33.967701, 34.668571, 37.217037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666431, 34.221542, 37.282051>,  <34.076431, 33.998394, 37.387447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666431, 34.221542, 37.282051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432453, 34.536449, 37.360073>,  <34.292065, 34.725395, 37.406887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432453, 34.536449, 37.360073>,  <34.666431, 34.221542, 37.282051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432453, 34.536449, 37.360073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643671, 0.304272, 0.702215,
		0.493482, 0.536309, -0.684725,
		-0.584947, 0.787268, 0.195054,
		34.256969, 34.772629, 37.418591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105644, 34.745335, 37.356430>,  <34.666431, 34.221542, 37.282051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105644, 34.745335, 37.356430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784206, 34.869759, 37.559399>,  <34.591343, 34.944412, 37.681179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784206, 34.869759, 37.559399>,  <35.105644, 34.745335, 37.356430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784206, 34.869759, 37.559399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593673, 0.358418, 0.720478,
		0.042247, 0.880213, -0.472694,
		-0.803596, 0.311064, 0.507417,
		34.543129, 34.963078, 37.711624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273643, 35.440384, 37.495365>,  <35.105644, 34.745335, 37.356430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273643, 35.440384, 37.495365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972794, 35.361328, 37.746841>,  <34.792286, 35.313892, 37.897728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972794, 35.361328, 37.746841>,  <35.273643, 35.440384, 37.495365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972794, 35.361328, 37.746841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551066, 0.334587, 0.764446,
		-0.361439, 0.921406, -0.142736,
		-0.752123, -0.197644, 0.628688,
		34.747158, 35.302036, 37.935448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360973, 35.993401, 38.028786>,  <35.273643, 35.440384, 37.495365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360973, 35.993401, 38.028786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144543, 35.708336, 38.207378>,  <35.014683, 35.537296, 38.314533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144543, 35.708336, 38.207378>,  <35.360973, 35.993401, 38.028786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144543, 35.708336, 38.207378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485723, 0.168566, 0.857706,
		-0.686517, 0.680952, 0.254950,
		-0.541080, -0.712664, 0.446477,
		34.982220, 35.494537, 38.341320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098362, 36.268787, 38.650848>,  <35.360973, 35.993401, 38.028786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098362, 36.268787, 38.650848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063568, 35.874580, 38.709072>,  <35.042690, 35.638058, 38.744007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063568, 35.874580, 38.709072>,  <35.098362, 36.268787, 38.650848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063568, 35.874580, 38.709072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343641, 0.107458, 0.932933,
		-0.935064, 0.131169, 0.329317,
		-0.086984, -0.985519, 0.145555,
		35.037472, 35.578926, 38.752739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777290, 36.267117, 39.275284>,  <35.098362, 36.268787, 38.650848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777290, 36.267117, 39.275284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906349, 35.890018, 39.241493>,  <34.983784, 35.663761, 39.221218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906349, 35.890018, 39.241493>,  <34.777290, 36.267117, 39.275284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906349, 35.890018, 39.241493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174394, -0.028516, 0.984263,
		-0.930315, -0.332303, 0.155207,
		0.322647, -0.942742, -0.084481,
		35.003143, 35.607197, 39.216148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392857, 35.855553, 39.668007>,  <34.777290, 36.267117, 39.275284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392857, 35.855553, 39.668007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742153, 35.660866, 39.658527>,  <34.951729, 35.544056, 39.652840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742153, 35.660866, 39.658527>,  <34.392857, 35.855553, 39.668007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742153, 35.660866, 39.658527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033056, -0.107690, 0.993635,
		-0.486169, -0.866898, -0.110127,
		0.873239, -0.486715, -0.023700,
		35.004124, 35.514851, 39.651417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260769, 35.261211, 40.138081>,  <34.392857, 35.855553, 39.668007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260769, 35.261211, 40.138081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658409, 35.255844, 40.095020>,  <34.896992, 35.252625, 40.069183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658409, 35.255844, 40.095020>,  <34.260769, 35.261211, 40.138081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658409, 35.255844, 40.095020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105805, -0.099194, 0.989427,
		-0.023953, -0.994978, -0.097189,
		0.994098, -0.013417, -0.107650,
		34.956638, 35.251820, 40.062725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506527, 34.678898, 40.456467>,  <34.260769, 35.261211, 40.138081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506527, 34.678898, 40.456467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835888, 34.905613, 40.445461>,  <35.033504, 35.041641, 40.438858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835888, 34.905613, 40.445461>,  <34.506527, 34.678898, 40.456467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835888, 34.905613, 40.445461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192443, -0.233301, 0.953172,
		0.533826, -0.790141, -0.301175,
		0.823405, 0.566787, -0.027515,
		35.082909, 35.075649, 40.437206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059185, 34.280807, 40.781311>,  <34.506527, 34.678898, 40.456467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059185, 34.280807, 40.781311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209042, 34.648533, 40.829479>,  <35.298954, 34.869167, 40.858379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209042, 34.648533, 40.829479>,  <35.059185, 34.280807, 40.781311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209042, 34.648533, 40.829479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182815, -0.200574, 0.962470,
		0.908968, -0.338567, -0.243208,
		0.374642, 0.919316, 0.120420,
		35.321434, 34.924328, 40.865604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570873, 34.197178, 41.291340>,  <35.059185, 34.280807, 40.781311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570873, 34.197178, 41.291340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483093, 34.586906, 41.311478>,  <35.430424, 34.820744, 41.323559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483093, 34.586906, 41.311478>,  <35.570873, 34.197178, 41.291340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483093, 34.586906, 41.311478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090420, -0.071691, 0.993320,
		0.971424, 0.213433, 0.103831,
		-0.219451, 0.974324, 0.050344,
		35.417259, 34.879204, 41.326580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875343, 34.357738, 41.819454>,  <35.570873, 34.197178, 41.291340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875343, 34.357738, 41.819454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620907, 34.664692, 41.787151>,  <35.468246, 34.848862, 41.767769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620907, 34.664692, 41.787151>,  <35.875343, 34.357738, 41.819454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620907, 34.664692, 41.787151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176497, -0.042808, 0.983370,
		0.751161, 0.639763, 0.162669,
		-0.636087, 0.767379, -0.080760,
		35.430080, 34.894905, 41.762924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014545, 34.749630, 42.385761>,  <35.875343, 34.357738, 41.819454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014545, 34.749630, 42.385761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636276, 34.842476, 42.294704>,  <35.409313, 34.898182, 42.240070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636276, 34.842476, 42.294704>,  <36.014545, 34.749630, 42.385761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636276, 34.842476, 42.294704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226720, 0.031028, 0.973466,
		0.233017, 0.972194, 0.023282,
		-0.945675, 0.232112, -0.227646,
		35.352573, 34.912109, 42.226410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820065, 35.210258, 42.874863>,  <36.014545, 34.749630, 42.385761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820065, 35.210258, 42.874863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484356, 35.041977, 42.737099>,  <35.282928, 34.941006, 42.654438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484356, 35.041977, 42.737099>,  <35.820065, 35.210258, 42.874863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484356, 35.041977, 42.737099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392294, 0.029964, 0.919352,
		-0.376459, 0.906701, -0.190189,
		-0.839276, -0.420708, -0.344414,
		35.232574, 34.915764, 42.633774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254982, 35.661167, 43.180927>,  <35.820065, 35.210258, 42.874863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254982, 35.661167, 43.180927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082176, 35.321457, 43.059536>,  <34.978493, 35.117630, 42.986702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082176, 35.321457, 43.059536>,  <35.254982, 35.661167, 43.180927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082176, 35.321457, 43.059536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390241, -0.127335, 0.911865,
		-0.813066, 0.512367, -0.276411,
		-0.432013, -0.849274, -0.303479,
		34.952572, 35.066673, 42.968491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497692, 35.713047, 43.391918>,  <35.254982, 35.661167, 43.180927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497692, 35.713047, 43.391918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567329, 35.321712, 43.347126>,  <34.609112, 35.086910, 43.320251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567329, 35.321712, 43.347126>,  <34.497692, 35.713047, 43.391918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567329, 35.321712, 43.347126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454997, -0.180769, 0.871952,
		-0.873309, -0.100854, -0.476613,
		0.174097, -0.978341, -0.111979,
		34.619560, 35.028210, 43.313534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906189, 35.486092, 43.588963>,  <34.497692, 35.713047, 43.391918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906189, 35.486092, 43.588963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159134, 35.177433, 43.616333>,  <34.310902, 34.992237, 43.632755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159134, 35.177433, 43.616333>,  <33.906189, 35.486092, 43.588963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159134, 35.177433, 43.616333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477468, -0.318676, 0.818822,
		-0.610033, -0.550466, -0.569954,
		0.632365, -0.771643, 0.068427,
		34.348843, 34.945942, 43.636860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516579, 34.853756, 43.848732>,  <33.906189, 35.486092, 43.588963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516579, 34.853756, 43.848732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903503, 34.764843, 43.897568>,  <34.135658, 34.711494, 43.926868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903503, 34.764843, 43.897568>,  <33.516579, 34.853756, 43.848732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903503, 34.764843, 43.897568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196558, -0.352922, 0.914774,
		-0.160244, -0.908867, -0.385075,
		0.967309, -0.222277, 0.122091,
		34.193695, 34.698158, 43.934196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375633, 34.230778, 44.214523>,  <33.516579, 34.853756, 43.848732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375633, 34.230778, 44.214523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762344, 34.322872, 44.258930>,  <33.994373, 34.378128, 44.285576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762344, 34.322872, 44.258930>,  <33.375633, 34.230778, 44.214523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762344, 34.322872, 44.258930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051618, -0.249519, 0.966993,
		0.250340, -0.940601, -0.229345,
		0.966781, 0.230239, 0.111016,
		34.052380, 34.391945, 44.292236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800987, 33.659401, 44.376732>,  <33.375633, 34.230778, 44.214523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800987, 33.659401, 44.376732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045219, 33.949203, 44.504662>,  <34.191757, 34.123085, 44.581417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045219, 33.949203, 44.504662>,  <33.800987, 33.659401, 44.376732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045219, 33.949203, 44.504662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061675, -0.446112, 0.892849,
		0.789552, -0.525428, -0.317070,
		0.610577, 0.724506, 0.319823,
		34.228394, 34.166553, 44.600609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393482, 33.384491, 44.773697>,  <33.800987, 33.659401, 44.376732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393482, 33.384491, 44.773697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410637, 33.757473, 44.917194>,  <34.420929, 33.981262, 45.003292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410637, 33.757473, 44.917194>,  <34.393482, 33.384491, 44.773697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410637, 33.757473, 44.917194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010603, -0.359476, 0.933094,
		0.999024, -0.036211, -0.025303,
		0.042884, 0.932452, 0.358741,
		34.423504, 34.037209, 45.024818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986012, 33.511280, 45.263371>,  <34.393482, 33.384491, 44.773697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986012, 33.511280, 45.263371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687546, 33.762943, 45.350464>,  <34.508469, 33.913940, 45.402721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687546, 33.762943, 45.350464>,  <34.986012, 33.511280, 45.263371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687546, 33.762943, 45.350464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069714, -0.251408, 0.965367,
		0.662105, 0.735499, 0.143730,
		-0.746161, 0.629155, 0.217733,
		34.463696, 33.951691, 45.415783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176563, 33.636642, 45.964809>,  <34.986012, 33.511280, 45.263371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176563, 33.636642, 45.964809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812737, 33.798279, 45.926014>,  <34.594440, 33.895260, 45.902737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812737, 33.798279, 45.926014>,  <35.176563, 33.636642, 45.964809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812737, 33.798279, 45.926014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205413, -0.234288, 0.950218,
		0.361248, 0.884207, 0.296105,
		-0.909563, 0.404088, -0.096991,
		34.539867, 33.919506, 45.896915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054108, 33.978436, 46.541061>,  <35.176563, 33.636642, 45.964809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054108, 33.978436, 46.541061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680668, 33.952896, 46.400028>,  <34.456604, 33.937572, 46.315407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680668, 33.952896, 46.400028>,  <35.054108, 33.978436, 46.541061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680668, 33.952896, 46.400028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325823, -0.258213, 0.909486,
		-0.149108, 0.963976, 0.220265,
		-0.933599, -0.063844, -0.352587,
		34.400589, 33.933743, 46.294250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592457, 34.426517, 47.018639>,  <35.054108, 33.978436, 46.541061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592457, 34.426517, 47.018639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400654, 34.121849, 46.844311>,  <34.285572, 33.939049, 46.739716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400654, 34.121849, 46.844311>,  <34.592457, 34.426517, 47.018639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400654, 34.121849, 46.844311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043182, -0.475557, 0.878625,
		-0.876477, 0.440123, 0.195140,
		-0.479503, -0.761668, -0.435820,
		34.256802, 33.893349, 46.713566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137993, 34.251606, 47.520359>,  <34.592457, 34.426517, 47.018639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137993, 34.251606, 47.520359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135765, 33.928566, 47.284477>,  <34.134426, 33.734741, 47.142948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135765, 33.928566, 47.284477>,  <34.137993, 34.251606, 47.520359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135765, 33.928566, 47.284477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035476, -0.589184, 0.807219,
		-0.999355, 0.025420, -0.025366,
		-0.005574, -0.807599, -0.589706,
		34.134094, 33.686287, 47.107567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606976, 33.810925, 47.882454>,  <34.137993, 34.251606, 47.520359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606976, 33.810925, 47.882454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832901, 33.586975, 47.639957>,  <33.968456, 33.452606, 47.494461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832901, 33.586975, 47.639957>,  <33.606976, 33.810925, 47.882454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832901, 33.586975, 47.639957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163661, -0.644050, 0.747271,
		-0.808830, -0.521283, -0.272135,
		0.564808, -0.559878, -0.606241,
		34.002342, 33.419010, 47.458084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275993, 33.051804, 47.868866>,  <33.606976, 33.810925, 47.882454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275993, 33.051804, 47.868866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662819, 33.051167, 47.767056>,  <33.894913, 33.050785, 47.705971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662819, 33.051167, 47.767056>,  <33.275993, 33.051804, 47.868866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662819, 33.051167, 47.767056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166389, -0.752771, 0.636907,
		-0.192617, -0.658280, -0.727713,
		0.967064, -0.001596, -0.254527,
		33.952938, 33.050686, 47.690697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458313, 32.381660, 48.037430>,  <33.275993, 33.051804, 47.868866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458313, 32.381660, 48.037430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829002, 32.521847, 47.983242>,  <34.051418, 32.605957, 47.950729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829002, 32.521847, 47.983242>,  <33.458313, 32.381660, 48.037430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829002, 32.521847, 47.983242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366964, -0.766789, 0.526661,
		0.080699, -0.537784, -0.839212,
		0.926728, 0.350462, -0.135468,
		34.107021, 32.626984, 47.942600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867573, 31.848188, 47.694389>,  <33.458313, 32.381660, 48.037430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867573, 31.848188, 47.694389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109756, 32.096169, 47.894020>,  <34.255066, 32.244957, 48.013798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109756, 32.096169, 47.894020>,  <33.867573, 31.848188, 47.694389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109756, 32.096169, 47.894020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342999, -0.769115, 0.539272,
		0.718169, -0.155326, -0.678312,
		0.605463, 0.619948, 0.499078,
		34.291397, 32.282154, 48.043743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331642, 31.371473, 47.991413>,  <33.867573, 31.848188, 47.694389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331642, 31.371473, 47.991413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458824, 31.698629, 48.183228>,  <34.535133, 31.894924, 48.298317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458824, 31.698629, 48.183228>,  <34.331642, 31.371473, 47.991413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458824, 31.698629, 48.183228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413572, -0.574775, 0.706110,
		0.853147, -0.026192, -0.521013,
		0.317960, 0.817892, 0.479535,
		34.554211, 31.943996, 48.327087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920620, 31.106333, 48.380802>,  <34.331642, 31.371473, 47.991413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920620, 31.106333, 48.380802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829567, 31.440226, 48.581364>,  <34.774937, 31.640562, 48.701702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829567, 31.440226, 48.581364>,  <34.920620, 31.106333, 48.380802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829567, 31.440226, 48.581364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255853, -0.445558, 0.857914,
		0.939533, 0.323574, -0.112146,
		-0.227631, 0.834732, 0.501404,
		34.761276, 31.690645, 48.731785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379936, 31.160887, 48.919353>,  <34.920620, 31.106333, 48.380802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379936, 31.160887, 48.919353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082611, 31.400024, 49.039394>,  <34.904217, 31.543507, 49.111420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082611, 31.400024, 49.039394>,  <35.379936, 31.160887, 48.919353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082611, 31.400024, 49.039394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081370, -0.364489, 0.927646,
		0.663975, 0.713952, 0.222283,
		-0.743314, 0.597846, 0.300106,
		34.859615, 31.579378, 49.129425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631405, 31.407803, 49.588249>,  <35.379936, 31.160887, 48.919353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631405, 31.407803, 49.588249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234695, 31.458389, 49.580315>,  <34.996670, 31.488741, 49.575554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234695, 31.458389, 49.580315>,  <35.631405, 31.407803, 49.588249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234695, 31.458389, 49.580315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062810, -0.345679, 0.936248,
		0.111547, 0.929791, 0.350778,
		-0.991772, 0.126468, -0.019840,
		34.937164, 31.496330, 49.574364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398720, 31.923336, 50.183228>,  <35.631405, 31.407803, 49.588249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398720, 31.923336, 50.183228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069527, 31.719656, 50.082500>,  <34.872009, 31.597448, 50.022064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069527, 31.719656, 50.082500>,  <35.398720, 31.923336, 50.183228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069527, 31.719656, 50.082500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202511, -0.151175, 0.967541,
		-0.530738, 0.847268, 0.021297,
		-0.822986, -0.509198, -0.251815,
		34.822632, 31.566896, 50.006954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807625, 32.202591, 50.481159>,  <35.398720, 31.923336, 50.183228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807625, 32.202591, 50.481159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631920, 31.855608, 50.387726>,  <34.526497, 31.647419, 50.331665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631920, 31.855608, 50.387726>,  <34.807625, 32.202591, 50.481159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631920, 31.855608, 50.387726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422678, -0.029871, 0.905787,
		-0.792710, 0.496614, -0.353533,
		-0.439267, -0.867457, -0.233587,
		34.500141, 31.595371, 50.317650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059326, 32.272980, 50.642101>,  <34.807625, 32.202591, 50.481159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059326, 32.272980, 50.642101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202034, 31.899988, 50.664742>,  <34.287659, 31.676193, 50.678326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202034, 31.899988, 50.664742>,  <34.059326, 32.272980, 50.642101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202034, 31.899988, 50.664742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353317, -0.078598, 0.932196,
		-0.864803, -0.352575, -0.357502,
		0.356768, -0.932477, 0.056598,
		34.309063, 31.620245, 50.681721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403542, 32.653717, 51.070938>,  <34.059326, 32.272980, 50.642101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403542, 32.653717, 51.070938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015221, 32.669415, 50.976273>,  <33.782230, 32.678833, 50.919472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015221, 32.669415, 50.976273>,  <34.403542, 32.653717, 51.070938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015221, 32.669415, 50.976273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090900, -0.973145, 0.211486,
		-0.222011, 0.226823, 0.948294,
		-0.970798, 0.039248, -0.236668,
		33.723980, 32.681190, 50.905273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930473, 32.462589, 51.596123>,  <34.403542, 32.653717, 51.070938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930473, 32.462589, 51.596123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747574, 32.372707, 51.251930>,  <33.637833, 32.318779, 51.045414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747574, 32.372707, 51.251930>,  <33.930473, 32.462589, 51.596123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747574, 32.372707, 51.251930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047206, -0.960056, 0.275796,
		-0.888084, 0.166728, 0.428379,
		-0.457251, -0.224708, -0.860481,
		33.610397, 32.305294, 50.993786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306782, 32.055874, 51.733864>,  <33.930473, 32.462589, 51.596123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306782, 32.055874, 51.733864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441044, 31.959478, 51.369610>,  <33.521603, 31.901640, 51.151058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441044, 31.959478, 51.369610>,  <33.306782, 32.055874, 51.733864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441044, 31.959478, 51.369610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154670, -0.967700, 0.199082,
		-0.929200, 0.074026, -0.362088,
		0.335655, -0.240991, -0.910636,
		33.541740, 31.887180, 51.096420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743599, 31.622873, 51.426575>,  <33.306782, 32.055874, 51.733864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743599, 31.622873, 51.426575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108627, 31.559263, 51.275883>,  <33.327644, 31.521097, 51.185467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108627, 31.559263, 51.275883>,  <32.743599, 31.622873, 51.426575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108627, 31.559263, 51.275883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036481, -0.949271, 0.312337,
		-0.407285, -0.271287, -0.872080,
		0.912572, -0.159025, -0.376727,
		33.382401, 31.511557, 51.162865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833241, 30.841097, 51.205124>,  <32.743599, 31.622873, 51.426575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833241, 30.841097, 51.205124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210308, 30.974041, 51.217216>,  <33.436550, 31.053808, 51.224472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210308, 30.974041, 51.217216>,  <32.833241, 30.841097, 51.205124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210308, 30.974041, 51.217216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308060, -0.901412, 0.304228,
		0.128362, -0.277474, -0.952119,
		0.942667, 0.332361, 0.030228,
		33.493107, 31.073750, 51.226284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122658, 30.562696, 50.667210>,  <32.833241, 30.841097, 51.205124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122658, 30.562696, 50.667210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311596, 30.653061, 51.007999>,  <33.424961, 30.707279, 51.212471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311596, 30.653061, 51.007999>,  <33.122658, 30.562696, 50.667210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311596, 30.653061, 51.007999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056204, -0.972349, 0.226670,
		0.879619, -0.059183, -0.471983,
		0.472347, 0.225910, 0.851970,
		33.453300, 30.720835, 51.263592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519932, 30.000210, 50.643295>,  <33.122658, 30.562696, 50.667210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519932, 30.000210, 50.643295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481560, 30.170507, 51.003193>,  <33.458534, 30.272686, 51.219131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481560, 30.170507, 51.003193>,  <33.519932, 30.000210, 50.643295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481560, 30.170507, 51.003193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141844, -0.900535, 0.410995,
		0.985230, -0.088195, 0.146779,
		-0.095932, 0.425744, 0.899744,
		33.452782, 30.298231, 51.273117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164276, 29.802406, 51.102211>,  <33.519932, 30.000210, 50.643295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164276, 29.802406, 51.102211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834499, 29.858955, 51.321411>,  <33.636631, 29.892885, 51.452930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834499, 29.858955, 51.321411>,  <34.164276, 29.802406, 51.102211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834499, 29.858955, 51.321411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087077, -0.925079, 0.369658,
		0.559204, 0.352481, 0.750365,
		-0.824445, 0.141374, 0.548000,
		33.587166, 29.901367, 51.485809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306274, 29.077728, 50.960423>,  <34.164276, 29.802406, 51.102211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306274, 29.077728, 50.960423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158768, 28.713581, 50.885330>,  <34.070263, 28.495092, 50.840275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158768, 28.713581, 50.885330>,  <34.306274, 29.077728, 50.960423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158768, 28.713581, 50.885330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356322, 0.048090, -0.933125,
		0.858513, -0.411001, 0.306649,
		-0.368768, -0.910366, -0.187735,
		34.048138, 28.440472, 50.829010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910675, 28.502459, 50.793606>,  <34.306274, 29.077728, 50.960423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910675, 28.502459, 50.793606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547630, 28.478682, 50.627377>,  <34.329803, 28.464415, 50.527637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547630, 28.478682, 50.627377>,  <34.910675, 28.502459, 50.793606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547630, 28.478682, 50.627377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417341, -0.020624, -0.908516,
		0.045437, -0.998019, 0.043528,
		-0.907614, -0.059446, -0.415577,
		34.275345, 28.460848, 50.502705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745274, 27.861734, 50.393536>,  <34.910675, 28.502459, 50.793606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745274, 27.861734, 50.393536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568596, 28.188934, 50.246140>,  <34.462589, 28.385254, 50.157700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568596, 28.188934, 50.246140>,  <34.745274, 27.861734, 50.393536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568596, 28.188934, 50.246140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456376, -0.148762, -0.877263,
		-0.772419, -0.555649, -0.307609,
		-0.441690, 0.818000, -0.368492,
		34.436089, 28.434334, 50.135593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409840, 27.792501, 49.728397>,  <34.745274, 27.861734, 50.393536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409840, 27.792501, 49.728397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550751, 28.162628, 49.784527>,  <34.635296, 28.384705, 49.818207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550751, 28.162628, 49.784527>,  <34.409840, 27.792501, 49.728397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550751, 28.162628, 49.784527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396359, -0.011676, -0.918021,
		-0.847821, 0.379019, -0.370870,
		0.352278, 0.925315, 0.140328,
		34.656433, 28.440224, 49.826626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386837, 28.105211, 49.063591>,  <34.409840, 27.792501, 49.728397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386837, 28.105211, 49.063591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626610, 28.340240, 49.281006>,  <34.770473, 28.481258, 49.411457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626610, 28.340240, 49.281006>,  <34.386837, 28.105211, 49.063591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626610, 28.340240, 49.281006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408844, 0.359037, -0.839010,
		-0.688131, 0.725155, -0.025006,
		0.599435, 0.587573, 0.543540,
		34.806438, 28.516512, 49.444069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264549, 28.735476, 48.727810>,  <34.386837, 28.105211, 49.063591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264549, 28.735476, 48.727810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602001, 28.793810, 48.934505>,  <34.804474, 28.828810, 49.058521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602001, 28.793810, 48.934505>,  <34.264549, 28.735476, 48.727810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602001, 28.793810, 48.934505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393512, 0.486815, -0.779846,
		-0.365283, 0.861245, 0.353306,
		0.843633, 0.145834, 0.516735,
		34.855091, 28.837561, 49.089527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485340, 29.528646, 48.667027>,  <34.264549, 28.735476, 48.727810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485340, 29.528646, 48.667027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794788, 29.287760, 48.745869>,  <34.980457, 29.143229, 48.793175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794788, 29.287760, 48.745869>,  <34.485340, 29.528646, 48.667027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794788, 29.287760, 48.745869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492897, 0.376436, -0.784442,
		0.398204, 0.704013, 0.588048,
		0.773619, -0.602215, 0.197107,
		35.026875, 29.107096, 48.805000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063580, 29.944895, 48.766376>,  <34.485340, 29.528646, 48.667027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063580, 29.944895, 48.766376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200745, 29.586418, 48.653774>,  <35.283043, 29.371332, 48.586212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200745, 29.586418, 48.653774>,  <35.063580, 29.944895, 48.766376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200745, 29.586418, 48.653774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453251, 0.420341, -0.786051,
		0.822784, 0.141954, 0.550342,
		0.342915, -0.896193, -0.281509,
		35.303619, 29.317560, 48.569321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718521, 30.085472, 48.554783>,  <35.063580, 29.944895, 48.766376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718521, 30.085472, 48.554783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623013, 29.728640, 48.401329>,  <35.565708, 29.514540, 48.309258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623013, 29.728640, 48.401329>,  <35.718521, 30.085472, 48.554783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623013, 29.728640, 48.401329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421662, 0.260626, -0.868490,
		0.874750, -0.369138, 0.313926,
		-0.238775, -0.892083, -0.383634,
		35.551380, 29.461016, 48.286240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213184, 30.005234, 48.084114>,  <35.718521, 30.085472, 48.554783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213184, 30.005234, 48.084114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935001, 29.737930, 47.978458>,  <35.768089, 29.577549, 47.915066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935001, 29.737930, 47.978458>,  <36.213184, 30.005234, 48.084114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935001, 29.737930, 47.978458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225479, 0.146071, -0.963235,
		0.682272, -0.729448, 0.049092,
		-0.695459, -0.668258, -0.264135,
		35.726364, 29.537453, 47.899220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601364, 29.624569, 47.536320>,  <36.213184, 30.005234, 48.084114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601364, 29.624569, 47.536320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203941, 29.586855, 47.511143>,  <35.965488, 29.564226, 47.496037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203941, 29.586855, 47.511143>,  <36.601364, 29.624569, 47.536320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203941, 29.586855, 47.511143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068565, -0.057633, -0.995981,
		0.090279, -0.993876, 0.063726,
		-0.993553, -0.094285, -0.062942,
		35.905876, 29.558571, 47.492260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537338, 29.245001, 46.878384>,  <36.601364, 29.624569, 47.536320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537338, 29.245001, 46.878384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188271, 29.415482, 46.973713>,  <35.978828, 29.517771, 47.030910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188271, 29.415482, 46.973713>,  <36.537338, 29.245001, 46.878384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188271, 29.415482, 46.973713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121941, 0.282387, -0.951519,
		-0.472840, -0.859423, -0.194459,
		-0.872670, 0.426204, 0.238323,
		35.926468, 29.543343, 47.045208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050560, 28.984457, 46.419483>,  <36.537338, 29.245001, 46.878384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050560, 28.984457, 46.419483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905228, 29.338312, 46.536381>,  <35.818027, 29.550625, 46.606518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905228, 29.338312, 46.536381>,  <36.050560, 28.984457, 46.419483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905228, 29.338312, 46.536381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179393, 0.241382, -0.953705,
		-0.914228, -0.398932, 0.070998,
		-0.363326, 0.884640, 0.292244,
		35.796230, 29.603704, 46.624054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649876, 29.134983, 45.913837>,  <36.050560, 28.984457, 46.419483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649876, 29.134983, 45.913837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682644, 29.501097, 46.071594>,  <35.702305, 29.720764, 46.166248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682644, 29.501097, 46.071594>,  <35.649876, 29.134983, 45.913837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682644, 29.501097, 46.071594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223273, 0.402517, -0.887767,
		-0.971307, -0.015328, 0.237334,
		0.081923, 0.915284, 0.394390,
		35.707222, 29.775682, 46.189911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032372, 29.724052, 45.783592>,  <35.649876, 29.134983, 45.913837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032372, 29.724052, 45.783592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312374, 29.988764, 45.890953>,  <35.480377, 30.147591, 45.955368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312374, 29.988764, 45.890953>,  <35.032372, 29.724052, 45.783592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312374, 29.988764, 45.890953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219158, 0.556775, -0.801231,
		-0.679675, 0.502046, 0.534781,
		0.700008, 0.661779, 0.268399,
		35.522377, 30.187298, 45.971474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844917, 30.347506, 45.681458>,  <35.032372, 29.724052, 45.783592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844917, 30.347506, 45.681458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234245, 30.438519, 45.693325>,  <35.467842, 30.493126, 45.700443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234245, 30.438519, 45.693325>,  <34.844917, 30.347506, 45.681458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234245, 30.438519, 45.693325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078849, 0.453069, -0.887982,
		-0.215485, 0.861950, 0.458921,
		0.973319, 0.227532, 0.029666,
		35.526241, 30.506779, 45.702225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897011, 31.102686, 45.600082>,  <34.844917, 30.347506, 45.681458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897011, 31.102686, 45.600082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238747, 30.926600, 45.489586>,  <35.443790, 30.820948, 45.423286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238747, 30.926600, 45.489586>,  <34.897011, 31.102686, 45.600082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238747, 30.926600, 45.489586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016811, 0.507847, -0.861283,
		0.519439, 0.740474, 0.426475,
		0.854342, -0.440215, -0.276244,
		35.495049, 30.794535, 45.406712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207031, 31.684481, 45.423668>,  <34.897011, 31.102686, 45.600082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207031, 31.684481, 45.423668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408642, 31.385878, 45.249920>,  <35.529610, 31.206717, 45.145672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408642, 31.385878, 45.249920>,  <35.207031, 31.684481, 45.423668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408642, 31.385878, 45.249920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040728, 0.481827, -0.875319,
		0.862726, 0.458878, 0.212451,
		0.504029, -0.746508, -0.434374,
		35.559849, 31.161924, 45.119606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737820, 31.970755, 45.081070>,  <35.207031, 31.684481, 45.423668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737820, 31.970755, 45.081070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705803, 31.623953, 44.884338>,  <35.686592, 31.415873, 44.766300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705803, 31.623953, 44.884338>,  <35.737820, 31.970755, 45.081070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705803, 31.623953, 44.884338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015549, 0.494440, -0.869073,
		0.996670, -0.061918, -0.053058,
		-0.080046, -0.867004, -0.491830,
		35.681789, 31.363852, 44.736790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223034, 31.979422, 44.514076>,  <35.737820, 31.970755, 45.081070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223034, 31.979422, 44.514076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940281, 31.710814, 44.425190>,  <35.770630, 31.549648, 44.371857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940281, 31.710814, 44.425190>,  <36.223034, 31.979422, 44.514076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940281, 31.710814, 44.425190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140584, 0.441273, -0.886292,
		0.693221, -0.595263, -0.406332,
		-0.706881, -0.671521, -0.222215,
		35.728218, 31.509357, 44.358524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402863, 31.795101, 43.777008>,  <36.223034, 31.979422, 44.514076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402863, 31.795101, 43.777008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021870, 31.687284, 43.833759>,  <35.793274, 31.622595, 43.867809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021870, 31.687284, 43.833759>,  <36.402863, 31.795101, 43.777008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021870, 31.687284, 43.833759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220616, 0.289308, -0.931467,
		0.210022, -0.918504, -0.335025,
		-0.952481, -0.269540, 0.141875,
		35.736126, 31.606422, 43.876324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192387, 31.402691, 43.221989>,  <36.402863, 31.795101, 43.777008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192387, 31.402691, 43.221989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858765, 31.559629, 43.377129>,  <35.658592, 31.653791, 43.470211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858765, 31.559629, 43.377129>,  <36.192387, 31.402691, 43.221989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858765, 31.559629, 43.377129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255141, 0.349003, -0.901721,
		-0.489145, -0.851036, -0.190983,
		-0.834051, 0.392345, 0.387847,
		35.608551, 31.677334, 43.493484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799793, 31.247173, 42.681381>,  <36.192387, 31.402691, 43.221989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799793, 31.247173, 42.681381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593185, 31.498119, 42.914490>,  <35.469219, 31.648687, 43.054356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593185, 31.498119, 42.914490>,  <35.799793, 31.247173, 42.681381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593185, 31.498119, 42.914490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466341, 0.364693, -0.805931,
		-0.718145, -0.688049, 0.104195,
		-0.516521, 0.627365, 0.582768,
		35.438229, 31.686329, 43.089321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111931, 31.190834, 42.416031>,  <35.799793, 31.247173, 42.681381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111931, 31.190834, 42.416031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109283, 31.525238, 42.635502>,  <35.107697, 31.725880, 42.767185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109283, 31.525238, 42.635502>,  <35.111931, 31.190834, 42.416031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109283, 31.525238, 42.635502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471070, 0.481388, -0.739161,
		-0.882071, -0.263357, 0.390632,
		-0.006618, 0.836008, 0.548678,
		35.107300, 31.776041, 42.800106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479271, 31.433781, 42.404469>,  <35.111931, 31.190834, 42.416031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479271, 31.433781, 42.404469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711128, 31.752481, 42.472816>,  <34.850243, 31.943703, 42.513824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711128, 31.752481, 42.472816>,  <34.479271, 31.433781, 42.404469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711128, 31.752481, 42.472816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262194, 0.380897, -0.886664,
		-0.771535, 0.469149, 0.429689,
		0.579645, 0.796754, 0.170868,
		34.885021, 31.991508, 42.524078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199368, 31.871798, 42.133156>,  <34.479271, 31.433781, 42.404469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199368, 31.871798, 42.133156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536896, 32.082989, 42.171551>,  <34.739410, 32.209702, 42.194588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536896, 32.082989, 42.171551>,  <34.199368, 31.871798, 42.133156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536896, 32.082989, 42.171551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160548, 0.419061, -0.893651,
		-0.512051, 0.738668, 0.438376,
		0.843817, 0.527976, 0.095989,
		34.790039, 32.241383, 42.200348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035591, 32.501221, 41.808151>,  <34.199368, 31.871798, 42.133156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035591, 32.501221, 41.808151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433422, 32.460094, 41.814377>,  <34.672119, 32.435417, 41.818111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433422, 32.460094, 41.814377>,  <34.035591, 32.501221, 41.808151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433422, 32.460094, 41.814377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055652, 0.399871, -0.914880,
		0.087843, 0.910786, 0.403425,
		0.994579, -0.102818, 0.015561,
		34.731796, 32.429249, 41.819046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125011, 33.101891, 41.487293>,  <34.035591, 32.501221, 41.808151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125011, 33.101891, 41.487293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438129, 32.855709, 41.450508>,  <34.625999, 32.708000, 41.428436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438129, 32.855709, 41.450508>,  <34.125011, 33.101891, 41.487293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438129, 32.855709, 41.450508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001455, 0.149587, -0.988747,
		0.622281, 0.773851, 0.117991,
		0.782793, -0.615450, -0.091959,
		34.672966, 32.671074, 41.422920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660267, 33.472095, 41.083935>,  <34.125011, 33.101891, 41.487293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660267, 33.472095, 41.083935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788635, 33.095264, 41.044937>,  <34.865658, 32.869167, 41.021538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788635, 33.095264, 41.044937>,  <34.660267, 33.472095, 41.083935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788635, 33.095264, 41.044937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034736, 0.114580, -0.992806,
		0.946469, 0.315226, 0.069495,
		0.320921, -0.942074, -0.097496,
		34.884911, 32.812641, 41.015690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180225, 33.571117, 40.650883>,  <34.660267, 33.472095, 41.083935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180225, 33.571117, 40.650883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071701, 33.186138, 40.647060>,  <35.006588, 32.955151, 40.644768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071701, 33.186138, 40.647060>,  <35.180225, 33.571117, 40.650883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071701, 33.186138, 40.647060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045815, -0.002999, -0.998945,
		0.961401, -0.271463, 0.044908,
		-0.271311, -0.962444, -0.009553,
		34.990307, 32.897404, 40.644196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644821, 33.297646, 40.102737>,  <35.180225, 33.571117, 40.650883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644821, 33.297646, 40.102737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369328, 33.014183, 40.163986>,  <35.204029, 32.844105, 40.200737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369328, 33.014183, 40.163986>,  <35.644821, 33.297646, 40.102737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369328, 33.014183, 40.163986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109634, -0.310574, -0.944206,
		0.716672, -0.633524, 0.291597,
		-0.688739, -0.708655, 0.153124,
		35.162704, 32.801586, 40.209923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910587, 32.615887, 39.882221>,  <35.644821, 33.297646, 40.102737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910587, 32.615887, 39.882221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511402, 32.637184, 39.868172>,  <35.271893, 32.649963, 39.859741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511402, 32.637184, 39.868172>,  <35.910587, 32.615887, 39.882221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511402, 32.637184, 39.868172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024244, -0.192647, -0.980968,
		-0.058990, -0.979823, 0.190964,
		-0.997964, 0.053238, -0.035119,
		35.212013, 32.653156, 39.857635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637291, 31.966900, 39.578129>,  <35.910587, 32.615887, 39.882221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637291, 31.966900, 39.578129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328590, 32.215233, 39.523033>,  <35.143372, 32.364231, 39.489975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328590, 32.215233, 39.523033>,  <35.637291, 31.966900, 39.578129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328590, 32.215233, 39.523033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044122, -0.268350, -0.962310,
		-0.634397, -0.736583, 0.234491,
		-0.771747, 0.620833, -0.137740,
		35.097065, 32.401482, 39.481712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158218, 31.578920, 39.163345>,  <35.637291, 31.966900, 39.578129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158218, 31.578920, 39.163345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071308, 31.965538, 39.108818>,  <35.019161, 32.197510, 39.076103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071308, 31.965538, 39.108818>,  <35.158218, 31.578920, 39.163345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071308, 31.965538, 39.108818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032381, -0.146712, -0.988649,
		-0.975573, -0.210395, 0.063174,
		-0.217275, 0.966545, -0.136315,
		35.006126, 32.255501, 39.067924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674763, 31.603720, 38.695770>,  <35.158218, 31.578920, 39.163345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674763, 31.603720, 38.695770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798042, 31.982237, 38.656689>,  <34.872009, 32.209347, 38.633240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798042, 31.982237, 38.656689>,  <34.674763, 31.603720, 38.695770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798042, 31.982237, 38.656689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093755, -0.071989, -0.992989,
		-0.946692, 0.315196, 0.066533,
		0.308196, 0.946292, -0.097702,
		34.890503, 32.266125, 38.627377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123970, 31.995522, 38.328476>,  <34.674763, 31.603720, 38.695770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123970, 31.995522, 38.328476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453491, 32.222130, 38.320400>,  <34.651203, 32.358093, 38.315556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453491, 32.222130, 38.320400>,  <34.123970, 31.995522, 38.328476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453491, 32.222130, 38.320400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124919, 0.146687, -0.981263,
		-0.552943, 0.810888, 0.191610,
		0.823801, 0.566519, -0.020186,
		34.700630, 32.392086, 38.314346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924835, 32.444248, 37.816910>,  <34.123970, 31.995522, 38.328476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924835, 32.444248, 37.816910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316166, 32.493855, 37.883244>,  <34.550964, 32.523621, 37.923046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316166, 32.493855, 37.883244>,  <33.924835, 32.444248, 37.816910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316166, 32.493855, 37.883244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132953, 0.237816, -0.962168,
		-0.158767, 0.963360, 0.216172,
		0.978323, 0.124020, 0.165839,
		34.609661, 32.531059, 37.932995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193119, 32.964123, 37.417236>,  <33.924835, 32.444248, 37.816910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193119, 32.964123, 37.417236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533237, 32.772514, 37.504452>,  <34.737309, 32.657547, 37.556782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533237, 32.772514, 37.504452>,  <34.193119, 32.964123, 37.417236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533237, 32.772514, 37.504452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333307, 0.169491, -0.927458,
		0.407321, 0.861283, 0.303779,
		0.850292, -0.479025, 0.218035,
		34.788326, 32.628807, 37.569862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717110, 33.435833, 37.315304>,  <34.193119, 32.964123, 37.417236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717110, 33.435833, 37.315304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884201, 33.074585, 37.275555>,  <34.984455, 32.857834, 37.251705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884201, 33.074585, 37.275555>,  <34.717110, 33.435833, 37.315304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884201, 33.074585, 37.275555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371790, 0.269704, -0.888275,
		0.829021, 0.334112, 0.448434,
		0.417728, -0.903122, -0.099370,
		35.009518, 32.803650, 37.245743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525932, 33.503548, 37.262817>,  <34.717110, 33.435833, 37.315304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525932, 33.503548, 37.262817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397308, 33.173107, 37.077709>,  <35.320133, 32.974842, 36.966644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397308, 33.173107, 37.077709>,  <35.525932, 33.503548, 37.262817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397308, 33.173107, 37.077709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391054, 0.329237, -0.859465,
		0.862367, -0.457334, 0.217183,
		-0.321558, -0.826104, -0.462766,
		35.300842, 32.925278, 36.938881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966240, 33.558842, 36.780560>,  <35.525932, 33.503548, 37.262817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966240, 33.558842, 36.780560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700153, 33.287979, 36.654732>,  <35.540501, 33.125462, 36.579235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700153, 33.287979, 36.654732>,  <35.966240, 33.558842, 36.780560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700153, 33.287979, 36.654732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298837, 0.144630, -0.943281,
		0.684242, -0.721489, 0.106149,
		-0.665214, -0.677153, -0.314570,
		35.500587, 33.084835, 36.560360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200951, 34.144699, 37.134983>,  <35.966240, 33.558842, 36.780560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200951, 34.144699, 37.134983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405102, 33.883656, 36.910980>,  <36.527592, 33.727028, 36.776577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405102, 33.883656, 36.910980>,  <36.200951, 34.144699, 37.134983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405102, 33.883656, 36.910980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404535, -0.392455, 0.826033,
		-0.758857, -0.648134, 0.063703,
		0.510380, -0.652611, -0.560010,
		36.558216, 33.687874, 36.742977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195076, 33.518997, 37.482994>,  <36.200951, 34.144699, 37.134983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195076, 33.518997, 37.482994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526325, 33.502754, 37.259361>,  <36.725075, 33.493008, 37.125183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526325, 33.502754, 37.259361>,  <36.195076, 33.518997, 37.482994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526325, 33.502754, 37.259361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505570, -0.376678, 0.776217,
		-0.242110, -0.925454, -0.291407,
		0.828120, -0.040604, -0.559079,
		36.774761, 33.490574, 37.091637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450191, 32.879078, 37.573212>,  <36.195076, 33.518997, 37.482994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450191, 32.879078, 37.573212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767464, 33.076893, 37.431057>,  <36.957829, 33.195580, 37.345764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767464, 33.076893, 37.431057>,  <36.450191, 32.879078, 37.573212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767464, 33.076893, 37.431057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573959, -0.412009, 0.707686,
		0.203552, -0.765301, -0.610639,
		0.793182, 0.494533, -0.355387,
		37.005417, 33.225254, 37.324440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926067, 32.372227, 37.461681>,  <36.450191, 32.879078, 37.573212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926067, 32.372227, 37.461681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128559, 32.712513, 37.518261>,  <37.250053, 32.916683, 37.552208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128559, 32.712513, 37.518261>,  <36.926067, 32.372227, 37.461681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128559, 32.712513, 37.518261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647120, -0.483140, 0.589755,
		0.570055, -0.207017, -0.795098,
		0.506233, 0.850717, 0.141452,
		37.280430, 32.967728, 37.560696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613964, 32.195179, 37.391880>,  <36.926067, 32.372227, 37.461681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613964, 32.195179, 37.391880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644234, 32.555359, 37.563210>,  <37.662395, 32.771469, 37.666008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644234, 32.555359, 37.563210>,  <37.613964, 32.195179, 37.391880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644234, 32.555359, 37.563210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721172, -0.346068, 0.600123,
		0.688610, 0.263482, -0.675569,
		0.075671, 0.900452, 0.428322,
		37.666935, 32.825493, 37.691708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321560, 32.311279, 37.385277>,  <37.613964, 32.195179, 37.391880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321560, 32.311279, 37.385277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180264, 32.544563, 37.677876>,  <38.095486, 32.684532, 37.853436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180264, 32.544563, 37.677876>,  <38.321560, 32.311279, 37.385277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180264, 32.544563, 37.677876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795807, -0.223760, 0.562692,
		0.491848, 0.780895, -0.385083,
		-0.353237, 0.583211, 0.731497,
		38.074291, 32.719528, 37.897324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851093, 32.593868, 37.725437>,  <38.321560, 32.311279, 37.385277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851093, 32.593868, 37.725437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546799, 32.610558, 37.984524>,  <38.364220, 32.620571, 38.139977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546799, 32.610558, 37.984524>,  <38.851093, 32.593868, 37.725437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546799, 32.610558, 37.984524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607593, -0.305192, 0.733272,
		0.228271, 0.951376, 0.206822,
		-0.760738, 0.041721, 0.647716,
		38.318577, 32.623074, 38.178837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199757, 32.886051, 38.180740>,  <38.851093, 32.593868, 37.725437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199757, 32.886051, 38.180740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861305, 32.732353, 38.328480>,  <38.658234, 32.640133, 38.417122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861305, 32.732353, 38.328480>,  <39.199757, 32.886051, 38.180740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861305, 32.732353, 38.328480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498784, -0.326672, 0.802808,
		-0.187824, 0.863503, 0.468065,
		-0.846131, -0.384249, 0.369344,
		38.607468, 32.617077, 38.439281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290035, 32.903431, 38.917862>,  <39.199757, 32.886051, 38.180740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290035, 32.903431, 38.917862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989124, 32.640163, 38.905888>,  <38.808578, 32.482201, 38.898701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989124, 32.640163, 38.905888>,  <39.290035, 32.903431, 38.917862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989124, 32.640163, 38.905888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342691, -0.429689, 0.835422,
		-0.562715, 0.618205, 0.548793,
		-0.752273, -0.658171, -0.029940,
		38.763443, 32.442711, 38.896904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012840, 32.877869, 39.657108>,  <39.290035, 32.903431, 38.917862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012840, 32.877869, 39.657108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887283, 32.543743, 39.476562>,  <38.811947, 32.343269, 39.368237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887283, 32.543743, 39.476562>,  <39.012840, 32.877869, 39.657108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887283, 32.543743, 39.476562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114515, -0.505225, 0.855356,
		-0.942527, 0.216804, 0.254243,
		-0.313895, -0.835310, -0.451361,
		38.793114, 32.293152, 39.341156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469250, 32.529613, 40.156120>,  <39.012840, 32.877869, 39.657108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469250, 32.529613, 40.156120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620304, 32.256680, 39.905743>,  <38.710938, 32.092918, 39.755516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620304, 32.256680, 39.905743>,  <38.469250, 32.529613, 40.156120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620304, 32.256680, 39.905743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132278, -0.629308, 0.765816,
		-0.916455, -0.372001, -0.147393,
		0.377640, -0.682339, -0.625940,
		38.733597, 32.051979, 39.717960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091347, 31.969387, 40.259064>,  <38.469250, 32.529613, 40.156120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091347, 31.969387, 40.259064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443237, 31.876474, 40.093113>,  <38.654373, 31.820726, 39.993542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443237, 31.876474, 40.093113>,  <38.091347, 31.969387, 40.259064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443237, 31.876474, 40.093113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138909, -0.708931, 0.691463,
		-0.454736, -0.665929, -0.591399,
		0.879726, -0.232283, -0.414880,
		38.707153, 31.806789, 39.968647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998741, 31.231565, 40.179661>,  <38.091347, 31.969387, 40.259064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998741, 31.231565, 40.179661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393959, 31.253771, 40.122131>,  <38.631088, 31.267094, 40.087612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393959, 31.253771, 40.122131>,  <37.998741, 31.231565, 40.179661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393959, 31.253771, 40.122131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141728, -0.694198, 0.705692,
		-0.060665, -0.717640, -0.693767,
		0.988045, 0.055516, -0.143824,
		38.690372, 31.270426, 40.078983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248161, 30.583773, 40.029873>,  <37.998741, 31.231565, 40.179661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248161, 30.583773, 40.029873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565948, 30.781225, 40.171379>,  <38.756622, 30.899696, 40.256283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565948, 30.781225, 40.171379>,  <38.248161, 30.583773, 40.029873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565948, 30.781225, 40.171379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022565, -0.606105, 0.795064,
		0.606888, -0.623669, -0.492669,
		0.794467, 0.493632, 0.353765,
		38.804287, 30.929316, 40.277508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745754, 30.055172, 40.390759>,  <38.248161, 30.583773, 40.029873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745754, 30.055172, 40.390759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855541, 30.405893, 40.548687>,  <38.921413, 30.616325, 40.643444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855541, 30.405893, 40.548687>,  <38.745754, 30.055172, 40.390759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855541, 30.405893, 40.548687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074340, -0.428706, 0.900381,
		0.958718, -0.217776, -0.182848,
		0.274470, 0.876804, 0.394818,
		38.937881, 30.668934, 40.667133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318584, 29.854856, 40.682167>,  <38.745754, 30.055172, 40.390759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318584, 29.854856, 40.682167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162811, 30.186171, 40.843304>,  <39.069347, 30.384960, 40.939987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162811, 30.186171, 40.843304>,  <39.318584, 29.854856, 40.682167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162811, 30.186171, 40.843304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210966, -0.345526, 0.914388,
		0.896567, 0.441081, -0.040181,
		-0.389436, 0.828287, 0.402840,
		39.045979, 30.434656, 40.964157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747181, 29.952057, 41.248623>,  <39.318584, 29.854856, 40.682167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747181, 29.952057, 41.248623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411308, 30.163084, 41.300175>,  <39.209785, 30.289700, 41.331108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411308, 30.163084, 41.300175>,  <39.747181, 29.952057, 41.248623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411308, 30.163084, 41.300175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122357, -0.414993, 0.901560,
		0.529119, 0.741252, 0.413012,
		-0.839680, 0.527567, 0.128883,
		39.159405, 30.321354, 41.338840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786598, 30.267033, 41.993938>,  <39.747181, 29.952057, 41.248623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786598, 30.267033, 41.993938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398277, 30.274126, 41.898247>,  <39.165283, 30.278381, 41.840832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398277, 30.274126, 41.898247>,  <39.786598, 30.267033, 41.993938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398277, 30.274126, 41.898247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239880, -0.076023, 0.967821,
		-0.001024, 0.996948, 0.078057,
		-0.970802, 0.017734, -0.239225,
		39.107037, 30.279446, 41.826481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475040, 30.668385, 42.522900>,  <39.786598, 30.267033, 41.993938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475040, 30.668385, 42.522900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188557, 30.453348, 42.344894>,  <39.016666, 30.324326, 42.238091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188557, 30.453348, 42.344894>,  <39.475040, 30.668385, 42.522900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188557, 30.453348, 42.344894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473558, -0.094028, 0.875730,
		-0.512628, 0.837947, -0.187237,
		-0.716209, -0.537591, -0.445017,
		38.973694, 30.292070, 42.211388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906296, 30.856142, 42.965603>,  <39.475040, 30.668385, 42.522900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906296, 30.856142, 42.965603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801254, 30.520321, 42.775364>,  <38.738232, 30.318829, 42.661221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801254, 30.520321, 42.775364>,  <38.906296, 30.856142, 42.965603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801254, 30.520321, 42.775364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646546, -0.212780, 0.732600,
		-0.716254, 0.499878, -0.486932,
		-0.262602, -0.839551, -0.475598,
		38.722473, 30.268456, 42.632683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200863, 30.791210, 43.107811>,  <38.906296, 30.856142, 42.965603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200863, 30.791210, 43.107811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324062, 30.424805, 43.005009>,  <38.397984, 30.204962, 42.943325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324062, 30.424805, 43.005009>,  <38.200863, 30.791210, 43.107811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324062, 30.424805, 43.005009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478840, -0.382687, 0.790103,
		-0.822100, -0.120285, -0.556492,
		0.307999, -0.916015, -0.257010,
		38.416462, 30.150000, 42.927906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625107, 30.332130, 43.228989>,  <38.200863, 30.791210, 43.107811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625107, 30.332130, 43.228989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939655, 30.086910, 43.198536>,  <38.128384, 29.939779, 43.180264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939655, 30.086910, 43.198536>,  <37.625107, 30.332130, 43.228989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939655, 30.086910, 43.198536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200453, -0.369794, 0.907232,
		-0.584331, -0.698158, -0.413682,
		0.786369, -0.613048, -0.076135,
		38.175568, 29.902996, 43.175697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285225, 29.735491, 43.447727>,  <37.625107, 30.332130, 43.228989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285225, 29.735491, 43.447727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682930, 29.723005, 43.488659>,  <37.921551, 29.715513, 43.513218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682930, 29.723005, 43.488659>,  <37.285225, 29.735491, 43.447727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682930, 29.723005, 43.488659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106657, -0.213877, 0.971020,
		-0.008422, -0.976362, -0.215979,
		0.994260, -0.031213, 0.102334,
		37.981209, 29.713640, 43.519360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442406, 29.147982, 43.880856>,  <37.285225, 29.735491, 43.447727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442406, 29.147982, 43.880856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769020, 29.375525, 43.920189>,  <37.964989, 29.512051, 43.943790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769020, 29.375525, 43.920189>,  <37.442406, 29.147982, 43.880856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769020, 29.375525, 43.920189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029902, -0.211785, 0.976859,
		0.576517, -0.794701, -0.189940,
		0.816538, 0.568856, 0.098335,
		38.013981, 29.546181, 43.949688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163467, 28.837677, 44.252026>,  <37.442406, 29.147982, 43.880856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163467, 28.837677, 44.252026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136196, 29.229712, 44.326626>,  <38.119835, 29.464931, 44.371387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136196, 29.229712, 44.326626>,  <38.163467, 28.837677, 44.252026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136196, 29.229712, 44.326626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126186, -0.176964, 0.976095,
		0.989661, 0.090081, -0.111608,
		-0.068177, 0.980086, 0.186502,
		38.115742, 29.523737, 44.382576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197643, 28.805086, 44.939354>,  <38.163467, 28.837677, 44.252026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197643, 28.805086, 44.939354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190506, 29.199615, 44.873814>,  <38.186222, 29.436333, 44.834492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190506, 29.199615, 44.873814>,  <38.197643, 28.805086, 44.939354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190506, 29.199615, 44.873814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173812, 0.164440, 0.970953,
		0.984617, -0.011154, -0.174369,
		-0.017843, 0.986324, -0.163849,
		38.185154, 29.495512, 44.824657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751278, 29.025082, 45.270973>,  <38.197643, 28.805086, 44.939354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751278, 29.025082, 45.270973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489445, 29.325171, 45.233688>,  <38.332344, 29.505224, 45.211319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489445, 29.325171, 45.233688>,  <38.751278, 29.025082, 45.270973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489445, 29.325171, 45.233688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112827, 0.218865, 0.969210,
		0.747522, 0.623913, -0.227910,
		-0.654584, 0.750220, -0.093212,
		38.293068, 29.550236, 45.205723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105148, 29.569717, 45.586937>,  <38.751278, 29.025082, 45.270973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105148, 29.569717, 45.586937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714050, 29.653631, 45.585659>,  <38.479393, 29.703979, 45.584892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714050, 29.653631, 45.585659>,  <39.105148, 29.569717, 45.586937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714050, 29.653631, 45.585659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040957, 0.205772, 0.977742,
		0.205772, 0.955849, -0.209785,
		-0.977742, 0.209785, -0.003193,
		38.420727, 29.716566, 45.584702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046722, 30.176298, 45.953690>,  <39.105148, 29.569717, 45.586937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046722, 30.176298, 45.953690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681618, 30.016933, 45.989777>,  <38.462555, 29.921314, 46.011429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681618, 30.016933, 45.989777>,  <39.046722, 30.176298, 45.953690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681618, 30.016933, 45.989777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003179, 0.213908, 0.976849,
		-0.408485, 0.891915, -0.193980,
		-0.912760, -0.398411, 0.090213,
		38.407791, 29.897409, 46.016842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659389, 30.609352, 46.374092>,  <39.046722, 30.176298, 45.953690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659389, 30.609352, 46.374092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458210, 30.265234, 46.407421>,  <38.337502, 30.058764, 46.427418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458210, 30.265234, 46.407421>,  <38.659389, 30.609352, 46.374092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458210, 30.265234, 46.407421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055334, 0.128248, 0.990197,
		-0.862546, 0.493404, -0.112105,
		-0.502944, -0.860294, 0.083318,
		38.307327, 30.007145, 46.432415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258373, 30.754963, 46.930851>,  <38.659389, 30.609352, 46.374092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258373, 30.754963, 46.930851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230427, 30.356400, 46.911709>,  <38.213661, 30.117262, 46.900223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230427, 30.356400, 46.911709>,  <38.258373, 30.754963, 46.930851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230427, 30.356400, 46.911709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105521, -0.055087, 0.992890,
		-0.991960, 0.064317, 0.108990,
		-0.069864, -0.996408, -0.047857,
		38.209469, 30.057478, 46.897350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682381, 30.488657, 47.500423>,  <38.258373, 30.754963, 46.930851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682381, 30.488657, 47.500423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950001, 30.220446, 47.372192>,  <38.110573, 30.059519, 47.295254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950001, 30.220446, 47.372192>,  <37.682381, 30.488657, 47.500423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950001, 30.220446, 47.372192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240946, -0.212351, 0.947023,
		-0.703079, -0.710845, 0.019488,
		0.669048, -0.670527, -0.320575,
		38.150715, 30.019287, 47.276020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572788, 29.934395, 47.911495>,  <37.682381, 30.488657, 47.500423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572788, 29.934395, 47.911495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940552, 29.842524, 47.783787>,  <38.161209, 29.787401, 47.707161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940552, 29.842524, 47.783787>,  <37.572788, 29.934395, 47.911495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940552, 29.842524, 47.783787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257252, -0.262863, 0.929906,
		-0.297510, -0.937096, -0.182591,
		0.919407, -0.229684, -0.319274,
		38.216373, 29.773621, 47.688004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667526, 29.318356, 48.189896>,  <37.572788, 29.934395, 47.911495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667526, 29.318356, 48.189896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040852, 29.428930, 48.098244>,  <38.264847, 29.495275, 48.043251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040852, 29.428930, 48.098244>,  <37.667526, 29.318356, 48.189896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040852, 29.428930, 48.098244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289320, -0.201087, 0.935873,
		0.212634, -0.939759, -0.267656,
		0.933317, 0.276436, -0.229133,
		38.320847, 29.511862, 48.029503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123562, 28.686602, 48.344372>,  <37.667526, 29.318356, 48.189896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123562, 28.686602, 48.344372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349583, 29.016598, 48.348438>,  <38.485195, 29.214596, 48.350880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349583, 29.016598, 48.348438>,  <38.123562, 28.686602, 48.344372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349583, 29.016598, 48.348438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287664, -0.208551, 0.934749,
		0.773280, -0.525259, -0.355163,
		0.565055, 0.824990, 0.010170,
		38.519100, 29.264095, 48.351490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660675, 28.498531, 48.702446>,  <38.123562, 28.686602, 48.344372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660675, 28.498531, 48.702446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735439, 28.891314, 48.713932>,  <38.780300, 29.126984, 48.720821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735439, 28.891314, 48.713932>,  <38.660675, 28.498531, 48.702446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735439, 28.891314, 48.713932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385084, -0.100124, 0.917434,
		0.903755, -0.160424, -0.396851,
		0.186913, 0.981957, 0.028711,
		38.791512, 29.185900, 48.722546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365578, 28.564592, 48.857994>,  <38.660675, 28.498531, 48.702446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365578, 28.564592, 48.857994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206242, 28.920843, 48.945728>,  <39.110638, 29.134594, 48.998371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206242, 28.920843, 48.945728>,  <39.365578, 28.564592, 48.857994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206242, 28.920843, 48.945728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450699, -0.018216, 0.892490,
		0.798870, 0.454373, -0.394147,
		-0.398343, 0.890625, 0.219338,
		39.086739, 29.188030, 49.011528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897820, 28.975117, 49.057598>,  <39.365578, 28.564592, 48.857994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897820, 28.975117, 49.057598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566860, 29.111298, 49.236263>,  <39.368286, 29.193007, 49.343460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566860, 29.111298, 49.236263>,  <39.897820, 28.975117, 49.057598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566860, 29.111298, 49.236263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503799, 0.098474, 0.858189,
		0.248186, 0.935091, -0.252996,
		-0.827399, 0.340450, 0.446659,
		39.318642, 29.213432, 49.370262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126789, 29.585716, 49.439060>,  <39.897820, 28.975117, 49.057598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126789, 29.585716, 49.439060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799500, 29.405319, 49.581669>,  <39.603127, 29.297081, 49.667233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799500, 29.405319, 49.581669>,  <40.126789, 29.585716, 49.439060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799500, 29.405319, 49.581669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434818, -0.079805, 0.896975,
		-0.376079, 0.888952, 0.261399,
		-0.818228, -0.450994, 0.356520,
		39.554031, 29.270021, 49.688625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056664, 29.838017, 50.194099>,  <40.126789, 29.585716, 49.439060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056664, 29.838017, 50.194099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337864, 30.071709, 50.356316>,  <40.506584, 30.211924, 50.453644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337864, 30.071709, 50.356316>,  <40.056664, 29.838017, 50.194099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337864, 30.071709, 50.356316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338836, 0.226207, -0.913247,
		-0.625284, 0.779425, -0.038936,
		0.703000, 0.584232, 0.405541,
		40.548763, 30.246979, 50.477978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956184, 30.425571, 49.839157>,  <40.056664, 29.838017, 50.194099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956184, 30.425571, 49.839157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331867, 30.412228, 49.975853>,  <40.557278, 30.404221, 50.057869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331867, 30.412228, 49.975853>,  <39.956184, 30.425571, 49.839157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331867, 30.412228, 49.975853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329093, 0.371386, -0.868199,
		-0.097954, 0.927879, 0.359785,
		0.939203, -0.033359, 0.341737,
		40.613628, 30.402220, 50.078373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134159, 31.080856, 49.688442>,  <39.956184, 30.425571, 49.839157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134159, 31.080856, 49.688442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457287, 30.855076, 49.756348>,  <40.651165, 30.719608, 49.797092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457287, 30.855076, 49.756348>,  <40.134159, 31.080856, 49.688442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457287, 30.855076, 49.756348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410592, 0.332239, -0.849136,
		0.422892, 0.755654, 0.500149,
		0.807822, -0.564450, 0.169764,
		40.699635, 30.685741, 49.807278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623577, 31.572905, 49.692753>,  <40.134159, 31.080856, 49.688442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623577, 31.572905, 49.692753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803581, 31.224564, 49.613647>,  <40.911583, 31.015558, 49.566185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803581, 31.224564, 49.613647>,  <40.623577, 31.572905, 49.692753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803581, 31.224564, 49.613647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329696, 0.367819, -0.869489,
		0.829937, 0.326075, 0.452637,
		0.450006, -0.870853, -0.197761,
		40.938583, 30.963308, 49.554317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367626, 31.648823, 49.550163>,  <40.623577, 31.572905, 49.692753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367626, 31.648823, 49.550163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297611, 31.291468, 49.384647>,  <41.255604, 31.077055, 49.285339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297611, 31.291468, 49.384647>,  <41.367626, 31.648823, 49.550163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297611, 31.291468, 49.384647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457472, 0.298357, -0.837677,
		0.871827, -0.335922, 0.356476,
		-0.175037, -0.893386, -0.413791,
		41.245098, 31.023451, 49.260509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986664, 31.469061, 49.245354>,  <41.367626, 31.648823, 49.550163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986664, 31.469061, 49.245354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734272, 31.220736, 49.059254>,  <41.582836, 31.071741, 48.947594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734272, 31.220736, 49.059254>,  <41.986664, 31.469061, 49.245354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734272, 31.220736, 49.059254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382090, 0.273250, -0.882803,
		0.675187, -0.734796, 0.064793,
		-0.630975, -0.620814, -0.465253,
		41.544979, 31.034491, 48.919678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359943, 31.050541, 48.616032>,  <41.986664, 31.469061, 49.245354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359943, 31.050541, 48.616032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963715, 31.068975, 48.564430>,  <41.725979, 31.080036, 48.533470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963715, 31.068975, 48.564430>,  <42.359943, 31.050541, 48.616032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963715, 31.068975, 48.564430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124508, -0.089776, -0.988149,
		-0.057116, -0.994895, 0.083192,
		-0.990574, 0.046082, -0.129000,
		41.666542, 31.082802, 48.525730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307076, 30.613728, 48.050175>,  <42.359943, 31.050541, 48.616032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307076, 30.613728, 48.050175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963051, 30.816801, 48.070408>,  <41.756638, 30.938644, 48.082550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963051, 30.816801, 48.070408>,  <42.307076, 30.613728, 48.050175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963051, 30.816801, 48.070408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054868, 0.190614, -0.980130,
		-0.507239, -0.840192, -0.191794,
		-0.860057, 0.507684, 0.050587,
		41.705032, 30.969107, 48.085583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947392, 30.396490, 47.449295>,  <42.307076, 30.613728, 48.050175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947392, 30.396490, 47.449295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762383, 30.730932, 47.567280>,  <41.651379, 30.931599, 47.638069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762383, 30.730932, 47.567280>,  <41.947392, 30.396490, 47.449295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762383, 30.730932, 47.567280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058372, 0.303246, -0.951123,
		-0.884685, -0.457131, -0.091452,
		-0.462520, 0.836106, 0.294961,
		41.623627, 30.981764, 47.655769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439335, 30.524628, 47.025993>,  <41.947392, 30.396490, 47.449295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439335, 30.524628, 47.025993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513523, 30.893013, 47.163067>,  <41.558037, 31.114044, 47.245312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513523, 30.893013, 47.163067>,  <41.439335, 30.524628, 47.025993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513523, 30.893013, 47.163067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001040, 0.348914, -0.937154,
		-0.982648, 0.173462, 0.065672,
		0.185474, 0.920961, 0.342680,
		41.569164, 31.169302, 47.265869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956551, 30.969505, 46.720306>,  <41.439335, 30.524628, 47.025993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956551, 30.969505, 46.720306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241924, 31.231476, 46.819973>,  <41.413147, 31.388659, 46.879772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241924, 31.231476, 46.819973>,  <40.956551, 30.969505, 46.720306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241924, 31.231476, 46.819973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088352, 0.436825, -0.895197,
		-0.695134, 0.616647, 0.369508,
		0.713431, 0.654928, 0.249170,
		41.455952, 31.427954, 46.894726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712727, 31.596798, 46.376183>,  <40.956551, 30.969505, 46.720306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712727, 31.596798, 46.376183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097610, 31.666466, 46.459911>,  <41.328541, 31.708267, 46.510151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097610, 31.666466, 46.459911>,  <40.712727, 31.596798, 46.376183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097610, 31.666466, 46.459911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135934, 0.358855, -0.923442,
		-0.235955, 0.916999, 0.321617,
		0.962210, 0.174172, 0.209325,
		41.386272, 31.718718, 46.522709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872566, 32.330891, 46.181751>,  <40.712727, 31.596798, 46.376183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872566, 32.330891, 46.181751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205505, 32.109196, 46.182846>,  <41.405270, 31.976177, 46.183502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205505, 32.109196, 46.182846>,  <40.872566, 32.330891, 46.181751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205505, 32.109196, 46.182846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251131, 0.372739, -0.893308,
		0.494089, 0.744233, 0.449437,
		0.832352, -0.554241, 0.002734,
		41.455212, 31.942923, 46.183666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412773, 32.792038, 46.080551>,  <40.872566, 32.330891, 46.181751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412773, 32.792038, 46.080551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529156, 32.422352, 45.981621>,  <41.598988, 32.200539, 45.922264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529156, 32.422352, 45.981621>,  <41.412773, 32.792038, 46.080551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529156, 32.422352, 45.981621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288266, 0.331186, -0.898453,
		0.912274, 0.190119, 0.362782,
		0.290961, -0.924214, -0.247327,
		41.616444, 32.145088, 45.907421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061634, 32.887554, 45.728352>,  <41.412773, 32.792038, 46.080551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061634, 32.887554, 45.728352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913399, 32.547138, 45.579544>,  <41.824459, 32.342888, 45.490261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913399, 32.547138, 45.579544>,  <42.061634, 32.887554, 45.728352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913399, 32.547138, 45.579544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181282, 0.326560, -0.927629,
		0.910934, -0.411209, 0.033259,
		-0.370588, -0.851038, -0.372019,
		41.802223, 32.291828, 45.467937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258110, 32.910542, 45.012173>,  <42.061634, 32.887554, 45.728352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258110, 32.910542, 45.012173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985401, 32.618073, 45.002586>,  <41.821777, 32.442593, 44.996834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985401, 32.618073, 45.002586>,  <42.258110, 32.910542, 45.012173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985401, 32.618073, 45.002586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217425, 0.233803, -0.947661,
		0.698507, -0.640878, -0.318376,
		-0.681772, -0.731172, -0.023970,
		41.780869, 32.398720, 44.995396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342800, 32.659893, 44.372654>,  <42.258110, 32.910542, 45.012173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342800, 32.659893, 44.372654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995956, 32.488049, 44.473495>,  <41.787849, 32.384941, 44.534000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995956, 32.488049, 44.473495>,  <42.342800, 32.659893, 44.372654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995956, 32.488049, 44.473495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352743, 0.172243, -0.919731,
		0.351704, -0.886434, -0.300896,
		-0.867108, -0.429612, 0.252105,
		41.735825, 32.359165, 44.549126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244099, 32.088089, 43.895565>,  <42.342800, 32.659893, 44.372654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244099, 32.088089, 43.895565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880863, 32.198509, 44.021534>,  <41.662922, 32.264763, 44.097115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880863, 32.198509, 44.021534>,  <42.244099, 32.088089, 43.895565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880863, 32.198509, 44.021534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316004, 0.041779, -0.947838,
		-0.274813, -0.960233, 0.049296,
		-0.908086, 0.276056, 0.314919,
		41.608437, 32.281326, 44.116009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724892, 31.559082, 43.705872>,  <42.244099, 32.088089, 43.895565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724892, 31.559082, 43.705872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545593, 31.914333, 43.746471>,  <41.438015, 32.127483, 43.770832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545593, 31.914333, 43.746471>,  <41.724892, 31.559082, 43.705872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545593, 31.914333, 43.746471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337601, -0.063060, -0.939175,
		-0.827708, -0.455247, 0.328099,
		-0.448247, 0.888129, 0.101497,
		41.411118, 32.180771, 43.776920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058907, 31.421438, 43.392136>,  <41.724892, 31.559082, 43.705872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058907, 31.421438, 43.392136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060349, 31.820694, 43.416470>,  <41.061214, 32.060249, 43.431068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060349, 31.820694, 43.416470>,  <41.058907, 31.421438, 43.392136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060349, 31.820694, 43.416470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259863, 0.059681, -0.963800,
		-0.965639, -0.012332, 0.259595,
		0.003607, 0.998142, 0.060835,
		41.061432, 32.120136, 43.434719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402245, 31.668108, 43.203144>,  <41.058907, 31.421438, 43.392136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402245, 31.668108, 43.203144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637096, 31.981127, 43.120296>,  <40.778008, 32.168938, 43.070587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637096, 31.981127, 43.120296>,  <40.402245, 31.668108, 43.203144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637096, 31.981127, 43.120296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421287, 0.076905, -0.903661,
		-0.691230, 0.617821, 0.374831,
		0.587128, 0.782549, -0.207120,
		40.813236, 32.215893, 43.058159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112343, 32.051582, 42.605579>,  <40.402245, 31.668108, 43.203144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112343, 32.051582, 42.605579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471165, 32.228329, 42.602978>,  <40.686459, 32.334377, 42.601418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471165, 32.228329, 42.602978>,  <40.112343, 32.051582, 42.605579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471165, 32.228329, 42.602978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057949, 0.103020, -0.992990,
		-0.438099, 0.891146, 0.118020,
		0.897057, 0.441867, -0.006508,
		40.740280, 32.360889, 42.601025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107853, 32.814007, 42.328411>,  <40.112343, 32.051582, 42.605579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107853, 32.814007, 42.328411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473209, 32.664696, 42.263443>,  <40.692421, 32.575108, 42.224461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473209, 32.664696, 42.263443>,  <40.107853, 32.814007, 42.328411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473209, 32.664696, 42.263443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101770, 0.176939, -0.978946,
		0.394162, 0.910688, 0.123626,
		0.913389, -0.373282, -0.162424,
		40.747227, 32.552711, 42.214714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333649, 33.208981, 41.693787>,  <40.107853, 32.814007, 42.328411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333649, 33.208981, 41.693787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604107, 32.916874, 41.732853>,  <40.766380, 32.741611, 41.756294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604107, 32.916874, 41.732853>,  <40.333649, 33.208981, 41.693787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604107, 32.916874, 41.732853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153448, 0.009926, -0.988107,
		0.720611, 0.683091, 0.118770,
		0.676146, -0.730266, 0.097666,
		40.806950, 32.697796, 41.762154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876762, 33.418232, 41.220592>,  <40.333649, 33.208981, 41.693787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876762, 33.418232, 41.220592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932549, 33.025955, 41.275425>,  <40.966019, 32.790588, 41.308323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932549, 33.025955, 41.275425>,  <40.876762, 33.418232, 41.220592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932549, 33.025955, 41.275425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365478, -0.077680, -0.927573,
		0.920313, 0.179464, 0.347588,
		0.139465, -0.980693, 0.137080,
		40.974388, 32.731747, 41.316547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581692, 33.298748, 41.034954>,  <40.876762, 33.418232, 41.220592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581692, 33.298748, 41.034954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382267, 32.955029, 40.989285>,  <41.262611, 32.748795, 40.961884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382267, 32.955029, 40.989285>,  <41.581692, 33.298748, 41.034954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382267, 32.955029, 40.989285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337710, -0.071237, -0.938551,
		0.798367, -0.506481, 0.325711,
		-0.498561, -0.859304, -0.114170,
		41.232700, 32.697239, 40.955032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990467, 32.866539, 40.743164>,  <41.581692, 33.298748, 41.034954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990467, 32.866539, 40.743164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629612, 32.716103, 40.658585>,  <41.413101, 32.625839, 40.607838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629612, 32.716103, 40.658585>,  <41.990467, 32.866539, 40.743164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629612, 32.716103, 40.658585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241707, -0.034565, -0.969733,
		0.357398, -0.925938, 0.122086,
		-0.902133, -0.376090, -0.211452,
		41.358971, 32.603275, 40.595150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190784, 32.301960, 40.337051>,  <41.990467, 32.866539, 40.743164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190784, 32.301960, 40.337051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808025, 32.393982, 40.266155>,  <41.578369, 32.449196, 40.223618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808025, 32.393982, 40.266155>,  <42.190784, 32.301960, 40.337051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808025, 32.393982, 40.266155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171372, -0.045414, -0.984159,
		-0.234459, -0.972118, 0.004032,
		-0.956902, 0.230054, -0.177241,
		41.520954, 32.462997, 40.212982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071407, 31.970798, 39.656147>,  <42.190784, 32.301960, 40.337051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071407, 31.970798, 39.656147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752640, 32.208809, 39.697853>,  <41.561378, 32.351616, 39.722878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752640, 32.208809, 39.697853>,  <42.071407, 31.970798, 39.656147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752640, 32.208809, 39.697853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155215, 0.368488, -0.916583,
		-0.583809, -0.714256, -0.386011,
		-0.796916, 0.595025, 0.104263,
		41.513565, 32.387318, 39.729134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600021, 31.862288, 39.141014>,  <42.071407, 31.970798, 39.656147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600021, 31.862288, 39.141014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496330, 32.233814, 39.246918>,  <41.434116, 32.456730, 39.310459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496330, 32.233814, 39.246918>,  <41.600021, 31.862288, 39.141014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496330, 32.233814, 39.246918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040864, 0.263333, -0.963839,
		-0.964951, -0.260674, -0.030308,
		-0.259229, 0.928819, 0.264756,
		41.418560, 32.512459, 39.326344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187881, 32.074650, 38.566910>,  <41.600021, 31.862288, 39.141014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187881, 32.074650, 38.566910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243450, 32.426880, 38.748142>,  <41.276791, 32.638218, 38.856880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243450, 32.426880, 38.748142>,  <41.187881, 32.074650, 38.566910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243450, 32.426880, 38.748142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014514, 0.459277, -0.888174,
		-0.990197, 0.116813, 0.076586,
		0.138924, 0.880579, 0.453080,
		41.285126, 32.691055, 38.884068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563648, 32.588131, 38.340492>,  <41.187881, 32.074650, 38.566910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563648, 32.588131, 38.340492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892273, 32.771038, 38.476692>,  <41.089447, 32.880783, 38.558411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892273, 32.771038, 38.476692>,  <40.563648, 32.588131, 38.340492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892273, 32.771038, 38.476692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013078, 0.581968, -0.813107,
		-0.569970, 0.672470, 0.472142,
		0.821562, 0.457271, 0.340499,
		41.138741, 32.908218, 38.578842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479847, 33.288822, 38.210571>,  <40.563648, 32.588131, 38.340492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479847, 33.288822, 38.210571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874664, 33.258297, 38.267036>,  <41.111553, 33.239983, 38.300915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874664, 33.258297, 38.267036>,  <40.479847, 33.288822, 38.210571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874664, 33.258297, 38.267036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156382, 0.654759, -0.739483,
		-0.035994, 0.751975, 0.658207,
		0.987041, -0.076315, 0.141163,
		41.170776, 33.235401, 38.309387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651409, 33.887722, 38.199871>,  <40.479847, 33.288822, 38.210571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651409, 33.887722, 38.199871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998291, 33.701786, 38.128456>,  <41.206421, 33.590225, 38.085606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998291, 33.701786, 38.128456>,  <40.651409, 33.887722, 38.199871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998291, 33.701786, 38.128456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187749, 0.637321, -0.747377,
		0.461196, 0.614610, 0.639963,
		0.867207, -0.464840, -0.178538,
		41.258453, 33.562336, 38.074894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151554, 34.445366, 38.102123>,  <40.651409, 33.887722, 38.199871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151554, 34.445366, 38.102123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324001, 34.128292, 37.929707>,  <41.427467, 33.938049, 37.826256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324001, 34.128292, 37.929707>,  <41.151554, 34.445366, 38.102123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324001, 34.128292, 37.929707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277460, 0.571033, -0.772617,
		0.858578, 0.213490, 0.466118,
		0.431115, -0.792681, -0.431041,
		41.453335, 33.890488, 37.800396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896687, 34.555588, 38.174343>,  <41.151554, 34.445366, 38.102123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896687, 34.555588, 38.174343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850395, 34.297451, 37.872314>,  <41.822620, 34.142567, 37.691097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850395, 34.297451, 37.872314>,  <41.896687, 34.555588, 38.174343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850395, 34.297451, 37.872314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487838, 0.625251, -0.609159,
		0.865228, -0.438854, 0.242462,
		-0.115732, -0.645344, -0.755074,
		41.815674, 34.103848, 37.645794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525574, 34.520664, 37.840672>,  <41.896687, 34.555588, 38.174343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525574, 34.520664, 37.840672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265293, 34.380547, 37.571190>,  <42.109123, 34.296478, 37.409500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265293, 34.380547, 37.571190>,  <42.525574, 34.520664, 37.840672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265293, 34.380547, 37.571190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476051, 0.503027, -0.721345,
		0.591575, -0.790100, -0.160564,
		-0.650703, -0.350293, -0.673706,
		42.070084, 34.275459, 37.369080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850468, 34.640343, 37.325832>,  <42.525574, 34.520664, 37.840672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850468, 34.640343, 37.325832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490330, 34.581871, 37.161880>,  <42.274246, 34.546787, 37.063507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490330, 34.581871, 37.161880>,  <42.850468, 34.640343, 37.325832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490330, 34.581871, 37.161880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251653, 0.593534, -0.764453,
		0.355025, -0.791423, -0.497601,
		-0.900349, -0.146177, -0.409883,
		42.220226, 34.538017, 37.038914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942871, 34.474422, 36.628475>,  <42.850468, 34.640343, 37.325832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942871, 34.474422, 36.628475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565544, 34.606236, 36.644245>,  <42.339146, 34.685322, 36.653706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565544, 34.606236, 36.644245>,  <42.942871, 34.474422, 36.628475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565544, 34.606236, 36.644245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169387, 0.580204, -0.796663,
		-0.285401, -0.744830, -0.603137,
		-0.943321, 0.329532, 0.039427,
		42.282547, 34.705093, 36.656075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534962, 34.289070, 36.033386>,  <42.942871, 34.474422, 36.628475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534962, 34.289070, 36.033386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397873, 34.630486, 36.190365>,  <42.315620, 34.835335, 36.284550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397873, 34.630486, 36.190365>,  <42.534962, 34.289070, 36.033386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397873, 34.630486, 36.190365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274608, 0.490521, -0.827031,
		-0.898404, -0.175676, -0.402503,
		-0.342726, 0.853538, 0.392444,
		42.295055, 34.886547, 36.308098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214199, 34.676239, 35.529613>,  <42.534962, 34.289070, 36.033386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214199, 34.676239, 35.529613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274132, 34.955120, 35.810028>,  <42.310093, 35.122448, 35.978279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274132, 34.955120, 35.810028>,  <42.214199, 34.676239, 35.529613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274132, 34.955120, 35.810028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295373, 0.645100, -0.704699,
		-0.943559, 0.312657, -0.109275,
		0.149836, 0.697203, 0.701041,
		42.319084, 35.164280, 36.020340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855568, 35.320557, 35.405144>,  <42.214199, 34.676239, 35.529613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855568, 35.320557, 35.405144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184513, 35.407478, 35.615479>,  <42.381878, 35.459633, 35.741680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184513, 35.407478, 35.615479>,  <41.855568, 35.320557, 35.405144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184513, 35.407478, 35.615479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264828, 0.671785, -0.691788,
		-0.503580, 0.708154, 0.494900,
		0.822358, 0.217307, 0.525837,
		42.431221, 35.472672, 35.773228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219215, 35.807365, 35.298786>,  <41.855568, 35.320557, 35.405144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219215, 35.807365, 35.298786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494350, 35.588680, 35.107796>,  <42.659431, 35.457470, 34.993202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494350, 35.588680, 35.107796>,  <42.219215, 35.807365, 35.298786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494350, 35.588680, 35.107796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143868, 0.542068, -0.827927,
		0.711465, 0.638173, 0.294199,
		0.687837, -0.546715, -0.477476,
		42.700703, 35.424667, 34.964554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782707, 36.159004, 35.005081>,  <42.219215, 35.807365, 35.298786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782707, 36.159004, 35.005081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729191, 35.838070, 34.772408>,  <42.697083, 35.645508, 34.632805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729191, 35.838070, 34.772408>,  <42.782707, 36.159004, 35.005081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729191, 35.838070, 34.772408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067003, 0.578292, -0.813074,
		0.988742, -0.147754, -0.023610,
		-0.133788, -0.802339, -0.581681,
		42.689053, 35.597366, 34.597904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407299, 36.104805, 34.689548>,  <42.782707, 36.159004, 35.005081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407299, 36.104805, 34.689548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091629, 35.958439, 34.492245>,  <42.902225, 35.870621, 34.373863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091629, 35.958439, 34.492245>,  <43.407299, 36.104805, 34.689548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091629, 35.958439, 34.492245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188508, 0.620050, -0.761579,
		0.584517, -0.694005, -0.420353,
		-0.789180, -0.365915, -0.493255,
		42.854874, 35.848663, 34.344269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668858, 35.820408, 34.041759>,  <43.407299, 36.104805, 34.689548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668858, 35.820408, 34.041759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296547, 35.963642, 34.071262>,  <43.073162, 36.049583, 34.088963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296547, 35.963642, 34.071262>,  <43.668858, 35.820408, 34.041759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296547, 35.963642, 34.071262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235246, 0.741026, -0.628920,
		-0.279862, -0.568029, -0.773964,
		-0.930772, 0.358083, 0.073759,
		43.017315, 36.071068, 34.093391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306606, 35.969131, 33.347839>,  <43.668858, 35.820408, 34.041759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306606, 35.969131, 33.347839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063194, 36.154114, 33.605778>,  <42.917149, 36.265102, 33.760540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063194, 36.154114, 33.605778>,  <43.306606, 35.969131, 33.347839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063194, 36.154114, 33.605778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115921, 0.855718, -0.504290,
		-0.785020, -0.232123, -0.574337,
		-0.608527, 0.462455, 0.644848,
		42.880634, 36.292850, 33.799232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807709, 36.357132, 33.000854>,  <43.306606, 35.969131, 33.347839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807709, 36.357132, 33.000854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847092, 36.539280, 33.354790>,  <42.870720, 36.648571, 33.567150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847092, 36.539280, 33.354790>,  <42.807709, 36.357132, 33.000854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847092, 36.539280, 33.354790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311753, 0.830288, -0.461987,
		-0.945048, 0.321338, -0.060214,
		0.098459, 0.455372, 0.884840,
		42.876629, 36.675892, 33.620243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405193, 36.887211, 32.865757>,  <42.807709, 36.357132, 33.000854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405193, 36.887211, 32.865757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647362, 36.983109, 33.169331>,  <42.792664, 37.040649, 33.351475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647362, 36.983109, 33.169331>,  <42.405193, 36.887211, 32.865757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647362, 36.983109, 33.169331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255656, 0.844440, -0.470702,
		-0.753726, 0.479001, 0.449951,
		0.605424, 0.239748, 0.758936,
		42.828987, 37.055035, 33.397011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241882, 37.535301, 33.020050>,  <42.405193, 36.887211, 32.865757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241882, 37.535301, 33.020050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616383, 37.487370, 33.152161>,  <42.841084, 37.458611, 33.231426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616383, 37.487370, 33.152161>,  <42.241882, 37.535301, 33.020050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616383, 37.487370, 33.152161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261827, 0.864802, -0.428443,
		-0.234286, 0.487604, 0.841043,
		0.936246, -0.119830, 0.330279,
		42.897255, 37.451420, 33.251244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497871, 38.229435, 33.373753>,  <42.241882, 37.535301, 33.020050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497871, 38.229435, 33.373753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829529, 38.033741, 33.265549>,  <43.028522, 37.916325, 33.200626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829529, 38.033741, 33.265549>,  <42.497871, 38.229435, 33.373753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829529, 38.033741, 33.265549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419188, 0.864234, -0.278172,
		0.369877, 0.117248, 0.921653,
		0.829139, -0.489236, -0.270512,
		43.078270, 37.886971, 33.184395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010872, 38.682014, 33.528969>,  <42.497871, 38.229435, 33.373753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010872, 38.682014, 33.528969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198143, 38.426014, 33.285259>,  <43.310505, 38.272415, 33.139034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198143, 38.426014, 33.285259>,  <43.010872, 38.682014, 33.528969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198143, 38.426014, 33.285259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496195, 0.760945, -0.418036,
		0.731163, -0.106600, 0.673822,
		0.468178, -0.640000, -0.609269,
		43.338596, 38.234013, 33.102478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703075, 38.752136, 33.678082>,  <43.010872, 38.682014, 33.528969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703075, 38.752136, 33.678082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675484, 38.603714, 33.307663>,  <43.658928, 38.514660, 33.085411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675484, 38.603714, 33.307663>,  <43.703075, 38.752136, 33.678082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675484, 38.603714, 33.307663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614204, 0.715676, -0.332509,
		0.786127, -0.591717, 0.178538,
		-0.068976, -0.371053, -0.926047,
		43.654793, 38.492397, 33.029850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422626, 38.564655, 33.459446>,  <43.703075, 38.752136, 33.678082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422626, 38.564655, 33.459446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185856, 38.623375, 33.142441>,  <44.043793, 38.658607, 32.952236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185856, 38.623375, 33.142441>,  <44.422626, 38.564655, 33.459446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185856, 38.623375, 33.142441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621984, 0.708547, -0.333313,
		0.512604, -0.690227, -0.510709,
		-0.591923, 0.146795, -0.792514,
		44.008278, 38.667412, 32.904686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830807, 38.778057, 32.920696>,  <44.422626, 38.564655, 33.459446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830807, 38.778057, 32.920696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462780, 38.867123, 32.791767>,  <44.241962, 38.920563, 32.714409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462780, 38.867123, 32.791767>,  <44.830807, 38.778057, 32.920696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462780, 38.867123, 32.791767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338615, 0.865761, -0.368509,
		0.197004, -0.448198, -0.871956,
		-0.920070, 0.222660, -0.322325,
		44.186760, 38.933922, 32.695068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912918, 39.136040, 32.328358>,  <44.830807, 38.778057, 32.920696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912918, 39.136040, 32.328358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534607, 39.230320, 32.417747>,  <44.307621, 39.286888, 32.471382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534607, 39.230320, 32.417747>,  <44.912918, 39.136040, 32.328358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534607, 39.230320, 32.417747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117670, 0.889939, -0.440638,
		-0.302742, -0.390451, -0.869422,
		-0.945781, 0.235705, 0.223478,
		44.250874, 39.301033, 32.484791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689968, 39.354439, 31.739876>,  <44.912918, 39.136040, 32.328358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689968, 39.354439, 31.739876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487793, 39.497883, 32.053802>,  <44.366489, 39.583950, 32.242157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487793, 39.497883, 32.053802>,  <44.689968, 39.354439, 31.739876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487793, 39.497883, 32.053802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187173, 0.933457, -0.305981,
		-0.842319, -0.007757, -0.538923,
		-0.505435, 0.358606, 0.784817,
		44.336163, 39.605465, 32.289246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322517, 39.982788, 31.437687>,  <44.689968, 39.354439, 31.739876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322517, 39.982788, 31.437687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291313, 40.030529, 31.833601>,  <44.272591, 40.059174, 32.071148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291313, 40.030529, 31.833601>,  <44.322517, 39.982788, 31.437687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291313, 40.030529, 31.833601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344166, 0.934997, -0.085617,
		-0.935663, 0.333971, -0.114014,
		-0.078009, 0.119349, 0.989783,
		44.267910, 40.066334, 32.130535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169521, 40.606194, 31.579311>,  <44.322517, 39.982788, 31.437687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169521, 40.606194, 31.579311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332642, 40.509647, 31.931549>,  <44.430511, 40.451721, 32.142891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332642, 40.509647, 31.931549>,  <44.169521, 40.606194, 31.579311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332642, 40.509647, 31.931549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458597, 0.888102, 0.031051,
		-0.789551, 0.391174, 0.472855,
		0.407797, -0.241366, 0.880593,
		44.454979, 40.437237, 32.195728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217594, 41.188923, 31.973175>,  <44.169521, 40.606194, 31.579311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217594, 41.188923, 31.973175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469707, 40.958603, 32.181480>,  <44.620975, 40.820412, 32.306465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469707, 40.958603, 32.181480>,  <44.217594, 41.188923, 31.973175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469707, 40.958603, 32.181480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595968, 0.788726, 0.150775,
		-0.497557, 0.215328, 0.840280,
		0.630285, -0.575800, 0.520765,
		44.658794, 40.785862, 32.337711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469608, 41.645607, 32.490826>,  <44.217594, 41.188923, 31.973175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469608, 41.645607, 32.490826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736778, 41.348289, 32.475914>,  <44.897079, 41.169899, 32.466969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736778, 41.348289, 32.475914>,  <44.469608, 41.645607, 32.490826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736778, 41.348289, 32.475914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733060, 0.648435, 0.205316,
		-0.128439, -0.164462, 0.977986,
		0.667927, -0.743293, -0.037276,
		44.937157, 41.125301, 32.464729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.854477, 41.768570, 33.076527>,  <44.469608, 41.645607, 32.490826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.854477, 41.768570, 33.076527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063347, 41.562405, 32.804737>,  <45.188671, 41.438705, 32.641663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063347, 41.562405, 32.804737>,  <44.854477, 41.768570, 33.076527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063347, 41.562405, 32.804737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787274, 0.597657, 0.151674,
		0.327916, -0.614131, 0.717854,
		0.522178, -0.515412, -0.679471,
		45.220001, 41.407780, 32.600895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523212, 41.652859, 33.400913>,  <44.854477, 41.768570, 33.076527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.523212, 41.652859, 33.400913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590519, 41.614067, 33.008530>,  <45.630901, 41.590794, 32.773098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590519, 41.614067, 33.008530>,  <45.523212, 41.652859, 33.400913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590519, 41.614067, 33.008530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812099, 0.577702, 0.082186,
		0.558733, -0.810466, 0.175960,
		0.168262, -0.096977, -0.980960,
		45.640999, 41.584972, 32.714241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206669, 41.602272, 33.347054>,  <45.523212, 41.652859, 33.400913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206669, 41.602272, 33.347054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106373, 41.702732, 32.973091>,  <46.046196, 41.763008, 32.748714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106373, 41.702732, 32.973091>,  <46.206669, 41.602272, 33.347054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106373, 41.702732, 32.973091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712492, 0.701676, -0.002594,
		0.655351, -0.666765, -0.354881,
		-0.250741, 0.251150, -0.934908,
		46.031151, 41.778076, 32.692619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809536, 41.592476, 32.967457>,  <46.206669, 41.602272, 33.347054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809536, 41.592476, 32.967457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572887, 41.836613, 32.756752>,  <46.430901, 41.983093, 32.630329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572887, 41.836613, 32.756752>,  <46.809536, 41.592476, 32.967457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.572887, 41.836613, 32.756752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712270, 0.701782, 0.013164,
		0.377703, -0.367406, -0.849914,
		-0.591617, 0.610341, -0.526757,
		46.395401, 42.019714, 32.598724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.181526, 41.979088, 32.440613>,  <46.809536, 41.592476, 32.967457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.181526, 41.979088, 32.440613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857933, 42.206696, 32.499630>,  <46.663776, 42.343258, 32.535038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857933, 42.206696, 32.499630>,  <47.181526, 41.979088, 32.440613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.857933, 42.206696, 32.499630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578967, 0.814703, 0.032489,
		-0.101715, 0.111705, -0.988522,
		-0.808982, 0.569017, 0.147541,
		46.615238, 42.377399, 32.543892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.338505, 42.524319, 32.013367>,  <47.181526, 41.979088, 32.440613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.338505, 42.524319, 32.013367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.046230, 42.645931, 32.257877>,  <46.870865, 42.718899, 32.404583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.046230, 42.645931, 32.257877>,  <47.338505, 42.524319, 32.013367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.046230, 42.645931, 32.257877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502207, 0.845893, 0.179589,
		-0.462476, 0.438212, -0.770770,
		-0.730687, 0.304031, 0.611278,
		46.827023, 42.737141, 32.441261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123440, 43.215008, 31.807142>,  <47.338505, 42.524319, 32.013367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123440, 43.215008, 31.807142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.043152, 43.167027, 32.196053>,  <46.994980, 43.138237, 32.429398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.043152, 43.167027, 32.196053>,  <47.123440, 43.215008, 31.807142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.043152, 43.167027, 32.196053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557227, 0.802304, 0.214023,
		-0.805734, 0.584738, -0.094200,
		-0.200725, -0.119954, 0.972276,
		46.982933, 43.131039, 32.487736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916649, 43.854504, 32.081959>,  <47.123440, 43.215008, 31.807142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916649, 43.854504, 32.081959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052383, 43.649097, 32.397209>,  <47.133823, 43.525852, 32.586361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052383, 43.649097, 32.397209>,  <46.916649, 43.854504, 32.081959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052383, 43.649097, 32.397209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491465, 0.811182, 0.316931,
		-0.802067, 0.279792, 0.527641,
		0.339338, -0.513517, 0.788131,
		47.154186, 43.495041, 32.633648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788986, 44.175369, 32.683319>,  <46.916649, 43.854504, 32.081959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788986, 44.175369, 32.683319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097141, 43.948498, 32.799801>,  <47.282036, 43.812374, 32.869690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097141, 43.948498, 32.799801>,  <46.788986, 44.175369, 32.683319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.097141, 43.948498, 32.799801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455070, 0.809065, 0.371920,
		-0.446552, -0.154005, 0.881405,
		0.770391, -0.567182, 0.291207,
		47.328259, 43.778343, 32.887161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.858410, 44.146568, 33.470371>,  <46.788986, 44.175369, 32.683319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.858410, 44.146568, 33.470371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.168236, 44.116657, 33.219151>,  <47.354134, 44.098713, 33.068417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.168236, 44.116657, 33.219151>,  <46.858410, 44.146568, 33.470371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.168236, 44.116657, 33.219151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250641, 0.947979, 0.196248,
		0.580710, -0.309424, 0.753015,
		0.774567, -0.074773, -0.628056,
		47.400604, 44.094227, 33.030735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.442013, 44.481010, 33.764282>,  <46.858410, 44.146568, 33.470371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.442013, 44.481010, 33.764282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.533123, 44.476761, 33.374821>,  <47.587791, 44.474213, 33.141144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.533123, 44.476761, 33.374821>,  <47.442013, 44.481010, 33.764282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.533123, 44.476761, 33.374821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344817, 0.936022, 0.070455,
		0.910614, -0.351781, 0.216868,
		0.227778, -0.010622, -0.973655,
		47.601456, 44.473576, 33.082726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.221531, 45.211517, 33.777012>,  <47.442013, 44.481010, 33.764282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.221531, 45.211517, 33.777012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843941, 45.081020, 33.796917>,  <46.617386, 45.002724, 33.808861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843941, 45.081020, 33.796917>,  <47.221531, 45.211517, 33.777012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843941, 45.081020, 33.796917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250054, -0.608673, 0.752988,
		-0.215367, 0.723245, 0.656150,
		-0.943976, -0.326241, 0.049762,
		46.560749, 44.983147, 33.811844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920979, 45.335293, 34.452862>,  <47.221531, 45.211517, 33.777012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920979, 45.335293, 34.452862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734081, 45.024822, 34.283516>,  <46.621944, 44.838539, 34.181908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734081, 45.024822, 34.283516>,  <46.920979, 45.335293, 34.452862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734081, 45.024822, 34.283516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136663, -0.536495, 0.832764,
		-0.873503, 0.331245, 0.356748,
		-0.467243, -0.776176, -0.423361,
		46.593910, 44.791969, 34.156509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536911, 45.114208, 34.921673>,  <46.920979, 45.335293, 34.452862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536911, 45.114208, 34.921673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570919, 44.791050, 34.688408>,  <46.591324, 44.597157, 34.548450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570919, 44.791050, 34.688408>,  <46.536911, 45.114208, 34.921673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570919, 44.791050, 34.688408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275968, -0.543289, 0.792893,
		-0.957399, -0.228348, 0.176761,
		0.085023, -0.807895, -0.583161,
		46.596424, 44.548683, 34.513458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.137257, 44.490559, 35.108158>,  <46.536911, 45.114208, 34.921673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.137257, 44.490559, 35.108158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467312, 44.354443, 34.927780>,  <46.665344, 44.272774, 34.819553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467312, 44.354443, 34.927780>,  <46.137257, 44.490559, 35.108158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.467312, 44.354443, 34.927780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154833, -0.631437, 0.759812,
		-0.543298, -0.696771, -0.468335,
		0.825139, -0.340291, -0.450941,
		46.714851, 44.252354, 34.792496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809204, 45.214924, 34.968098>,  <46.137257, 44.490559, 35.108158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809204, 45.214924, 34.968098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600166, 44.877258, 34.920284>,  <45.474743, 44.674660, 34.891598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600166, 44.877258, 34.920284>,  <45.809204, 45.214924, 34.968098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600166, 44.877258, 34.920284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217342, -0.267468, 0.938735,
		-0.824416, 0.464596, 0.323249,
		-0.522591, -0.844163, -0.119529,
		45.443390, 44.624008, 34.884426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374039, 45.057789, 35.536823>,  <45.809204, 45.214924, 34.968098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374039, 45.057789, 35.536823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491371, 44.706791, 35.385056>,  <45.561771, 44.496193, 35.293995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491371, 44.706791, 35.385056>,  <45.374039, 45.057789, 35.536823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491371, 44.706791, 35.385056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283876, -0.299025, 0.911043,
		-0.912891, -0.374947, 0.161386,
		0.293334, -0.877496, -0.379415,
		45.579372, 44.443542, 35.271233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649010, 44.957870, 35.775974>,  <45.374039, 45.057789, 35.536823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649010, 44.957870, 35.775974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.275036, 44.840569, 35.696075>,  <44.050652, 44.770187, 35.648136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.275036, 44.840569, 35.696075>,  <44.649010, 44.957870, 35.775974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275036, 44.840569, 35.696075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242475, -0.939045, 0.243723,
		-0.259047, 0.179431, 0.949052,
		-0.934934, -0.293257, -0.199749,
		43.994556, 44.752590, 35.636150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463287, 44.515663, 36.284821>,  <44.649010, 44.957870, 35.775974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463287, 44.515663, 36.284821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184113, 44.427773, 36.012173>,  <44.016605, 44.375038, 35.848583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184113, 44.427773, 36.012173>,  <44.463287, 44.515663, 36.284821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184113, 44.427773, 36.012173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070230, -0.968182, 0.240189,
		-0.712705, 0.119767, 0.691164,
		-0.697939, -0.219724, -0.681617,
		43.974731, 44.361855, 35.807686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052158, 44.079762, 36.669113>,  <44.463287, 44.515663, 36.284821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052158, 44.079762, 36.669113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028149, 44.009476, 36.276070>,  <44.013744, 43.967304, 36.040245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028149, 44.009476, 36.276070>,  <44.052158, 44.079762, 36.669113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028149, 44.009476, 36.276070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194073, -0.967654, 0.161183,
		-0.979149, -0.181024, 0.092181,
		-0.060021, -0.175712, -0.982610,
		44.010143, 43.956760, 35.981285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705112, 43.360748, 36.711193>,  <44.052158, 44.079762, 36.669113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705112, 43.360748, 36.711193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848038, 43.402355, 36.339924>,  <43.933792, 43.427319, 36.117161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848038, 43.402355, 36.339924>,  <43.705112, 43.360748, 36.711193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848038, 43.402355, 36.339924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231357, -0.972664, -0.019942,
		-0.904875, -0.207614, -0.371613,
		0.357315, 0.104020, -0.928173,
		43.955231, 43.433559, 36.061470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311615, 42.960583, 36.195583>,  <43.705112, 43.360748, 36.711193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311615, 42.960583, 36.195583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658554, 43.015724, 36.004295>,  <43.866718, 43.048809, 35.889523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658554, 43.015724, 36.004295>,  <43.311615, 42.960583, 36.195583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658554, 43.015724, 36.004295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068218, -0.984734, -0.160140,
		-0.492998, 0.106275, -0.863516,
		0.867352, 0.137856, -0.478222,
		43.918758, 43.057079, 35.860828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375793, 42.473083, 35.625595>,  <43.311615, 42.960583, 36.195583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375793, 42.473083, 35.625595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761547, 42.572556, 35.661648>,  <43.993000, 42.632240, 35.683277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761547, 42.572556, 35.661648>,  <43.375793, 42.473083, 35.625595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761547, 42.572556, 35.661648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256997, -0.961551, -0.096810,
		0.062589, 0.116525, -0.991214,
		0.964383, 0.248680, 0.090129,
		44.050861, 42.647160, 35.688686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719067, 42.206646, 34.972878>,  <43.375793, 42.473083, 35.625595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719067, 42.206646, 34.972878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969177, 42.244358, 35.282753>,  <44.119244, 42.266987, 35.468678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969177, 42.244358, 35.282753>,  <43.719067, 42.206646, 34.972878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969177, 42.244358, 35.282753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338791, -0.927049, -0.160628,
		0.703026, 0.362894, -0.611607,
		0.625280, 0.094282, 0.774685,
		44.156761, 42.272644, 35.515160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256348, 41.799679, 34.764782>,  <43.719067, 42.206646, 34.972878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256348, 41.799679, 34.764782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320786, 41.858536, 35.155144>,  <44.359447, 41.893848, 35.389362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320786, 41.858536, 35.155144>,  <44.256348, 41.799679, 34.764782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320786, 41.858536, 35.155144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258549, -0.960582, 0.102149,
		0.952471, 0.235864, -0.192789,
		0.161097, 0.147139, 0.975909,
		44.369114, 41.902676, 35.447918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896149, 41.470924, 34.899719>,  <44.256348, 41.799679, 34.764782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896149, 41.470924, 34.899719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702320, 41.504070, 35.248047>,  <44.586021, 41.523956, 35.457043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702320, 41.504070, 35.248047>,  <44.896149, 41.470924, 34.899719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702320, 41.504070, 35.248047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112619, -0.981309, 0.156043,
		0.867471, 0.173685, 0.466185,
		-0.484574, 0.082862, 0.870817,
		44.556950, 41.528927, 35.509293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305008, 40.998352, 35.433086>,  <44.896149, 41.470924, 34.899719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305008, 40.998352, 35.433086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939606, 41.061695, 35.582981>,  <44.720364, 41.099701, 35.672916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939606, 41.061695, 35.582981>,  <45.305008, 40.998352, 35.433086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939606, 41.061695, 35.582981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041126, -0.952354, 0.302209,
		0.404738, 0.260659, 0.876496,
		-0.913508, 0.158362, 0.374734,
		44.665554, 41.109203, 35.695400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.347431, 40.889503, 36.235222>,  <45.305008, 40.998352, 35.433086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.347431, 40.889503, 36.235222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.976730, 40.827770, 36.098213>,  <44.754311, 40.790730, 36.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.976730, 40.827770, 36.098213>,  <45.347431, 40.889503, 36.235222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976730, 40.827770, 36.098213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095013, -0.978368, 0.183760,
		-0.363471, 0.137756, 0.921364,
		-0.926748, -0.154333, -0.342520,
		44.698708, 40.781471, 35.995457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958191, 40.450550, 36.711117>,  <45.347431, 40.889503, 36.235222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958191, 40.450550, 36.711117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.728924, 40.437103, 36.383617>,  <44.591362, 40.429035, 36.187119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.728924, 40.437103, 36.383617>,  <44.958191, 40.450550, 36.711117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728924, 40.437103, 36.383617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003130, -0.999061, 0.043215,
		-0.819432, 0.027332, 0.572525,
		-0.573169, -0.033620, -0.818747,
		44.556973, 40.427017, 36.137993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463631, 39.991924, 36.879807>,  <44.958191, 40.450550, 36.711117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463631, 39.991924, 36.879807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485611, 40.002586, 36.480553>,  <44.498798, 40.008984, 36.241001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485611, 40.002586, 36.480553>,  <44.463631, 39.991924, 36.879807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485611, 40.002586, 36.480553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180406, -0.983457, -0.016332,
		-0.982056, -0.179172, -0.058851,
		0.054951, 0.026656, -0.998133,
		44.502098, 40.010582, 36.181114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047478, 39.390236, 36.694298>,  <44.463631, 39.991924, 36.879807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047478, 39.390236, 36.694298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227364, 39.473858, 36.346954>,  <44.335297, 39.524033, 36.138546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227364, 39.473858, 36.346954>,  <44.047478, 39.390236, 36.694298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227364, 39.473858, 36.346954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184771, -0.972967, -0.138547,
		-0.873850, -0.098140, -0.476187,
		0.449718, 0.209055, -0.868361,
		44.362278, 39.536575, 36.086445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698338, 39.087173, 36.193695>,  <44.047478, 39.390236, 36.694298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698338, 39.087173, 36.193695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078453, 39.132999, 36.077885>,  <44.306522, 39.160496, 36.008396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078453, 39.132999, 36.077885>,  <43.698338, 39.087173, 36.193695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078453, 39.132999, 36.077885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110210, -0.993413, -0.031367,
		-0.291217, -0.002101, -0.956655,
		0.950287, 0.114567, -0.289530,
		44.363541, 39.167370, 35.991024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686710, 38.763092, 35.581688>,  <43.698338, 39.087173, 36.193695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686710, 38.763092, 35.581688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080429, 38.779343, 35.650410>,  <44.316658, 38.789093, 35.691643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080429, 38.779343, 35.650410>,  <43.686710, 38.763092, 35.581688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080429, 38.779343, 35.650410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074135, -0.978320, -0.193378,
		0.160223, 0.203077, -0.965965,
		0.984293, 0.040628, 0.171804,
		44.375717, 38.791531, 35.701950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977318, 38.480556, 34.974827>,  <43.686710, 38.763092, 35.581688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977318, 38.480556, 34.974827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256252, 38.434830, 35.257854>,  <44.423615, 38.407394, 35.427670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256252, 38.434830, 35.257854>,  <43.977318, 38.480556, 34.974827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256252, 38.434830, 35.257854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228608, -0.900163, -0.370736,
		0.679309, 0.420283, -0.601582,
		0.697336, -0.114317, 0.707569,
		44.465454, 38.400536, 35.470123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541103, 38.176029, 34.620918>,  <43.977318, 38.480556, 34.974827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541103, 38.176029, 34.620918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622452, 38.102112, 35.005520>,  <44.671261, 38.057762, 35.236282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622452, 38.102112, 35.005520>,  <44.541103, 38.176029, 34.620918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622452, 38.102112, 35.005520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372723, -0.893475, -0.250559,
		0.905382, 0.409332, -0.112833,
		0.203376, -0.184796, 0.961503,
		44.683464, 38.046673, 35.293972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223267, 37.971439, 34.597691>,  <44.541103, 38.176029, 34.620918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223267, 37.971439, 34.597691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076542, 37.845428, 34.947823>,  <44.988506, 37.769821, 35.157902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076542, 37.845428, 34.947823>,  <45.223267, 37.971439, 34.597691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076542, 37.845428, 34.947823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282696, -0.934170, -0.217739,
		0.886301, 0.167583, 0.431724,
		-0.366814, -0.315029, 0.875331,
		44.966499, 37.750919, 35.210423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652596, 37.485600, 34.784611>,  <45.223267, 37.971439, 34.597691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652596, 37.485600, 34.784611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350723, 37.378700, 35.024288>,  <45.169601, 37.314560, 35.168095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350723, 37.378700, 35.024288>,  <45.652596, 37.485600, 34.784611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350723, 37.378700, 35.024288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182615, -0.962753, -0.199396,
		0.630166, -0.041059, 0.775374,
		-0.754680, -0.267248, 0.599196,
		45.124321, 37.298527, 35.204048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818909, 36.862556, 35.132244>,  <45.652596, 37.485600, 34.784611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818909, 36.862556, 35.132244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419044, 36.870609, 35.138748>,  <45.179127, 36.875443, 35.142651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419044, 36.870609, 35.138748>,  <45.818909, 36.862556, 35.132244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419044, 36.870609, 35.138748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023778, -0.962573, -0.269978,
		0.010213, -0.270274, 0.962729,
		-0.999665, 0.020134, 0.016257,
		45.119144, 36.876648, 35.143623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.348850, 36.668228, 35.633793>,  <45.818909, 36.862556, 35.132244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.348850, 36.668228, 35.633793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374813, 36.545017, 35.254128>,  <46.390392, 36.471092, 35.026329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374813, 36.545017, 35.254128>,  <46.348850, 36.668228, 35.633793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374813, 36.545017, 35.254128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171000, -0.940531, 0.293529,
		-0.983131, 0.143255, -0.113720,
		0.064908, -0.308023, -0.949162,
		46.394287, 36.452610, 34.969379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861256, 36.434170, 35.357758>,  <46.348850, 36.668228, 35.633793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861256, 36.434170, 35.357758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912086, 36.467297, 34.962387>,  <46.942585, 36.487171, 34.725163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912086, 36.467297, 34.962387>,  <46.861256, 36.434170, 35.357758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912086, 36.467297, 34.962387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722272, -0.690724, 0.034986,
		-0.679835, -0.718361, -0.147588,
		0.127076, 0.082814, -0.988430,
		46.950211, 36.492142, 34.665859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.848846, 35.722126, 35.183514>,  <46.861256, 36.434170, 35.357758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.848846, 35.722126, 35.183514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.027699, 35.930367, 34.892570>,  <47.135010, 36.055313, 34.718006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.027699, 35.930367, 34.892570>,  <46.848846, 35.722126, 35.183514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.027699, 35.930367, 34.892570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644785, -0.751190, -0.141297,
		-0.619943, -0.405811, -0.671556,
		0.447127, 0.520606, -0.727356,
		47.161835, 36.086548, 34.674362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.294994, 35.117111, 34.882011>,  <46.848846, 35.722126, 35.183514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.294994, 35.117111, 34.882011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645622, 34.925873, 34.859940>,  <47.855999, 34.811131, 34.846695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645622, 34.925873, 34.859940>,  <47.294994, 35.117111, 34.882011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.645622, 34.925873, 34.859940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454887, -0.785613, -0.419392,
		0.157162, 0.392727, -0.906127,
		0.876571, -0.478098, -0.055178,
		47.908592, 34.782444, 34.843388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.857708, 36.183430, 45.005798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460827, 36.156013, 44.964176>,  <37.222698, 36.139565, 44.939201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460827, 36.156013, 44.964176>,  <37.857708, 36.183430, 45.005798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460827, 36.156013, 44.964176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063351, 0.441647, -0.894949,
		0.107297, -0.894567, -0.433864,
		-0.992207, -0.068539, -0.104059,
		37.163166, 36.135452, 44.932957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866470, 35.977356, 44.354816>,  <37.857708, 36.183430, 45.005798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866470, 35.977356, 44.354816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483925, 36.079624, 44.411381>,  <37.254398, 36.140984, 44.445320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483925, 36.079624, 44.411381>,  <37.866470, 35.977356, 44.354816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483925, 36.079624, 44.411381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004022, 0.495476, -0.868612,
		-0.292143, -0.830143, -0.474885,
		-0.956366, 0.255669, 0.141411,
		37.197014, 36.156326, 44.453804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444489, 35.642921, 43.898327>,  <37.866470, 35.977356, 44.354816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444489, 35.642921, 43.898327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272236, 35.990067, 43.997414>,  <37.168884, 36.198353, 44.056866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272236, 35.990067, 43.997414>,  <37.444489, 35.642921, 43.898327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272236, 35.990067, 43.997414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017834, 0.266230, -0.963744,
		-0.902351, -0.419438, -0.099169,
		-0.430633, 0.867867, 0.247713,
		37.143047, 36.250427, 44.071728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792412, 35.722496, 43.485023>,  <37.444489, 35.642921, 43.898327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792412, 35.722496, 43.485023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830105, 36.102741, 43.603317>,  <36.852722, 36.330887, 43.674294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830105, 36.102741, 43.603317>,  <36.792412, 35.722496, 43.485023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830105, 36.102741, 43.603317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181112, 0.308471, -0.933833,
		-0.978937, 0.034440, 0.201237,
		0.094237, 0.950610, 0.295736,
		36.858376, 36.387924, 43.692039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284042, 36.079121, 43.159039>,  <36.792412, 35.722496, 43.485023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284042, 36.079121, 43.159039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.561356, 36.350220, 43.257023>,  <36.727745, 36.512878, 43.315815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.561356, 36.350220, 43.257023>,  <36.284042, 36.079121, 43.159039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561356, 36.350220, 43.257023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018415, 0.356461, -0.934129,
		-0.720427, 0.643108, 0.259611,
		0.693287, 0.677752, 0.244961,
		36.769341, 36.553547, 43.330509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049145, 36.697121, 42.901985>,  <36.284042, 36.079121, 43.159039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049145, 36.697121, 42.901985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434593, 36.799953, 42.931244>,  <36.665863, 36.861652, 42.948799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434593, 36.799953, 42.931244>,  <36.049145, 36.697121, 42.901985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434593, 36.799953, 42.931244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005688, 0.253896, -0.967215,
		-0.267228, 0.932440, 0.243196,
		0.963617, 0.257084, 0.073151,
		36.723679, 36.877079, 42.953190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113625, 37.246849, 42.406921>,  <36.049145, 36.697121, 42.901985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113625, 37.246849, 42.406921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.491600, 37.153557, 42.498745>,  <36.718384, 37.097580, 42.553841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.491600, 37.153557, 42.498745>,  <36.113625, 37.246849, 42.406921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491600, 37.153557, 42.498745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299136, 0.331107, -0.894922,
		0.132717, 0.914314, 0.382644,
		0.944936, -0.233234, 0.229561,
		36.775082, 37.083588, 42.567612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525505, 37.843647, 42.251450>,  <36.113625, 37.246849, 42.406921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525505, 37.843647, 42.251450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741005, 37.507294, 42.230820>,  <36.870304, 37.305481, 42.218441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741005, 37.507294, 42.230820>,  <36.525505, 37.843647, 42.251450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741005, 37.507294, 42.230820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240205, 0.211997, -0.947290,
		0.807496, 0.497964, 0.316199,
		0.538750, -0.840886, -0.051573,
		36.902630, 37.255028, 42.215347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116199, 38.000790, 41.793983>,  <36.525505, 37.843647, 42.251450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116199, 38.000790, 41.793983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101273, 37.601166, 41.785213>,  <37.092316, 37.361389, 41.779953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101273, 37.601166, 41.785213>,  <37.116199, 38.000790, 41.793983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101273, 37.601166, 41.785213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376393, 0.006272, -0.926439,
		0.925708, -0.042829, 0.375806,
		-0.037322, -0.999063, -0.021926,
		37.090076, 37.301449, 41.778637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753681, 37.737656, 41.523170>,  <37.116199, 38.000790, 41.793983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753681, 37.737656, 41.523170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513691, 37.422291, 41.468853>,  <37.369698, 37.233070, 41.436264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513691, 37.422291, 41.468853>,  <37.753681, 37.737656, 41.523170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513691, 37.422291, 41.468853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249414, -0.023059, -0.968122,
		0.760147, -0.614717, 0.210475,
		-0.599974, -0.788411, -0.135790,
		37.333698, 37.185768, 41.428116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191097, 37.140087, 41.253731>,  <37.753681, 37.737656, 41.523170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191097, 37.140087, 41.253731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811184, 37.085335, 41.141186>,  <37.583237, 37.052483, 41.073658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811184, 37.085335, 41.141186>,  <38.191097, 37.140087, 41.253731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811184, 37.085335, 41.141186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296379, -0.105278, -0.949250,
		0.100316, -0.984977, 0.140562,
		-0.949788, -0.136884, -0.281365,
		37.526249, 37.044270, 41.056778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309887, 36.854843, 40.634544>,  <38.191097, 37.140087, 41.253731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309887, 36.854843, 40.634544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.919659, 36.942238, 40.625397>,  <37.685520, 36.994675, 40.619907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.919659, 36.942238, 40.625397>,  <38.309887, 36.854843, 40.634544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919659, 36.942238, 40.625397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029666, 0.027875, -0.999171,
		-0.217668, -0.975442, -0.033676,
		-0.975572, 0.218487, -0.022870,
		37.626987, 37.007782, 40.618534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000965, 36.352066, 40.158707>,  <38.309887, 36.854843, 40.634544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000965, 36.352066, 40.158707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782711, 36.687241, 40.163521>,  <37.651760, 36.888344, 40.166409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782711, 36.687241, 40.163521>,  <38.000965, 36.352066, 40.158707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782711, 36.687241, 40.163521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255211, 0.179834, -0.950014,
		-0.798217, -0.515288, -0.311974,
		-0.545635, 0.837936, 0.012040,
		37.619022, 36.938622, 40.167133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745777, 36.383659, 39.530407>,  <38.000965, 36.352066, 40.158707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745777, 36.383659, 39.530407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689957, 36.765636, 39.635181>,  <37.656464, 36.994823, 39.698044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689957, 36.765636, 39.635181>,  <37.745777, 36.383659, 39.530407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689957, 36.765636, 39.635181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369455, 0.295634, -0.880967,
		-0.918710, -0.026166, -0.394064,
		-0.139550, 0.954943, 0.261934,
		37.648090, 37.052120, 39.713760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526196, 36.627422, 38.921440>,  <37.745777, 36.383659, 39.530407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526196, 36.627422, 38.921440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616222, 36.960754, 39.123390>,  <37.670238, 37.160755, 39.244560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616222, 36.960754, 39.123390>,  <37.526196, 36.627422, 38.921440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616222, 36.960754, 39.123390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138811, 0.485462, -0.863167,
		-0.964405, 0.264353, -0.006414,
		0.225067, 0.833333, 0.504877,
		37.683743, 37.210754, 39.274853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229645, 37.203369, 38.577805>,  <37.526196, 36.627422, 38.921440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229645, 37.203369, 38.577805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538681, 37.368195, 38.771011>,  <37.724102, 37.467091, 38.886936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538681, 37.368195, 38.771011>,  <37.229645, 37.203369, 38.577805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538681, 37.368195, 38.771011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301960, 0.430739, -0.850461,
		-0.558499, 0.802911, 0.208358,
		0.772592, 0.412066, 0.483014,
		37.770458, 37.491814, 38.915916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278854, 37.942249, 38.385731>,  <37.229645, 37.203369, 38.577805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278854, 37.942249, 38.385731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.640427, 37.831413, 38.516041>,  <37.857368, 37.764912, 38.594227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.640427, 37.831413, 38.516041>,  <37.278854, 37.942249, 38.385731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640427, 37.831413, 38.516041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398026, 0.266332, -0.877863,
		0.156482, 0.923195, 0.351034,
		0.903930, -0.277091, 0.325779,
		37.911606, 37.748287, 38.613773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697250, 38.494236, 38.215878>,  <37.278854, 37.942249, 38.385731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697250, 38.494236, 38.215878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.928051, 38.172504, 38.272629>,  <38.066532, 37.979465, 38.306679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.928051, 38.172504, 38.272629>,  <37.697250, 38.494236, 38.215878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928051, 38.172504, 38.272629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465583, 0.181195, -0.866257,
		0.671048, 0.565883, 0.479031,
		0.576998, -0.804329, 0.141875,
		38.101151, 37.931206, 38.315193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434174, 38.689323, 38.130878>,  <37.697250, 38.494236, 38.215878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434174, 38.689323, 38.130878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448704, 38.293507, 38.075039>,  <38.457424, 38.056015, 38.041534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448704, 38.293507, 38.075039>,  <38.434174, 38.689323, 38.130878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448704, 38.293507, 38.075039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451258, 0.140886, -0.881202,
		0.891654, -0.030983, 0.451657,
		0.036330, -0.989541, -0.139603,
		38.459602, 37.996643, 38.033157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196121, 38.476566, 37.918869>,  <38.434174, 38.689323, 38.130878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196121, 38.476566, 37.918869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954266, 38.179073, 37.804832>,  <38.809155, 38.000576, 37.736412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954266, 38.179073, 37.804832>,  <39.196121, 38.476566, 37.918869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954266, 38.179073, 37.804832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500032, -0.075825, -0.862681,
		0.619987, -0.664162, 0.417737,
		-0.604635, -0.743733, -0.285091,
		38.772877, 37.955952, 37.719303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591824, 38.059177, 37.565170>,  <39.196121, 38.476566, 37.918869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591824, 38.059177, 37.565170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.232742, 37.933441, 37.441677>,  <39.017292, 37.858002, 37.367580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.232742, 37.933441, 37.441677>,  <39.591824, 38.059177, 37.565170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232742, 37.933441, 37.441677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351762, -0.089388, -0.931812,
		0.265306, -0.945094, 0.190816,
		-0.897706, -0.314337, -0.308733,
		38.963432, 37.839142, 37.349056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630978, 37.346352, 37.291172>,  <39.591824, 38.059177, 37.565170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630978, 37.346352, 37.291172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343742, 37.574429, 37.131557>,  <39.171402, 37.711273, 37.035789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343742, 37.574429, 37.131557>,  <39.630978, 37.346352, 37.291172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343742, 37.574429, 37.131557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231072, -0.345501, -0.909524,
		-0.656469, -0.745327, 0.116346,
		-0.718090, 0.570190, -0.399035,
		39.128315, 37.745487, 37.011848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066143, 36.965397, 37.825752>,  <39.630978, 37.346352, 37.291172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066143, 36.965397, 37.825752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.452232, 37.063969, 37.790836>,  <40.683887, 37.123112, 37.769886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.452232, 37.063969, 37.790836>,  <40.066143, 36.965397, 37.825752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452232, 37.063969, 37.790836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119482, -0.118842, 0.985698,
		0.232532, -0.961847, -0.144153,
		0.965222, 0.246430, -0.087289,
		40.741798, 37.137897, 37.764648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371075, 36.538193, 38.187237>,  <40.066143, 36.965397, 37.825752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371075, 36.538193, 38.187237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.688923, 36.779907, 38.163860>,  <40.879631, 36.924934, 38.149834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.688923, 36.779907, 38.163860>,  <40.371075, 36.538193, 38.187237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688923, 36.779907, 38.163860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300940, -0.308457, 0.902380,
		0.527266, -0.734640, -0.426960,
		0.794623, 0.604284, -0.058443,
		40.927311, 36.961193, 38.146328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865097, 36.154182, 38.399410>,  <40.371075, 36.538193, 38.187237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865097, 36.154182, 38.399410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.965290, 36.540012, 38.432510>,  <41.025406, 36.771511, 38.452370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.965290, 36.540012, 38.432510>,  <40.865097, 36.154182, 38.399410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965290, 36.540012, 38.432510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253736, -0.147897, 0.955900,
		0.934278, -0.218442, -0.281794,
		0.250485, 0.964577, 0.082750,
		41.040436, 36.829384, 38.457336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481339, 36.117256, 38.722290>,  <40.865097, 36.154182, 38.399410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481339, 36.117256, 38.722290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.350132, 36.487354, 38.798527>,  <41.271408, 36.709412, 38.844269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.350132, 36.487354, 38.798527>,  <41.481339, 36.117256, 38.722290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350132, 36.487354, 38.798527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325641, -0.078646, 0.942217,
		0.886771, 0.371129, -0.275500,
		-0.328017, 0.925245, 0.190596,
		41.251728, 36.764927, 38.855705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065910, 36.551842, 39.030987>,  <41.481339, 36.117256, 38.722290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065910, 36.551842, 39.030987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.698341, 36.677582, 39.126289>,  <41.477802, 36.753025, 39.183472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.698341, 36.677582, 39.126289>,  <42.065910, 36.551842, 39.030987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698341, 36.677582, 39.126289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195431, -0.161849, 0.967270,
		0.342625, 0.935408, 0.087292,
		-0.918920, 0.314352, 0.238261,
		41.422665, 36.771889, 39.197769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151169, 36.677952, 39.647892>,  <42.065910, 36.551842, 39.030987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151169, 36.677952, 39.647892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.754429, 36.727406, 39.660240>,  <41.516384, 36.757080, 39.667648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.754429, 36.727406, 39.660240>,  <42.151169, 36.677952, 39.647892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754429, 36.727406, 39.660240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002046, -0.257696, 0.966224,
		0.127417, 0.958283, 0.255848,
		-0.991847, 0.123637, 0.030874,
		41.456875, 36.764496, 39.669502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011623, 36.964378, 40.309212>,  <42.151169, 36.677952, 39.647892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011623, 36.964378, 40.309212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653454, 36.820820, 40.203835>,  <41.438553, 36.734684, 40.140606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653454, 36.820820, 40.203835>,  <42.011623, 36.964378, 40.309212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653454, 36.820820, 40.203835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197083, -0.211064, 0.957398,
		-0.399207, 0.909202, 0.118261,
		-0.895428, -0.358893, -0.263447,
		41.384827, 36.713154, 40.124802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407608, 37.302773, 40.582558>,  <42.011623, 36.964378, 40.309212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407608, 37.302773, 40.582558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.274780, 36.931332, 40.516304>,  <41.195084, 36.708469, 40.476551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.274780, 36.931332, 40.516304>,  <41.407608, 37.302773, 40.582558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274780, 36.931332, 40.516304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465398, 0.008561, 0.885060,
		-0.820447, 0.370989, -0.435010,
		-0.332072, -0.928598, -0.165634,
		41.175159, 36.652752, 40.466614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730568, 37.255623, 40.934338>,  <41.407608, 37.302773, 40.582558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730568, 37.255623, 40.934338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.828392, 36.873898, 40.865662>,  <40.887089, 36.644863, 40.824455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.828392, 36.873898, 40.865662>,  <40.730568, 37.255623, 40.934338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828392, 36.873898, 40.865662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532453, -0.280155, 0.798753,
		-0.810359, -0.103930, -0.576643,
		0.244564, -0.954312, -0.171688,
		40.901760, 36.587605, 40.814156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185383, 36.961258, 40.928040>,  <40.730568, 37.255623, 40.934338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185383, 36.961258, 40.928040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465439, 36.693226, 41.026665>,  <40.633472, 36.532406, 41.085842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465439, 36.693226, 41.026665>,  <40.185383, 36.961258, 40.928040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465439, 36.693226, 41.026665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541392, -0.273081, 0.795186,
		-0.465503, -0.690235, -0.553971,
		0.700144, -0.670077, 0.246568,
		40.675484, 36.492203, 41.100636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855614, 36.224888, 40.988693>,  <40.185383, 36.961258, 40.928040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855614, 36.224888, 40.988693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.186642, 36.224216, 41.213238>,  <40.385258, 36.223812, 41.347965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.186642, 36.224216, 41.213238>,  <39.855614, 36.224888, 40.988693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186642, 36.224216, 41.213238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511520, -0.414184, 0.752860,
		0.231241, -0.910192, -0.343626,
		0.827572, -0.001679, 0.561358,
		40.434914, 36.223713, 41.381645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632076, 35.704556, 41.418884>,  <39.855614, 36.224888, 40.988693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632076, 35.704556, 41.418884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.965073, 35.864964, 41.571804>,  <40.164871, 35.961208, 41.663555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.965073, 35.864964, 41.571804>,  <39.632076, 35.704556, 41.418884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965073, 35.864964, 41.571804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218987, -0.395667, 0.891904,
		0.508932, -0.826216, -0.241570,
		0.832486, 0.401017, 0.382298,
		40.214817, 35.985268, 41.686493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916691, 35.195557, 41.701839>,  <39.632076, 35.704556, 41.418884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916691, 35.195557, 41.701839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.092731, 35.505604, 41.883167>,  <40.198357, 35.691631, 41.991962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.092731, 35.505604, 41.883167>,  <39.916691, 35.195557, 41.701839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092731, 35.505604, 41.883167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173016, -0.568578, 0.804229,
		0.881123, -0.275509, -0.384339,
		0.440099, 0.775122, 0.453320,
		40.224762, 35.738140, 42.019165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396976, 34.975563, 42.062088>,  <39.916691, 35.195557, 41.701839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396976, 34.975563, 42.062088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365276, 35.327675, 42.249207>,  <40.346256, 35.538940, 42.361477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365276, 35.327675, 42.249207>,  <40.396976, 34.975563, 42.062088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365276, 35.327675, 42.249207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044399, -0.471926, 0.880520,
		0.995866, 0.049011, 0.076483,
		-0.079249, 0.880275, 0.467799,
		40.341503, 35.591759, 42.389545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001423, 35.062290, 42.593468>,  <40.396976, 34.975563, 42.062088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001423, 35.062290, 42.593468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.696602, 35.297394, 42.702141>,  <40.513710, 35.438457, 42.767345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.696602, 35.297394, 42.702141>,  <41.001423, 35.062290, 42.593468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696602, 35.297394, 42.702141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066654, -0.346141, 0.935812,
		0.644076, 0.731246, 0.224600,
		-0.762052, 0.587764, 0.271682,
		40.467987, 35.473724, 42.783646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223961, 35.438499, 43.227669>,  <41.001423, 35.062290, 42.593468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223961, 35.438499, 43.227669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.824715, 35.460075, 43.215988>,  <40.585167, 35.473022, 43.208981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.824715, 35.460075, 43.215988>,  <41.223961, 35.438499, 43.227669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824715, 35.460075, 43.215988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042494, -0.264683, 0.963399,
		0.044238, 0.962826, 0.266477,
		-0.998117, 0.053942, -0.029205,
		40.525280, 35.476257, 43.207226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026268, 35.720631, 43.867981>,  <41.223961, 35.438499, 43.227669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026268, 35.720631, 43.867981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.670284, 35.589012, 43.741688>,  <40.456692, 35.510040, 43.665913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.670284, 35.589012, 43.741688>,  <41.026268, 35.720631, 43.867981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670284, 35.589012, 43.741688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181132, -0.380343, 0.906935,
		-0.418515, 0.864330, 0.278890,
		-0.889964, -0.329050, -0.315737,
		40.403294, 35.490295, 43.646965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585320, 35.847157, 44.459801>,  <41.026268, 35.720631, 43.867981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585320, 35.847157, 44.459801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.416553, 35.575375, 44.219692>,  <40.315296, 35.412304, 44.075626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.416553, 35.575375, 44.219692>,  <40.585320, 35.847157, 44.459801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416553, 35.575375, 44.219692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152855, -0.599304, 0.785793,
		-0.893659, 0.423290, 0.148995,
		-0.421911, -0.679456, -0.600275,
		40.289982, 35.371536, 44.039608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.745457, 35.807701, 44.589718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.864746, 35.462196, 44.427242>,  <39.936317, 35.254894, 44.329758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.864746, 35.462196, 44.427242>,  <39.745457, 35.807701, 44.589718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864746, 35.462196, 44.427242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496006, -0.503819, 0.707209,
		-0.815501, -0.009433, -0.578678,
		0.298221, -0.863757, -0.406186,
		39.954212, 35.203068, 44.305386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193462, 35.478760, 44.609592>,  <39.745457, 35.807701, 44.589718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193462, 35.478760, 44.609592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.462109, 35.187263, 44.556129>,  <39.623295, 35.012363, 44.524052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.462109, 35.187263, 44.556129>,  <39.193462, 35.478760, 44.609592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462109, 35.187263, 44.556129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479346, -0.564943, 0.671616,
		-0.564943, -0.387002, -0.728745,
		-0.671616, 0.728745, 0.133653,
		39.663593, 34.968639, 44.516033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759693, 34.867928, 44.610104>,  <39.193462, 35.478760, 44.609592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759693, 34.867928, 44.610104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135414, 34.755981, 44.689499>,  <39.360847, 34.688816, 44.737137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135414, 34.755981, 44.689499>,  <38.759693, 34.867928, 44.610104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135414, 34.755981, 44.689499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329999, -0.578561, 0.745901,
		-0.093914, -0.766123, -0.635796,
		0.939298, -0.279862, 0.198485,
		39.417202, 34.672024, 44.749043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757523, 34.145561, 44.685795>,  <38.759693, 34.867928, 44.610104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757523, 34.145561, 44.685795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097507, 34.250519, 44.868538>,  <39.301498, 34.313496, 44.978184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097507, 34.250519, 44.868538>,  <38.757523, 34.145561, 44.685795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097507, 34.250519, 44.868538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341589, -0.385718, 0.857052,
		0.401106, -0.884516, -0.238212,
		0.849959, 0.262398, 0.456855,
		39.352497, 34.329239, 45.005596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924454, 33.621834, 45.132763>,  <38.757523, 34.145561, 44.685795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924454, 33.621834, 45.132763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.150818, 33.912109, 45.289291>,  <39.286636, 34.086273, 45.383209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.150818, 33.912109, 45.289291>,  <38.924454, 33.621834, 45.132763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150818, 33.912109, 45.289291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300160, -0.260715, 0.917569,
		0.767888, -0.636717, 0.070281,
		0.565908, 0.725685, 0.391317,
		39.320591, 34.129814, 45.406685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403481, 33.288113, 45.696762>,  <38.924454, 33.621834, 45.132763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403481, 33.288113, 45.696762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.369038, 33.679157, 45.773560>,  <39.348370, 33.913784, 45.819637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.369038, 33.679157, 45.773560>,  <39.403481, 33.288113, 45.696762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369038, 33.679157, 45.773560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253415, -0.207866, 0.944761,
		0.963517, 0.032698, 0.265641,
		-0.086110, 0.977611, 0.191996,
		39.343204, 33.972439, 45.831158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554295, 33.297108, 46.421406>,  <39.403481, 33.288113, 45.696762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554295, 33.297108, 46.421406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424358, 33.669373, 46.354061>,  <39.346397, 33.892731, 46.313656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424358, 33.669373, 46.354061>,  <39.554295, 33.297108, 46.421406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424358, 33.669373, 46.354061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286262, 0.072915, 0.955373,
		0.901407, 0.358536, 0.242728,
		-0.324837, 0.930664, -0.168361,
		39.326908, 33.948570, 46.303555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906364, 33.815853, 46.857090>,  <39.554295, 33.297108, 46.421406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906364, 33.815853, 46.857090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.557289, 33.986172, 46.761501>,  <39.347843, 34.088364, 46.704147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.557289, 33.986172, 46.761501>,  <39.906364, 33.815853, 46.857090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557289, 33.986172, 46.761501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217532, 0.099129, 0.971006,
		0.437141, 0.899372, 0.006116,
		-0.872690, 0.425797, -0.238976,
		39.295483, 34.113911, 46.689808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855976, 34.585514, 47.127617>,  <39.906364, 33.815853, 46.857090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855976, 34.585514, 47.127617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483349, 34.447910, 47.080566>,  <39.259773, 34.365349, 47.052338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483349, 34.447910, 47.080566>,  <39.855976, 34.585514, 47.127617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483349, 34.447910, 47.080566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167743, 0.119650, 0.978543,
		-0.322552, 0.931312, -0.169167,
		-0.931570, -0.344008, -0.117627,
		39.203876, 34.344707, 47.045277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670750, 34.775982, 47.772072>,  <39.855976, 34.585514, 47.127617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670750, 34.775982, 47.772072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.364189, 34.567677, 47.621639>,  <39.180252, 34.442696, 47.531380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.364189, 34.567677, 47.621639>,  <39.670750, 34.775982, 47.772072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364189, 34.567677, 47.621639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183102, -0.384079, 0.904962,
		-0.615715, 0.762425, 0.199005,
		-0.766399, -0.520761, -0.376085,
		39.134270, 34.411449, 47.508812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132202, 34.886051, 48.230312>,  <39.670750, 34.775982, 47.772072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132202, 34.886051, 48.230312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036461, 34.532127, 48.070396>,  <38.979015, 34.319775, 47.974449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036461, 34.532127, 48.070396>,  <39.132202, 34.886051, 48.230312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036461, 34.532127, 48.070396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134132, -0.377674, 0.916172,
		-0.961623, 0.272911, -0.028284,
		-0.239351, -0.884806, -0.399787,
		38.964657, 34.266685, 47.950462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565559, 34.660839, 48.696465>,  <39.132202, 34.886051, 48.230312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565559, 34.660839, 48.696465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.747990, 34.359554, 48.506866>,  <38.857449, 34.178783, 48.393108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.747990, 34.359554, 48.506866>,  <38.565559, 34.660839, 48.696465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747990, 34.359554, 48.506866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042535, -0.513554, 0.857003,
		-0.888923, -0.411021, -0.202182,
		0.456077, -0.753210, -0.473993,
		38.884811, 34.133591, 48.364670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194725, 34.120308, 48.924088>,  <38.565559, 34.660839, 48.696465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194725, 34.120308, 48.924088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534824, 33.980728, 48.766445>,  <38.738884, 33.896980, 48.671860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534824, 33.980728, 48.766445>,  <38.194725, 34.120308, 48.924088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534824, 33.980728, 48.766445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093822, -0.636247, 0.765759,
		-0.517957, -0.688059, -0.508227,
		0.850246, -0.348947, -0.394104,
		38.789898, 33.876045, 48.648212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116489, 33.393562, 48.943230>,  <38.194725, 34.120308, 48.924088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116489, 33.393562, 48.943230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504898, 33.486156, 48.919449>,  <38.737942, 33.541714, 48.905178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504898, 33.486156, 48.919449>,  <38.116489, 33.393562, 48.943230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504898, 33.486156, 48.919449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189055, -0.591759, 0.783632,
		0.146218, -0.772162, -0.618374,
		0.971020, 0.231488, -0.059455,
		38.796204, 33.555603, 48.901611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475677, 32.767681, 49.143745>,  <38.116489, 33.393562, 48.943230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475677, 32.767681, 49.143745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763638, 33.043312, 49.177013>,  <38.936413, 33.208691, 49.196976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763638, 33.043312, 49.177013>,  <38.475677, 32.767681, 49.143745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763638, 33.043312, 49.177013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340479, -0.455022, 0.822818,
		0.604829, -0.564028, -0.562186,
		0.719900, 0.689077, 0.083171,
		38.979607, 33.250034, 49.201965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138241, 32.472130, 49.296703>,  <38.475677, 32.767681, 49.143745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138241, 32.472130, 49.296703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163380, 32.846012, 49.436634>,  <39.178463, 33.070343, 49.520592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163380, 32.846012, 49.436634>,  <39.138241, 32.472130, 49.296703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163380, 32.846012, 49.436634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489729, -0.334297, 0.805240,
		0.869607, 0.120711, -0.478762,
		0.062847, 0.934706, 0.349822,
		39.182236, 33.126423, 49.541580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888977, 32.503685, 49.664822>,  <39.138241, 32.472130, 49.296703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888977, 32.503685, 49.664822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.666298, 32.815979, 49.778339>,  <39.532688, 33.003353, 49.846451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.666298, 32.815979, 49.778339>,  <39.888977, 32.503685, 49.664822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666298, 32.815979, 49.778339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277949, -0.146882, 0.949300,
		0.782834, 0.607357, -0.135235,
		-0.556700, 0.780733, 0.283798,
		39.499287, 33.050198, 49.863480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349953, 33.005440, 49.968456>,  <39.888977, 32.503685, 49.664822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349953, 33.005440, 49.968456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.971336, 33.043625, 50.091713>,  <39.744167, 33.066536, 50.165668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.971336, 33.043625, 50.091713>,  <40.349953, 33.005440, 49.968456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971336, 33.043625, 50.091713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311719, 0.024742, 0.949852,
		0.083056, 0.995125, -0.053178,
		-0.946537, 0.095467, 0.308144,
		39.687374, 33.072266, 50.184155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419315, 33.460678, 50.625614>,  <40.349953, 33.005440, 49.968456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419315, 33.460678, 50.625614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.061634, 33.281719, 50.631664>,  <39.847023, 33.174343, 50.635296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.061634, 33.281719, 50.631664>,  <40.419315, 33.460678, 50.625614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061634, 33.281719, 50.631664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032364, -0.030912, 0.998998,
		-0.446481, 0.893801, 0.042121,
		-0.894208, -0.447397, 0.015125,
		39.793373, 33.147499, 50.636200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160046, 33.616642, 51.218430>,  <40.419315, 33.460678, 50.625614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160046, 33.616642, 51.218430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.917767, 33.315399, 51.115696>,  <39.772400, 33.134655, 51.054058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.917767, 33.315399, 51.115696>,  <40.160046, 33.616642, 51.218430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917767, 33.315399, 51.115696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022254, -0.338685, 0.940637,
		-0.795382, 0.564027, 0.221901,
		-0.605699, -0.753104, -0.256832,
		39.736057, 33.089466, 51.038647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673203, 33.671986, 51.671879>,  <40.160046, 33.616642, 51.218430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673203, 33.671986, 51.671879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.614582, 33.299858, 51.537399>,  <39.579411, 33.076580, 51.456711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.614582, 33.299858, 51.537399>,  <39.673203, 33.671986, 51.671879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614582, 33.299858, 51.537399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238729, -0.296557, 0.924696,
		-0.959964, 0.215775, -0.178633,
		-0.146551, -0.930320, -0.336196,
		39.570618, 33.020763, 51.436539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056831, 33.488148, 51.947289>,  <39.673203, 33.671986, 51.671879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056831, 33.488148, 51.947289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.221832, 33.134209, 51.860672>,  <39.320831, 32.921844, 51.808704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.221832, 33.134209, 51.860672>,  <39.056831, 33.488148, 51.947289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221832, 33.134209, 51.860672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190368, -0.316188, 0.929401,
		-0.890844, -0.342157, -0.298874,
		0.412501, -0.884847, -0.216538,
		39.345581, 32.868755, 51.795712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550350, 32.855198, 51.974430>,  <39.056831, 33.488148, 51.947289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550350, 32.855198, 51.974430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930882, 32.757298, 52.049343>,  <39.159199, 32.698559, 52.094292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930882, 32.757298, 52.049343>,  <38.550350, 32.855198, 51.974430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930882, 32.757298, 52.049343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255082, -0.284308, 0.924176,
		-0.172945, -0.926967, -0.332901,
		0.951327, -0.244749, 0.187283,
		39.216278, 32.683872, 52.105526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740906, 33.003578, 52.016029>,  <38.550350, 32.855198, 51.974430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740906, 33.003578, 52.016029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624184, 32.640503, 51.895393>,  <37.554150, 32.422657, 51.823009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624184, 32.640503, 51.895393>,  <37.740906, 33.003578, 52.016029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624184, 32.640503, 51.895393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872942, 0.381605, -0.303891,
		0.390925, 0.174593, -0.903712,
		-0.291803, -0.907686, -0.301589,
		37.536644, 32.368198, 51.804916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949673, 33.008965, 51.986198>,  <37.740906, 33.003578, 52.016029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949673, 33.008965, 51.986198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.566628, 33.064156, 52.087349>,  <36.336800, 33.097271, 52.148041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.566628, 33.064156, 52.087349>,  <36.949673, 33.008965, 51.986198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566628, 33.064156, 52.087349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229943, 0.162662, -0.959514,
		-0.173530, -0.976986, -0.124038,
		-0.957608, 0.137982, 0.252878,
		36.279346, 33.105549, 52.163212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590229, 32.569855, 51.537781>,  <36.949673, 33.008965, 51.986198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590229, 32.569855, 51.537781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343399, 32.855892, 51.669144>,  <36.195301, 33.027515, 51.747963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343399, 32.855892, 51.669144>,  <36.590229, 32.569855, 51.537781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343399, 32.855892, 51.669144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157734, 0.296470, -0.941926,
		-0.770933, -0.633042, -0.070149,
		-0.617076, 0.715097, 0.328411,
		36.158276, 33.070423, 51.767666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946239, 32.472286, 51.197025>,  <36.590229, 32.569855, 51.537781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946239, 32.472286, 51.197025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926582, 32.851326, 51.323292>,  <35.914787, 33.078751, 51.399052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926582, 32.851326, 51.323292>,  <35.946239, 32.472286, 51.197025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926582, 32.851326, 51.323292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124255, 0.307792, -0.943305,
		-0.991032, -0.085583, 0.102616,
		-0.049147, 0.947597, 0.315666,
		35.911839, 33.135605, 51.417992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315659, 32.815281, 50.934956>,  <35.946239, 32.472286, 51.197025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315659, 32.815281, 50.934956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556568, 33.119759, 51.031158>,  <35.701115, 33.302444, 51.088882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556568, 33.119759, 51.031158>,  <35.315659, 32.815281, 50.934956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556568, 33.119759, 51.031158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065876, 0.347644, -0.935309,
		-0.795567, 0.547468, 0.259522,
		0.602274, 0.761197, 0.240509,
		35.737251, 33.348118, 51.103310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012665, 33.496304, 50.709705>,  <35.315659, 32.815281, 50.934956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012665, 33.496304, 50.709705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405655, 33.555630, 50.754852>,  <35.641449, 33.591225, 50.781940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405655, 33.555630, 50.754852>,  <35.012665, 33.496304, 50.709705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405655, 33.555630, 50.754852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047180, 0.387933, -0.920479,
		-0.180303, 0.909676, 0.374139,
		0.982479, 0.148313, 0.112864,
		35.700397, 33.600124, 50.788712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070412, 34.128258, 50.425346>,  <35.012665, 33.496304, 50.709705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070412, 34.128258, 50.425346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438988, 33.972904, 50.429371>,  <35.660133, 33.879692, 50.431786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438988, 33.972904, 50.429371>,  <35.070412, 34.128258, 50.425346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438988, 33.972904, 50.429371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163560, 0.364299, -0.916807,
		0.352406, 0.846431, 0.399205,
		0.921444, -0.388382, 0.010061,
		35.715420, 33.856388, 50.432388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456455, 34.585979, 50.006279>,  <35.070412, 34.128258, 50.425346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456455, 34.585979, 50.006279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716396, 34.284298, 50.043957>,  <35.872360, 34.103291, 50.066563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716396, 34.284298, 50.043957>,  <35.456455, 34.585979, 50.006279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716396, 34.284298, 50.043957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384739, 0.219538, -0.896537,
		0.655493, 0.618853, 0.432839,
		0.649849, -0.754204, 0.094191,
		35.911350, 34.058037, 50.072212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066231, 34.825924, 49.886223>,  <35.456455, 34.585979, 50.006279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066231, 34.825924, 49.886223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134693, 34.443840, 49.789654>,  <36.175770, 34.214592, 49.731712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134693, 34.443840, 49.789654>,  <36.066231, 34.825924, 49.886223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134693, 34.443840, 49.789654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178111, 0.270999, -0.945958,
		0.969011, 0.118908, 0.216516,
		0.171158, -0.955207, -0.241422,
		36.186039, 34.157276, 49.717228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757626, 34.791069, 49.584591>,  <36.066231, 34.825924, 49.886223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757626, 34.791069, 49.584591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.506306, 34.521832, 49.428547>,  <36.355515, 34.360287, 49.334919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.506306, 34.521832, 49.428547>,  <36.757626, 34.791069, 49.584591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506306, 34.521832, 49.428547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371832, 0.180650, -0.910553,
		0.683363, -0.717153, 0.136777,
		-0.628297, -0.673096, -0.390110,
		36.317818, 34.319904, 49.311516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066219, 34.584721, 48.970135>,  <36.757626, 34.791069, 49.584591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066219, 34.584721, 48.970135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.709122, 34.424057, 48.888477>,  <36.494862, 34.327660, 48.839481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.709122, 34.424057, 48.888477>,  <37.066219, 34.584721, 48.970135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709122, 34.424057, 48.888477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152253, 0.157500, -0.975711,
		0.424053, -0.902145, -0.079454,
		-0.892747, -0.401657, -0.204143,
		36.441296, 34.303558, 48.827236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099533, 33.908138, 48.508438>,  <37.066219, 34.584721, 48.970135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099533, 33.908138, 48.508438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.729969, 34.056244, 48.469868>,  <36.508232, 34.145107, 48.446728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.729969, 34.056244, 48.469868>,  <37.099533, 33.908138, 48.508438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729969, 34.056244, 48.469868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151736, 0.123225, -0.980710,
		-0.351240, -0.920717, -0.170031,
		-0.923908, 0.370264, -0.096424,
		36.452797, 34.167324, 48.440941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806564, 33.640572, 47.867794>,  <37.099533, 33.908138, 48.508438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806564, 33.640572, 47.867794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570332, 33.958851, 47.921585>,  <36.428593, 34.149818, 47.953857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570332, 33.958851, 47.921585>,  <36.806564, 33.640572, 47.867794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570332, 33.958851, 47.921585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123968, 0.254116, -0.959196,
		-0.797400, -0.549811, -0.248717,
		-0.590580, 0.795696, 0.134474,
		36.393158, 34.197559, 47.961926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313770, 33.582554, 47.376133>,  <36.806564, 33.640572, 47.867794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313770, 33.582554, 47.376133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365417, 33.962624, 47.489624>,  <36.396408, 34.190666, 47.557716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365417, 33.962624, 47.489624>,  <36.313770, 33.582554, 47.376133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365417, 33.962624, 47.489624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150519, 0.264024, -0.952699,
		-0.980139, 0.165719, -0.108928,
		0.129121, 0.950173, 0.283724,
		36.404152, 34.247677, 47.574741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004822, 33.945309, 46.804577>,  <36.313770, 33.582554, 47.376133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004822, 33.945309, 46.804577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157040, 34.253712, 47.008823>,  <36.248371, 34.438755, 47.131371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157040, 34.253712, 47.008823>,  <36.004822, 33.945309, 46.804577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157040, 34.253712, 47.008823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120189, 0.506238, -0.853978,
		-0.916917, 0.386350, 0.099981,
		0.380548, 0.771010, 0.510613,
		36.271206, 34.485016, 47.162006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619053, 34.639103, 46.543629>,  <36.004822, 33.945309, 46.804577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619053, 34.639103, 46.543629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984787, 34.720592, 46.683624>,  <36.204227, 34.769485, 46.767624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984787, 34.720592, 46.683624>,  <35.619053, 34.639103, 46.543629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984787, 34.720592, 46.683624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212517, 0.494298, -0.842915,
		-0.344725, 0.845083, 0.408656,
		0.914331, 0.203727, 0.349991,
		36.259087, 34.781712, 46.788620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602444, 35.167244, 46.237984>,  <35.619053, 34.639103, 46.543629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602444, 35.167244, 46.237984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970634, 35.101040, 46.379593>,  <36.191547, 35.061317, 46.464558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970634, 35.101040, 46.379593>,  <35.602444, 35.167244, 46.237984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970634, 35.101040, 46.379593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375262, 0.627258, -0.682442,
		-0.109112, 0.761021, 0.639485,
		0.920474, -0.165511, 0.354024,
		36.246777, 35.051388, 46.485802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804825, 35.798847, 46.386299>,  <35.602444, 35.167244, 46.237984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804825, 35.798847, 46.386299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129826, 35.576408, 46.316322>,  <36.324825, 35.442947, 46.274334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129826, 35.576408, 46.316322>,  <35.804825, 35.798847, 46.386299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129826, 35.576408, 46.316322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264278, 0.618843, -0.739723,
		0.519619, 0.554790, 0.649772,
		0.812498, -0.556095, -0.174944,
		36.373573, 35.409580, 46.263840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300022, 36.277458, 46.266190>,  <35.804825, 35.798847, 46.386299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300022, 36.277458, 46.266190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.447052, 35.947380, 46.094635>,  <36.535271, 35.749332, 45.991703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.447052, 35.947380, 46.094635>,  <36.300022, 36.277458, 46.266190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447052, 35.947380, 46.094635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433956, 0.560076, -0.705689,
		0.822539, 0.073276, 0.563968,
		0.367576, -0.825194, -0.428886,
		36.557323, 35.699821, 45.965969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962021, 36.442638, 46.159351>,  <36.300022, 36.277458, 46.266190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962021, 36.442638, 46.159351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884701, 36.148125, 45.899963>,  <36.838310, 35.971416, 45.744331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884701, 36.148125, 45.899963>,  <36.962021, 36.442638, 46.159351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884701, 36.148125, 45.899963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358888, 0.562075, -0.745165,
		0.913146, -0.376769, 0.155596,
		-0.193299, -0.736286, -0.648474,
		36.826710, 35.927238, 45.705421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481686, 36.420849, 45.681210>,  <36.962021, 36.442638, 46.159351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481686, 36.420849, 45.681210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216911, 36.208817, 45.469223>,  <37.058048, 36.081596, 45.342033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216911, 36.208817, 45.469223>,  <37.481686, 36.420849, 45.681210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216911, 36.208817, 45.469223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271245, 0.489719, -0.828614,
		0.698763, -0.692238, -0.180381,
		-0.661934, -0.530077, -0.529964,
		37.018330, 36.049793, 45.310234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.600216, 42.990910, 33.728451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.704399, 43.049221, 33.346684>,  <46.766911, 43.084206, 33.117622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.704399, 43.049221, 33.346684>,  <46.600216, 42.990910, 33.728451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.704399, 43.049221, 33.346684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889503, -0.348159, -0.295923,
		-0.375426, 0.926032, 0.038985,
		0.260461, 0.145774, -0.954416,
		46.782536, 43.092953, 33.060360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.907417, 43.114693, 33.293480>,  <46.600216, 42.990910, 33.728451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.907417, 43.114693, 33.293480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.190430, 42.985100, 33.042267>,  <46.360237, 42.907345, 32.891537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.190430, 42.985100, 33.042267>,  <45.907417, 43.114693, 33.293480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.190430, 42.985100, 33.042267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672988, -0.580050, -0.458943,
		-0.215601, 0.747379, -0.628443,
		0.707533, -0.323987, -0.628036,
		46.402691, 42.887905, 32.853855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592926, 43.108356, 32.551537>,  <45.907417, 43.114693, 33.293480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592926, 43.108356, 32.551537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.916916, 42.874290, 32.567154>,  <46.111309, 42.733852, 32.576523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.916916, 42.874290, 32.567154>,  <45.592926, 43.108356, 32.551537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.916916, 42.874290, 32.567154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522542, -0.750314, -0.404942,
		0.266249, 0.307594, -0.913508,
		0.809976, -0.585162, 0.039039,
		46.159908, 42.698742, 32.578865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589611, 42.824173, 31.895750>,  <45.592926, 43.108356, 32.551537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589611, 42.824173, 31.895750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831528, 42.599869, 32.121944>,  <45.976677, 42.465286, 32.257660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831528, 42.599869, 32.121944>,  <45.589611, 42.824173, 31.895750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831528, 42.599869, 32.121944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399531, -0.827887, -0.393673,
		0.688916, 0.012161, -0.724739,
		0.604789, -0.560763, 0.565486,
		46.012966, 42.431641, 32.291592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752377, 42.150928, 31.436813>,  <45.589611, 42.824173, 31.895750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752377, 42.150928, 31.436813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.829067, 42.054176, 31.817284>,  <45.875084, 41.996124, 32.045567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.829067, 42.054176, 31.817284>,  <45.752377, 42.150928, 31.436813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.829067, 42.054176, 31.817284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490620, -0.862993, -0.120558,
		0.850018, -0.443551, -0.284132,
		0.191730, -0.241877, 0.951175,
		45.886585, 41.981613, 32.102634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.889484, 41.442730, 31.459650>,  <45.752377, 42.150928, 31.436813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.889484, 41.442730, 31.459650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.829979, 41.454700, 31.855019>,  <45.794273, 41.461884, 32.092239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.829979, 41.454700, 31.855019>,  <45.889484, 41.442730, 31.459650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.829979, 41.454700, 31.855019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581853, -0.810848, -0.063025,
		0.799572, -0.584491, 0.138041,
		-0.148768, 0.029927, 0.988419,
		45.785347, 41.463680, 32.151543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843575, 40.728477, 31.741001>,  <45.889484, 41.442730, 31.459650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843575, 40.728477, 31.741001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.669235, 40.932156, 32.037853>,  <45.564632, 41.054363, 32.215965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.669235, 40.932156, 32.037853>,  <45.843575, 40.728477, 31.741001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.669235, 40.932156, 32.037853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646418, -0.750848, 0.135538,
		0.626244, -0.420654, 0.656406,
		-0.435847, 0.509192, 0.742133,
		45.538483, 41.084915, 32.260494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822323, 40.262787, 32.314571>,  <45.843575, 40.728477, 31.741001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822323, 40.262787, 32.314571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.538445, 40.538029, 32.375031>,  <45.368118, 40.703175, 32.411304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.538445, 40.538029, 32.375031>,  <45.822323, 40.262787, 32.314571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538445, 40.538029, 32.375031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632363, -0.716759, 0.293893,
		0.310564, 0.112995, 0.943813,
		-0.709695, 0.688105, 0.151146,
		45.325535, 40.744461, 32.420376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511654, 40.040039, 32.916428>,  <45.822323, 40.262787, 32.314571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511654, 40.040039, 32.916428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251446, 40.289230, 32.742661>,  <45.095322, 40.438744, 32.638401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251446, 40.289230, 32.742661>,  <45.511654, 40.040039, 32.916428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251446, 40.289230, 32.742661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735758, -0.658790, 0.157021,
		-0.188371, 0.421774, 0.886918,
		-0.650520, 0.622978, -0.434421,
		45.056290, 40.476124, 32.612335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925411, 40.053234, 33.322586>,  <45.511654, 40.040039, 32.916428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925411, 40.053234, 33.322586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798512, 40.178680, 32.964592>,  <44.722370, 40.253948, 32.749798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798512, 40.178680, 32.964592>,  <44.925411, 40.053234, 33.322586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798512, 40.178680, 32.964592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767982, -0.638637, 0.048442,
		-0.556377, 0.702699, 0.443463,
		-0.317252, 0.313620, -0.894983,
		44.703335, 40.272766, 32.696098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187389, 40.211700, 33.434528>,  <44.925411, 40.053234, 33.322586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187389, 40.211700, 33.434528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.223347, 40.156757, 33.039955>,  <44.244923, 40.123791, 32.803211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.223347, 40.156757, 33.039955>,  <44.187389, 40.211700, 33.434528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223347, 40.156757, 33.039955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651060, -0.757621, 0.046165,
		-0.753684, 0.638078, -0.157533,
		0.089893, -0.137357, -0.986434,
		44.250313, 40.115551, 32.744026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533375, 40.031250, 33.206551>,  <44.187389, 40.211700, 33.434528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533375, 40.031250, 33.206551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.759575, 39.918476, 32.896526>,  <43.895294, 39.850811, 32.710510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.759575, 39.918476, 32.896526>,  <43.533375, 40.031250, 33.206551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759575, 39.918476, 32.896526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400119, -0.915541, 0.041095,
		-0.721186, 0.286877, -0.630548,
		0.565504, -0.281931, -0.775061,
		43.929226, 39.833897, 32.664009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075382, 39.661274, 32.878315>,  <43.533375, 40.031250, 33.206551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075382, 39.661274, 32.878315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.431076, 39.548264, 32.734402>,  <43.644493, 39.480457, 32.648056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.431076, 39.548264, 32.734402>,  <43.075382, 39.661274, 32.878315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431076, 39.548264, 32.734402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367433, -0.909622, -0.193857,
		-0.272495, 0.304579, -0.912676,
		0.889235, -0.282523, -0.359780,
		43.697845, 39.463509, 32.626469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008224, 39.315456, 32.192497>,  <43.075382, 39.661274, 32.878315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008224, 39.315456, 32.192497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365276, 39.202446, 32.333012>,  <43.579506, 39.134640, 32.417320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365276, 39.202446, 32.333012>,  <43.008224, 39.315456, 32.192497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365276, 39.202446, 32.333012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276182, -0.958612, -0.069187,
		0.356290, -0.035259, -0.933710,
		0.892626, -0.282524, 0.351282,
		43.633064, 39.117687, 32.438396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138504, 38.658699, 31.912239>,  <43.008224, 39.315456, 32.192497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138504, 38.658699, 31.912239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.410301, 38.673588, 32.205334>,  <43.573380, 38.682522, 32.381191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.410301, 38.673588, 32.205334>,  <43.138504, 38.658699, 31.912239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410301, 38.673588, 32.205334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098773, -0.984980, 0.141630,
		0.727004, -0.168611, -0.665609,
		0.679492, 0.037221, 0.732738,
		43.614147, 38.684753, 32.425156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549091, 37.984409, 31.859837>,  <43.138504, 38.658699, 31.912239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549091, 37.984409, 31.859837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.585300, 38.138729, 32.227089>,  <43.607025, 38.231319, 32.447441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.585300, 38.138729, 32.227089>,  <43.549091, 37.984409, 31.859837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585300, 38.138729, 32.227089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142830, -0.907357, 0.395353,
		0.985599, -0.166925, -0.027034,
		0.090523, 0.385798, 0.918131,
		43.612457, 38.254467, 32.502529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009365, 37.487339, 32.271923>,  <43.549091, 37.984409, 31.859837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009365, 37.487339, 32.271923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819599, 37.715492, 32.540131>,  <43.705742, 37.852383, 32.701054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819599, 37.715492, 32.540131>,  <44.009365, 37.487339, 32.271923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819599, 37.715492, 32.540131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224117, -0.814852, 0.534591,
		0.851296, 0.103341, 0.514408,
		-0.474412, 0.570383, 0.670520,
		43.677277, 37.886608, 32.741287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142742, 37.245239, 32.918758>,  <44.009365, 37.487339, 32.271923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142742, 37.245239, 32.918758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.788883, 37.427498, 32.958321>,  <43.576569, 37.536854, 32.982059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.788883, 37.427498, 32.958321>,  <44.142742, 37.245239, 32.918758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788883, 37.427498, 32.958321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306565, -0.728252, 0.612917,
		0.351304, 0.511895, 0.783932,
		-0.884649, 0.455646, 0.098908,
		43.523487, 37.564190, 32.987991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049725, 37.276608, 33.681515>,  <44.142742, 37.245239, 32.918758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049725, 37.276608, 33.681515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.682194, 37.356445, 33.545330>,  <43.461674, 37.404350, 33.463619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.682194, 37.356445, 33.545330>,  <44.049725, 37.276608, 33.681515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682194, 37.356445, 33.545330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392874, -0.544449, 0.741098,
		-0.037442, 0.814700, 0.578673,
		-0.918830, 0.199597, -0.340460,
		43.406544, 37.416325, 33.443192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721447, 37.337471, 34.301022>,  <44.049725, 37.276608, 33.681515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721447, 37.337471, 34.301022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438690, 37.272575, 34.025635>,  <43.269035, 37.233639, 33.860401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438690, 37.272575, 34.025635>,  <43.721447, 37.337471, 34.301022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438690, 37.272575, 34.025635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508567, -0.559900, 0.654119,
		-0.491597, 0.812521, 0.313277,
		-0.706889, -0.162241, -0.688466,
		43.226624, 37.223904, 33.819096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142460, 37.177296, 34.765114>,  <43.721447, 37.337471, 34.301022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142460, 37.177296, 34.765114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060219, 37.026566, 34.403843>,  <43.010876, 36.936127, 34.187080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060219, 37.026566, 34.403843>,  <43.142460, 37.177296, 34.765114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060219, 37.026566, 34.403843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454952, -0.780302, 0.429124,
		-0.866456, 0.499132, -0.011004,
		-0.205603, -0.376824, -0.903179,
		42.998539, 36.913517, 34.132889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809067, 36.892052, 35.211891>,  <43.142460, 37.177296, 34.765114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809067, 36.892052, 35.211891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.208824, 36.881710, 35.221256>,  <44.448677, 36.875507, 35.226875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.208824, 36.881710, 35.221256>,  <43.809067, 36.892052, 35.211891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208824, 36.881710, 35.221256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011885, 0.883536, 0.468213,
		-0.032789, -0.467649, 0.883306,
		0.999391, -0.025850, 0.023412,
		44.508640, 36.873955, 35.228279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021790, 36.953163, 35.819111>,  <43.809067, 36.892052, 35.211891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021790, 36.953163, 35.819111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351154, 37.075455, 35.627895>,  <44.548775, 37.148830, 35.513165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351154, 37.075455, 35.627895>,  <44.021790, 36.953163, 35.819111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351154, 37.075455, 35.627895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068261, 0.889694, 0.451425,
		0.563323, -0.339077, 0.753454,
		0.823412, 0.305730, -0.478040,
		44.598179, 37.167175, 35.484482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519402, 37.390190, 36.317413>,  <44.021790, 36.953163, 35.819111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519402, 37.390190, 36.317413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632008, 37.496868, 35.948711>,  <44.699570, 37.560875, 35.727489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632008, 37.496868, 35.948711>,  <44.519402, 37.390190, 36.317413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632008, 37.496868, 35.948711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032070, 0.957449, 0.286816,
		0.959019, -0.110306, 0.260989,
		0.281521, 0.266692, -0.921749,
		44.716461, 37.576878, 35.672188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006069, 37.845558, 36.515602>,  <44.519402, 37.390190, 36.317413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006069, 37.845558, 36.515602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.896778, 37.913609, 36.136887>,  <44.831203, 37.954437, 35.909657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.896778, 37.913609, 36.136887>,  <45.006069, 37.845558, 36.515602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896778, 37.913609, 36.136887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092387, 0.984329, 0.150206,
		0.957501, -0.046429, -0.284667,
		-0.273232, 0.170122, -0.946786,
		44.814808, 37.964645, 35.852852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437675, 38.323025, 36.331867>,  <45.006069, 37.845558, 36.515602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437675, 38.323025, 36.331867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.135090, 38.356987, 36.072468>,  <44.953537, 38.377365, 35.916828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.135090, 38.356987, 36.072468>,  <45.437675, 38.323025, 36.331867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135090, 38.356987, 36.072468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025693, 0.986914, 0.159188,
		0.653529, 0.137082, -0.744384,
		-0.756465, 0.084908, -0.648499,
		44.908150, 38.382458, 35.877918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.649635, 38.863190, 35.966949>,  <45.437675, 38.323025, 36.331867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.649635, 38.863190, 35.966949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.260315, 38.840038, 35.878109>,  <45.026722, 38.826145, 35.824806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.260315, 38.840038, 35.878109>,  <45.649635, 38.863190, 35.966949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260315, 38.840038, 35.878109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046110, 0.997261, -0.057828,
		0.224839, -0.046044, -0.973308,
		-0.973304, -0.057882, -0.222100,
		44.968323, 38.822674, 35.811478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.534134, 39.344006, 35.455589>,  <45.649635, 38.863190, 35.966949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.534134, 39.344006, 35.455589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182442, 39.275105, 35.633251>,  <44.971424, 39.233765, 35.739849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182442, 39.275105, 35.633251>,  <45.534134, 39.344006, 35.455589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182442, 39.275105, 35.633251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227384, 0.971025, -0.073537,
		-0.418622, -0.165650, -0.892926,
		-0.879234, -0.172252, 0.444158,
		44.918671, 39.223431, 35.766499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133484, 39.911282, 35.048592>,  <45.534134, 39.344006, 35.455589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.133484, 39.911282, 35.048592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.880070, 39.781513, 35.329556>,  <44.728020, 39.703651, 35.498135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.880070, 39.781513, 35.329556>,  <45.133484, 39.911282, 35.048592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880070, 39.781513, 35.329556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453009, 0.891500, 0.003164,
		-0.627224, -0.316193, -0.711766,
		-0.633539, -0.324422, 0.702409,
		44.690006, 39.684185, 35.540279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454063, 40.104710, 34.882282>,  <45.133484, 39.911282, 35.048592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454063, 40.104710, 34.882282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443306, 40.061050, 35.279747>,  <44.436852, 40.034855, 35.518227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443306, 40.061050, 35.279747>,  <44.454063, 40.104710, 34.882282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443306, 40.061050, 35.279747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368365, 0.925153, 0.091651,
		-0.929292, -0.363565, -0.065085,
		-0.026892, -0.109145, 0.993662,
		44.435238, 40.028305, 35.577847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752319, 40.349701, 35.084846>,  <44.454063, 40.104710, 34.882282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752319, 40.349701, 35.084846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002651, 40.363068, 35.396545>,  <44.152851, 40.371090, 35.583565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002651, 40.363068, 35.396545>,  <43.752319, 40.349701, 35.084846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002651, 40.363068, 35.396545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254676, 0.953077, 0.163660,
		-0.737211, -0.300878, 0.604973,
		0.625828, 0.033420, 0.779245,
		44.190399, 40.373093, 35.630318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501396, 40.822601, 35.487312>,  <43.752319, 40.349701, 35.084846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501396, 40.822601, 35.487312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857559, 40.813129, 35.669136>,  <44.071255, 40.807446, 35.778229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857559, 40.813129, 35.669136>,  <43.501396, 40.822601, 35.487312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857559, 40.813129, 35.669136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043771, 0.989565, 0.137281,
		-0.453063, -0.142131, 0.880075,
		0.890403, -0.023675, 0.454557,
		44.124680, 40.806026, 35.805504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510353, 41.231030, 36.202801>,  <43.501396, 40.822601, 35.487312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510353, 41.231030, 36.202801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.868999, 41.211575, 36.026749>,  <44.084187, 41.199902, 35.921120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.868999, 41.211575, 36.026749>,  <43.510353, 41.231030, 36.202801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868999, 41.211575, 36.026749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067682, 0.997323, 0.027664,
		0.437604, -0.054593, 0.897509,
		0.896617, -0.048639, -0.440128,
		44.137985, 41.196983, 35.894711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972057, 41.581383, 36.701069>,  <43.510353, 41.231030, 36.202801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972057, 41.581383, 36.701069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.123737, 41.579224, 36.330948>,  <44.214745, 41.577930, 36.108875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.123737, 41.579224, 36.330948>,  <43.972057, 41.581383, 36.701069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123737, 41.579224, 36.330948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264774, 0.958803, 0.102918,
		0.886624, -0.284021, 0.365005,
		0.379199, -0.005395, -0.925299,
		44.237495, 41.577606, 36.053356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643471, 41.919033, 36.709526>,  <43.972057, 41.581383, 36.701069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643471, 41.919033, 36.709526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499115, 41.933689, 36.336769>,  <44.412502, 41.942482, 36.113117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499115, 41.933689, 36.336769>,  <44.643471, 41.919033, 36.709526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499115, 41.933689, 36.336769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140535, 0.989954, -0.015505,
		0.921960, -0.136559, -0.362410,
		-0.360886, 0.036636, -0.931890,
		44.390850, 41.944679, 36.057201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074921, 42.381016, 36.432621>,  <44.643471, 41.919033, 36.709526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074921, 42.381016, 36.432621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.803871, 42.325340, 36.143776>,  <44.641239, 42.291935, 35.970470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.803871, 42.325340, 36.143776>,  <45.074921, 42.381016, 36.432621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803871, 42.325340, 36.143776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132447, 0.942770, -0.306012,
		0.723380, -0.303004, -0.620411,
		-0.677627, -0.139192, -0.722113,
		44.600582, 42.283581, 35.927143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263023, 42.848801, 35.892979>,  <45.074921, 42.381016, 36.432621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263023, 42.848801, 35.892979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868958, 42.791172, 35.855690>,  <44.632519, 42.756596, 35.833317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868958, 42.791172, 35.855690>,  <45.263023, 42.848801, 35.892979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868958, 42.791172, 35.855690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125611, 0.975569, -0.180241,
		0.116908, -0.165858, -0.979195,
		-0.985167, -0.144069, -0.093218,
		44.573406, 42.747952, 35.827724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068241, 43.343922, 35.397617>,  <45.263023, 42.848801, 35.892979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068241, 43.343922, 35.397617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.709522, 43.241951, 35.542267>,  <44.494289, 43.180771, 35.629055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.709522, 43.241951, 35.542267>,  <45.068241, 43.343922, 35.397617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.709522, 43.241951, 35.542267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339823, 0.920263, -0.194001,
		-0.283331, -0.296867, -0.911918,
		-0.896797, -0.254924, 0.361621,
		44.440483, 43.165474, 35.650753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473492, 43.436008, 34.881893>,  <45.068241, 43.343922, 35.397617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473492, 43.436008, 34.881893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.306854, 43.460812, 35.244682>,  <44.206871, 43.475693, 35.462357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.306854, 43.460812, 35.244682>,  <44.473492, 43.436008, 34.881893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306854, 43.460812, 35.244682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318456, 0.924501, -0.209484,
		-0.851489, -0.376102, -0.365395,
		-0.416595, 0.062011, 0.906975,
		44.181877, 43.479416, 35.516773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839046, 43.634109, 34.735920>,  <44.473492, 43.436008, 34.881893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839046, 43.634109, 34.735920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907291, 43.742504, 35.114857>,  <43.948238, 43.807541, 35.342220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907291, 43.742504, 35.114857>,  <43.839046, 43.634109, 34.735920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907291, 43.742504, 35.114857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462546, 0.870948, -0.165834,
		-0.870025, -0.409897, 0.273935,
		0.170608, 0.270987, 0.947343,
		43.958473, 43.823799, 35.399059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229408, 43.958683, 34.852272>,  <43.839046, 43.634109, 34.735920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229408, 43.958683, 34.852272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456348, 44.090302, 35.154224>,  <43.592510, 44.169273, 35.335396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456348, 44.090302, 35.154224>,  <43.229408, 43.958683, 34.852272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456348, 44.090302, 35.154224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432386, 0.899197, -0.066986,
		-0.700827, -0.288395, 0.652434,
		0.567348, 0.329049, 0.754880,
		43.626553, 44.189014, 35.380688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780434, 44.316689, 35.403255>,  <43.229408, 43.958683, 34.852272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780434, 44.316689, 35.403255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.158638, 44.437038, 35.453041>,  <43.385559, 44.509247, 35.482914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.158638, 44.437038, 35.453041>,  <42.780434, 44.316689, 35.403255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158638, 44.437038, 35.453041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296114, 0.953536, -0.055544,
		-0.135396, 0.015661, 0.990668,
		0.945507, 0.300871, 0.124468,
		43.442291, 44.527298, 35.490383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.296326, 36.576687, 42.261528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969582, 36.406212, 42.106041>,  <40.773533, 36.303928, 42.012749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969582, 36.406212, 42.106041>,  <41.296326, 36.576687, 42.261528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969582, 36.406212, 42.106041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387242, 0.094285, -0.917145,
		0.427524, -0.899709, 0.088019,
		-0.816864, -0.426186, -0.388713,
		40.724522, 36.278355, 41.989426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589771, 36.077194, 41.935719>,  <41.296326, 36.576687, 42.261528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589771, 36.077194, 41.935719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228378, 36.138634, 41.775650>,  <41.011543, 36.175495, 41.679611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228378, 36.138634, 41.775650>,  <41.589771, 36.077194, 41.935719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228378, 36.138634, 41.775650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387184, -0.108073, -0.915647,
		-0.183888, -0.982206, 0.038172,
		-0.903479, 0.153597, -0.400167,
		40.957336, 36.184711, 41.655602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558823, 35.632000, 41.297050>,  <41.589771, 36.077194, 41.935719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558823, 35.632000, 41.297050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298988, 35.934303, 41.263905>,  <41.143085, 36.115685, 41.244019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298988, 35.934303, 41.263905>,  <41.558823, 35.632000, 41.297050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298988, 35.934303, 41.263905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175863, 0.043326, -0.983461,
		-0.739666, -0.653419, -0.161054,
		-0.649590, 0.755755, -0.082866,
		41.104111, 36.161030, 41.239044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165039, 35.286640, 40.784916>,  <41.558823, 35.632000, 41.297050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165039, 35.286640, 40.784916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111782, 35.683006, 40.792553>,  <41.079826, 35.920826, 40.797134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111782, 35.683006, 40.792553>,  <41.165039, 35.286640, 40.784916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111782, 35.683006, 40.792553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047296, 0.025590, -0.998553,
		-0.989967, -0.132049, -0.050274,
		-0.133145, 0.990913, 0.019088,
		41.071838, 35.980282, 40.798279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654526, 35.541637, 40.194038>,  <41.165039, 35.286640, 40.784916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654526, 35.541637, 40.194038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830906, 35.890949, 40.276936>,  <40.936733, 36.100536, 40.326672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830906, 35.890949, 40.276936>,  <40.654526, 35.541637, 40.194038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830906, 35.890949, 40.276936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052231, 0.255477, -0.965403,
		-0.896009, 0.414874, 0.158265,
		0.440954, 0.873276, 0.207240,
		40.963192, 36.152931, 40.339108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314182, 36.011036, 39.751579>,  <40.654526, 35.541637, 40.194038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314182, 36.011036, 39.751579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635784, 36.229511, 39.845600>,  <40.828747, 36.360596, 39.902012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635784, 36.229511, 39.845600>,  <40.314182, 36.011036, 39.751579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635784, 36.229511, 39.845600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076092, 0.486561, -0.870326,
		-0.589731, 0.681863, 0.432759,
		0.804007, 0.546188, 0.235056,
		40.876987, 36.393368, 39.916119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197411, 36.710445, 39.699978>,  <40.314182, 36.011036, 39.751579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197411, 36.710445, 39.699978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595154, 36.723518, 39.659599>,  <40.833797, 36.731361, 39.635372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595154, 36.723518, 39.659599>,  <40.197411, 36.710445, 39.699978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595154, 36.723518, 39.659599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102989, 0.526310, -0.844033,
		0.025545, 0.849664, 0.526705,
		0.994355, 0.032684, -0.100951,
		40.893459, 36.733322, 39.629314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300106, 37.425987, 39.528687>,  <40.197411, 36.710445, 39.699978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300106, 37.425987, 39.528687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630291, 37.225098, 39.425629>,  <40.828403, 37.104565, 39.363792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630291, 37.225098, 39.425629>,  <40.300106, 37.425987, 39.528687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630291, 37.225098, 39.425629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005552, 0.449201, -0.893413,
		0.564429, 0.738910, 0.368010,
		0.825463, -0.502225, -0.257645,
		40.877930, 37.074429, 39.348335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693150, 37.927692, 39.085812>,  <40.300106, 37.425987, 39.528687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693150, 37.927692, 39.085812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854706, 37.566959, 39.024391>,  <40.951641, 37.350521, 38.987537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854706, 37.566959, 39.024391>,  <40.693150, 37.927692, 39.085812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854706, 37.566959, 39.024391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011890, 0.173013, -0.984848,
		0.914731, 0.395944, 0.080601,
		0.403889, -0.901829, -0.153553,
		40.975872, 37.296410, 38.978325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288769, 38.137466, 38.650127>,  <40.693150, 37.927692, 39.085812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288769, 38.137466, 38.650127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224564, 37.748894, 38.580204>,  <41.186039, 37.515751, 38.538250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224564, 37.748894, 38.580204>,  <41.288769, 38.137466, 38.650127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224564, 37.748894, 38.580204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129344, 0.154873, -0.979431,
		0.978522, -0.179825, 0.100789,
		-0.160517, -0.971431, -0.174805,
		41.176407, 37.457466, 38.527763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599758, 38.082634, 38.110241>,  <41.288769, 38.137466, 38.650127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599758, 38.082634, 38.110241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412350, 37.729370, 38.119358>,  <41.299904, 37.517410, 38.124828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412350, 37.729370, 38.119358>,  <41.599758, 38.082634, 38.110241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412350, 37.729370, 38.119358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007342, -0.029695, -0.999532,
		0.883424, -0.468130, 0.020397,
		-0.468516, -0.883161, 0.022796,
		41.271793, 37.464420, 38.126198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953789, 37.549206, 37.642776>,  <41.599758, 38.082634, 38.110241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953789, 37.549206, 37.642776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570145, 37.446575, 37.690559>,  <41.339958, 37.384998, 37.719227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570145, 37.446575, 37.690559>,  <41.953789, 37.549206, 37.642776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570145, 37.446575, 37.690559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098477, -0.093155, -0.990770,
		0.265334, -0.962025, 0.064080,
		-0.959114, -0.256574, 0.119454,
		41.282410, 37.369602, 37.726395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856426, 36.916840, 37.169781>,  <41.953789, 37.549206, 37.642776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856426, 36.916840, 37.169781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504719, 37.079319, 37.269283>,  <41.293694, 37.176807, 37.328983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504719, 37.079319, 37.269283>,  <41.856426, 36.916840, 37.169781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504719, 37.079319, 37.269283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302293, -0.072283, -0.950471,
		-0.368101, -0.910921, 0.186348,
		-0.879273, 0.406200, 0.248758,
		41.240936, 37.201180, 37.343910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256653, 36.472733, 36.889381>,  <41.856426, 36.916840, 37.169781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256653, 36.472733, 36.889381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164303, 36.858234, 36.942852>,  <41.108894, 37.089535, 36.974934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164303, 36.858234, 36.942852>,  <41.256653, 36.472733, 36.889381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164303, 36.858234, 36.942852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238940, 0.077020, -0.967975,
		-0.943189, -0.255421, 0.212498,
		-0.230874, 0.963758, 0.133675,
		41.095039, 37.147362, 36.982956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544933, 35.774395, 36.942352>,  <41.256653, 36.472733, 36.889381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544933, 35.774395, 36.942352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704605, 35.504417, 36.694126>,  <41.800407, 35.342430, 36.545189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704605, 35.504417, 36.694126>,  <41.544933, 35.774395, 36.942352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704605, 35.504417, 36.694126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221049, -0.727712, 0.649286,
		-0.889827, -0.122006, -0.439684,
		0.399180, -0.674944, -0.620569,
		41.824360, 35.301933, 36.507957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109108, 35.133930, 36.948170>,  <41.544933, 35.774395, 36.942352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109108, 35.133930, 36.948170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474239, 35.011509, 36.840042>,  <41.693317, 34.938057, 36.775166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474239, 35.011509, 36.840042>,  <41.109108, 35.133930, 36.948170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474239, 35.011509, 36.840042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173089, -0.889597, 0.422679,
		-0.369837, -0.339044, -0.865026,
		0.912831, -0.306049, -0.270321,
		41.748089, 34.919693, 36.758945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970650, 34.520828, 36.676414>,  <41.109108, 35.133930, 36.948170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970650, 34.520828, 36.676414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358532, 34.532310, 36.773441>,  <41.591263, 34.539200, 36.831657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358532, 34.532310, 36.773441>,  <40.970650, 34.520828, 36.676414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358532, 34.532310, 36.773441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080304, -0.900405, 0.427578,
		0.230680, -0.434106, -0.870826,
		0.969710, 0.028702, 0.242566,
		41.649445, 34.540920, 36.846210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155857, 33.822746, 36.584846>,  <40.970650, 34.520828, 36.676414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155857, 33.822746, 36.584846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445518, 33.981945, 36.810127>,  <41.619316, 34.077465, 36.945293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445518, 33.981945, 36.810127>,  <41.155857, 33.822746, 36.584846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445518, 33.981945, 36.810127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097276, -0.867446, 0.487929,
		0.682742, -0.298551, -0.666882,
		0.724156, 0.398001, 0.563200,
		41.662766, 34.101345, 36.979088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635838, 33.226231, 36.720901>,  <41.155857, 33.822746, 36.584846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635838, 33.226231, 36.720901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704475, 33.486591, 37.016708>,  <41.745659, 33.642807, 37.194191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704475, 33.486591, 37.016708>,  <41.635838, 33.226231, 36.720901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704475, 33.486591, 37.016708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083460, -0.757554, 0.647415,
		0.981627, -0.049371, -0.184314,
		0.171592, 0.650903, 0.739515,
		41.755955, 33.681862, 37.238564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093796, 32.886166, 37.253502>,  <41.635838, 33.226231, 36.720901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093796, 32.886166, 37.253502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912655, 33.191738, 37.437389>,  <41.803970, 33.375080, 37.547722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912655, 33.191738, 37.437389>,  <42.093796, 32.886166, 37.253502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912655, 33.191738, 37.437389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067059, -0.543341, 0.836829,
		0.889062, 0.348129, 0.297280,
		-0.452849, 0.763928, 0.459719,
		41.776802, 33.420918, 37.575306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388023, 32.964581, 37.888439>,  <42.093796, 32.886166, 37.253502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388023, 32.964581, 37.888439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042892, 33.161575, 37.934013>,  <41.835812, 33.279770, 37.961357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042892, 33.161575, 37.934013>,  <42.388023, 32.964581, 37.888439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042892, 33.161575, 37.934013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094423, -0.378448, 0.920794,
		0.496594, 0.783732, 0.373039,
		-0.862832, 0.492484, 0.113933,
		41.784042, 33.309322, 37.968193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436249, 33.402351, 38.461838>,  <42.388023, 32.964581, 37.888439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436249, 33.402351, 38.461838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049442, 33.314453, 38.410316>,  <41.817360, 33.261715, 38.379402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049442, 33.314453, 38.410316>,  <42.436249, 33.402351, 38.461838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049442, 33.314453, 38.410316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065125, -0.275574, 0.959071,
		-0.246248, 0.935826, 0.252174,
		-0.967016, -0.219747, -0.128806,
		41.759338, 33.248528, 38.371674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139217, 33.752415, 38.976353>,  <42.436249, 33.402351, 38.461838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139217, 33.752415, 38.976353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856049, 33.492767, 38.865002>,  <41.686146, 33.336979, 38.798191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856049, 33.492767, 38.865002>,  <42.139217, 33.752415, 38.976353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856049, 33.492767, 38.865002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142259, -0.255014, 0.956415,
		-0.691816, 0.716669, 0.088188,
		-0.707922, -0.649118, -0.278375,
		41.643673, 33.298031, 38.781490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614254, 33.831432, 39.426041>,  <42.139217, 33.752415, 38.976353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614254, 33.831432, 39.426041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518787, 33.479473, 39.261692>,  <41.461510, 33.268295, 39.163082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518787, 33.479473, 39.261692>,  <41.614254, 33.831432, 39.426041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518787, 33.479473, 39.261692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395665, -0.298274, 0.868609,
		-0.886842, 0.369872, -0.276959,
		-0.238665, -0.879902, -0.410867,
		41.447189, 33.215504, 39.138432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052799, 33.653221, 39.806896>,  <41.614254, 33.831432, 39.426041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052799, 33.653221, 39.806896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145008, 33.306068, 39.630878>,  <41.200333, 33.097775, 39.525269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145008, 33.306068, 39.630878>,  <41.052799, 33.653221, 39.806896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145008, 33.306068, 39.630878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362111, -0.496254, 0.789055,
		-0.903181, -0.022550, -0.428667,
		0.230521, -0.867884, -0.440042,
		41.214165, 33.045704, 39.498867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495594, 33.216873, 39.907906>,  <41.052799, 33.653221, 39.806896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495594, 33.216873, 39.907906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806694, 32.970127, 39.859612>,  <40.993355, 32.822079, 39.830635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806694, 32.970127, 39.859612>,  <40.495594, 33.216873, 39.907906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806694, 32.970127, 39.859612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230800, -0.458925, 0.857974,
		-0.584668, -0.639422, -0.499302,
		0.777750, -0.616869, -0.120740,
		41.040020, 32.785069, 39.823391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228836, 32.685081, 40.084003>,  <40.495594, 33.216873, 39.907906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228836, 32.685081, 40.084003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623043, 32.618881, 40.098827>,  <40.859566, 32.579163, 40.107723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623043, 32.618881, 40.098827>,  <40.228836, 32.685081, 40.084003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623043, 32.618881, 40.098827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120765, -0.531362, 0.838493,
		-0.119073, -0.830822, -0.543650,
		0.985514, -0.165496, 0.037064,
		40.918697, 32.569233, 40.109947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254978, 32.040382, 40.271172>,  <40.228836, 32.685081, 40.084003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254978, 32.040382, 40.271172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592163, 32.224506, 40.382549>,  <40.794476, 32.334980, 40.449375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592163, 32.224506, 40.382549>,  <40.254978, 32.040382, 40.271172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592163, 32.224506, 40.382549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158685, -0.281805, 0.946258,
		0.514036, -0.841846, -0.164507,
		0.842963, 0.460306, 0.278446,
		40.845051, 32.362598, 40.466084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976665, 31.453917, 39.965134>,  <40.254978, 32.040382, 40.271172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976665, 31.453917, 39.965134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581787, 31.400072, 39.999367>,  <39.344860, 31.367765, 40.019909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581787, 31.400072, 39.999367>,  <39.976665, 31.453917, 39.965134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581787, 31.400072, 39.999367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138770, 0.460128, -0.876941,
		0.078665, -0.877589, -0.472916,
		-0.987195, -0.134611, 0.085587,
		39.285629, 31.359688, 40.025043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778553, 31.254358, 39.304478>,  <39.976665, 31.453917, 39.965134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778553, 31.254358, 39.304478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450619, 31.373524, 39.500076>,  <39.253857, 31.445023, 39.617435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450619, 31.373524, 39.500076>,  <39.778553, 31.254358, 39.304478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450619, 31.373524, 39.500076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339311, 0.435132, -0.833983,
		-0.461232, -0.849651, -0.255652,
		-0.819837, 0.297914, 0.488993,
		39.204666, 31.462898, 39.646774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236870, 31.173456, 38.886230>,  <39.778553, 31.254358, 39.304478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236870, 31.173456, 38.886230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093979, 31.452057, 39.135155>,  <39.008244, 31.619217, 39.284508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093979, 31.452057, 39.135155>,  <39.236870, 31.173456, 38.886230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093979, 31.452057, 39.135155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499179, 0.420769, -0.757479,
		-0.789435, -0.581238, 0.197369,
		-0.357229, 0.696503, 0.622311,
		38.986809, 31.661007, 39.321850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375946, 31.174753, 38.844799>,  <39.236870, 31.173456, 38.886230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375946, 31.174753, 38.844799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522766, 31.525887, 38.967880>,  <38.610859, 31.736567, 39.041729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522766, 31.525887, 38.967880>,  <38.375946, 31.174753, 38.844799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522766, 31.525887, 38.967880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579665, 0.474564, -0.662403,
		-0.727506, 0.064769, 0.683038,
		0.367048, 0.877835, 0.307704,
		38.632881, 31.789236, 39.060192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813168, 31.625055, 38.813534>,  <38.375946, 31.174753, 38.844799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813168, 31.625055, 38.813534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114864, 31.886129, 38.842140>,  <38.295883, 32.042774, 38.859306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114864, 31.886129, 38.842140>,  <37.813168, 31.625055, 38.813534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114864, 31.886129, 38.842140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516579, 0.657111, -0.548955,
		-0.405293, 0.377100, 0.832787,
		0.754244, 0.652687, 0.071520,
		38.341137, 32.081936, 38.863598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582481, 32.179710, 39.144093>,  <37.813168, 31.625055, 38.813534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582481, 32.179710, 39.144093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886120, 32.321972, 38.925995>,  <38.068302, 32.407330, 38.795135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886120, 32.321972, 38.925995>,  <37.582481, 32.179710, 39.144093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886120, 32.321972, 38.925995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634399, 0.591999, -0.497066,
		0.145998, 0.723219, 0.675010,
		0.759093, 0.355655, -0.545240,
		38.113850, 32.428669, 38.762424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511829, 32.931313, 39.158428>,  <37.582481, 32.179710, 39.144093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511829, 32.931313, 39.158428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721256, 32.809044, 38.840324>,  <37.846912, 32.735683, 38.649464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721256, 32.809044, 38.840324>,  <37.511829, 32.931313, 39.158428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721256, 32.809044, 38.840324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483286, 0.662162, -0.572692,
		0.701646, 0.684183, 0.198962,
		0.523571, -0.305671, -0.795260,
		37.878326, 32.717342, 38.601746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279335, 33.327721, 38.596363>,  <37.511829, 32.931313, 39.158428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279335, 33.327721, 38.596363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576595, 33.152569, 38.393982>,  <37.754951, 33.047478, 38.272552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576595, 33.152569, 38.393982>,  <37.279335, 33.327721, 38.596363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576595, 33.152569, 38.393982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117850, 0.658662, -0.743152,
		0.658662, 0.611902, 0.437882,
		0.743152, -0.437882, -0.505949,
		37.799541, 33.021206, 38.242199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891472, 33.817375, 38.402397>,  <37.279335, 33.327721, 38.596363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891472, 33.817375, 38.402397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824677, 33.518215, 38.145412>,  <37.784599, 33.338718, 37.991222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824677, 33.518215, 38.145412>,  <37.891472, 33.817375, 38.402397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824677, 33.518215, 38.145412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159417, 0.663519, -0.730977,
		0.972986, -0.019645, -0.230028,
		-0.166989, -0.747901, -0.642463,
		37.774582, 33.293846, 37.952675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017181, 34.039650, 37.675678>,  <37.891472, 33.817375, 38.402397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017181, 34.039650, 37.675678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799210, 33.709583, 37.616135>,  <37.668427, 33.511543, 37.580410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799210, 33.709583, 37.616135>,  <38.017181, 34.039650, 37.675678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799210, 33.709583, 37.616135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368793, 0.395307, -0.841263,
		0.753024, -0.403529, -0.519729,
		-0.544927, -0.825164, -0.148857,
		37.635731, 33.462032, 37.571476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080120, 33.708317, 36.962738>,  <38.017181, 34.039650, 37.675678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080120, 33.708317, 36.962738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722668, 33.578129, 37.086342>,  <37.508198, 33.500015, 37.160503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722668, 33.578129, 37.086342>,  <38.080120, 33.708317, 36.962738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722668, 33.578129, 37.086342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391040, 0.226779, -0.891997,
		0.220233, -0.917958, -0.329926,
		-0.893636, -0.325462, 0.309014,
		37.454578, 33.480488, 37.179047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823452, 33.260242, 36.400585>,  <38.080120, 33.708317, 36.962738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823452, 33.260242, 36.400585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498001, 33.347507, 36.616142>,  <37.302731, 33.399864, 36.745476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498001, 33.347507, 36.616142>,  <37.823452, 33.260242, 36.400585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498001, 33.347507, 36.616142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510617, 0.175050, -0.841800,
		-0.277982, -0.960085, -0.031029,
		-0.813631, 0.218161, 0.538897,
		37.253910, 33.412956, 36.777813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.232533, 29.139076, 43.196182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.895161, 29.353819, 43.187984>,  <38.692738, 29.482664, 43.183067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.895161, 29.353819, 43.187984>,  <39.232533, 29.139076, 43.196182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895161, 29.353819, 43.187984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163802, 0.220633, -0.961504,
		-0.511667, -0.814314, -0.274025,
		-0.843425, 0.536856, -0.020496,
		38.642132, 29.514875, 43.181835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936363, 28.993326, 42.574516>,  <39.232533, 29.139076, 43.196182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936363, 28.993326, 42.574516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734505, 29.322523, 42.678837>,  <38.613388, 29.520041, 42.741428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734505, 29.322523, 42.678837>,  <38.936363, 28.993326, 42.574516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734505, 29.322523, 42.678837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303832, 0.452068, -0.838643,
		-0.808095, -0.343980, -0.478185,
		-0.504648, 0.822990, 0.260801,
		38.583111, 29.569420, 42.757076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399673, 29.168596, 41.975559>,  <38.936363, 28.993326, 42.574516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399673, 29.168596, 41.975559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479469, 29.491310, 42.198017>,  <38.527348, 29.684938, 42.331493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479469, 29.491310, 42.198017>,  <38.399673, 29.168596, 41.975559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479469, 29.491310, 42.198017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236831, 0.511031, -0.826292,
		-0.950849, 0.296550, -0.089126,
		0.199491, 0.806787, 0.556146,
		38.539318, 29.733347, 42.364861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971207, 29.654644, 41.639030>,  <38.399673, 29.168596, 41.975559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971207, 29.654644, 41.639030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.250141, 29.865574, 41.833206>,  <38.417503, 29.992132, 41.949711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.250141, 29.865574, 41.833206>,  <37.971207, 29.654644, 41.639030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250141, 29.865574, 41.833206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143025, 0.561282, -0.815173,
		-0.702329, 0.637879, 0.315982,
		0.697337, 0.527326, 0.485437,
		38.459343, 30.023771, 41.978836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842335, 30.382301, 41.567490>,  <37.971207, 29.654644, 41.639030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842335, 30.382301, 41.567490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234200, 30.347267, 41.639698>,  <38.469318, 30.326246, 41.683022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234200, 30.347267, 41.639698>,  <37.842335, 30.382301, 41.567490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234200, 30.347267, 41.639698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197804, 0.572445, -0.795726,
		-0.033641, 0.815251, 0.578129,
		0.979664, -0.087587, 0.180517,
		38.528099, 30.320992, 41.693851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153805, 31.066351, 41.605789>,  <37.842335, 30.382301, 41.567490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153805, 31.066351, 41.605789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.474941, 30.842804, 41.522736>,  <38.667625, 30.708675, 41.472904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.474941, 30.842804, 41.522736>,  <38.153805, 31.066351, 41.605789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474941, 30.842804, 41.522736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178473, 0.557582, -0.810710,
		0.568848, 0.613818, 0.547394,
		0.802845, -0.558866, -0.207629,
		38.715794, 30.675144, 41.460445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609730, 31.566732, 41.551041>,  <38.153805, 31.066351, 41.605789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609730, 31.566732, 41.551041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757545, 31.241623, 41.370892>,  <38.846237, 31.046556, 41.262802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757545, 31.241623, 41.370892>,  <38.609730, 31.566732, 41.551041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757545, 31.241623, 41.370892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236331, 0.550954, -0.800373,
		0.898657, 0.189336, 0.395685,
		0.369544, -0.812774, -0.450373,
		38.868408, 30.997791, 41.235779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129566, 31.823530, 41.207073>,  <38.609730, 31.566732, 41.551041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129566, 31.823530, 41.207073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085861, 31.465412, 41.034325>,  <39.059639, 31.250542, 40.930676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085861, 31.465412, 41.034325>,  <39.129566, 31.823530, 41.207073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085861, 31.465412, 41.034325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236880, 0.398500, -0.886051,
		0.965375, -0.199115, 0.168535,
		-0.109265, -0.895294, -0.431868,
		39.053082, 31.196823, 40.904766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754173, 31.636667, 40.787785>,  <39.129566, 31.823530, 41.207073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754173, 31.636667, 40.787785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455532, 31.415691, 40.639515>,  <39.276348, 31.283106, 40.550552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455532, 31.415691, 40.639515>,  <39.754173, 31.636667, 40.787785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455532, 31.415691, 40.639515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059530, 0.499465, -0.864286,
		0.662606, -0.667341, -0.340013,
		-0.746599, -0.552440, -0.370675,
		39.231552, 31.249960, 40.528313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597069, 31.576191, 40.906975>,  <39.754173, 31.636667, 40.787785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597069, 31.576191, 40.906975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.770077, 31.935986, 40.931793>,  <40.873882, 32.151863, 40.946686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.770077, 31.935986, 40.931793>,  <40.597069, 31.576191, 40.906975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770077, 31.935986, 40.931793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136854, -0.002528, 0.990588,
		0.891179, -0.436937, 0.122006,
		0.432516, 0.899488, 0.062049,
		40.899834, 32.205833, 40.950409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110020, 31.450844, 41.451393>,  <40.597069, 31.576191, 40.906975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110020, 31.450844, 41.451393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.086510, 31.847830, 41.408382>,  <41.072403, 32.086021, 41.382576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.086510, 31.847830, 41.408382>,  <41.110020, 31.450844, 41.451393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086510, 31.847830, 41.408382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168890, 0.116046, 0.978780,
		0.983881, 0.039368, -0.174438,
		-0.058775, 0.992463, -0.107526,
		41.068878, 32.145569, 41.376125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630314, 31.694294, 41.917980>,  <41.110020, 31.450844, 41.451393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630314, 31.694294, 41.917980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.393539, 32.013283, 41.871250>,  <41.251472, 32.204674, 41.843212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.393539, 32.013283, 41.871250>,  <41.630314, 31.694294, 41.917980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393539, 32.013283, 41.871250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070706, 0.195771, 0.978097,
		0.802874, 0.570715, -0.172271,
		-0.591941, 0.797470, -0.116827,
		41.215958, 32.252525, 41.836201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996563, 32.202606, 42.278851>,  <41.630314, 31.694294, 41.917980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996563, 32.202606, 42.278851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.614628, 32.319767, 42.258888>,  <41.385468, 32.390064, 42.246910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.614628, 32.319767, 42.258888>,  <41.996563, 32.202606, 42.278851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614628, 32.319767, 42.258888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025988, 0.084978, 0.996044,
		0.295983, 0.952359, -0.073529,
		-0.954840, 0.292901, -0.049902,
		41.328175, 32.407639, 42.243919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938797, 32.840012, 42.671841>,  <41.996563, 32.202606, 42.278851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938797, 32.840012, 42.671841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.571068, 32.684509, 42.647480>,  <41.350430, 32.591206, 42.632862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.571068, 32.684509, 42.647480>,  <41.938797, 32.840012, 42.671841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571068, 32.684509, 42.647480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153949, 0.212900, 0.964870,
		-0.362137, 0.896404, -0.255573,
		-0.919324, -0.388760, -0.060902,
		41.295269, 32.567883, 42.629208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450241, 33.370300, 42.938007>,  <41.938797, 32.840012, 42.671841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450241, 33.370300, 42.938007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.265610, 33.016125, 42.959721>,  <41.154831, 32.803619, 42.972748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.265610, 33.016125, 42.959721>,  <41.450241, 33.370300, 42.938007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265610, 33.016125, 42.959721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017138, 0.070080, 0.997394,
		-0.886935, 0.459442, -0.047522,
		-0.461575, -0.885439, 0.054282,
		41.127136, 32.750492, 42.976006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074417, 33.424549, 43.536140>,  <41.450241, 33.370300, 42.938007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074417, 33.424549, 43.536140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.095287, 33.028526, 43.483875>,  <41.107807, 32.790913, 43.452515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.095287, 33.028526, 43.483875>,  <41.074417, 33.424549, 43.536140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095287, 33.028526, 43.483875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170808, -0.120070, 0.977961,
		-0.983922, -0.073341, 0.162845,
		0.052172, -0.990053, -0.130666,
		41.110939, 32.731510, 43.444675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615158, 33.163712, 44.072651>,  <41.074417, 33.424549, 43.536140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615158, 33.163712, 44.072651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.860722, 32.865898, 43.967747>,  <41.008060, 32.687210, 43.904804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.860722, 32.865898, 43.967747>,  <40.615158, 33.163712, 44.072651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860722, 32.865898, 43.967747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164449, -0.204318, 0.964993,
		-0.772055, -0.635549, -0.002995,
		0.613912, -0.744534, -0.262260,
		41.044895, 32.642536, 43.889069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438354, 32.629436, 44.608246>,  <40.615158, 33.163712, 44.072651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438354, 32.629436, 44.608246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.781521, 32.505543, 44.444271>,  <40.987419, 32.431206, 44.345886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.781521, 32.505543, 44.444271>,  <40.438354, 32.629436, 44.608246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781521, 32.505543, 44.444271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257205, -0.431794, 0.864523,
		-0.444789, -0.847121, -0.290773,
		0.857910, -0.309742, -0.409941,
		41.038895, 32.412624, 44.321289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542492, 31.948286, 44.888332>,  <40.438354, 32.629436, 44.608246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542492, 31.948286, 44.888332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.909958, 32.059471, 44.776054>,  <41.130436, 32.126183, 44.708687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.909958, 32.059471, 44.776054>,  <40.542492, 31.948286, 44.888332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909958, 32.059471, 44.776054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387132, -0.492020, 0.779773,
		0.078638, -0.825017, -0.559610,
		0.918665, 0.277963, -0.280699,
		41.185558, 32.142860, 44.691845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988560, 31.352871, 44.882072>,  <40.542492, 31.948286, 44.888332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988560, 31.352871, 44.882072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.233345, 31.667721, 44.912895>,  <41.380215, 31.856630, 44.931389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.233345, 31.667721, 44.912895>,  <40.988560, 31.352871, 44.882072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233345, 31.667721, 44.912895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259339, -0.291753, 0.920664,
		0.747160, -0.543426, -0.382674,
		0.611960, 0.787126, 0.077055,
		41.416931, 31.903858, 44.936012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664162, 31.069305, 45.098152>,  <40.988560, 31.352871, 44.882072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664162, 31.069305, 45.098152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.664898, 31.450077, 45.220680>,  <41.665340, 31.678539, 45.294197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.664898, 31.450077, 45.220680>,  <41.664162, 31.069305, 45.098152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664898, 31.450077, 45.220680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383213, -0.283602, 0.879043,
		0.923658, 0.115769, -0.365313,
		0.001837, 0.951928, 0.306316,
		41.665447, 31.735655, 45.312576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196270, 31.022598, 45.558170>,  <41.664162, 31.069305, 45.098152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196270, 31.022598, 45.558170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.010246, 31.360325, 45.664642>,  <41.898632, 31.562960, 45.728527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.010246, 31.360325, 45.664642>,  <42.196270, 31.022598, 45.558170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010246, 31.360325, 45.664642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217845, -0.182289, 0.958809,
		0.858060, 0.503887, -0.099155,
		-0.465057, 0.844316, 0.266184,
		41.870728, 31.613619, 45.744499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608353, 31.371111, 46.031326>,  <42.196270, 31.022598, 45.558170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608353, 31.371111, 46.031326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.243332, 31.519007, 46.101227>,  <42.024319, 31.607744, 46.143166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.243332, 31.519007, 46.101227>,  <42.608353, 31.371111, 46.031326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243332, 31.519007, 46.101227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187409, -0.001715, 0.982280,
		0.363487, 0.929134, -0.067727,
		-0.912554, 0.369738, 0.174751,
		41.969566, 31.629929, 46.153652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.267117, 34.289112, 45.712414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650066, 34.188931, 45.769974>,  <33.879837, 34.128822, 45.804508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650066, 34.188931, 45.769974>,  <33.267117, 34.289112, 45.712414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650066, 34.188931, 45.769974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269823, 0.597614, -0.755018,
		0.103103, 0.761662, 0.639719,
		0.957374, -0.250456, 0.143899,
		33.937279, 34.113792, 45.813145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673733, 34.952137, 45.590096>,  <33.267117, 34.289112, 45.712414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673733, 34.952137, 45.590096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.936447, 34.651375, 45.567219>,  <34.094074, 34.470917, 45.553493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.936447, 34.651375, 45.567219>,  <33.673733, 34.952137, 45.590096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936447, 34.651375, 45.567219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277014, 0.311117, -0.909104,
		0.701354, 0.581242, 0.412625,
		0.656784, -0.751907, -0.057191,
		34.133484, 34.425804, 45.550060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387718, 35.257191, 45.517517>,  <33.673733, 34.952137, 45.590096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387718, 35.257191, 45.517517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.403622, 34.888214, 45.363884>,  <34.413162, 34.666828, 45.271706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.403622, 34.888214, 45.363884>,  <34.387718, 35.257191, 45.517517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403622, 34.888214, 45.363884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353353, 0.372529, -0.858116,
		0.934645, -0.101600, 0.340759,
		0.039758, -0.922442, -0.384083,
		34.415550, 34.611481, 45.248657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979935, 35.119831, 45.066208>,  <34.387718, 35.257191, 45.517517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979935, 35.119831, 45.066208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.746216, 34.829765, 44.920479>,  <34.605984, 34.655727, 44.833042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.746216, 34.829765, 44.920479>,  <34.979935, 35.119831, 45.066208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746216, 34.829765, 44.920479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235932, 0.277753, -0.931230,
		0.776487, -0.630072, 0.008799,
		-0.584298, -0.725164, -0.364326,
		34.570927, 34.612217, 44.811180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314095, 34.752632, 44.584549>,  <34.979935, 35.119831, 45.066208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314095, 34.752632, 44.584549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.943356, 34.649323, 44.475552>,  <34.720913, 34.587337, 44.410152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.943356, 34.649323, 44.475552>,  <35.314095, 34.752632, 44.584549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943356, 34.649323, 44.475552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290131, -0.032055, -0.956450,
		0.238290, -0.965540, 0.104643,
		-0.926845, -0.258273, -0.272494,
		34.665302, 34.571842, 44.393803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415947, 34.390167, 44.090210>,  <35.314095, 34.752632, 44.584549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415947, 34.390167, 44.090210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026005, 34.466862, 44.044777>,  <34.792042, 34.512878, 44.017517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026005, 34.466862, 44.044777>,  <35.415947, 34.390167, 44.090210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026005, 34.466862, 44.044777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069742, -0.221586, -0.972644,
		-0.211646, -0.956108, 0.202643,
		-0.974855, 0.191723, -0.113578,
		34.733551, 34.524384, 44.010704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165199, 33.907616, 43.584442>,  <35.415947, 34.390167, 44.090210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165199, 33.907616, 43.584442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893013, 34.200722, 43.586285>,  <34.729702, 34.376587, 43.587391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893013, 34.200722, 43.586285>,  <35.165199, 33.907616, 43.584442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893013, 34.200722, 43.586285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078370, -0.066518, -0.994703,
		-0.728579, -0.677220, 0.102690,
		-0.680464, 0.732767, 0.004610,
		34.688873, 34.420551, 43.587669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792408, 33.777763, 43.016090>,  <35.165199, 33.907616, 43.584442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792408, 33.777763, 43.016090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744392, 34.162392, 43.114864>,  <34.715584, 34.393169, 43.174129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744392, 34.162392, 43.114864>,  <34.792408, 33.777763, 43.016090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744392, 34.162392, 43.114864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083831, 0.257659, -0.962592,
		-0.989224, -0.094844, -0.111537,
		-0.120035, 0.961569, 0.246932,
		34.708382, 34.450863, 43.188946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436501, 33.960999, 42.490086>,  <34.792408, 33.777763, 43.016090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436501, 33.960999, 42.490086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574772, 34.306061, 42.637783>,  <34.657734, 34.513096, 42.726402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574772, 34.306061, 42.637783>,  <34.436501, 33.960999, 42.490086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574772, 34.306061, 42.637783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213473, 0.310888, -0.926163,
		-0.913750, 0.398974, -0.076687,
		0.345674, 0.862652, 0.369244,
		34.678474, 34.564857, 42.748558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076973, 34.537201, 42.115128>,  <34.436501, 33.960999, 42.490086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076973, 34.537201, 42.115128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.428799, 34.640717, 42.274826>,  <34.639893, 34.702824, 42.370647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.428799, 34.640717, 42.274826>,  <34.076973, 34.537201, 42.115128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428799, 34.640717, 42.274826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300323, 0.348858, -0.887752,
		-0.369020, 0.900737, 0.229122,
		0.879562, 0.258787, 0.399248,
		34.692669, 34.718353, 42.394600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137844, 35.212528, 41.979343>,  <34.076973, 34.537201, 42.115128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137844, 35.212528, 41.979343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.520992, 35.121300, 42.049171>,  <34.750881, 35.066563, 42.091068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.520992, 35.121300, 42.049171>,  <34.137844, 35.212528, 41.979343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520992, 35.121300, 42.049171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264628, 0.464602, -0.845055,
		0.111625, 0.855647, 0.505380,
		0.957869, -0.228067, 0.174567,
		34.808353, 35.052879, 42.101540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566032, 35.845673, 41.818703>,  <34.137844, 35.212528, 41.979343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566032, 35.845673, 41.818703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.829723, 35.547688, 41.777813>,  <34.987938, 35.368896, 41.753281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.829723, 35.547688, 41.777813>,  <34.566032, 35.845673, 41.818703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829723, 35.547688, 41.777813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314219, 0.396424, -0.862620,
		0.683141, 0.536546, 0.495416,
		0.659231, -0.744960, -0.102220,
		35.027493, 35.324200, 41.747147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168392, 36.121956, 41.451042>,  <34.566032, 35.845673, 41.818703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168392, 36.121956, 41.451042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.218357, 35.726334, 41.419636>,  <35.248337, 35.488960, 41.400791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.218357, 35.726334, 41.419636>,  <35.168392, 36.121956, 41.451042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218357, 35.726334, 41.419636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294862, 0.112570, -0.948886,
		0.947340, 0.095377, 0.305697,
		0.124914, -0.989056, -0.078519,
		35.255833, 35.429615, 41.396080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749367, 36.125904, 41.074558>,  <35.168392, 36.121956, 41.451042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749367, 36.125904, 41.074558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.602673, 35.761726, 40.998035>,  <35.514656, 35.543221, 40.952122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.602673, 35.761726, 40.998035>,  <35.749367, 36.125904, 41.074558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602673, 35.761726, 40.998035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239809, 0.106172, -0.964997,
		0.898887, -0.399774, 0.179396,
		-0.366734, -0.910444, -0.191306,
		35.492653, 35.488594, 40.940643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412640, 36.360397, 41.280952>,  <35.749367, 36.125904, 41.074558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412640, 36.360397, 41.280952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716309, 36.618816, 41.312664>,  <36.898510, 36.773869, 41.331692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716309, 36.618816, 41.312664>,  <36.412640, 36.360397, 41.280952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716309, 36.618816, 41.312664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159746, -0.303007, 0.939504,
		0.630983, -0.700581, -0.333237,
		0.759172, 0.646045, 0.079278,
		36.944061, 36.812630, 41.336449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014004, 36.016098, 41.602016>,  <36.412640, 36.360397, 41.280952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014004, 36.016098, 41.602016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.035606, 36.409969, 41.668335>,  <37.048569, 36.646294, 41.708126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.035606, 36.409969, 41.668335>,  <37.014004, 36.016098, 41.602016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035606, 36.409969, 41.668335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330915, -0.174309, 0.927422,
		0.942114, 0.004780, -0.335259,
		0.054005, 0.984679, 0.165801,
		37.051807, 36.705372, 41.718075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504623, 36.115585, 42.120823>,  <37.014004, 36.016098, 41.602016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504623, 36.115585, 42.120823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.347401, 36.483032, 42.137024>,  <37.253067, 36.703503, 42.146744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.347401, 36.483032, 42.137024>,  <37.504623, 36.115585, 42.120823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347401, 36.483032, 42.137024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220705, 0.051490, 0.973980,
		0.892632, 0.391774, -0.222983,
		-0.393061, 0.918620, 0.040505,
		37.229481, 36.758617, 42.149174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944069, 36.563915, 42.576118>,  <37.504623, 36.115585, 42.120823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944069, 36.563915, 42.576118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.582390, 36.734722, 42.579536>,  <37.365383, 36.837208, 42.581589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.582390, 36.734722, 42.579536>,  <37.944069, 36.563915, 42.576118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582390, 36.734722, 42.579536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000369, -0.019229, 0.999815,
		0.427106, 0.904037, 0.017229,
		-0.904201, 0.427021, 0.008546,
		37.311131, 36.862827, 42.582100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951923, 37.147308, 43.080147>,  <37.944069, 36.563915, 42.576118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951923, 37.147308, 43.080147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.560150, 37.084106, 43.029957>,  <37.325085, 37.046185, 42.999844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.560150, 37.084106, 43.029957>,  <37.951923, 37.147308, 43.080147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560150, 37.084106, 43.029957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087029, -0.230230, 0.969237,
		-0.182036, 0.960223, 0.211743,
		-0.979433, -0.158008, -0.125477,
		37.266319, 37.036705, 42.992313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645493, 37.458580, 43.701488>,  <37.951923, 37.147308, 43.080147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645493, 37.458580, 43.701488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.396782, 37.172485, 43.573845>,  <37.247555, 37.000828, 43.497257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.396782, 37.172485, 43.573845>,  <37.645493, 37.458580, 43.701488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396782, 37.172485, 43.573845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196322, -0.252101, 0.947577,
		-0.758186, 0.651834, 0.016336,
		-0.621781, -0.715233, -0.319109,
		37.210247, 36.957916, 43.478111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188847, 37.549530, 44.147072>,  <37.645493, 37.458580, 43.701488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188847, 37.549530, 44.147072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.080536, 37.193096, 44.001389>,  <37.015549, 36.979237, 43.913979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.080536, 37.193096, 44.001389>,  <37.188847, 37.549530, 44.147072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080536, 37.193096, 44.001389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296507, -0.282746, 0.912216,
		-0.915839, 0.355001, -0.187650,
		-0.270780, -0.891083, -0.364210,
		36.999302, 36.925770, 43.892124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610958, 37.306152, 44.600029>,  <37.188847, 37.549530, 44.147072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610958, 37.306152, 44.600029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768520, 36.983780, 44.423252>,  <36.863056, 36.790356, 44.317184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768520, 36.983780, 44.423252>,  <36.610958, 37.306152, 44.600029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768520, 36.983780, 44.423252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160246, -0.533672, 0.830371,
		-0.905075, -0.256268, -0.339363,
		0.393905, -0.805929, -0.441947,
		36.886692, 36.742001, 44.290668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089027, 36.743710, 44.766842>,  <36.610958, 37.306152, 44.600029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089027, 36.743710, 44.766842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.416801, 36.538956, 44.663689>,  <36.613464, 36.416103, 44.601795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.416801, 36.538956, 44.663689>,  <36.089027, 36.743710, 44.766842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416801, 36.538956, 44.663689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154739, -0.630785, 0.760372,
		-0.551892, -0.583169, -0.596095,
		0.819433, -0.511882, -0.257886,
		36.662632, 36.385391, 44.586323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882256, 36.061981, 44.752026>,  <36.089027, 36.743710, 44.766842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882256, 36.061981, 44.752026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.278339, 36.080151, 44.804817>,  <36.515991, 36.091053, 44.836491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.278339, 36.080151, 44.804817>,  <35.882256, 36.061981, 44.752026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278339, 36.080151, 44.804817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088976, -0.523099, 0.847615,
		0.107543, -0.851061, -0.513936,
		0.990211, 0.045427, 0.131979,
		36.575401, 36.093781, 44.844410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121365, 35.414181, 44.663605>,  <35.882256, 36.061981, 44.752026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121365, 35.414181, 44.663605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.399319, 35.613007, 44.871475>,  <36.566090, 35.732304, 44.996197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.399319, 35.613007, 44.871475>,  <36.121365, 35.414181, 44.663605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399319, 35.613007, 44.871475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016540, -0.733510, 0.679478,
		0.718929, -0.463564, -0.517927,
		0.694886, 0.497063, 0.519674,
		36.607784, 35.762127, 45.027378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588230, 34.938320, 44.784466>,  <36.121365, 35.414181, 44.663605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588230, 34.938320, 44.784466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.643482, 35.213791, 45.069183>,  <36.676632, 35.379074, 45.240013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.643482, 35.213791, 45.069183>,  <36.588230, 34.938320, 44.784466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643482, 35.213791, 45.069183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050031, -0.712911, 0.699468,
		0.989150, -0.132229, -0.064018,
		0.138129, 0.688675, 0.711791,
		36.684921, 35.420395, 45.282722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998661, 34.623852, 45.403915>,  <36.588230, 34.938320, 44.784466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998661, 34.623852, 45.403915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.871689, 34.959148, 45.581268>,  <36.795506, 35.160328, 45.687679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.871689, 34.959148, 45.581268>,  <36.998661, 34.623852, 45.403915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871689, 34.959148, 45.581268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114288, -0.497973, 0.859628,
		0.941370, 0.222197, 0.253872,
		-0.317428, 0.838243, 0.443383,
		36.776459, 35.210621, 45.714283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429253, 34.726185, 46.017780>,  <36.998661, 34.623852, 45.403915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429253, 34.726185, 46.017780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.089775, 34.931446, 46.069000>,  <36.886089, 35.054604, 46.099731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.089775, 34.931446, 46.069000>,  <37.429253, 34.726185, 46.017780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089775, 34.931446, 46.069000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121797, -0.425222, 0.896857,
		0.514676, 0.745557, 0.423382,
		-0.848690, 0.513157, 0.128045,
		36.835167, 35.085392, 46.107414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104305, 34.512142, 46.305454>,  <37.429253, 34.726185, 46.017780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104305, 34.512142, 46.305454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473675, 34.424145, 46.431240>,  <38.695297, 34.371346, 46.506710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473675, 34.424145, 46.431240>,  <38.104305, 34.512142, 46.305454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473675, 34.424145, 46.431240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346749, 0.127113, -0.929305,
		0.164471, 0.967184, 0.193663,
		0.923425, -0.219996, 0.314464,
		38.750702, 34.358147, 46.525578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650398, 34.983738, 45.969402>,  <38.104305, 34.512142, 46.305454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650398, 34.983738, 45.969402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.865406, 34.671730, 46.097553>,  <38.994411, 34.484524, 46.174446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.865406, 34.671730, 46.097553>,  <38.650398, 34.983738, 45.969402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865406, 34.671730, 46.097553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565996, 0.052098, -0.822761,
		0.625078, 0.623583, 0.469491,
		0.537519, -0.780019, 0.320380,
		39.026661, 34.437725, 46.193668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330833, 35.241486, 46.106071>,  <38.650398, 34.983738, 45.969402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330833, 35.241486, 46.106071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.307751, 34.853836, 46.010185>,  <39.293900, 34.621246, 45.952652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.307751, 34.853836, 46.010185>,  <39.330833, 35.241486, 46.106071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307751, 34.853836, 46.010185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557447, 0.167918, -0.813054,
		0.828204, -0.180550, 0.530546,
		-0.057709, -0.969126, -0.239718,
		39.290440, 34.563099, 45.938271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942966, 35.203938, 45.783897>,  <39.330833, 35.241486, 46.106071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942966, 35.203938, 45.783897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.765472, 34.858505, 45.688126>,  <39.658974, 34.651245, 45.630665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.765472, 34.858505, 45.688126>,  <39.942966, 35.203938, 45.783897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765472, 34.858505, 45.688126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487333, -0.008324, -0.873176,
		0.752065, -0.504142, 0.424545,
		-0.443739, -0.863581, -0.239425,
		39.632351, 34.599430, 45.616299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394844, 34.782280, 45.592682>,  <39.942966, 35.203938, 45.783897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394844, 34.782280, 45.592682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.069855, 34.640442, 45.407578>,  <39.874863, 34.555340, 45.296516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.069855, 34.640442, 45.407578>,  <40.394844, 34.782280, 45.592682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069855, 34.640442, 45.407578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396738, 0.245328, -0.884541,
		0.427182, -0.902262, -0.058641,
		-0.812474, -0.354595, -0.462761,
		39.826111, 34.534065, 45.268749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653904, 34.280796, 45.008545>,  <40.394844, 34.782280, 45.592682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653904, 34.280796, 45.008545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.286659, 34.418762, 44.930470>,  <40.066311, 34.501541, 44.883625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.286659, 34.418762, 44.930470>,  <40.653904, 34.280796, 45.008545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286659, 34.418762, 44.930470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268387, 0.178747, -0.946582,
		-0.291603, -0.921457, -0.256681,
		-0.918115, 0.344916, -0.195184,
		40.011223, 34.522236, 44.871914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566383, 34.038727, 44.391483>,  <40.653904, 34.280796, 45.008545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566383, 34.038727, 44.391483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.302044, 34.337410, 44.421684>,  <40.143440, 34.516621, 44.439804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.302044, 34.337410, 44.421684>,  <40.566383, 34.038727, 44.391483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302044, 34.337410, 44.421684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168774, 0.245886, -0.954492,
		-0.731294, -0.618034, -0.288519,
		-0.660852, 0.746709, 0.075507,
		40.103790, 34.561424, 44.444336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188972, 34.022800, 43.698315>,  <40.566383, 34.038727, 44.391483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188972, 34.022800, 43.698315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.120686, 34.370880, 43.883186>,  <40.079716, 34.579727, 43.994110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.120686, 34.370880, 43.883186>,  <40.188972, 34.022800, 43.698315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120686, 34.370880, 43.883186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197622, 0.489774, -0.849156,
		-0.965299, -0.053626, -0.255582,
		-0.170715, 0.870199, 0.462181,
		40.069469, 34.631939, 44.021839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690529, 34.455387, 43.320995>,  <40.188972, 34.022800, 43.698315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690529, 34.455387, 43.320995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.861961, 34.733906, 43.551296>,  <39.964821, 34.901016, 43.689476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.861961, 34.733906, 43.551296>,  <39.690529, 34.455387, 43.320995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861961, 34.733906, 43.551296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019960, 0.644381, -0.764444,
		-0.903283, 0.316135, 0.290068,
		0.428582, 0.696299, 0.575748,
		39.990536, 34.942795, 43.724022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190571, 35.038727, 43.395336>,  <39.690529, 34.455387, 43.320995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190571, 35.038727, 43.395336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.566254, 35.164433, 43.450657>,  <39.791664, 35.239857, 43.483849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.566254, 35.164433, 43.450657>,  <39.190571, 35.038727, 43.395336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566254, 35.164433, 43.450657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095357, 0.625713, -0.774203,
		-0.329841, 0.713950, 0.617641,
		0.939208, 0.314261, 0.138305,
		39.848015, 35.258709, 43.492149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246475, 35.737049, 43.241070>,  <39.190571, 35.038727, 43.395336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246475, 35.737049, 43.241070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.632183, 35.633499, 43.218548>,  <39.863605, 35.571369, 43.205036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.632183, 35.633499, 43.218548>,  <39.246475, 35.737049, 43.241070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632183, 35.633499, 43.218548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112143, 0.591381, -0.798557,
		0.240024, 0.763709, 0.599281,
		0.964268, -0.258878, -0.056301,
		39.921463, 35.555836, 43.201656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560658, 36.372944, 43.119282>,  <39.246475, 35.737049, 43.241070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560658, 36.372944, 43.119282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.830894, 36.095516, 43.019260>,  <39.993038, 35.929058, 42.959248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.830894, 36.095516, 43.019260>,  <39.560658, 36.372944, 43.119282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830894, 36.095516, 43.019260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171880, 0.477979, -0.861390,
		0.716957, 0.538973, 0.442133,
		0.675596, -0.693573, -0.250052,
		40.033573, 35.887444, 42.944244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081165, 36.783978, 42.896252>,  <39.560658, 36.372944, 43.119282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081165, 36.783978, 42.896252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124950, 36.410496, 42.759895>,  <40.151222, 36.186405, 42.678082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124950, 36.410496, 42.759895>,  <40.081165, 36.783978, 42.896252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124950, 36.410496, 42.759895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243594, 0.357697, -0.901507,
		0.963680, 0.015646, 0.266601,
		0.109467, -0.933706, -0.340895,
		40.157791, 36.130383, 42.657627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678314, 36.864391, 42.593246>,  <40.081165, 36.783978, 42.896252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678314, 36.864391, 42.593246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.555408, 36.518261, 42.434856>,  <40.481667, 36.310581, 42.339825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.555408, 36.518261, 42.434856>,  <40.678314, 36.864391, 42.593246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555408, 36.518261, 42.434856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365235, 0.276999, -0.888749,
		0.878745, -0.417704, 0.230936,
		-0.307265, -0.865330, -0.395971,
		40.463230, 36.258663, 42.316067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.592779, 42.782688, 30.917049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261227, 42.826355, 30.697582>,  <29.062296, 42.852554, 30.565903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261227, 42.826355, 30.697582>,  <29.592779, 42.782688, 30.917049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261227, 42.826355, 30.697582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372677, -0.839210, 0.396028,
		-0.417213, 0.532736, 0.736292,
		-0.828882, 0.109171, -0.548668,
		29.012562, 42.859108, 30.532982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184702, 42.796013, 31.427443>,  <29.592779, 42.782688, 30.917049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184702, 42.796013, 31.427443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979401, 42.680969, 31.103998>,  <28.856220, 42.611942, 30.909931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979401, 42.680969, 31.103998>,  <29.184702, 42.796013, 31.427443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979401, 42.680969, 31.103998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301973, -0.821412, 0.483834,
		-0.803358, 0.492508, 0.334742,
		-0.513253, -0.287609, -0.808612,
		28.825424, 42.594685, 30.861414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532866, 42.625763, 31.676693>,  <29.184702, 42.796013, 31.427443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532866, 42.625763, 31.676693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.598251, 42.443226, 31.326828>,  <28.637484, 42.333702, 31.116909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.598251, 42.443226, 31.326828>,  <28.532866, 42.625763, 31.676693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598251, 42.443226, 31.326828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334802, -0.859632, 0.385929,
		-0.928001, 0.229752, -0.293305,
		0.163467, -0.456342, -0.874661,
		28.647291, 42.306324, 31.064430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969576, 42.207310, 31.567545>,  <28.532866, 42.625763, 31.676693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969576, 42.207310, 31.567545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240112, 42.041946, 31.323690>,  <28.402435, 41.942730, 31.177378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240112, 42.041946, 31.323690>,  <27.969576, 42.207310, 31.567545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240112, 42.041946, 31.323690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365856, -0.906880, 0.209090,
		-0.639304, 0.081622, -0.764610,
		0.676343, -0.413409, -0.609634,
		28.443014, 41.917923, 31.140800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525761, 41.749023, 31.310131>,  <27.969576, 42.207310, 31.567545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525761, 41.749023, 31.310131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899607, 41.646519, 31.211481>,  <28.123915, 41.585018, 31.152290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899607, 41.646519, 31.211481>,  <27.525761, 41.749023, 31.310131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899607, 41.646519, 31.211481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203052, -0.953778, 0.221535,
		-0.291996, -0.156973, -0.943450,
		0.934617, -0.256257, -0.246625,
		28.179991, 41.569641, 31.137493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571127, 41.236515, 30.699854>,  <27.525761, 41.749023, 31.310131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571127, 41.236515, 30.699854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885212, 41.188766, 30.942900>,  <28.073662, 41.160118, 31.088728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885212, 41.188766, 30.942900>,  <27.571127, 41.236515, 30.699854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885212, 41.188766, 30.942900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274776, -0.946515, 0.169139,
		0.554926, -0.299767, -0.776013,
		0.785211, -0.119371, 0.607614,
		28.120775, 41.152954, 31.125183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888062, 40.633232, 30.460814>,  <27.571127, 41.236515, 30.699854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888062, 40.633232, 30.460814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006557, 40.712887, 30.834463>,  <28.077656, 40.760681, 31.058653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006557, 40.712887, 30.834463>,  <27.888062, 40.633232, 30.460814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006557, 40.712887, 30.834463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216388, -0.938598, 0.268719,
		0.930278, -0.281739, -0.234959,
		0.296241, 0.199141, 0.934122,
		28.095430, 40.772629, 31.114700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319979, 40.105911, 30.674273>,  <27.888062, 40.633232, 30.460814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319979, 40.105911, 30.674273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.204622, 40.263161, 31.023508>,  <28.135408, 40.357510, 31.233049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.204622, 40.263161, 31.023508>,  <28.319979, 40.105911, 30.674273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204622, 40.263161, 31.023508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131965, -0.919449, 0.370404,
		0.948376, -0.008397, 0.317038,
		-0.288389, 0.393120, 0.873091,
		28.118105, 40.381096, 31.285435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560799, 39.611153, 31.176445>,  <28.319979, 40.105911, 30.674273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560799, 39.611153, 31.176445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292494, 39.840633, 31.364466>,  <28.131512, 39.978321, 31.477278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292494, 39.840633, 31.364466>,  <28.560799, 39.611153, 31.176445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292494, 39.840633, 31.364466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391190, -0.812109, 0.432955,
		0.630118, 0.106531, 0.769157,
		-0.670762, 0.573699, 0.470050,
		28.091265, 40.012745, 31.505482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608232, 39.393173, 31.786131>,  <28.560799, 39.611153, 31.176445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608232, 39.393173, 31.786131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.246809, 39.564556, 31.785089>,  <28.029955, 39.667385, 31.784464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.246809, 39.564556, 31.785089>,  <28.608232, 39.393173, 31.786131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246809, 39.564556, 31.785089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362281, -0.760721, 0.538569,
		0.228774, 0.487571, 0.842578,
		-0.903557, 0.428460, -0.002604,
		27.975742, 39.693092, 31.784307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420507, 39.336384, 32.418159>,  <28.608232, 39.393173, 31.786131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420507, 39.336384, 32.418159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.075464, 39.416985, 32.232555>,  <27.868439, 39.465343, 32.121193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.075464, 39.416985, 32.232555>,  <28.420507, 39.336384, 32.418159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075464, 39.416985, 32.232555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470705, -0.655741, 0.590288,
		-0.185330, 0.727600, 0.660493,
		-0.862606, 0.201499, -0.464013,
		27.816683, 39.477436, 32.093353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973282, 39.309563, 32.950901>,  <28.420507, 39.336384, 32.418159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973282, 39.309563, 32.950901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755919, 39.286568, 32.615902>,  <27.625500, 39.272770, 32.414902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755919, 39.286568, 32.615902>,  <27.973282, 39.309563, 32.950901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755919, 39.286568, 32.615902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542322, -0.737478, 0.402510,
		-0.640776, 0.672920, 0.369574,
		-0.543409, -0.057491, -0.837497,
		27.592896, 39.269321, 32.364655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158052, 39.458881, 33.116508>,  <27.973282, 39.309563, 32.950901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158052, 39.458881, 33.116508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207167, 39.250809, 32.778435>,  <27.236635, 39.125965, 32.575592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207167, 39.250809, 32.778435>,  <27.158052, 39.458881, 33.116508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207167, 39.250809, 32.778435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399621, -0.805451, 0.437667,
		-0.908420, 0.284015, -0.306771,
		0.122785, -0.520177, -0.845186,
		27.244001, 39.094757, 32.524879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584532, 39.189182, 33.103977>,  <27.158052, 39.458881, 33.116508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584532, 39.189182, 33.103977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819160, 38.974522, 32.861347>,  <26.959938, 38.845726, 32.715767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819160, 38.974522, 32.861347>,  <26.584532, 39.189182, 33.103977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819160, 38.974522, 32.861347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467361, -0.835962, 0.287647,
		-0.661443, 0.114765, -0.741163,
		0.586572, -0.536653, -0.606578,
		26.995132, 38.813526, 32.679375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095846, 38.620651, 32.851418>,  <26.584532, 39.189182, 33.103977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095846, 38.620651, 32.851418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.456583, 38.485596, 32.743580>,  <26.673025, 38.404560, 32.678875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.456583, 38.485596, 32.743580>,  <26.095846, 38.620651, 32.851418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456583, 38.485596, 32.743580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297925, -0.937855, 0.177958,
		-0.312928, -0.080171, -0.946387,
		0.901841, -0.337641, -0.269596,
		26.727135, 38.384304, 32.662701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940256, 37.980610, 32.472828>,  <26.095846, 38.620651, 32.851418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.940256, 37.980610, 32.472828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325174, 37.993984, 32.580807>,  <26.556126, 38.002007, 32.645596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325174, 37.993984, 32.580807>,  <25.940256, 37.980610, 32.472828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325174, 37.993984, 32.580807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064287, -0.936351, 0.345129,
		0.264307, -0.349470, -0.898895,
		0.962293, 0.033433, 0.269951,
		26.613863, 38.004013, 32.661793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236511, 37.335629, 32.325493>,  <25.940256, 37.980610, 32.472828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236511, 37.335629, 32.325493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489637, 37.467663, 32.605659>,  <26.641514, 37.546883, 32.773758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489637, 37.467663, 32.605659>,  <26.236511, 37.335629, 32.325493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489637, 37.467663, 32.605659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164706, -0.941262, 0.294782,
		0.756580, -0.071180, -0.650015,
		0.632817, 0.330088, 0.700417,
		26.679483, 37.566689, 32.815784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690525, 36.788593, 32.385727>,  <26.236511, 37.335629, 32.325493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690525, 36.788593, 32.385727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.771654, 36.999496, 32.715782>,  <26.820332, 37.126038, 32.913815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.771654, 36.999496, 32.715782>,  <26.690525, 36.788593, 32.385727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771654, 36.999496, 32.715782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220829, -0.845577, 0.486040,
		0.953990, 0.083635, -0.287938,
		0.202824, 0.527262, 0.825141,
		26.832500, 37.157677, 32.963326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383732, 36.588505, 32.695595>,  <26.690525, 36.788593, 32.385727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383732, 36.588505, 32.695595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153147, 36.752800, 32.978149>,  <27.014795, 36.851376, 33.147682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153147, 36.752800, 32.978149>,  <27.383732, 36.588505, 32.695595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153147, 36.752800, 32.978149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266790, -0.722500, 0.637822,
		0.772342, 0.556139, 0.306916,
		-0.576464, 0.410735, 0.706389,
		26.980207, 36.876019, 33.190067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790197, 36.619411, 33.276016>,  <27.383732, 36.588505, 32.695595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790197, 36.619411, 33.276016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427345, 36.653446, 33.440880>,  <27.209635, 36.673866, 33.539799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427345, 36.653446, 33.440880>,  <27.790197, 36.619411, 33.276016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427345, 36.653446, 33.440880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237347, -0.705306, 0.667989,
		0.347535, 0.703778, 0.619609,
		-0.907130, 0.085088, 0.412158,
		27.155207, 36.678974, 33.564526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529736, 36.450863, 33.540859>,  <27.790197, 36.619411, 33.276016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529736, 36.450863, 33.540859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.925346, 36.439995, 33.598949>,  <29.162712, 36.433475, 33.633804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.925346, 36.439995, 33.598949>,  <28.529736, 36.450863, 33.540859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925346, 36.439995, 33.598949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016818, 0.997261, 0.072018,
		-0.146780, -0.068785, 0.986775,
		0.989026, -0.027166, 0.145222,
		29.222054, 36.431847, 33.642517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629148, 36.973309, 34.040535>,  <28.529736, 36.450863, 33.540859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629148, 36.973309, 34.040535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978550, 36.925251, 33.851830>,  <29.188190, 36.896416, 33.738605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978550, 36.925251, 33.851830>,  <28.629148, 36.973309, 34.040535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978550, 36.925251, 33.851830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157003, 0.986812, 0.039398,
		0.460807, -0.108482, 0.880845,
		0.873503, -0.120141, -0.471762,
		29.240601, 36.889210, 33.710300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098951, 37.425144, 34.364910>,  <28.629148, 36.973309, 34.040535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098951, 37.425144, 34.364910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261129, 37.327637, 34.012505>,  <29.358437, 37.269131, 33.801060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261129, 37.327637, 34.012505>,  <29.098951, 37.425144, 34.364910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261129, 37.327637, 34.012505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304089, 0.944865, -0.121492,
		0.862058, -0.218649, 0.457219,
		0.405446, -0.243768, -0.881017,
		29.382763, 37.254505, 33.748199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777351, 37.819084, 34.297333>,  <29.098951, 37.425144, 34.364910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777351, 37.819084, 34.297333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695549, 37.691280, 33.927231>,  <29.646467, 37.614597, 33.705170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695549, 37.691280, 33.927231>,  <29.777351, 37.819084, 34.297333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695549, 37.691280, 33.927231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544065, 0.748676, -0.378783,
		0.813738, -0.580862, 0.020722,
		-0.204506, -0.319505, -0.925253,
		29.634197, 37.595428, 33.649654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397135, 37.897003, 33.926445>,  <29.777351, 37.819084, 34.297333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397135, 37.897003, 33.926445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.125982, 37.901428, 33.632408>,  <29.963291, 37.904083, 33.455986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.125982, 37.901428, 33.632408>,  <30.397135, 37.897003, 33.926445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125982, 37.901428, 33.632408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465110, 0.780802, -0.417159,
		0.569342, -0.624681, -0.534437,
		-0.677881, 0.011065, -0.735089,
		29.922619, 37.904747, 33.411880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664396, 37.859016, 33.204407>,  <30.397135, 37.897003, 33.926445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664396, 37.859016, 33.204407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.305391, 38.031544, 33.167656>,  <30.089989, 38.135059, 33.145607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.305391, 38.031544, 33.167656>,  <30.664396, 37.859016, 33.204407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305391, 38.031544, 33.167656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418700, 0.768043, -0.484562,
		-0.138437, -0.473367, -0.869919,
		-0.897511, 0.431316, -0.091873,
		30.036139, 38.160938, 33.140095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840738, 38.346439, 32.772083>,  <30.664396, 37.859016, 33.204407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840738, 38.346439, 32.772083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.472553, 38.458534, 32.881050>,  <30.251642, 38.525791, 32.946430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.472553, 38.458534, 32.881050>,  <30.840738, 38.346439, 32.772083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472553, 38.458534, 32.881050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201089, 0.937282, -0.284721,
		-0.335124, -0.207294, -0.919087,
		-0.920465, 0.280235, 0.272421,
		30.196413, 38.542606, 32.962776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631329, 38.726387, 32.191761>,  <30.840738, 38.346439, 32.772083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631329, 38.726387, 32.191761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.381794, 38.844109, 32.481373>,  <30.232073, 38.914742, 32.655140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.381794, 38.844109, 32.481373>,  <30.631329, 38.726387, 32.191761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381794, 38.844109, 32.481373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137251, 0.953250, -0.269215,
		-0.769407, -0.068573, -0.635067,
		-0.623838, 0.294299, 0.724026,
		30.194643, 38.932400, 32.698582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194708, 39.182316, 31.847277>,  <30.631329, 38.726387, 32.191761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194708, 39.182316, 31.847277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.133364, 39.257397, 32.235348>,  <30.096558, 39.302444, 32.468189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.133364, 39.257397, 32.235348>,  <30.194708, 39.182316, 31.847277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133364, 39.257397, 32.235348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000392, 0.981782, -0.190012,
		-0.988170, -0.029520, -0.150493,
		-0.153360, 0.187705, 0.970179,
		30.087355, 39.313709, 32.526402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575424, 39.692211, 31.881866>,  <30.194708, 39.182316, 31.847277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575424, 39.692211, 31.881866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829983, 39.721855, 32.188984>,  <29.982718, 39.739643, 32.373253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829983, 39.721855, 32.188984>,  <29.575424, 39.692211, 31.881866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829983, 39.721855, 32.188984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085226, 0.982524, -0.165480,
		-0.766641, 0.170747, 0.618956,
		0.636394, 0.074113, 0.767795,
		30.020901, 39.744087, 32.419323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411442, 40.330509, 32.124702>,  <29.575424, 39.692211, 31.881866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411442, 40.330509, 32.124702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752066, 40.251110, 32.318790>,  <29.956440, 40.203472, 32.435246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752066, 40.251110, 32.318790>,  <29.411442, 40.330509, 32.124702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752066, 40.251110, 32.318790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293094, 0.947651, -0.126704,
		-0.434671, 0.250112, 0.865162,
		0.851561, -0.198499, 0.485223,
		30.007534, 40.191559, 32.464355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536921, 40.855820, 32.696255>,  <29.411442, 40.330509, 32.124702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536921, 40.855820, 32.696255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.877491, 40.709755, 32.545662>,  <30.081833, 40.622116, 32.455307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.877491, 40.709755, 32.545662>,  <29.536921, 40.855820, 32.696255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877491, 40.709755, 32.545662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342762, 0.930721, -0.127563,
		0.396976, -0.020432, 0.917601,
		0.851425, -0.365158, -0.376478,
		30.132919, 40.600208, 32.432720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013668, 41.340359, 32.889526>,  <29.536921, 40.855820, 32.696255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013668, 41.340359, 32.889526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262188, 41.130280, 32.656921>,  <30.411301, 41.004234, 32.517361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262188, 41.130280, 32.656921>,  <30.013668, 41.340359, 32.889526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262188, 41.130280, 32.656921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526001, 0.829609, -0.187274,
		0.580782, -0.189522, 0.791690,
		0.621301, -0.525195, -0.581511,
		30.448578, 40.972721, 32.482468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667208, 41.591457, 33.089840>,  <30.013668, 41.340359, 32.889526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667208, 41.591457, 33.089840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.675421, 41.444069, 32.718075>,  <30.680347, 41.355637, 32.495014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.675421, 41.444069, 32.718075>,  <30.667208, 41.591457, 33.089840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675421, 41.444069, 32.718075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516079, 0.800092, -0.305803,
		0.856295, -0.473371, 0.206588,
		0.020531, -0.368473, -0.929412,
		30.681580, 41.333527, 32.439251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344120, 41.673840, 32.955116>,  <30.667208, 41.591457, 33.089840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344120, 41.673840, 32.955116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.134428, 41.649632, 32.615345>,  <31.008614, 41.635105, 32.411484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.134428, 41.649632, 32.615345>,  <31.344120, 41.673840, 32.955116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134428, 41.649632, 32.615345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524093, 0.763262, -0.377833,
		0.671200, -0.643248, -0.368405,
		-0.524230, -0.060523, -0.849424,
		30.977160, 41.631474, 32.360519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832636, 41.891476, 32.396622>,  <31.344120, 41.673840, 32.955116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832636, 41.891476, 32.396622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.470753, 41.923138, 32.229176>,  <31.253624, 41.942135, 32.128708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.470753, 41.923138, 32.229176>,  <31.832636, 41.891476, 32.396622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470753, 41.923138, 32.229176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215933, 0.932223, -0.290402,
		0.367258, -0.353122, -0.860480,
		-0.904707, 0.079153, -0.418617,
		31.199341, 41.946884, 32.103592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925489, 42.282314, 31.891867>,  <31.832636, 41.891476, 32.396622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925489, 42.282314, 31.891867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.525806, 42.297325, 31.886545>,  <31.285997, 42.306332, 31.883352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.525806, 42.297325, 31.886545>,  <31.925489, 42.282314, 31.891867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525806, 42.297325, 31.886545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039210, 0.869267, -0.492785,
		-0.006930, -0.492916, -0.870050,
		-0.999207, 0.037529, -0.013303,
		31.226044, 42.308582, 31.882555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677744, 42.543915, 31.171183>,  <31.925489, 42.282314, 31.891867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677744, 42.543915, 31.171183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.390320, 42.618282, 31.439245>,  <31.217865, 42.662903, 31.600082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.390320, 42.618282, 31.439245>,  <31.677744, 42.543915, 31.171183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390320, 42.618282, 31.439245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043973, 0.949533, -0.310570,
		-0.694075, -0.252632, -0.674120,
		-0.718559, 0.185915, 0.670156,
		31.174751, 42.674057, 31.640291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033125, 42.760696, 30.862432>,  <31.677744, 42.543915, 31.171183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033125, 42.760696, 30.862432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.990530, 42.931431, 31.221647>,  <30.964973, 43.033871, 31.437176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.990530, 42.931431, 31.221647>,  <31.033125, 42.760696, 30.862432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990530, 42.931431, 31.221647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348472, 0.861910, -0.368346,
		-0.931251, 0.273717, -0.240522,
		-0.106486, 0.426838, 0.898037,
		30.958584, 43.059483, 31.491058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780014, 43.382820, 30.708963>,  <31.033125, 42.760696, 30.862432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780014, 43.382820, 30.708963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.914698, 43.449493, 31.079659>,  <30.995508, 43.489498, 31.302076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.914698, 43.449493, 31.079659>,  <30.780014, 43.382820, 30.708963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914698, 43.449493, 31.079659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283406, 0.920630, -0.268555,
		-0.897946, 0.353068, 0.262745,
		0.336709, 0.166684, 0.926738,
		31.015711, 43.499500, 31.357679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580111, 44.021751, 30.827620>,  <30.780014, 43.382820, 30.708963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580111, 44.021751, 30.827620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.889288, 43.975269, 31.077116>,  <31.074795, 43.947380, 31.226814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.889288, 43.975269, 31.077116>,  <30.580111, 44.021751, 30.827620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889288, 43.975269, 31.077116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305741, 0.929633, -0.205683,
		-0.555950, 0.349685, 0.754082,
		0.772944, -0.116204, 0.623743,
		31.121172, 43.940407, 31.264238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660187, 44.628880, 30.965948>,  <30.580111, 44.021751, 30.827620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660187, 44.628880, 30.965948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.003428, 44.445625, 31.058704>,  <31.209372, 44.335674, 31.114357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.003428, 44.445625, 31.058704>,  <30.660187, 44.628880, 30.965948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003428, 44.445625, 31.058704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483386, 0.873074, -0.063868,
		-0.173196, 0.166898, 0.970643,
		0.858103, -0.458134, 0.231889,
		31.260859, 44.308186, 31.128271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.701134, 31.998064, 46.730133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.311691, 31.917864, 46.686497>,  <42.078026, 31.869743, 46.660316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.311691, 31.917864, 46.686497>,  <42.701134, 31.998064, 46.730133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311691, 31.917864, 46.686497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090894, -0.097836, 0.991043,
		-0.209376, 0.974797, 0.077029,
		-0.973602, -0.200499, -0.109088,
		42.019611, 31.857714, 46.653770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324619, 32.242722, 47.254665>,  <42.701134, 31.998064, 46.730133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324619, 32.242722, 47.254665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.051201, 31.972157, 47.144951>,  <41.887150, 31.809818, 47.079121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.051201, 31.972157, 47.144951>,  <42.324619, 32.242722, 47.254665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051201, 31.972157, 47.144951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188621, -0.199322, 0.961609,
		-0.705116, 0.709039, 0.008660,
		-0.683545, -0.676413, -0.274285,
		41.846138, 31.769232, 47.062664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812622, 32.312504, 47.782417>,  <42.324619, 32.242722, 47.254665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812622, 32.312504, 47.782417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.743515, 31.960608, 47.605240>,  <41.702049, 31.749468, 47.498932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.743515, 31.960608, 47.605240>,  <41.812622, 32.312504, 47.782417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743515, 31.960608, 47.605240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190400, -0.411395, 0.891348,
		-0.966384, 0.238334, -0.096428,
		-0.172769, -0.879745, -0.442945,
		41.691685, 31.696684, 47.472355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151302, 32.151184, 48.003578>,  <41.812622, 32.312504, 47.782417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151302, 32.151184, 48.003578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.314632, 31.806507, 47.883072>,  <41.412632, 31.599701, 47.810768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.314632, 31.806507, 47.883072>,  <41.151302, 32.151184, 48.003578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314632, 31.806507, 47.883072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388352, -0.462658, 0.796951,
		-0.826107, -0.208418, -0.523554,
		0.408325, -0.861690, -0.301266,
		41.437130, 31.548000, 47.792694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647762, 31.699635, 48.116558>,  <41.151302, 32.151184, 48.003578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647762, 31.699635, 48.116558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976265, 31.473364, 48.086742>,  <41.173367, 31.337603, 48.068855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976265, 31.473364, 48.086742>,  <40.647762, 31.699635, 48.116558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976265, 31.473364, 48.086742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232257, -0.450761, 0.861900,
		-0.521155, -0.690525, -0.501571,
		0.821251, -0.565677, -0.074538,
		41.222641, 31.303661, 48.064381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410118, 30.920897, 48.238838>,  <40.647762, 31.699635, 48.116558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410118, 30.920897, 48.238838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.800987, 30.966667, 48.310436>,  <41.035507, 30.994129, 48.353394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.800987, 30.966667, 48.310436>,  <40.410118, 30.920897, 48.238838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800987, 30.966667, 48.310436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116443, -0.416228, 0.901773,
		0.177692, -0.902031, -0.393402,
		0.977173, 0.114429, 0.178996,
		41.094139, 31.000996, 48.364136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572235, 30.258924, 48.511803>,  <40.410118, 30.920897, 48.238838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572235, 30.258924, 48.511803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.856457, 30.515181, 48.628208>,  <41.026989, 30.668934, 48.698051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.856457, 30.515181, 48.628208>,  <40.572235, 30.258924, 48.511803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856457, 30.515181, 48.628208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010793, -0.423458, 0.905851,
		0.703555, -0.640519, -0.307806,
		0.710559, 0.640639, 0.291013,
		41.069626, 30.707373, 48.715511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103767, 29.843390, 48.779827>,  <40.572235, 30.258924, 48.511803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103767, 29.843390, 48.779827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149857, 30.207363, 48.939198>,  <41.177509, 30.425747, 49.034821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149857, 30.207363, 48.939198>,  <41.103767, 29.843390, 48.779827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149857, 30.207363, 48.939198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043355, -0.405322, 0.913145,
		0.992394, -0.087937, -0.086151,
		0.115219, 0.909935, 0.398427,
		41.184422, 30.480343, 49.058727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559711, 29.796774, 49.351402>,  <41.103767, 29.843390, 48.779827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559711, 29.796774, 49.351402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.379929, 30.147526, 49.419601>,  <41.272057, 30.357977, 49.460522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.379929, 30.147526, 49.419601>,  <41.559711, 29.796774, 49.351402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379929, 30.147526, 49.419601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158120, -0.265943, 0.950932,
		0.879195, 0.400446, 0.258183,
		-0.449459, 0.876879, 0.170497,
		41.245090, 30.410589, 49.470749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904564, 30.130564, 49.939960>,  <41.559711, 29.796774, 49.351402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904564, 30.130564, 49.939960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.548470, 30.306259, 49.891716>,  <41.334812, 30.411676, 49.862770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.548470, 30.306259, 49.891716>,  <41.904564, 30.130564, 49.939960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548470, 30.306259, 49.891716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146895, -0.026213, 0.988805,
		0.431162, 0.897987, 0.087858,
		-0.890237, 0.439241, -0.120607,
		41.281399, 30.438032, 49.855534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885670, 30.643950, 50.483818>,  <41.904564, 30.130564, 49.939960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885670, 30.643950, 50.483818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.502861, 30.591476, 50.380352>,  <41.273178, 30.559992, 50.318272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.502861, 30.591476, 50.380352>,  <41.885670, 30.643950, 50.483818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502861, 30.591476, 50.380352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277947, 0.160151, 0.947152,
		-0.082826, 0.978337, -0.189729,
		-0.957019, -0.131184, -0.258661,
		41.215755, 30.552122, 50.302753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480530, 30.894804, 51.096256>,  <41.885670, 30.643950, 50.483818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480530, 30.894804, 51.096256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.184116, 30.700594, 50.910725>,  <41.006268, 30.584068, 50.799404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.184116, 30.700594, 50.910725>,  <41.480530, 30.894804, 51.096256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184116, 30.700594, 50.910725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468658, -0.120703, 0.875094,
		-0.480867, 0.865849, -0.138101,
		-0.741030, -0.485527, -0.463830,
		40.961807, 30.554935, 50.771576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844673, 31.191544, 51.278267>,  <41.480530, 30.894804, 51.096256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844673, 31.191544, 51.278267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.757652, 30.819805, 51.158943>,  <40.705441, 30.596762, 51.087349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.757652, 30.819805, 51.158943>,  <40.844673, 31.191544, 51.278267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757652, 30.819805, 51.158943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435059, -0.181257, 0.881969,
		-0.873725, 0.321653, -0.364888,
		-0.217550, -0.929347, -0.298307,
		40.692387, 30.541000, 51.069450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197548, 30.997166, 51.549946>,  <40.844673, 31.191544, 51.278267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197548, 30.997166, 51.549946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.404457, 30.657804, 51.504963>,  <40.528603, 30.454187, 51.477974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.404457, 30.657804, 51.504963>,  <40.197548, 30.997166, 51.549946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404457, 30.657804, 51.504963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336394, -0.322379, 0.884823,
		-0.786939, -0.419862, -0.452154,
		0.517269, -0.848403, -0.112453,
		40.559639, 30.403284, 51.471226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030800, 31.780796, 51.569855>,  <40.197548, 30.997166, 51.549946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030800, 31.780796, 51.569855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.788578, 32.091759, 51.637901>,  <39.643246, 32.278336, 51.678730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.788578, 32.091759, 51.637901>,  <40.030800, 31.780796, 51.569855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788578, 32.091759, 51.637901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128095, 0.306195, -0.943311,
		-0.785426, -0.549437, -0.285000,
		-0.605556, 0.777408, 0.170114,
		39.606911, 32.324982, 51.688934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522835, 31.814589, 51.032574>,  <40.030800, 31.780796, 51.569855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522835, 31.814589, 51.032574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.520466, 32.191719, 51.165867>,  <39.519043, 32.417995, 51.245842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.520466, 32.191719, 51.165867>,  <39.522835, 31.814589, 51.032574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520466, 32.191719, 51.165867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127756, 0.329795, -0.935368,
		-0.991788, -0.048112, 0.118499,
		-0.005923, 0.942826, 0.333234,
		39.518688, 32.474567, 51.265839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994396, 32.146252, 50.576286>,  <39.522835, 31.814589, 51.032574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994396, 32.146252, 50.576286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.235439, 32.420544, 50.739574>,  <39.380066, 32.585117, 50.837547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.235439, 32.420544, 50.739574>,  <38.994396, 32.146252, 50.576286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235439, 32.420544, 50.739574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014820, 0.501823, -0.864843,
		-0.797900, 0.527211, 0.292240,
		0.602607, 0.685728, 0.408218,
		39.416222, 32.626263, 50.862041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493275, 32.760464, 50.678020>,  <38.994396, 32.146252, 50.576286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493275, 32.760464, 50.678020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.880001, 32.862583, 50.674156>,  <39.112038, 32.923855, 50.671837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.880001, 32.862583, 50.674156>,  <38.493275, 32.760464, 50.678020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880001, 32.862583, 50.674156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134789, 0.477583, -0.868185,
		-0.217028, 0.840677, 0.496146,
		0.966815, 0.255296, -0.009665,
		39.170044, 32.939171, 50.671257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454250, 33.514820, 50.621925>,  <38.493275, 32.760464, 50.678020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454250, 33.514820, 50.621925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813168, 33.378593, 50.509583>,  <39.028519, 33.296856, 50.442177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813168, 33.378593, 50.509583>,  <38.454250, 33.514820, 50.621925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813168, 33.378593, 50.509583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086057, 0.489073, -0.867987,
		0.432970, 0.803007, 0.409532,
		0.897291, -0.340570, -0.280858,
		39.082355, 33.276424, 50.425323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850304, 34.060925, 50.387772>,  <38.454250, 33.514820, 50.621925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850304, 34.060925, 50.387772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.002754, 33.736366, 50.210510>,  <39.094223, 33.541634, 50.104153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.002754, 33.736366, 50.210510>,  <38.850304, 34.060925, 50.387772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002754, 33.736366, 50.210510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098992, 0.440760, -0.892150,
		0.919209, 0.383889, 0.087663,
		0.381125, -0.811394, -0.443152,
		39.117092, 33.492947, 50.077564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356815, 34.301582, 49.924679>,  <38.850304, 34.060925, 50.387772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356815, 34.301582, 49.924679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.281422, 33.931030, 49.794266>,  <39.236183, 33.708698, 49.716019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.281422, 33.931030, 49.794266>,  <39.356815, 34.301582, 49.924679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281422, 33.931030, 49.794266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094824, 0.313267, -0.944919,
		0.977487, -0.209020, 0.028797,
		-0.188486, -0.926377, -0.326035,
		39.224876, 33.653118, 49.696457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870697, 34.133816, 49.461636>,  <39.356815, 34.301582, 49.924679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870697, 34.133816, 49.461636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.584450, 33.867523, 49.377079>,  <39.412701, 33.707748, 49.326344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.584450, 33.867523, 49.377079>,  <39.870697, 34.133816, 49.461636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584450, 33.867523, 49.377079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099095, 0.202819, -0.974189,
		0.691423, -0.718099, -0.079171,
		-0.715621, -0.665731, -0.211394,
		39.369762, 33.667805, 49.313660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026779, 33.969372, 48.798073>,  <39.870697, 34.133816, 49.461636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026779, 33.969372, 48.798073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.655968, 33.825214, 48.839500>,  <39.433479, 33.738720, 48.864357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.655968, 33.825214, 48.839500>,  <40.026779, 33.969372, 48.798073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655968, 33.825214, 48.839500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158232, 0.125558, -0.979386,
		0.339961, -0.924311, -0.173422,
		-0.927032, -0.360394, 0.103571,
		39.377857, 33.717098, 48.870571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980457, 33.475132, 48.232029>,  <40.026779, 33.969372, 48.798073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980457, 33.475132, 48.232029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618752, 33.582253, 48.365044>,  <39.401726, 33.646526, 48.444855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618752, 33.582253, 48.365044>,  <39.980457, 33.475132, 48.232029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618752, 33.582253, 48.365044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222966, 0.368027, -0.902686,
		-0.364124, -0.890415, -0.273085,
		-0.904268, 0.267801, 0.332540,
		39.347469, 33.662594, 48.464806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421146, 33.118053, 47.833965>,  <39.980457, 33.475132, 48.232029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421146, 33.118053, 47.833965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.286572, 33.454018, 48.004314>,  <39.205826, 33.655594, 48.106522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.286572, 33.454018, 48.004314>,  <39.421146, 33.118053, 47.833965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286572, 33.454018, 48.004314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349623, 0.308504, -0.884641,
		-0.874398, -0.446524, 0.189857,
		-0.336441, 0.839906, 0.425870,
		39.185638, 33.705990, 48.132076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785069, 33.114990, 47.559250>,  <39.421146, 33.118053, 47.833965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785069, 33.114990, 47.559250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863388, 33.496223, 47.651600>,  <38.910381, 33.724964, 47.707008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863388, 33.496223, 47.651600>,  <38.785069, 33.114990, 47.559250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863388, 33.496223, 47.651600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461153, 0.297262, -0.836046,
		-0.865448, 0.057229, 0.497719,
		0.195799, 0.953079, 0.230874,
		38.922127, 33.782146, 47.720863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265739, 33.507866, 47.195835>,  <38.785069, 33.114990, 47.559250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265739, 33.507866, 47.195835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524628, 33.799004, 47.286476>,  <38.679958, 33.973686, 47.340858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524628, 33.799004, 47.286476>,  <38.265739, 33.507866, 47.195835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524628, 33.799004, 47.286476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239298, 0.476217, -0.846141,
		-0.723771, 0.493413, 0.482389,
		0.647219, 0.727847, 0.226599,
		38.718792, 34.017357, 47.354454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010937, 34.019409, 46.812088>,  <38.265739, 33.507866, 47.195835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010937, 34.019409, 46.812088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.388783, 34.127377, 46.886753>,  <38.615490, 34.192158, 46.931553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.388783, 34.127377, 46.886753>,  <38.010937, 34.019409, 46.812088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388783, 34.127377, 46.886753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150957, 0.147667, -0.977449,
		-0.291395, 0.951493, 0.098743,
		0.944617, 0.269918, 0.186664,
		38.672169, 34.208351, 46.942753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514393, 34.731293, 46.777042>,  <38.010937, 34.019409, 46.812088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514393, 34.731293, 46.777042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148476, 34.878365, 46.710148>,  <36.928925, 34.966606, 46.670013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148476, 34.878365, 46.710148>,  <37.514393, 34.731293, 46.777042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148476, 34.878365, 46.710148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297954, -0.334704, 0.893978,
		0.272725, 0.867632, 0.415736,
		-0.914792, 0.367680, -0.167232,
		36.874039, 34.988670, 46.659977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372501, 35.123692, 47.279911>,  <37.514393, 34.731293, 46.777042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372501, 35.123692, 47.279911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016319, 35.019314, 47.130783>,  <36.802608, 34.956688, 47.041306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016319, 35.019314, 47.130783>,  <37.372501, 35.123692, 47.279911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016319, 35.019314, 47.130783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309376, -0.253683, 0.916478,
		-0.333725, 0.931426, 0.145165,
		-0.890457, -0.260941, -0.372821,
		36.749184, 34.941032, 47.018936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868103, 35.517025, 47.720142>,  <37.372501, 35.123692, 47.279911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868103, 35.517025, 47.720142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690197, 35.203766, 47.546310>,  <36.583454, 35.015812, 47.442009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690197, 35.203766, 47.546310>,  <36.868103, 35.517025, 47.720142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690197, 35.203766, 47.546310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370008, -0.281212, 0.885445,
		-0.815644, 0.554617, -0.164696,
		-0.444769, -0.783147, -0.434582,
		36.556767, 34.968822, 47.415936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178848, 35.496181, 47.994904>,  <36.868103, 35.517025, 47.720142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178848, 35.496181, 47.994904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.255459, 35.123009, 47.872952>,  <36.301426, 34.899105, 47.799778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.255459, 35.123009, 47.872952>,  <36.178848, 35.496181, 47.994904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255459, 35.123009, 47.872952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370009, -0.356345, 0.857969,
		-0.909071, -0.051515, -0.413443,
		0.191527, -0.932933, -0.304882,
		36.312916, 34.843128, 47.781487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556503, 35.179321, 48.191692>,  <36.178848, 35.496181, 47.994904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556503, 35.179321, 48.191692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.804054, 34.874016, 48.117481>,  <35.952587, 34.690834, 48.072952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.804054, 34.874016, 48.117481>,  <35.556503, 35.179321, 48.191692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804054, 34.874016, 48.117481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208350, -0.387252, 0.898124,
		-0.757350, -0.517175, -0.398688,
		0.618879, -0.763260, -0.185531,
		35.989719, 34.645039, 48.061821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224110, 34.552551, 48.384335>,  <35.556503, 35.179321, 48.191692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224110, 34.552551, 48.384335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608429, 34.441669, 48.386173>,  <35.839020, 34.375141, 48.387276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608429, 34.441669, 48.386173>,  <35.224110, 34.552551, 48.384335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608429, 34.441669, 48.386173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110741, -0.368534, 0.922995,
		-0.254166, -0.887322, -0.384785,
		0.960800, -0.277205, 0.004594,
		35.896667, 34.358509, 48.387550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209724, 33.916740, 48.733009>,  <35.224110, 34.552551, 48.384335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209724, 33.916740, 48.733009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598610, 34.007122, 48.757515>,  <35.831940, 34.061352, 48.772221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598610, 34.007122, 48.757515>,  <35.209724, 33.916740, 48.733009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598610, 34.007122, 48.757515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081021, -0.570263, 0.817456,
		0.219646, -0.789775, -0.572723,
		0.972209, 0.225953, 0.061267,
		35.890274, 34.074909, 48.775894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026802, 33.189831, 48.506321>,  <35.209724, 33.916740, 48.733009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026802, 33.189831, 48.506321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822338, 32.865242, 48.393024>,  <34.699661, 32.670490, 48.325047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822338, 32.865242, 48.393024>,  <35.026802, 33.189831, 48.506321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822338, 32.865242, 48.393024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223089, 0.443520, -0.868056,
		0.830028, -0.380527, -0.407741,
		-0.511160, -0.811474, -0.283243,
		34.668991, 32.621799, 48.308052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299065, 33.061367, 47.871052>,  <35.026802, 33.189831, 48.506321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299065, 33.061367, 47.871052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919731, 32.935646, 47.888374>,  <34.692131, 32.860214, 47.898766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919731, 32.935646, 47.888374>,  <35.299065, 33.061367, 47.871052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919731, 32.935646, 47.888374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151156, 0.327580, -0.932654,
		0.278946, -0.891015, -0.358164,
		-0.948336, -0.314298, 0.043305,
		34.635231, 32.841354, 47.901363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214684, 32.858780, 47.250134>,  <35.299065, 33.061367, 47.871052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214684, 32.858780, 47.250134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841217, 32.911648, 47.383274>,  <34.617138, 32.943371, 47.463158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841217, 32.911648, 47.383274>,  <35.214684, 32.858780, 47.250134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841217, 32.911648, 47.383274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237531, 0.467029, -0.851741,
		-0.268029, -0.874308, -0.404656,
		-0.933670, 0.132173, 0.332852,
		34.561115, 32.951302, 47.483131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779419, 32.655830, 46.730362>,  <35.214684, 32.858780, 47.250134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779419, 32.655830, 46.730362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520699, 32.871727, 46.945889>,  <34.365467, 33.001266, 47.075203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520699, 32.871727, 46.945889>,  <34.779419, 32.655830, 46.730362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520699, 32.871727, 46.945889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378100, 0.386621, -0.841169,
		-0.662333, -0.747797, -0.045991,
		-0.646804, 0.539744, 0.538814,
		34.326656, 33.033649, 47.107533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970322, 32.603703, 46.447536>,  <34.779419, 32.655830, 46.730362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970322, 32.603703, 46.447536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044067, 32.940430, 46.650459>,  <34.088314, 33.142464, 46.772213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044067, 32.940430, 46.650459>,  <33.970322, 32.603703, 46.447536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044067, 32.940430, 46.650459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136004, 0.533036, -0.835090,
		-0.973403, 0.084962, 0.212761,
		0.184360, 0.841816, 0.507304,
		34.099377, 33.192974, 46.802650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456928, 32.996071, 46.190125>,  <33.970322, 32.603703, 46.447536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456928, 32.996071, 46.190125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721165, 33.251949, 46.347309>,  <33.879707, 33.405476, 46.441620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721165, 33.251949, 46.347309>,  <33.456928, 32.996071, 46.190125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721165, 33.251949, 46.347309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124986, 0.422414, -0.897745,
		-0.740272, 0.642154, 0.199089,
		0.660588, 0.639691, 0.392961,
		33.919342, 33.443855, 46.465199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231461, 33.664619, 46.057388>,  <33.456928, 32.996071, 46.190125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231461, 33.664619, 46.057388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628998, 33.699871, 46.084229>,  <33.867519, 33.721024, 46.100334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628998, 33.699871, 46.084229>,  <33.231461, 33.664619, 46.057388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628998, 33.699871, 46.084229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002809, 0.625656, -0.780094,
		-0.110734, 0.775105, 0.622053,
		0.993846, 0.088131, 0.067104,
		33.927151, 33.726311, 46.104359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.535637, 28.974073, 50.409340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.846664, 29.051882, 50.170158>,  <39.033279, 29.098566, 50.026649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.846664, 29.051882, 50.170158>,  <38.535637, 28.974073, 50.409340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846664, 29.051882, 50.170158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612689, 0.020507, -0.790058,
		-0.141420, 0.980684, 0.135127,
		0.777568, 0.194520, -0.597954,
		39.079933, 29.110237, 49.990772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253654, 29.581238, 49.952694>,  <38.535637, 28.974073, 50.409340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253654, 29.581238, 49.952694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.595726, 29.478954, 49.772346>,  <38.800968, 29.417583, 49.664139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.595726, 29.478954, 49.772346>,  <38.253654, 29.581238, 49.952694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595726, 29.478954, 49.772346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443740, 0.088379, -0.891787,
		0.267885, 0.962706, -0.037888,
		0.855180, -0.255708, -0.450866,
		38.852280, 29.402243, 49.637085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320553, 30.144081, 49.400375>,  <38.253654, 29.581238, 49.952694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320553, 30.144081, 49.400375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.547127, 29.834028, 49.288429>,  <38.683071, 29.647997, 49.221264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.547127, 29.834028, 49.288429>,  <38.320553, 30.144081, 49.400375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547127, 29.834028, 49.288429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220666, 0.184536, -0.957733,
		0.794015, 0.604248, -0.066518,
		0.566433, -0.775133, -0.279862,
		38.717056, 29.601488, 49.204472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839600, 30.442726, 48.904999>,  <38.320553, 30.144081, 49.400375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839600, 30.442726, 48.904999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.833744, 30.048439, 48.837894>,  <38.830231, 29.811867, 48.797634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.833744, 30.048439, 48.837894>,  <38.839600, 30.442726, 48.904999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833744, 30.048439, 48.837894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046170, 0.168263, -0.984660,
		0.998826, -0.006671, -0.047974,
		-0.014641, -0.985720, -0.167758,
		38.829353, 29.752724, 48.787567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319416, 30.283012, 48.258801>,  <38.839600, 30.442726, 48.904999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319416, 30.283012, 48.258801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.063023, 29.978964, 48.301434>,  <38.909187, 29.796535, 48.327015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.063023, 29.978964, 48.301434>,  <39.319416, 30.283012, 48.258801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063023, 29.978964, 48.301434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160003, -0.003487, -0.987110,
		0.750694, -0.649773, -0.119386,
		-0.640981, -0.760120, 0.106583,
		38.870728, 29.750927, 48.333408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461597, 29.953310, 47.636593>,  <39.319416, 30.283012, 48.258801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461597, 29.953310, 47.636593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.123898, 29.789619, 47.775024>,  <38.921276, 29.691404, 47.858082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.123898, 29.789619, 47.775024>,  <39.461597, 29.953310, 47.636593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123898, 29.789619, 47.775024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319813, -0.133495, -0.938029,
		0.430066, -0.902615, -0.018172,
		-0.844253, -0.409226, 0.346079,
		38.870621, 29.666851, 47.878849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334980, 29.335417, 47.259300>,  <39.461597, 29.953310, 47.636593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334980, 29.335417, 47.259300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.971745, 29.448494, 47.382885>,  <38.753803, 29.516340, 47.457035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.971745, 29.448494, 47.382885>,  <39.334980, 29.335417, 47.259300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971745, 29.448494, 47.382885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287602, 0.115265, -0.950788,
		-0.304395, -0.952259, -0.023367,
		-0.908090, 0.282695, 0.308958,
		38.699318, 29.533302, 47.475571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910946, 28.951731, 46.930428>,  <39.334980, 29.335417, 47.259300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910946, 28.951731, 46.930428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.683350, 29.263903, 47.034100>,  <38.546791, 29.451206, 47.096302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.683350, 29.263903, 47.034100>,  <38.910946, 28.951731, 46.930428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683350, 29.263903, 47.034100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348403, 0.056710, -0.935628,
		-0.744890, -0.622666, 0.239637,
		-0.568994, 0.780430, 0.259181,
		38.512650, 29.498032, 47.111855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189514, 28.706900, 46.813911>,  <38.910946, 28.951731, 46.930428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189514, 28.706900, 46.813911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.203331, 29.106512, 46.824814>,  <38.211620, 29.346279, 46.831356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.203331, 29.106512, 46.824814>,  <38.189514, 28.706900, 46.813911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203331, 29.106512, 46.824814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306686, 0.036552, -0.951109,
		-0.951184, 0.024499, 0.307651,
		0.034547, 0.999032, 0.027254,
		38.213696, 29.406221, 46.832989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612492, 28.905478, 46.366608>,  <38.189514, 28.706900, 46.813911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612492, 28.905478, 46.366608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.811531, 29.251455, 46.392746>,  <37.930954, 29.459042, 46.408428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.811531, 29.251455, 46.392746>,  <37.612492, 28.905478, 46.366608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811531, 29.251455, 46.392746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215359, 0.196167, -0.956629,
		-0.840250, 0.461940, 0.283885,
		0.497594, 0.864945, 0.065346,
		37.960808, 29.510939, 46.412350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188099, 29.413445, 46.077179>,  <37.612492, 28.905478, 46.366608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188099, 29.413445, 46.077179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.563824, 29.546143, 46.042206>,  <37.789257, 29.625761, 46.021221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.563824, 29.546143, 46.042206>,  <37.188099, 29.413445, 46.077179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563824, 29.546143, 46.042206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114413, 0.062645, -0.991456,
		-0.323434, 0.941287, 0.096799,
		0.939309, 0.331745, -0.087434,
		37.845615, 29.645666, 46.015976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127609, 29.942701, 45.666378>,  <37.188099, 29.413445, 46.077179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127609, 29.942701, 45.666378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.522232, 29.882120, 45.641830>,  <37.759007, 29.845772, 45.627102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.522232, 29.882120, 45.641830>,  <37.127609, 29.942701, 45.666378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522232, 29.882120, 45.641830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035002, 0.170998, -0.984649,
		0.159623, 0.973561, 0.163398,
		0.986557, -0.151453, -0.061372,
		37.818199, 29.836683, 45.623421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804722, 30.644619, 45.840630>,  <37.127609, 29.942701, 45.666378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804722, 30.644619, 45.840630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.412220, 30.583267, 45.793941>,  <36.176720, 30.546455, 45.765930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.412220, 30.583267, 45.793941>,  <36.804722, 30.644619, 45.840630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412220, 30.583267, 45.793941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040533, -0.427812, 0.902958,
		-0.188428, 0.890759, 0.413574,
		-0.981250, -0.153379, -0.116717,
		36.117844, 30.537254, 45.758926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533363, 30.723494, 46.489262>,  <36.804722, 30.644619, 45.840630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533363, 30.723494, 46.489262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.220711, 30.555117, 46.305145>,  <36.033119, 30.454090, 46.194675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.220711, 30.555117, 46.305145>,  <36.533363, 30.723494, 46.489262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220711, 30.555117, 46.305145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268741, -0.438670, 0.857524,
		-0.562881, 0.793964, 0.229753,
		-0.781628, -0.420940, -0.460290,
		35.986221, 30.428835, 46.167057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889820, 30.932611, 46.836597>,  <36.533363, 30.723494, 46.489262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889820, 30.932611, 46.836597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.824757, 30.594614, 46.632820>,  <35.785717, 30.391815, 46.510555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.824757, 30.594614, 46.632820>,  <35.889820, 30.932611, 46.836597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824757, 30.594614, 46.632820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066246, -0.505800, 0.860103,
		-0.984456, 0.173653, 0.026296,
		-0.162660, -0.844992, -0.509442,
		35.775959, 30.341116, 46.479988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362171, 30.688654, 47.155144>,  <35.889820, 30.932611, 46.836597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362171, 30.688654, 47.155144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.507126, 30.363338, 46.973049>,  <35.594101, 30.168150, 46.863792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.507126, 30.363338, 46.973049>,  <35.362171, 30.688654, 47.155144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507126, 30.363338, 46.973049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023607, -0.480267, 0.876804,
		-0.931728, -0.328491, -0.154845,
		0.362390, -0.813288, -0.455233,
		35.615841, 30.119352, 46.836479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796711, 30.182491, 47.151970>,  <35.362171, 30.688654, 47.155144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796711, 30.182491, 47.151970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.143200, 29.984200, 47.126976>,  <35.351093, 29.865225, 47.111980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.143200, 29.984200, 47.126976>,  <34.796711, 30.182491, 47.151970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143200, 29.984200, 47.126976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275486, -0.578175, 0.767998,
		-0.416843, -0.648049, -0.637397,
		0.866227, -0.495728, -0.062480,
		35.403069, 29.835482, 47.108231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655441, 29.437300, 47.331451>,  <34.796711, 30.182491, 47.151970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655441, 29.437300, 47.331451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051174, 29.474886, 47.375996>,  <35.288612, 29.497438, 47.402721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051174, 29.474886, 47.375996>,  <34.655441, 29.437300, 47.331451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051174, 29.474886, 47.375996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040089, -0.559229, 0.828043,
		0.140085, -0.823670, -0.549494,
		0.989328, 0.093968, 0.111360,
		35.347973, 29.503077, 47.409405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824612, 28.725025, 47.555878>,  <34.655441, 29.437300, 47.331451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824612, 28.725025, 47.555878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.137100, 28.957001, 47.648281>,  <35.324593, 29.096186, 47.703724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.137100, 28.957001, 47.648281>,  <34.824612, 28.725025, 47.555878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137100, 28.957001, 47.648281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061933, -0.440237, 0.895743,
		0.621174, -0.685467, -0.379840,
		0.781221, 0.579937, 0.231011,
		35.371468, 29.130981, 47.717583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405144, 28.250519, 47.835915>,  <34.824612, 28.725025, 47.555878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405144, 28.250519, 47.835915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.446533, 28.623178, 47.975239>,  <35.471367, 28.846775, 48.058834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.446533, 28.623178, 47.975239>,  <35.405144, 28.250519, 47.835915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446533, 28.623178, 47.975239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117853, -0.336240, 0.934373,
		0.987625, -0.137734, 0.075006,
		0.103475, 0.931651, 0.348312,
		35.477577, 28.902674, 48.079731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835266, 28.115236, 48.402145>,  <35.405144, 28.250519, 47.835915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835266, 28.115236, 48.402145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654099, 28.470322, 48.435204>,  <35.545399, 28.683372, 48.455040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654099, 28.470322, 48.435204>,  <35.835266, 28.115236, 48.402145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654099, 28.470322, 48.435204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056685, -0.121185, 0.991010,
		0.889750, 0.444159, 0.105206,
		-0.452915, 0.887715, 0.082647,
		35.518223, 28.736635, 48.459999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151737, 28.452459, 48.979603>,  <35.835266, 28.115236, 48.402145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151737, 28.452459, 48.979603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814728, 28.661390, 48.926937>,  <35.612522, 28.786749, 48.895336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814728, 28.661390, 48.926937>,  <36.151737, 28.452459, 48.979603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814728, 28.661390, 48.926937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226513, -0.121770, 0.966366,
		0.488726, 0.844006, 0.220907,
		-0.842519, 0.522327, -0.131667,
		35.561974, 28.818089, 48.887436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044178, 28.806623, 49.595196>,  <36.151737, 28.452459, 48.979603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044178, 28.806623, 49.595196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.683384, 28.815218, 49.422699>,  <35.466908, 28.820375, 49.319202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.683384, 28.815218, 49.422699>,  <36.044178, 28.806623, 49.595196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683384, 28.815218, 49.422699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431698, -0.026033, 0.901642,
		0.008146, 0.999430, 0.032757,
		-0.901981, 0.021486, -0.431240,
		35.412788, 28.821663, 49.293327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694466, 29.291124, 50.001003>,  <36.044178, 28.806623, 49.595196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694466, 29.291124, 50.001003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.424393, 29.055405, 49.823528>,  <35.262348, 28.913973, 49.717041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.424393, 29.055405, 49.823528>,  <35.694466, 29.291124, 50.001003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424393, 29.055405, 49.823528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499606, -0.077204, 0.862805,
		-0.542705, 0.804218, -0.242291,
		-0.675178, -0.589299, -0.443691,
		35.221840, 28.878614, 49.690422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098564, 29.599329, 50.212063>,  <35.694466, 29.291124, 50.001003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098564, 29.599329, 50.212063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.998703, 29.221355, 50.127426>,  <34.938786, 28.994572, 50.076645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.998703, 29.221355, 50.127426>,  <35.098564, 29.599329, 50.212063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998703, 29.221355, 50.127426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544413, -0.043737, 0.837676,
		-0.800804, 0.324320, -0.503516,
		-0.249653, -0.944936, -0.211589,
		34.923805, 28.937874, 50.063950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391830, 29.574329, 50.267952>,  <35.098564, 29.599329, 50.212063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391830, 29.574329, 50.267952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568859, 29.227289, 50.358635>,  <34.675076, 29.019066, 50.413044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568859, 29.227289, 50.358635>,  <34.391830, 29.574329, 50.267952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568859, 29.227289, 50.358635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579948, -0.084105, 0.810300,
		-0.683950, -0.490097, -0.540387,
		0.442575, -0.867601, 0.226707,
		34.701630, 28.967009, 50.426647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692268, 30.299879, 50.232216>,  <34.391830, 29.574329, 50.267952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692268, 30.299879, 50.232216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.531536, 30.629463, 50.392025>,  <34.435097, 30.827213, 50.487911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.531536, 30.629463, 50.392025>,  <34.692268, 30.299879, 50.232216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531536, 30.629463, 50.392025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114746, 0.387553, -0.914678,
		-0.908496, -0.413391, -0.061186,
		-0.401832, 0.823960, 0.399525,
		34.410988, 30.876652, 50.511883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972412, 30.497305, 49.900707>,  <34.692268, 30.299879, 50.232216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972412, 30.497305, 49.900707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.154324, 30.818226, 50.055363>,  <34.263470, 31.010778, 50.148155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.154324, 30.818226, 50.055363>,  <33.972412, 30.497305, 49.900707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154324, 30.818226, 50.055363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002234, 0.435154, -0.900353,
		-0.890603, 0.408595, 0.199690,
		0.454776, 0.802303, 0.386636,
		34.290756, 31.058916, 50.171352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626743, 31.025370, 49.582855>,  <33.972412, 30.497305, 49.900707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626743, 31.025370, 49.582855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.976448, 31.173264, 49.708687>,  <34.186272, 31.262001, 49.784184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.976448, 31.173264, 49.708687>,  <33.626743, 31.025370, 49.582855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976448, 31.173264, 49.708687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103686, 0.490835, -0.865061,
		-0.474250, 0.788908, 0.390783,
		0.874264, 0.369736, 0.314577,
		34.238728, 31.284184, 49.803059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615925, 31.755859, 49.564812>,  <33.626743, 31.025370, 49.582855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615925, 31.755859, 49.564812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.001225, 31.650856, 49.542019>,  <34.232403, 31.587854, 49.528343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.001225, 31.650856, 49.542019>,  <33.615925, 31.755859, 49.564812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001225, 31.650856, 49.542019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136984, 0.662509, -0.736422,
		0.231071, 0.701549, 0.674118,
		0.963245, -0.262510, -0.056985,
		34.290199, 31.572104, 49.524921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940266, 32.322124, 49.614697>,  <33.615925, 31.755859, 49.564812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940266, 32.322124, 49.614697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.222485, 32.085201, 49.459072>,  <34.391815, 31.943047, 49.365696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.222485, 32.085201, 49.459072>,  <33.940266, 32.322124, 49.614697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222485, 32.085201, 49.459072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004966, 0.553128, -0.833081,
		0.708645, 0.585846, 0.393200,
		0.705548, -0.592311, -0.389062,
		34.434151, 31.907507, 49.342354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410999, 32.813316, 49.333477>,  <33.940266, 32.322124, 49.614697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410999, 32.813316, 49.333477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.493874, 32.466740, 49.151772>,  <34.543598, 32.258793, 49.042747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.493874, 32.466740, 49.151772>,  <34.410999, 32.813316, 49.333477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493874, 32.466740, 49.151772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114559, 0.482634, -0.868298,
		0.971571, 0.127858, 0.199253,
		0.207185, -0.866439, -0.454266,
		34.556030, 32.206806, 49.015491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000198, 32.860935, 49.138474>,  <34.410999, 32.813316, 49.333477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000198, 32.860935, 49.138474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.836147, 32.594467, 48.889313>,  <34.737717, 32.434586, 48.739815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.836147, 32.594467, 48.889313>,  <35.000198, 32.860935, 49.138474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836147, 32.594467, 48.889313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039977, 0.669198, -0.742008,
		0.911151, -0.329221, -0.247827,
		-0.410130, -0.666174, -0.622901,
		34.713108, 32.394615, 48.702442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644512, 33.249496, 48.980099>,  <35.000198, 32.860935, 49.138474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644512, 33.249496, 48.980099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.872589, 33.565826, 49.069069>,  <36.009438, 33.755623, 49.122452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.872589, 33.565826, 49.069069>,  <35.644512, 33.249496, 48.980099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872589, 33.565826, 49.069069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084913, -0.326039, 0.941535,
		0.817109, -0.517971, -0.253057,
		0.570194, 0.790825, 0.222427,
		36.043648, 33.803074, 49.135796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183926, 32.902645, 49.446304>,  <35.644512, 33.249496, 48.980099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183926, 32.902645, 49.446304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.189709, 33.295963, 49.518887>,  <36.193176, 33.531952, 49.562435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.189709, 33.295963, 49.518887>,  <36.183926, 32.902645, 49.446304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189709, 33.295963, 49.518887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024224, -0.181761, 0.983044,
		0.999602, -0.009816, -0.026446,
		0.014456, 0.983294, 0.181451,
		36.194046, 33.590950, 49.573322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567879, 32.953663, 49.966320>,  <36.183926, 32.902645, 49.446304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567879, 32.953663, 49.966320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.375465, 33.302406, 50.003143>,  <36.260017, 33.511650, 50.025238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.375465, 33.302406, 50.003143>,  <36.567879, 32.953663, 49.966320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375465, 33.302406, 50.003143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006481, -0.101466, 0.994818,
		0.876679, 0.479135, 0.043158,
		-0.481032, 0.871856, 0.092058,
		36.231155, 33.563965, 50.030762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902531, 33.275925, 50.475956>,  <36.567879, 32.953663, 49.966320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902531, 33.275925, 50.475956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.548328, 33.461056, 50.459629>,  <36.335808, 33.572136, 50.449833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.548328, 33.461056, 50.459629>,  <36.902531, 33.275925, 50.475956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548328, 33.461056, 50.459629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099318, -0.102726, 0.989739,
		0.453886, 0.880476, 0.136932,
		-0.885508, 0.462828, -0.040821,
		36.282677, 33.599903, 50.447384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992508, 33.800499, 50.907433>,  <36.902531, 33.275925, 50.475956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992508, 33.800499, 50.907433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.595924, 33.760952, 50.873432>,  <36.357975, 33.737225, 50.853031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.595924, 33.760952, 50.873432>,  <36.992508, 33.800499, 50.907433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595924, 33.760952, 50.873432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074322, -0.107128, 0.991463,
		-0.107128, 0.989318, 0.098865,
		-0.991463, -0.098865, -0.085005,
		36.298485, 33.731293, 50.847931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662224, 34.283318, 51.425220>,  <36.992508, 33.800499, 50.907433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662224, 34.283318, 51.425220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392059, 34.000641, 51.340931>,  <36.229961, 33.831036, 51.290356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392059, 34.000641, 51.340931>,  <36.662224, 34.283318, 51.425220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392059, 34.000641, 51.340931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216614, -0.083022, 0.972721,
		-0.704911, 0.702632, -0.097005,
		-0.675411, -0.706694, -0.210723,
		36.189438, 33.788631, 51.277714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967957, 34.408020, 51.775360>,  <36.662224, 34.283318, 51.425220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967957, 34.408020, 51.775360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.965267, 34.022686, 51.668072>,  <35.963654, 33.791485, 51.603699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.965267, 34.022686, 51.668072>,  <35.967957, 34.408020, 51.775360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965267, 34.022686, 51.668072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287517, -0.255042, 0.923194,
		-0.957752, 0.083329, -0.275259,
		-0.006727, -0.963333, -0.268225,
		35.963249, 33.733685, 51.587605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332558, 34.017838, 52.056892>,  <35.967957, 34.408020, 51.775360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332558, 34.017838, 52.056892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.585850, 33.723587, 51.960655>,  <35.737823, 33.547039, 51.902912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.585850, 33.723587, 51.960655>,  <35.332558, 34.017838, 52.056892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585850, 33.723587, 51.960655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204269, -0.458674, 0.864807,
		-0.746524, -0.498474, -0.440710,
		0.633227, -0.735623, -0.240589,
		35.775818, 33.502899, 51.888477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087070, 33.417942, 52.512157>,  <35.332558, 34.017838, 52.056892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087070, 33.417942, 52.512157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.455326, 33.311844, 52.397560>,  <35.676277, 33.248184, 52.328800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.455326, 33.311844, 52.397560>,  <35.087070, 33.417942, 52.512157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455326, 33.311844, 52.397560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024980, -0.692275, 0.721201,
		-0.389624, -0.671120, -0.630707,
		0.920635, -0.265242, -0.286492,
		35.731518, 33.232269, 52.311611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.241436, 37.530167, 36.659203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430275, 37.802578, 36.435303>,  <37.543579, 37.966026, 36.300961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430275, 37.802578, 36.435303>,  <37.241436, 37.530167, 36.659203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430275, 37.802578, 36.435303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507417, 0.309303, 0.804276,
		0.720867, -0.663727, -0.199543,
		0.472100, 0.681028, -0.559752,
		37.571903, 38.006886, 36.267376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917000, 37.289963, 36.850910>,  <37.241436, 37.530167, 36.659203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917000, 37.289963, 36.850910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237564, 37.479599, 36.996773>,  <38.429905, 37.593380, 37.084290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237564, 37.479599, 36.996773>,  <37.917000, 37.289963, 36.850910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237564, 37.479599, 36.996773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310457, -0.191379, 0.931123,
		0.511228, -0.859423, -0.006187,
		0.801413, 0.474095, 0.364653,
		38.477989, 37.621826, 37.106167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078106, 36.892567, 37.375057>,  <37.917000, 37.289963, 36.850910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078106, 36.892567, 37.375057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253716, 37.237961, 37.474369>,  <38.359081, 37.445198, 37.533955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253716, 37.237961, 37.474369>,  <38.078106, 36.892567, 37.375057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253716, 37.237961, 37.474369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113011, -0.221068, 0.968688,
		0.891338, -0.453339, 0.000528,
		0.439028, 0.863488, 0.248279,
		38.385426, 37.497005, 37.548851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583485, 36.709896, 37.907742>,  <38.078106, 36.892567, 37.375057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583485, 36.709896, 37.907742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533733, 37.106220, 37.929031>,  <38.503883, 37.344013, 37.941803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533733, 37.106220, 37.929031>,  <38.583485, 36.709896, 37.907742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533733, 37.106220, 37.929031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190260, -0.076458, 0.978752,
		0.973823, 0.111611, 0.198020,
		-0.124380, 0.990806, 0.053221,
		38.496418, 37.403461, 37.944996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069412, 37.000729, 38.512440>,  <38.583485, 36.709896, 37.907742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069412, 37.000729, 38.512440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761574, 37.249043, 38.452644>,  <38.576870, 37.398033, 38.416767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761574, 37.249043, 38.452644>,  <39.069412, 37.000729, 38.512440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761574, 37.249043, 38.452644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135667, 0.069800, 0.988293,
		0.623954, 0.780866, 0.030503,
		-0.769595, 0.620787, -0.149490,
		38.530697, 37.435280, 38.407799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038765, 37.424965, 39.134598>,  <39.069412, 37.000729, 38.512440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038765, 37.424965, 39.134598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689922, 37.492210, 38.950783>,  <38.480618, 37.532558, 38.840492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689922, 37.492210, 38.950783>,  <39.038765, 37.424965, 39.134598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689922, 37.492210, 38.950783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487688, -0.221931, 0.844338,
		0.039957, 0.960461, 0.275533,
		-0.872103, 0.168111, -0.459537,
		38.428291, 37.542645, 38.812923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780739, 37.922398, 39.533394>,  <39.038765, 37.424965, 39.134598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780739, 37.922398, 39.533394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471905, 37.756828, 39.340500>,  <38.286602, 37.657486, 39.224762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471905, 37.756828, 39.340500>,  <38.780739, 37.922398, 39.533394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471905, 37.756828, 39.340500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515638, -0.035535, 0.856069,
		-0.371479, 0.909620, -0.185996,
		-0.772089, -0.413919, -0.482235,
		38.240276, 37.632652, 39.195831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149353, 38.192257, 39.879166>,  <38.780739, 37.922398, 39.533394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149353, 38.192257, 39.879166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001205, 37.887981, 39.665932>,  <37.912315, 37.705418, 39.537991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001205, 37.887981, 39.665932>,  <38.149353, 38.192257, 39.879166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001205, 37.887981, 39.665932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648644, -0.199000, 0.734616,
		-0.664898, 0.617861, -0.419713,
		-0.370367, -0.760689, -0.533086,
		37.890095, 37.659775, 39.506004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451637, 38.273506, 39.967815>,  <38.149353, 38.192257, 39.879166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451637, 38.273506, 39.967815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535351, 37.885826, 39.915882>,  <37.585579, 37.653217, 39.884720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535351, 37.885826, 39.915882>,  <37.451637, 38.273506, 39.967815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535351, 37.885826, 39.915882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434440, -0.211109, 0.875611,
		-0.876050, -0.126843, -0.465239,
		0.209281, -0.969197, -0.129837,
		37.598137, 37.595066, 39.876930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877438, 37.995880, 40.228107>,  <37.451637, 38.273506, 39.967815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877438, 37.995880, 40.228107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122002, 37.679356, 40.228897>,  <37.268738, 37.489441, 40.229370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122002, 37.679356, 40.228897>,  <36.877438, 37.995880, 40.228107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122002, 37.679356, 40.228897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486593, -0.373998, 0.789527,
		-0.624028, -0.483680, -0.613713,
		0.611406, -0.791315, 0.001970,
		37.305424, 37.441959, 40.229488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443363, 37.436790, 40.377506>,  <36.877438, 37.995880, 40.228107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443363, 37.436790, 40.377506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813560, 37.317696, 40.471157>,  <37.035679, 37.246239, 40.527348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813560, 37.317696, 40.471157>,  <36.443363, 37.436790, 40.377506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813560, 37.317696, 40.471157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355683, -0.470681, 0.807434,
		-0.130201, -0.830550, -0.541511,
		0.925493, -0.297735, 0.234130,
		37.091209, 37.228374, 40.541397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284725, 36.827461, 40.695213>,  <36.443363, 37.436790, 40.377506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284725, 36.827461, 40.695213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658680, 36.924587, 40.798771>,  <36.883053, 36.982864, 40.860905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658680, 36.924587, 40.798771>,  <36.284725, 36.827461, 40.695213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658680, 36.924587, 40.798771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188592, -0.278099, 0.941857,
		0.300697, -0.929355, -0.214198,
		0.934887, 0.242817, 0.258893,
		36.939148, 36.997433, 40.876438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070496, 36.002159, 40.441242>,  <36.284725, 36.827461, 40.695213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070496, 36.002159, 40.441242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780563, 35.726589, 40.441959>,  <35.606606, 35.561249, 40.442390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780563, 35.726589, 40.441959>,  <36.070496, 36.002159, 40.441242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780563, 35.726589, 40.441959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048840, -0.053981, -0.997347,
		0.687195, -0.722819, 0.072775,
		-0.724829, -0.688925, 0.001793,
		35.563114, 35.519913, 40.442497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237183, 35.447823, 39.903065>,  <36.070496, 36.002159, 40.441242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237183, 35.447823, 39.903065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848747, 35.363922, 39.948666>,  <35.615688, 35.313583, 39.976028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848747, 35.363922, 39.948666>,  <36.237183, 35.447823, 39.903065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848747, 35.363922, 39.948666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056824, -0.260743, -0.963735,
		0.231872, -0.942347, 0.241284,
		-0.971085, -0.209752, 0.114006,
		35.557423, 35.300995, 39.982868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030186, 34.704479, 39.637070>,  <36.237183, 35.447823, 39.903065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030186, 34.704479, 39.637070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731960, 34.970497, 39.619846>,  <35.553024, 35.130108, 39.609512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731960, 34.970497, 39.619846>,  <36.030186, 34.704479, 39.637070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731960, 34.970497, 39.619846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183155, -0.266599, -0.946245,
		-0.640774, -0.697597, 0.320572,
		-0.745562, 0.665044, -0.043061,
		35.508293, 35.170010, 39.606930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594604, 34.428699, 39.260715>,  <36.030186, 34.704479, 39.637070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594604, 34.428699, 39.260715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403473, 34.779564, 39.241646>,  <35.288795, 34.990082, 39.230206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403473, 34.779564, 39.241646>,  <35.594604, 34.428699, 39.260715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403473, 34.779564, 39.241646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454875, -0.293491, -0.840804,
		-0.751510, -0.380074, 0.539236,
		-0.477829, 0.877158, -0.047675,
		35.260124, 35.042713, 39.227345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012249, 34.311626, 38.859673>,  <35.594604, 34.428699, 39.260715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012249, 34.311626, 38.859673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996857, 34.711254, 38.851845>,  <34.987621, 34.951031, 38.847149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996857, 34.711254, 38.851845>,  <35.012249, 34.311626, 38.859673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996857, 34.711254, 38.851845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435280, -0.034388, -0.899638,
		-0.899472, -0.026102, 0.436198,
		-0.038482, 0.999068, -0.019569,
		34.985313, 35.010975, 38.845974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268509, 34.626259, 38.953594>,  <35.012249, 34.311626, 38.859673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268509, 34.626259, 38.953594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502033, 34.878548, 38.749100>,  <34.642147, 35.029922, 38.626404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502033, 34.878548, 38.749100>,  <34.268509, 34.626259, 38.953594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502033, 34.878548, 38.749100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707163, 0.085690, -0.701839,
		-0.398857, 0.771264, 0.496049,
		0.583810, 0.630721, -0.511232,
		34.677177, 35.067764, 38.595730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710800, 34.984127, 38.731159>,  <34.268509, 34.626259, 38.953594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710800, 34.984127, 38.731159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027489, 35.075581, 38.504562>,  <34.217503, 35.130455, 38.368607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027489, 35.075581, 38.504562>,  <33.710800, 34.984127, 38.731159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027489, 35.075581, 38.504562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577845, -0.020564, -0.815888,
		-0.198193, 0.973294, 0.115836,
		0.791717, 0.228638, -0.566489,
		34.265003, 35.144173, 38.334618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554619, 35.496441, 38.298199>,  <33.710800, 34.984127, 38.731159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554619, 35.496441, 38.298199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860172, 35.305351, 38.124645>,  <34.043507, 35.190697, 38.020512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860172, 35.305351, 38.124645>,  <33.554619, 35.496441, 38.298199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860172, 35.305351, 38.124645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531640, -0.084704, -0.842724,
		0.365836, 0.874418, -0.318680,
		0.763887, -0.477722, -0.433888,
		34.089340, 35.162033, 37.994480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491337, 35.824833, 37.645462>,  <33.554619, 35.496441, 38.298199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491337, 35.824833, 37.645462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725227, 35.507103, 37.579556>,  <33.865562, 35.316463, 37.540012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725227, 35.507103, 37.579556>,  <33.491337, 35.824833, 37.645462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725227, 35.507103, 37.579556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324529, -0.042891, -0.944903,
		0.743492, 0.605979, -0.282861,
		0.584723, -0.794324, -0.164768,
		33.900642, 35.268806, 37.530125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913166, 35.980629, 37.031231>,  <33.491337, 35.824833, 37.645462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913166, 35.980629, 37.031231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890541, 35.586666, 37.096676>,  <33.876968, 35.350288, 37.135941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890541, 35.586666, 37.096676>,  <33.913166, 35.980629, 37.031231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890541, 35.586666, 37.096676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455065, -0.120428, -0.882277,
		0.888660, -0.124354, -0.441383,
		-0.056560, -0.984903, 0.163609,
		33.873573, 35.291195, 37.145760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968758, 35.757122, 36.264202>,  <33.913166, 35.980629, 37.031231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968758, 35.757122, 36.264202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868439, 35.441326, 36.488277>,  <33.808247, 35.251850, 36.622723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868439, 35.441326, 36.488277>,  <33.968758, 35.757122, 36.264202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868439, 35.441326, 36.488277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421961, -0.431655, -0.797259,
		0.871234, -0.436329, -0.224875,
		-0.250799, -0.789488, 0.560187,
		33.793198, 35.204479, 36.656334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212181, 35.075230, 35.929585>,  <33.968758, 35.757122, 36.264202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212181, 35.075230, 35.929585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942509, 34.926579, 36.184891>,  <33.780704, 34.837387, 36.338074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942509, 34.926579, 36.184891>,  <34.212181, 35.075230, 35.929585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942509, 34.926579, 36.184891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349501, -0.600775, -0.718970,
		0.650642, -0.707786, 0.275144,
		-0.674177, -0.371629, 0.638262,
		33.740257, 34.815090, 36.376369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175961, 34.287350, 35.956825>,  <34.212181, 35.075230, 35.929585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175961, 34.287350, 35.956825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826096, 34.434479, 36.083107>,  <33.616177, 34.522755, 36.158875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826096, 34.434479, 36.083107>,  <34.175961, 34.287350, 35.956825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826096, 34.434479, 36.083107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470162, -0.485314, -0.737169,
		-0.117932, -0.793207, 0.597423,
		-0.874665, 0.367821, 0.315702,
		33.563698, 34.544827, 36.177818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613831, 33.734840, 35.869518>,  <34.175961, 34.287350, 35.956825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613831, 33.734840, 35.869518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451870, 34.100517, 35.862423>,  <33.354694, 34.319923, 35.858166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451870, 34.100517, 35.862423>,  <33.613831, 33.734840, 35.869518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451870, 34.100517, 35.862423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465458, -0.222777, -0.856574,
		-0.787023, -0.338568, 0.515719,
		-0.404899, 0.914189, -0.017741,
		33.330399, 34.374775, 35.857101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486137, 33.025608, 36.020351>,  <33.613831, 33.734840, 35.869518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486137, 33.025608, 36.020351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774712, 32.754223, 36.075821>,  <33.947857, 32.591393, 36.109100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774712, 32.754223, 36.075821>,  <33.486137, 33.025608, 36.020351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774712, 32.754223, 36.075821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071415, -0.272075, -0.959622,
		0.688793, 0.682399, -0.244736,
		0.721432, -0.678459, 0.138670,
		33.991142, 32.550686, 36.117420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021435, 33.116257, 35.519070>,  <33.486137, 33.025608, 36.020351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021435, 33.116257, 35.519070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010174, 32.740993, 35.657097>,  <34.003418, 32.515835, 35.739914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010174, 32.740993, 35.657097>,  <34.021435, 33.116257, 35.519070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010174, 32.740993, 35.657097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071479, -0.342433, -0.936819,
		0.997045, -0.051035, -0.057419,
		-0.028148, -0.938155, 0.345069,
		34.001728, 32.459545, 35.760616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692665, 32.786045, 35.706009>,  <34.021435, 33.116257, 35.519070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692665, 32.786045, 35.706009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063320, 32.787827, 35.856380>,  <35.285713, 32.788895, 35.946606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063320, 32.787827, 35.856380>,  <34.692665, 32.786045, 35.706009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063320, 32.787827, 35.856380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347088, -0.374134, 0.859973,
		0.144483, -0.927364, -0.345139,
		0.926636, 0.004458, 0.375933,
		35.341312, 32.789165, 35.969162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764957, 32.083675, 36.064758>,  <34.692665, 32.786045, 35.706009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764957, 32.083675, 36.064758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004059, 32.362259, 36.223568>,  <35.147522, 32.529408, 36.318855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004059, 32.362259, 36.223568>,  <34.764957, 32.083675, 36.064758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004059, 32.362259, 36.223568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212588, -0.339806, 0.916154,
		0.772976, -0.632041, -0.055063,
		0.597758, 0.696460, 0.397026,
		35.183388, 32.571198, 36.342674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883495, 31.704147, 36.678669>,  <34.764957, 32.083675, 36.064758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883495, 31.704147, 36.678669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044388, 32.067207, 36.726635>,  <35.140923, 32.285042, 36.755413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044388, 32.067207, 36.726635>,  <34.883495, 31.704147, 36.678669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044388, 32.067207, 36.726635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107320, -0.083326, 0.990727,
		0.909225, -0.411373, 0.063892,
		0.402234, 0.907651, 0.119911,
		35.165058, 32.339504, 36.762608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264912, 31.589317, 37.258068>,  <34.883495, 31.704147, 36.678669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264912, 31.589317, 37.258068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244240, 31.987864, 37.230984>,  <35.231838, 32.226990, 37.214733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244240, 31.987864, 37.230984>,  <35.264912, 31.589317, 37.258068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244240, 31.987864, 37.230984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018912, 0.066809, 0.997586,
		0.998485, 0.052832, 0.015391,
		-0.051676, 0.996366, -0.067707,
		35.228737, 32.286774, 37.210670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809345, 31.926201, 37.646267>,  <35.264912, 31.589317, 37.258068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809345, 31.926201, 37.646267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516376, 32.197617, 37.623837>,  <35.340595, 32.360466, 37.610378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516376, 32.197617, 37.623837>,  <35.809345, 31.926201, 37.646267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516376, 32.197617, 37.623837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066678, 0.153449, 0.985904,
		0.677577, 0.718360, -0.157633,
		-0.732423, 0.678537, -0.056074,
		35.296650, 32.401176, 37.607014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911304, 32.439266, 38.114769>,  <35.809345, 31.926201, 37.646267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911304, 32.439266, 38.114769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522697, 32.497250, 38.039780>,  <35.289536, 32.532040, 37.994785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522697, 32.497250, 38.039780>,  <35.911304, 32.439266, 38.114769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522697, 32.497250, 38.039780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138242, 0.295863, 0.945174,
		0.192481, 0.944167, -0.267396,
		-0.971514, 0.144963, -0.187472,
		35.231243, 32.540737, 37.983540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811115, 33.062565, 38.406277>,  <35.911304, 32.439266, 38.114769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811115, 33.062565, 38.406277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471916, 32.857498, 38.352520>,  <35.268394, 32.734459, 38.320267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471916, 32.857498, 38.352520>,  <35.811115, 33.062565, 38.406277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471916, 32.857498, 38.352520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256708, 0.175465, 0.950428,
		-0.463674, 0.840465, -0.280401,
		-0.848002, -0.512670, -0.134396,
		35.217514, 32.703697, 38.312202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240334, 33.496811, 38.538681>,  <35.811115, 33.062565, 38.406277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240334, 33.496811, 38.538681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101330, 33.123894, 38.578827>,  <35.017925, 32.900143, 38.602913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101330, 33.123894, 38.578827>,  <35.240334, 33.496811, 38.538681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101330, 33.123894, 38.578827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306521, 0.214100, 0.927473,
		-0.886161, 0.291545, -0.360168,
		-0.347512, -0.932289, 0.100362,
		34.997078, 32.844208, 38.608936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743904, 33.498741, 38.939938>,  <35.240334, 33.496811, 38.538681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743904, 33.498741, 38.939938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813766, 33.106987, 38.980526>,  <34.855682, 32.871933, 39.004879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813766, 33.106987, 38.980526>,  <34.743904, 33.498741, 38.939938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813766, 33.106987, 38.980526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342070, 0.036279, 0.938974,
		-0.923301, -0.198704, -0.328683,
		0.174653, -0.979388, 0.101467,
		34.866161, 32.813171, 39.010967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180817, 33.287102, 39.397202>,  <34.743904, 33.498741, 38.939938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180817, 33.287102, 39.397202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460854, 33.001698, 39.408363>,  <34.628876, 32.830456, 39.415058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460854, 33.001698, 39.408363>,  <34.180817, 33.287102, 39.397202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460854, 33.001698, 39.408363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155055, -0.113764, 0.981334,
		-0.697014, -0.691351, -0.190278,
		0.700092, -0.713507, 0.027902,
		34.670883, 32.787647, 39.416733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897091, 32.653767, 39.825867>,  <34.180817, 33.287102, 39.397202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897091, 32.653767, 39.825867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297031, 32.659698, 39.822212>,  <34.536995, 32.663258, 39.820019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297031, 32.659698, 39.822212>,  <33.897091, 32.653767, 39.825867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297031, 32.659698, 39.822212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011389, -0.159642, 0.987109,
		0.013182, -0.987064, -0.159787,
		0.999848, 0.014832, -0.009137,
		34.596985, 32.664146, 39.819469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085426, 32.111515, 40.421890>,  <33.897091, 32.653767, 39.825867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085426, 32.111515, 40.421890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419159, 32.314899, 40.336712>,  <34.619400, 32.436932, 40.285603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419159, 32.314899, 40.336712>,  <34.085426, 32.111515, 40.421890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419159, 32.314899, 40.336712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211211, 0.061959, 0.975475,
		0.509189, -0.858850, -0.055699,
		0.834335, 0.508465, -0.212948,
		34.669460, 32.467438, 40.272827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676304, 31.678822, 40.589279>,  <34.085426, 32.111515, 40.421890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676304, 31.678822, 40.589279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757771, 32.068981, 40.623013>,  <34.806652, 32.303078, 40.643253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757771, 32.068981, 40.623013>,  <34.676304, 31.678822, 40.589279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757771, 32.068981, 40.623013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380542, -0.158238, 0.911124,
		0.902057, -0.153475, -0.403409,
		0.203669, 0.975401, 0.084336,
		34.818871, 32.361603, 40.648312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225994, 31.552937, 40.992096>,  <34.676304, 31.678822, 40.589279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225994, 31.552937, 40.992096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150600, 31.945625, 40.981529>,  <35.105362, 32.181236, 40.975189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150600, 31.945625, 40.981529>,  <35.225994, 31.552937, 40.992096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150600, 31.945625, 40.981529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404006, 0.102028, 0.909049,
		0.895127, 0.160672, -0.415852,
		-0.188488, 0.981720, -0.026416,
		35.094055, 32.240143, 40.973606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822395, 31.970438, 41.288368>,  <35.225994, 31.552937, 40.992096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822395, 31.970438, 41.288368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473671, 32.160793, 41.334812>,  <35.264439, 32.275005, 41.362679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473671, 32.160793, 41.334812>,  <35.822395, 31.970438, 41.288368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473671, 32.160793, 41.334812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134573, 0.004767, 0.990892,
		0.470999, 0.879494, -0.068197,
		-0.871809, 0.475886, 0.116110,
		35.212128, 32.303558, 41.369644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989304, 32.389938, 41.888367>,  <35.822395, 31.970438, 41.288368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989304, 32.389938, 41.888367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590668, 32.395172, 41.855755>,  <35.351486, 32.398312, 41.836189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590668, 32.395172, 41.855755>,  <35.989304, 32.389938, 41.888367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590668, 32.395172, 41.855755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082350, -0.085643, 0.992917,
		0.006006, 0.996240, 0.086428,
		-0.996585, 0.013081, -0.081526,
		35.291691, 32.399097, 41.831299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906834, 32.924294, 42.275433>,  <35.989304, 32.389938, 41.888367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906834, 32.924294, 42.275433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579762, 32.694580, 42.259464>,  <35.383518, 32.556751, 42.249882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579762, 32.694580, 42.259464>,  <35.906834, 32.924294, 42.275433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579762, 32.694580, 42.259464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061662, 0.018427, 0.997927,
		-0.572358, 0.818449, -0.050479,
		-0.817682, -0.574284, -0.039920,
		35.334457, 32.522293, 42.247490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599300, 33.038021, 42.877541>,  <35.906834, 32.924294, 42.275433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599300, 33.038021, 42.877541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380852, 32.720612, 42.770157>,  <35.249783, 32.530167, 42.705727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380852, 32.720612, 42.770157>,  <35.599300, 33.038021, 42.877541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380852, 32.720612, 42.770157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074031, -0.364935, 0.928085,
		-0.834429, 0.486971, 0.258044,
		-0.546120, -0.793525, -0.268462,
		35.217014, 32.482555, 42.689617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183594, 32.895821, 43.461258>,  <35.599300, 33.038021, 42.877541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183594, 32.895821, 43.461258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147980, 32.551983, 43.259995>,  <35.126614, 32.345680, 43.139236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147980, 32.551983, 43.259995>,  <35.183594, 32.895821, 43.461258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147980, 32.551983, 43.259995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087787, -0.496423, 0.863630,
		-0.992152, 0.121063, -0.031263,
		-0.089034, -0.859598, -0.503155,
		35.121269, 32.294102, 43.109047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758171, 32.533077, 43.847988>,  <35.183594, 32.895821, 43.461258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758171, 32.533077, 43.847988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964291, 32.275440, 43.621853>,  <35.087963, 32.120857, 43.486172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964291, 32.275440, 43.621853>,  <34.758171, 32.533077, 43.847988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964291, 32.275440, 43.621853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064686, -0.628555, 0.775070,
		-0.854565, -0.435963, -0.282231,
		0.515300, -0.644092, -0.565342,
		35.118881, 32.082214, 43.452251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451557, 31.903864, 43.864109>,  <34.758171, 32.533077, 43.847988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451557, 31.903864, 43.864109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824226, 31.806864, 43.755905>,  <35.047829, 31.748663, 43.690983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824226, 31.806864, 43.755905>,  <34.451557, 31.903864, 43.864109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824226, 31.806864, 43.755905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008622, -0.759153, 0.650855,
		-0.363189, -0.604053, -0.709375,
		0.931676, -0.242500, -0.270508,
		35.103729, 31.734114, 43.674751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511181, 31.163166, 44.036842>,  <34.451557, 31.903864, 43.864109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511181, 31.163166, 44.036842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892952, 31.270267, 43.984116>,  <35.122013, 31.334528, 43.952480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892952, 31.270267, 43.984116>,  <34.511181, 31.163166, 44.036842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892952, 31.270267, 43.984116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269307, -0.582343, 0.767040,
		0.128616, -0.767583, -0.627912,
		0.954427, 0.267754, -0.131817,
		35.179279, 31.350594, 43.944569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955070, 30.563488, 44.009216>,  <34.511181, 31.163166, 44.036842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955070, 30.563488, 44.009216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159306, 30.887730, 44.123913>,  <35.281845, 31.082275, 44.192730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159306, 30.887730, 44.123913>,  <34.955070, 30.563488, 44.009216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159306, 30.887730, 44.123913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328003, -0.491893, 0.806508,
		0.794805, -0.317742, -0.517035,
		0.510588, 0.810606, 0.286739,
		35.312481, 31.130911, 44.209934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675858, 30.306902, 44.019840>,  <34.955070, 30.563488, 44.009216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675858, 30.306902, 44.019840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628212, 30.621256, 44.262558>,  <35.599625, 30.809868, 44.408188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628212, 30.621256, 44.262558>,  <35.675858, 30.306902, 44.019840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628212, 30.621256, 44.262558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295426, -0.555409, 0.777331,
		0.947911, 0.271854, -0.166013,
		-0.119115, 0.785885, 0.606791,
		35.592476, 30.857021, 44.444595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234505, 30.223831, 44.548668>,  <35.675858, 30.306902, 44.019840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234505, 30.223831, 44.548668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022095, 30.514833, 44.722446>,  <35.894650, 30.689434, 44.826714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022095, 30.514833, 44.722446>,  <36.234505, 30.223831, 44.548668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022095, 30.514833, 44.722446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271275, -0.339769, 0.900537,
		0.802759, 0.596063, -0.016928,
		-0.531025, 0.727506, 0.434450,
		35.862785, 30.733086, 44.852783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688229, 30.428482, 45.110470>,  <36.234505, 30.223831, 44.548668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688229, 30.428482, 45.110470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307858, 30.526154, 45.186489>,  <36.079636, 30.584757, 45.232101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307858, 30.526154, 45.186489>,  <36.688229, 30.428482, 45.110470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307858, 30.526154, 45.186489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055189, -0.470515, 0.880664,
		0.304458, 0.847935, 0.433949,
		-0.950925, 0.244177, 0.190049,
		36.022579, 30.599407, 45.243504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407150, 30.490940, 45.214809>,  <36.688229, 30.428482, 45.110470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407150, 30.490940, 45.214809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679501, 30.198055, 45.208118>,  <37.842911, 30.022326, 45.204105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679501, 30.198055, 45.208118>,  <37.407150, 30.490940, 45.214809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679501, 30.198055, 45.208118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145195, 0.157330, -0.976814,
		0.717866, 0.662657, 0.213435,
		0.680873, -0.732211, -0.016727,
		37.883762, 29.978392, 45.203102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875561, 30.735888, 44.726147>,  <37.407150, 30.490940, 45.214809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875561, 30.735888, 44.726147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999805, 30.356985, 44.757702>,  <38.074352, 30.129642, 44.776634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999805, 30.356985, 44.757702>,  <37.875561, 30.735888, 44.726147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999805, 30.356985, 44.757702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286011, 0.013992, -0.958124,
		0.906487, 0.320167, 0.275272,
		0.310611, -0.947258, 0.078887,
		38.092987, 30.072807, 44.781368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556622, 30.659489, 44.459545>,  <37.875561, 30.735888, 44.726147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556622, 30.659489, 44.459545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378242, 30.304235, 44.415077>,  <38.271217, 30.091084, 44.388397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378242, 30.304235, 44.415077>,  <38.556622, 30.659489, 44.459545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378242, 30.304235, 44.415077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351295, -0.059436, -0.934376,
		0.823241, -0.455730, 0.338501,
		-0.445943, -0.888131, -0.111165,
		38.244461, 30.037796, 44.381729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083225, 30.326180, 44.074615>,  <38.556622, 30.659489, 44.459545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083225, 30.326180, 44.074615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755260, 30.102209, 44.026905>,  <38.558483, 29.967827, 43.998280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755260, 30.102209, 44.026905>,  <39.083225, 30.326180, 44.074615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755260, 30.102209, 44.026905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311806, -0.262036, -0.913299,
		0.480127, -0.786015, 0.389435,
		-0.819912, -0.559927, -0.119273,
		38.509285, 29.934231, 43.991123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237659, 29.538851, 43.784542>,  <39.083225, 30.326180, 44.074615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237659, 29.538851, 43.784542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857079, 29.619949, 43.691914>,  <38.628731, 29.668608, 43.636337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857079, 29.619949, 43.691914>,  <39.237659, 29.538851, 43.784542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857079, 29.619949, 43.691914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136629, -0.395975, -0.908039,
		-0.275799, -0.895599, 0.349052,
		-0.951455, 0.202746, -0.231575,
		38.571644, 29.680773, 43.622440>
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
